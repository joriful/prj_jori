package com.jori.member.join;

import java.sql.SQLException;

public interface JoinDAO {
	public int pushMember(MemberBean mbBean) throws SQLException;
}//
