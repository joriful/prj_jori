package com.jori.menu.indexMenu;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.jori.menu.menuMain.ProductsMainBean;

@Service("IndexMenuService")
public class IndexMenuServiceImpl implements IndexMenuService {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="idxMenuDao")
	private IndexMenuDAO idxMenuDao;
	
	@Override
	public List<ProductsMainBean> idxSiMenuList() throws Exception{
		
		return idxMenuDao.idxSiMenuList();
	}
	
}//
