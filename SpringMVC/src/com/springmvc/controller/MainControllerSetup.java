package com.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainControllerSetup {

	@RequestMapping("/")
	public String helloWorld() {

		return "welcome";
	}

	@RequestMapping("/new")
	public String newpage() {

		return "welcome";
	}
}
