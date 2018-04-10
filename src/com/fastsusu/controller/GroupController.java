package com.fastsusu.controller;

import java.util.List;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fastsusu.model.Group;
import com.fastsusu.service.GroupService;

@Controller
@RequestMapping("/groups")
public class GroupController {

	private Logger logger = Logger.getLogger(getClass().getName());
	
	@Autowired
	private GroupService groupService;

	@RequestMapping("/showStartSusuForm")
	public String showStartSusuForm(Model theModel) {

		// create a student object
		Group theGroup = new Group();

		// add the object to the model
		theModel.addAttribute("group", theGroup);

		return "start-susu";
	}

	@RequestMapping("/processStartSusuForm")
	public String processStartSusu(@ModelAttribute("group") Group theGroup, Model theModel, BindingResult theResult, HttpServletRequest request) {

		// Check for error codes
		System.out.println("Binding Result: " + theResult);

		// If there are any error codes reload the registration page
		if (theResult.hasErrors())
			return "start-susu";
		
		if(groupService.findByName(theGroup.getGroupName()) != null){
			theModel.addAttribute("group", theGroup);
			theModel.addAttribute("groupError", "Group name already exists.");

			logger.warning("Group name already exists.");

			return "start-susu";
		}
		String username = request.getUserPrincipal().getName();
		groupService.save(theGroup, username);
		theModel.addAttribute("group", theGroup);
		return "susu-confirmation";
	}
	
	@RequestMapping("/userGroups")
	public String showUserGroups(Model theModel, HttpServletRequest request) {

		String username = request.getUserPrincipal().getName();
		List<Group> groups = groupService.findUserGroups(username);

		theModel.addAttribute("groups", groups);
		return "userGroups";
	}
	
	@RequestMapping("/findSusu")
	public String showFindSusu(Model theModel, HttpServletRequest request) {

		String username = request.getUserPrincipal().getName();
		List<Group> groups = groupService.findNotAssociatedGroups(username);

		theModel.addAttribute("groups", groups);
		return "findSusu";
	}
	
	@RequestMapping("/associateGroup")
	public String associateUserGroup(@RequestParam("groupId") Integer groupId, Model theModel, HttpServletRequest request) {

		String username = request.getUserPrincipal().getName();
		groupService.associateGroup(groupId, username);

		theModel.addAttribute("group", groupService.findById(groupId));
		return "associateGroup";
	}
}
