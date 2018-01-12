package com.jori.member.join;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("joinService")
public class JoinServiceImpl implements JoinService{
	@Autowired
	private JoinDAO joinDao;
	
	@Override
	public int pushMember(MemberBean mbBean) throws SQLException{
		
		return joinDao.pushMember(mbBean);
	};
	
}//
