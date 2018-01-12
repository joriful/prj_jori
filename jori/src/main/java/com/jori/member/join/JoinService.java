package com.jori.member.join;

import java.sql.SQLException;

public interface JoinService {
	public int pushMember(MemberBean mbBean) throws SQLException;
}//
