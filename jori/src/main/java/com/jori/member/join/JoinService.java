package com.jori.member.join;

import java.sql.SQLException;

public interface JoinService {
	//회원가입
	public int pushMember(MemberBean mbBean) throws SQLException;
	
	public boolean chkEmail(String emnail) throws SQLException;
	
	//체크 이메일
}//
