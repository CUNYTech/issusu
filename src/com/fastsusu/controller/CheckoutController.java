package com.fastsusu.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fastsusu.model.ChargeRequest;
import com.fastsusu.model.Group;
import com.fastsusu.service.GroupService;
import com.fastsusu.service.StripeService;
import com.stripe.exception.StripeException;
import com.stripe.model.Charge;

@Controller
@RequestMapping("/payment")
public class CheckoutController {

	private Logger logger = Logger.getLogger(getClass().getName());

	@Autowired
	private GroupService groupService;

	@Autowired
	private Environment env;

	@Autowired
	private StripeService stripeService;

	@InitBinder
	public void dataBinding(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		dateFormat.setLenient(false);
		binder.registerCustomEditor(Date.class, "startDate", new CustomDateEditor(dateFormat, true));
	}

	@RequestMapping("/enrollGroup")
	public String enrollNewGroup(@ModelAttribute("group") Group group, Model model, BindingResult theResult,
			HttpServletRequest request) {

		// If there are any error codes reload the registration page
		if (theResult.hasErrors())
			return "start-susu";

		if(groupService.findByName(group.getGroupName()) != null || group.getGroupSize() < 1 || group.getPayoutAmount() < 10){
			model.addAttribute("group", group);
			String errorMSG = "";
			if(group.getGroupSize() < 1){
				errorMSG+= "Group size should be greater then 0.";
			}
			if(group.getPayoutAmount() < 10){
				errorMSG+= " Group amount should be greater then 10.";
				logger.warning("Group amount should be greater then 10.");
			}
			if(groupService.findByName(group.getGroupName()) != null){
				errorMSG+= " Group name already exists.";
			}
			logger.info(errorMSG);
			model.addAttribute("groupError", errorMSG);
			return "start-susu";
		}

		ChargeRequest chargeRequest = new ChargeRequest();
		chargeRequest.setPageName("group");
		chargeRequest.setGroupName(group.getGroupName());
		chargeRequest.setGroupSize(group.getGroupSize());
		chargeRequest.setHowOften(group.getHowOften());
		chargeRequest.setStartDate(group.getStartDate());
		chargeRequest.setDuration_weeks(group.getDuration_weeks());
		setModelAttr(chargeRequest, group, model);
		return "enroll";
	}

	private void setModelAttr(ChargeRequest chargeRequest, Group group, Model model) {
		chargeRequest.setCurrency("USD");
		Double amount = group.getPayoutAmount();
		chargeRequest.setAmount(amount.intValue());
		model.addAttribute("chargeRequest", chargeRequest);
		model.addAttribute("stripePublicKey", env.getProperty("stripe.public.key"));
	}

	@RequestMapping("/enroll")
	public String enrollExistingGroup(@RequestParam("groupId") Integer groupId, Model model,
			HttpServletRequest request) {

		Group group = groupService.findById(groupId);
		int groupSize = groupService.findAGroupCount(groupId);
		
		if(groupSize >= group.getGroupSize()){
			String username = request.getUserPrincipal().getName();
			List<Group> groups = groupService.findNotAssociatedGroups(username);

			model.addAttribute("groups", groups);
			return "findSusu";
		}
		
		ChargeRequest chargeRequest = new ChargeRequest();
		chargeRequest.setGroupName(group.getGroupName());
		chargeRequest.setGroupId(groupId);
		setModelAttr(chargeRequest, group, model);
		return "enroll";
	}

	@RequestMapping(value = "/charge", method = RequestMethod.POST)
	public String charge(@ModelAttribute ChargeRequest chargeRequest, Model model,
			final RedirectAttributes redirectAttributes) throws StripeException {
		chargeRequest.setCurrency("USD");
		Charge charge = stripeService.charge(chargeRequest);
		model.addAttribute("id", charge.getId());
		model.addAttribute("status", charge.getStatus());
		model.addAttribute("chargeId", charge.getId());
		model.addAttribute("balance_transaction", charge.getBalanceTransaction());
		if (chargeRequest.getPageName() == null) {
			return "redirect:/groups/associateGroup?groupId=" + chargeRequest.getGroupId();
		}

		Group group = new Group();
		group.setGroupName(chargeRequest.getGroupName());
		group.setGroupSize(chargeRequest.getGroupSize());
		group.setDuration_weeks(chargeRequest.getDuration_weeks());
		group.setHowOften(chargeRequest.getHowOften());
		group.setPayoutAmount(chargeRequest.getAmount());
		group.setStartDate(chargeRequest.getStartDate());

		redirectAttributes.addFlashAttribute("group", group);

		return "redirect:/groups/processStartSusuForm";
	}
}
