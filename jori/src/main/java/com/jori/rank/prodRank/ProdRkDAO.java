package com.jori.rank.prodRank;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository("prodRkDao")
public class ProdRkDAO extends RkDAO {
	
	@SuppressWarnings("unchecked")
	public List<ProductsBean> rankListByProd() throws Exception{
		return (List<ProductsBean>)selectList("prodRkList");
	}
	
}//
