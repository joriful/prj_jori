package com.jori.rank.prodRank;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.jori.hubDao.HubDAO;

@Repository("prodRkDao")
public class ProdRkDAO extends HubDAO {
	
	@SuppressWarnings("unchecked")
	public List<ProductsBean> rankListByProd() throws Exception{
		return (List<ProductsBean>)selectList("prodRkList");
	}
	
}//
