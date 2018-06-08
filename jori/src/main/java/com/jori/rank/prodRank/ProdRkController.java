package com.jori.rank.prodRank;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public class ProdRkController {
	@Resource(name="pRankService")
	private ProdRkService pRankService;
	
	@RequestMapping(value="/rk/prk")
	public ModelAndView pRank() throws Exception {
		List<ProductsBean> prodRkList = new ArrayList<ProductsBean>();
		try{
			prodRkList = pRankService.rankListByProd();
			System.out.println("메뉴 리스트 로딩 성공"+prodRkList);
			
		}catch(SQLException e) {
			e.printStackTrace();
			System.out.println("메뉴 랭크 로딩 실패"+prodRkList);
		}
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("prodRkList", prodRkList);
		mav.setViewName("/prk");
		
		return mav;
	}
	
	
	
}//
