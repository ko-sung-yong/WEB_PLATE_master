package net.webplate.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	public ModelAndView reTop10(HttpServletRequest request)throws Exception {
		
		Date nowTime = new Date();
		SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd");
		String Date=dt.format(nowTime);
		
		int res=Integer.parseInt(request.getParameter("addr"));
		
		if(res==1) {
			String divide="%¾È»ê%";
			String divide2="¾È»ê";
			
			int listcount=foodservice.foodAreaCount(divide);
			int hit=foodservice.foodArea_Hit(divide); // ÃÑ Á¶È¸¼ö
			
			List<FoodVO> food=foodservice.getAddrCont(divide);
			ModelAndView m=new ModelAndView("recomTop/reTop10");
			m.addObject("divide2", divide2);
			m.addObject("food", food);
			m.addObject("Date", Date);
			m.addObject("listcount",listcount);
			m.addObject("hit", hit);
			return m;
		}
		else if(res==2) {
			String divide="%È¾¼º%";
			String divide2="È¾¼º";
			List<FoodVO> food=foodservice.getAddrCont(divide);
			int listcount=foodservice.foodAreaCount(divide);		
			int hit=foodservice.foodArea_Hit(divide); // ÃÑ Á¶È¸¼ö
			
			ModelAndView m2=new ModelAndView("recomTop/reTop10");
			m2.addObject("divide2", divide2);
			m2.addObject("food", food);
			m2.addObject("Date", Date);
			m2.addObject("listcount",listcount);
			m2.addObject("hit", hit);
			m2.addObject("hit",hit);
			return m2;
		}
		else if(res==3) {
			String divide="%¿ë»ê±¸%";
			String divide2="¿ë»ê";
			int listcount=foodservice.foodAreaCount(divide);
			int hit=foodservice.foodArea_Hit(divide); // ÃÑ Á¶È¸¼ö			
			List<FoodVO> food=foodservice.getAddrCont(divide);
			ModelAndView m3=new ModelAndView("recomTop/reTop10");
			m3.addObject("divide2", divide2);
			m3.addObject("food", food);
			m3.addObject("Date", Date);
			m3.addObject("listcount",listcount);
			m3.addObject("hit",hit);
			return m3;
		}
		else if(res==4) {
			String divide="%ÃáÃµ½Ã%";
			String divide2="ÃáÃµ";
			int listcount=foodservice.foodAreaCount(divide);
			int hit=foodservice.foodArea_Hit(divide); // ÃÑ Á¶È¸¼ö
			List<FoodVO> food=foodservice.getAddrCont(divide);
			ModelAndView m4=new ModelAndView("recomTop/reTop10");
			m4.addObject("divide2", divide2);
			m4.addObject("food", food);
			m4.addObject("Date", Date);
			m4.addObject("listcount",listcount);
			m4.addObject("hit",hit);
			return m4;
		}
		else if(res==5) {
			String divide="%´ë±¸±¤¿ª½Ã%";			
			String divide2="´ë±¸";
			int listcount=foodservice.foodAreaCount(divide);
			int hit=foodservice.foodArea_Hit(divide); // ÃÑ Á¶È¸¼ö
			List<FoodVO> food=foodservice.getAddrCont(divide);
			ModelAndView m5=new ModelAndView("recomTop/reTop10");
			m5.addObject("divide2", divide2);
			m5.addObject("food", food);
			m5.addObject("Date", Date);
			m5.addObject("listcount",listcount);
			m5.addObject("hit",hit);			
			return m5;
		}
		else if(res==6) {
			String divide="%ºÎ»ê±¤¿ª½Ã%";
			String divide2="ºÎ»ê";
			int listcount=foodservice.foodAreaCount(divide);
			int hit=foodservice.foodArea_Hit(divide); // ÃÑ Á¶È¸¼ö
			List<FoodVO> food=foodservice.getAddrCont(divide);
			ModelAndView m6=new ModelAndView("recomTop/reTop10");
			m6.addObject("divide2", divide2);
			m6.addObject("food", food);
			m6.addObject("Date", Date);
			m6.addObject("listcount",listcount);
			m6.addObject("hit", hit);
			return m6;
		}
		
		
		
		return null;
		
		
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
