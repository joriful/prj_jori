package com.jori.rank.prodRank;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.mybatis.config.MyConfManager;

public class RkDAO {
	protected Log rklog = LogFactory.getLog(RkDAO.class);
	
	
	private SqlSession sqlSession;
	
	@Autowired
	public RkDAO() {
		MyConfManager confManager = MyConfManager.getInstance();
		sqlSession = confManager.getSqlSessionFactory().openSession();
		
		System.out.println("sessionFactory 성공 RkDAO");
	}
	
	protected void printQueryId(String queryId) {
		if(rklog.isDebugEnabled()) {
			rklog.debug("\t QueryId  \t:  " + queryId);
		}
	}
	
	
	@SuppressWarnings("rawtypes")//List<??> 지정하지 않을경우 @SuppressWarnings
	public List selectList(String queryId) {
		printQueryId(queryId);
		return sqlSession.selectList(queryId);
	}//rankListByProd()
	
}//
