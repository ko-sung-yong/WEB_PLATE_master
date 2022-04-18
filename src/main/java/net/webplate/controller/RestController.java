package net.webplate.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
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
								

		adminService.getHit(f_num);
		FoodVO f=adminService.getDetails(f_num); // ��������
		String food_menu=f.getMenu().replace("\n", "<br>");
					
		
		
		ModelAndView cm=new ModelAndView();
		cm.addObject("page", page);
		cm.addObject("f_num",f_num);
		cm.addObject("f", f);
		cm.addObject("food_menu", food_menu);
		cm.setViewName("/rest/rest1");
		return cm;	
	
		
		
	}
	
	
	@PostMapping("review_ok")
	public String review_ok(HttpSession session,HttpServletResponse response,HttpServletRequest request)throws Exception {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out=response.getWriter();
		
		String Sid=(String)session.getAttribute("Sid");
		
		if(Sid==null) {
			out.println("<script>");
			out.println("alert('�ٽ� �α��� �ϼ���!');");
			out.println("location='../Member/login';");			
			out.println("</script>");
			
		}
		else {
			int f_num=Integer.parseInt(request.getParameter("f_num"));			
			int star_value=Integer.parseInt(request.getParameter("rating"));
			String cont=request.getParameter("review_cont");
			
			System.out.println(star_value);
			System.out.println(cont);
			
			out.println("<script>");
			out.println("alert('���� ��� �Ϸ�!');");
			out.println("location='rest1?f_num="+f_num+"';");			
			out.println("</script>");
		}
		
		
		return null;
		
	}
	

}
