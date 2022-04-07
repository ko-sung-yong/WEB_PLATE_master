package net.webplate.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/rest/*")
public class RestController {
	
	@RequestMapping(value="goldpig")
	public void goldpig() {
		
	}
	
	@RequestMapping(value="rest1")
	public void rest1(HttpServletRequest request) {
		String lat="35.16261027";
		 String lng="129.1649905";
		 String name="ÇØ¿î´ë¼Ò¹®³­»ï°èÅÁ";
		 request.setAttribute("lat", lat);
		 request.setAttribute("lng",lng);
		 request.setAttribute("name", name);
	}

}
