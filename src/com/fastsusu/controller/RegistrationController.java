package com.fastsusu.controller;

import java.util.logging.Logger;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fastsusu.model.CrmUser;
import com.fastsusu.service.UserService;

@Controller
@RequestMapping("/register")
public class RegistrationController {

	@Autowired
	UserService userService;

	private Logger logger = Logger.getLogger(getClass().getName());

	@InitBinder
	public void initBinder(WebDataBinder dataBinder) {

		StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);

		dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
	}

	@RequestMapping("/showRegistrationForm")
	public String showMyLoginPage(Model theModel) {

		theModel.addAttribute("crmUser", new CrmUser());

		return "signup";

	}

	@RequestMapping(value = "/processRegistrationForm", method = RequestMethod.POST)
	public String processRegistrationForm(@Valid @ModelAttribute("crmUser") CrmUser theCrmUser,
			BindingResult theBindingResult, Model theModel) {

		String userName = theCrmUser.getUserName();

		logger.info("Processing registration form for: " + userName);

		// form validation
		if (theBindingResult.hasErrors()) {

			theModel.addAttribute("crmUser", new CrmUser());
			theModel.addAttribute("registrationError", "User name/password can not be empty.");

			logger.warning("User name/password can not be empty.");

			return "signup";
		}

		// check the database if user already exists
		boolean userExists = doesUserExist(userName);

		if (!userExists) {
			theModel.addAttribute("crmUser", new CrmUser());
			theModel.addAttribute("registrationError", "User name already exists.");

			logger.warning("User name already exists.");

			return "signup";
		}

		userService.saveUser(theCrmUser);
		return "registration-confirmation";
	}

	private boolean doesUserExist(String userName) {

		logger.info("Checking if user exists: " + userName);

		// check the database if the user already exists
		boolean exists = userService.isUserNameUnique(userName);

		logger.info("User: " + userName + ", exists: " + exists);

		return exists;
	}

}
