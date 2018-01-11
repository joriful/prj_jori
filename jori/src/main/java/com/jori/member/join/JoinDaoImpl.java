package com.jori.member.join;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class JoinDaoImpl implements JoinDAO{
	
	@Autowired
	private SqlSession sql;
	
	@Override
	public int pushMember(MemberBean mbBean) throws SQLException{
		int joinResult = 0;
		/*joinResult = sql.insert("insertMember", mbBean);*/
		joinResult = (Integer)sql.insert("insertMember", mbBean);
		
		return joinResult;
	}
	
	
}//
