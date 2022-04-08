package net.webplate.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import net.webplate.service.AdminService;
import net.webplate.vo.FoodVO;

@Controller
@RequestMapping("/rest/*")
public class RestController {
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping(value="goldpig")
	public void goldpig() {
		
	}
	
	@RequestMapping(value="rest1")
	public ModelAndView rest1(HttpServletRequest request) {
		int page=1;
		if(request.getParameter("page")!=null) {
			page=Integer.parseInt(request.getParameter("page"));
		}
		int f_num=Integer.parseInt(request.getParameter("f_num"));
								
		
		FoodVO f=adminService.getDetails(f_num); // 세부정보
		String food_menu=f.getMenu().replace("\n", "<br>");
					
		
		//adminService.getHit(f_num);
		
		ModelAndView cm=new ModelAndView();
		cm.addObject("page", page);
		cm.addObject("f_num",f_num);
		cm.addObject("f", f);
		cm.addObject("food_menu", food_menu);
		cm.setViewName("/rest/rest1");
		return cm;	
	
		
		
	}
	
	

}
