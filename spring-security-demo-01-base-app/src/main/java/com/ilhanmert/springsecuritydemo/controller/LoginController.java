package com.ilhanmert.springsecuritydemo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

	@GetMapping("/showMyLoginPage")
	public String showMyLoginPage() {
		return "plainlogin";
	}

	@GetMapping("/access-denied")
	public String showAccessDenied() {
		return "access-denied";
	}



}
