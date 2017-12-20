package com.jori.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Locale;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jori.member.model.LoginInfo;
import com.jori.member.model.MloginDAO;

@Controller
public class LoginController {
	
	@Autowired
	MloginDAO loginDAO;
	
	//localhost:9090을 입력 하였을때  index.jsp 호출
	@RequestMapping(value="/", method=RequestMethod.GET )
	public ModelAndView indexView(ModelAndView mav) {
		String page ="index";
		mav.setViewName(page);
		
		return mav;
	}
	
	@RequestMapping(value="/login/loginChk")
	public void loginChk(Locale locale, Model model, LoginInfo loginInfo, HttpSession session, HttpServletResponse response) 
			throws IOException{
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out=response.getWriter();
		System.out.println("printWriter out="+out);
		
		if((loginInfo.getId() != null && !loginInfo.getId().equals("")
				&& loginInfo.getPassword() != null && !loginInfo.getPassword().equals(""))) {
			
			if(loginDAO.loginChk(loginInfo)) {
				session.setAttribute("login", 0);//로그인 성공시 세션
				
				System.out.println("세션추가 성공");
				
				session.setAttribute("id", loginInfo.getId());
				out.println("<script>location.href='/'; </script>");
				out.flush();
				out.close();
			}
			if(loginDAO.loginChk(loginInfo) == false) {
				out.print("<script>alert('로그인 정보를 확인하세요!'); history.go(-1); </script>");
				out.flush();
				out.close();
			}
		}
	}
	
	//로그아웃 컨트롤러
	@RequestMapping(value="/login/logout")
	public ModelAndView logOut(ModelAndView mav, HttpSession session) {
		String page = "redirect:/";
		session.removeAttribute("id");
		mav.setViewName(page);
		return mav;
	}
	
	
}//
