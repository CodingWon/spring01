package com.fastcampus.ch2.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BoardController {

	@GetMapping("/")
	public String tset() {
		
		return "template";
	}
	
}
