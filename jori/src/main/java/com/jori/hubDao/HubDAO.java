package com.jori.hubDao;


import java.util.List;

import org.apache.ibatis.logging.Log;
import org.apache.ibatis.logging.LogFactory;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.mybatis.config.MyConfManager;



public class HubDAO {
	protected Log log = LogFactory.getLog(HubDAO.class);
	
	private SqlSession sqlSession;
			
	@Autowired
	public HubDAO() {
		MyConfManager confManager = MyConfManager.getInstance();
		sqlSession = confManager.getSqlSessionFactory().openSession();
		
		System.out.println("sessionFactory 성공 HubDAO");
	}
	
	protected void printQueryId(String queryId) {
		if(log.isDebugEnabled()) {
			log.debug("\t QueryId  \t:  " + queryId);
		}
	}
	
	@SuppressWarnings("rawtypes")
	public List selectList(String queryId) {
		printQueryId(queryId);
		return sqlSession.selectList(queryId);
	}
	
}//
