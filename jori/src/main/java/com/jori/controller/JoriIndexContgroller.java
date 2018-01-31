package com.jori.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class JoriIndexContgroller {
	
	//localhost:9090을 입력 하였을때  index.jsp 호출
	@RequestMapping(value="/", method=RequestMethod.GET )
	public ModelAndView indexView(ModelAndView mav) {
		String page ="index";
		mav.setViewName(page);
		
		return mav;
	}
	
	
	//index test
	//localhost:9090을 입력 하였을때  index.jsp 호출
	@RequestMapping(value="/1", method=RequestMethod.GET )
	public ModelAndView indexView0(ModelAndView mav) {
		String page ="index0";
		mav.setViewName(page);
		
		return mav;
	}
	
}//
