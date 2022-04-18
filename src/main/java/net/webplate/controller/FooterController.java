package net.webplate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class FooterController {
	
	@GetMapping(value="board")
	public void board() {
		
	}
	

	
	@GetMapping(value="NonMember")
	public ModelAndView NonMember() {
		ModelAndView m=new ModelAndView("footer/NonMember");
		return m;
	}
	
	
	@GetMapping(value="Terms_of_Use")
	public ModelAndView Terms_of_Use() {
		ModelAndView m=new ModelAndView("footer/Terms_of_Use");
		return m;
	}

}
