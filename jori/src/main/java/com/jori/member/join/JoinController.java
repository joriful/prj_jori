package com.jori.member.join;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class JoinController {
	/*@Autowired
	JoinService joinService;*/
	
	JoinService joinService;
	
	@RequestMapping(value="/join", method=RequestMethod.GET)
	public ModelAndView joinGet(ModelAndView mav) {
		
		mav.setViewName("/join");
		
		return mav;
	}
	
	
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public ModelAndView joinPost(ModelAndView mav, MemberBean mbBean) {
		
		int joinNo = 0;
		
		try {
			joinNo = joinService.pushMember(mbBean);
			System.out.println("회원가입 성공"+joinNo);
			
		}catch(SQLException e) {
			e.printStackTrace();
			System.out.println("가입 실패");
		}
		
		return mav;
	}
	
	
}//
