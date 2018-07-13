package com.jori.menu.indexMenu;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jori.menu.menuMain.ProductsMainBean;

@Controller
public class IndexMenuController {
	@Resource(name="IndexMenuService")
	private IndexMenuService idxMenuService;
	
	@RequestMapping(value="/menu/idxSideMenu", method=RequestMethod.GET)
	public ModelAndView idxSideMenu() throws Exception{
		List<ProductsMainBean> idxsmList = new ArrayList<ProductsMainBean>();
		
		try {
			idxsmList = idxMenuService.idxSiMenuList();
			System.out.println("인덱스 서브메뉴 리스트 출력 성공"+idxsmList.size());
			
		}catch(SQLException e) {
			System.out.println("인덱스 서브메뉴 리스트 출력 실패"+idxsmList);
			e.printStackTrace();
		}
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("idxSiList",  idxsmList);
		mav.addObject("idxSiListSize",  idxsmList.size());
		mav.setViewName("/menu/idxSideMenu");
		
		return mav;
	}//
	
	
	
}//
