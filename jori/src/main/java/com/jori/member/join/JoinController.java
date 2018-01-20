package com.jori.member.join;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class JoinController {
	@Autowired
	private JoinService joinService;
	
	public void setFvService(JoinService joinService){
		this.joinService=joinService;
	}
	
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
			System.out.println("����媛��� �깃났"+joinNo);
			
		}catch(SQLException e) {
			e.printStackTrace();
			System.out.println("媛��� �ㅽ��");
		}
		
		return mav;
	}
	
	@RequestMapping(value="/chkEmail")
	public ModelAndView chkEmail(ModelAndView mav, String email){
		boolean emailFlag = false;
		
		try{
			emailFlag = joinService.chkEmail(email);
		}catch(SQLException e){
			e.printStackTrace();
			System.out.println("이메일체크 실패");
		}
		
		mav.addObject("emailChkValue", emailFlag);
		mav.setViewName("/join");
		return mav;
	}
	
	
}//
