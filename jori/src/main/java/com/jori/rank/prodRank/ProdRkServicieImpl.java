package com.jori.rank.prodRank;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

@Service("ProdRkService")
public class ProdRkServicieImpl implements ProdRkService {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="prodRkDao")
	private ProdRkDAO prodRkDao;
	
	@Override
	public List<ProductsBean> rankListByProd() throws Exception{
		return prodRkDao.rankListByProd();
	}
	
}//
