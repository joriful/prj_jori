package com.jori.rank.prodRank;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProdRkController {
	@Resource(name="ProdRkService")
	private ProdRkService pRankService;
	
	@RequestMapping(value="/rank/prk", method=RequestMethod.GET)
	public ModelAndView pRank() throws Exception {
		List<ProductsBean> prodRkList = new ArrayList<ProductsBean>();
		try{
			prodRkList = pRankService.rankListByProd();
			System.out.println("메뉴 리스트 로딩 성공"+prodRkList.size());
			
		}catch(SQLException e) {
			e.printStackTrace();
			System.out.println("메뉴 랭크 로딩 실패"+prodRkList);
		}
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("prkList", prodRkList);
		mav.addObject("prkSize", prodRkList.size());
		mav.setViewName("/rank/prk");
		
		return mav;
	}
	
	
	
}//
