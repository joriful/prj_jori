package com.jori.member.join;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mybatis.config.MyConfManager;

@Repository("joinDao")
public class JoinDaoImpl implements JoinDAO{
	
	
	private SqlSession sql;
	
	@Autowired
	public JoinDaoImpl() {
		MyConfManager cfManager = MyConfManager.getInstance();
		sql = cfManager.getSqlSessionFactory().openSession();//.openSession();
		
		System.out.println("sessionFactory 성공 JoinDaoImpl");
	}
	
	
	@Override
	public int pushMember(MemberBean mbBean) throws SQLException{
		int joinResult = 0;
		joinResult = (Integer)sql.insert("insertMember", mbBean);
		
		return joinResult;
	}
	
	@Override
	public boolean chkEmail(String email) throws SQLException{
		int emailCount 
			= (Integer)sql.selectOne("chkEmail", email);
		if(emailCount > 0) {
			return true;
		}else {
			return false;
		}
	}
	
}//
