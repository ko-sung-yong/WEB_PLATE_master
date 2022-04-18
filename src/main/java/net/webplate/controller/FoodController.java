package net.webplate.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
			String divide="%�Ȼ�%";
			String divide2="�Ȼ�";
			String ment="�Ȼ� ���� ������ ����?";
			
			int listcount=foodservice.foodAreaCount(divide);
			int hit=foodservice.foodArea_Hit(divide); // �� ��ȸ��
			
			List<FoodVO> food=foodservice.getAddrCont(divide);
			ModelAndView m=new ModelAndView("recomTop/reTop10");
			m.addObject("divide2", divide2);
			m.addObject("food", food);
			m.addObject("Date", Date);
			m.addObject("listcount",listcount);
			m.addObject("hit", hit);
			m.addObject("ment",ment);		
			return m;
		}
		else if(res==2) {
			String divide="%Ⱦ��%";
			String divide2="Ⱦ��";
			String ment="Ⱦ�� ����� ���� �� �ֳ�!";
			List<FoodVO> food=foodservice.getAddrCont(divide);
			int listcount=foodservice.foodAreaCount(divide);		
			int hit=foodservice.foodArea_Hit(divide); // �� ��ȸ��
			
			ModelAndView m2=new ModelAndView("recomTop/reTop10");
			m2.addObject("divide2", divide2);
			m2.addObject("food", food);
			m2.addObject("Date", Date);
			m2.addObject("listcount",listcount);
			m2.addObject("hit", hit);
			m2.addObject("hit",hit);
			m2.addObject("ment",ment);	
			return m2;
		}
		else if(res==3) {
			String divide="%��걸%";
			String divide2="���";
			String ment="�پ��� �԰Ÿ��� ��꿡��";
			int listcount=foodservice.foodAreaCount(divide);
			int hit=foodservice.foodArea_Hit(divide); // �� ��ȸ��			
			List<FoodVO> food=foodservice.getAddrCont(divide);
			ModelAndView m3=new ModelAndView("recomTop/reTop10");
			m3.addObject("divide2", divide2);
			m3.addObject("food", food);
			m3.addObject("Date", Date);
			m3.addObject("listcount",listcount);
			m3.addObject("hit",hit);
			m3.addObject("ment",ment);	
			return m3;
		}
		else if(res==4) {
			String divide="%��õ��%";
			String divide2="��õ";
			String ment="��õ�� ���� ���� �� ������";
			int listcount=foodservice.foodAreaCount(divide);
			int hit=foodservice.foodArea_Hit(divide); // �� ��ȸ��
			List<FoodVO> food=foodservice.getAddrCont(divide);
			ModelAndView m4=new ModelAndView("recomTop/reTop10");
			m4.addObject("divide2", divide2);
			m4.addObject("food", food);
			m4.addObject("Date", Date);
			m4.addObject("listcount",listcount);
			m4.addObject("hit",hit);
			m4.addObject("ment",ment);	
			return m4;
		}
		else if(res==5) {
			String divide="%�뱸������%";			
			String divide2="�뱸";
			String ment="�����ϸ� �뱸! �뱸�ϸ� ����!";
			int listcount=foodservice.foodAreaCount(divide);
			int hit=foodservice.foodArea_Hit(divide); // �� ��ȸ��
			List<FoodVO> food=foodservice.getAddrCont(divide);
			ModelAndView m5=new ModelAndView("recomTop/reTop10");
			m5.addObject("divide2", divide2);
			m5.addObject("food", food);
			m5.addObject("Date", Date);
			m5.addObject("listcount",listcount);
			m5.addObject("hit",hit);	
			m5.addObject("ment",ment);	
			return m5;
		}
		else if(res==6) {
			String divide="%�λ걤����%";
			String divide2="�λ�";
			String ment="�̰��� �λ� �����̶� ��ī��";
			int listcount=foodservice.foodAreaCount(divide);
			int hit=foodservice.foodArea_Hit(divide); // �� ��ȸ��
			List<FoodVO> food=foodservice.getAddrCont(divide);
			ModelAndView m6=new ModelAndView("recomTop/reTop10");
			m6.addObject("divide2", divide2);
			m6.addObject("food", food);
			m6.addObject("Date", Date);
			m6.addObject("listcount",listcount);
			m6.addObject("hit", hit);
			m6.addObject("ment",ment);	
			return m6;
		}
				
		return null;			
	}
	
	@RequestMapping(value="/reTop15")
	public ModelAndView reTop15(HttpServletRequest request) {
		Date nowTime = new Date();
		SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd");
		String Date=dt.format(nowTime);		
		
		int cond=Integer.parseInt(request.getParameter("cond"));
		
		if(cond==1) {
			String eat="�ѽ�";
			String ment="������ �Բ� ������ �Ļ縦";
			
			int count=30;
			int hit=foodservice.getContHit(eat);
			List<FoodVO>food=foodservice.getCondList(eat);
			
			ModelAndView m=new ModelAndView("recomTop/reTop15");
			m.addObject("eat", eat);
			m.addObject("Date", Date);
			m.addObject("food", food);		
			m.addObject("ment", ment);
			m.addObject("hit", hit);
			m.addObject("count", count);
			return m;
		}
		else if(cond==2) {
			String eat="�߽�";
			String ment="���� ¥��� �?";
			
			int count=foodservice.getCont_Count(eat);
			int hit=foodservice.getContHit(eat);
			List<FoodVO>food=foodservice.getCondList(eat);
			
			ModelAndView m=new ModelAndView("recomTop/reTop15");
			m.addObject("eat", eat);
			m.addObject("Date", Date);
			m.addObject("food", food);		
			m.addObject("ment", ment);
			m.addObject("hit", hit);
			m.addObject("count", count);
			return m;
		}	else if(cond==3) {
			String eat="�Ͻ�";
			String ment="ȸ�� ���� �����Ѵٸ�?";
			
			int count=foodservice.getCont_Count(eat);
			int hit=foodservice.getContHit(eat);
			List<FoodVO>food=foodservice.getCondList(eat);
			
			ModelAndView m=new ModelAndView("recomTop/reTop15");
			m.addObject("eat", eat);
			m.addObject("Date", Date);
			m.addObject("food", food);		
			m.addObject("ment", ment);
			m.addObject("hit", hit);
			m.addObject("count", count);
			return m;
		}	else if(cond==4) {
			String eat="���";
			String ment="��� ���� �� ����?";
			
			int count=foodservice.getCont_Count(eat);
			int hit=foodservice.getContHit(eat);
			List<FoodVO>food=foodservice.getCondList(eat);
			
			ModelAndView m=new ModelAndView("recomTop/reTop15");
			m.addObject("eat", eat);
			m.addObject("Date", Date);
			m.addObject("food", food);		
			m.addObject("ment", ment);
			m.addObject("hit", hit);
			m.addObject("count", count);
			return m;
		}else if(cond==5) {
			String eat="�ܱ� ����";
			String eat2="%�ܱ�%";
			String ment="���⿡ �̷� ������?";
			
			int count=foodservice.getCont_Count(eat2);
			int hit=foodservice.getContHit(eat2);
			List<FoodVO>food=foodservice.getCondList(eat2);
			
			ModelAndView m=new ModelAndView("recomTop/reTop15");
			m.addObject("eat", eat);
			m.addObject("Date", Date);
			m.addObject("food", food);		
			m.addObject("ment", ment);
			m.addObject("hit", hit);
			m.addObject("count", count);
			return m;
		}	else if(cond==6) {
			String eat="����Ʈ";

			String eat2="%����Ʈ%";
			String ment="����Ʈ�� ����ٸ�? ���?";
			
			int count=foodservice.getCont_Count(eat2);
			int hit=foodservice.getContHit(eat2);
			List<FoodVO>food=foodservice.getCondList(eat2);
			
			ModelAndView m=new ModelAndView("recomTop/reTop15");
			m.addObject("eat", eat);
			m.addObject("Date", Date);
			m.addObject("food", food);		
			m.addObject("ment", ment);
			m.addObject("hit", hit);
			m.addObject("count", count);
			return m;
		}
		
		
		return null;
	}
	
	
	@RequestMapping(value="/reTop20")
	public void reTop20() {
		
	}
	
	@RequestMapping(value="/reTop30")
	public void reTop30() {
		
	}
	
	@GetMapping("/Food_list")
	public ModelAndView search(FoodVO food,HttpSession session) {		
		
		ModelAndView m=new ModelAndView();
		int listcount=foodservice.getTotalCount(food);		
		List<FoodVO> flist=foodservice.getBoardList(food);
					
		m.addObject("flist", flist);
		
		m.addObject("listcount", listcount);
		m.setViewName("/recomTop/Food_list");
				
		return m;
	}

	
	

}
