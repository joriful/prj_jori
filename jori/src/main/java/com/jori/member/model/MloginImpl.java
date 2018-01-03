package com.jori.member.model;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MloginImpl implements MloginDAO {
	
	@Autowired
	private SqlSession sql;
	
	@Override
	public boolean loginChk(MloginInfo loginInfo) {
		int count = Integer.parseInt(sql.selectOne("loginChk", loginInfo).toString()),
				totalCount = sql.selectOne("totalAccount");
		
		if(totalCount > 0) {
			if(count > 0) {
			return true;
			
			}else
				return false;
			}
		return false;
		}
}//
