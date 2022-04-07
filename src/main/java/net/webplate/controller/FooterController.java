package net.webplate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/footer/*")
public class FooterController {
	
	@GetMapping(value="board")
	public void board() {
		
	}
	
	@GetMapping(value="introduce")
	public void QnA() {	
		
	}
	
	@GetMapping(value="NonMember")
	public void NonMember() {
		
	}
	
	
	@GetMapping(value="Terms_of_Use")
	public void Terms_of_Use() {
		
	}

}
