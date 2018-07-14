package com.jori.menu.indexMenu;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.mybatis.config.MyConfManager;

public class IdxMenuDAO {
	protected Log idxMenulog = LogFactory.getLog(IdxMenuDAO.class);
	
	private SqlSession sqlSession;
	
	@Autowired
	public IdxMenuDAO() {
		MyConfManager confManager = MyConfManager.getInstance();
		sqlSession = confManager.getSqlSessionFactory().openSession();
		
		System.out.println("sessionFactory 성공 IdxMenuDAO");
		
		protected void printQueryId(String queryId) {
		if(idxMenulog.isDebugEnabled()) {
			idxMenulog.debug("\t QueryId  \t:  " + queryId);
		}
	}
		
	}//IdxMenuDAO
	
}//
