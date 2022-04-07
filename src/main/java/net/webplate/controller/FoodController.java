package net.webplate.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import net.webplate.service.FoodService;
import net.webplate.vo.FoodVO;

@Controller
@RequestMapping(value="/recomTop/*")
public class FoodController {
	
	@Autowired
	private FoodService foodservice;
	
	@GetMapping(value="/reTop10")
	public void reTop10() {
		
	}
	
	@RequestMapping(value="/reTop15")
	public void reTop15() {
		
	}
	@RequestMapping(value="/reTop20")
	public void reTop20() {
		
	}
	
	@RequestMapping(value="/reTop30")
	public void reTop30() {
		
	}
	
	@GetMapping("/Food_list")
	public ModelAndView search(FoodVO food) {		
		
		ModelAndView m=new ModelAndView();
		int listcount=foodservice.getTotalCount(food);		
		List<FoodVO> flist=foodservice.getBoardList(food);
					
		m.addObject("flist", flist);
		
		m.addObject("listcount", listcount);
		m.setViewName("/recomTop/Food_list");
				
		return m;
	}

	
	

}
