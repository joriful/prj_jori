package com.jori.menu.indexMenu;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.jori.menu.menuMain.ProductsMainBean;

@Repository("idxMenuDao")
public class IndexMenuDAO extends IdxMenuDAO {
	
	public List<ProductsMainBean> idxSiMenuList() throws Exception{
		return (List<ProductsMainBean>)selectList("sideMenuList");
	}//idxSiMenuList
	
}//
