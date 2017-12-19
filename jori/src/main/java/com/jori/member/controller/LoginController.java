package com.jori.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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
	
}//
