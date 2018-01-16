package com.jori.member.join;

import java.sql.SQLException;

public interface JoinService {
	//회원가입
	public int pushMember(MemberBean mbBean) throws SQLException;
	
	//체크 이메일
}//
