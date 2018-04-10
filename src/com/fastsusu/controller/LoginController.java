package com.fastsusu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

	@RequestMapping("/showMyLoginPage")
	public String showMyLoginPage() {
		
		// return "plain-login";

		return "login";
		
	}
	
	// add request mapping for /access-denied
	
	@RequestMapping("/access-denied")
	public String showAccessDenied() {
		
		return "access-denied";
		
	}
	
}









