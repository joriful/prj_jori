package com.jori.member.model;

import java.sql.Timestamp;

import org.springframework.web.multipart.MultipartFile;

public class JoriMemBean {
	private int memberNo;
	private String memberId;
	private String nickName;
	private String pwd;
	private String email;
	private Timestamp joindate;
	private int mileage;
	private int joriCoupon;
	private String myIcon;
	
	//업로드 아이콘
	private MultipartFile uploadIcon;
	
	//salt
	private String joriSlt;

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Timestamp getJoindate() {
		return joindate;
	}

	public void setJoindate(Timestamp joindate) {
		this.joindate = joindate;
	}

	public int getMileage() {
		return mileage;
	}

	public void setMileage(int mileage) {
		this.mileage = mileage;
	}

	public int getJoriCoupon() {
		return joriCoupon;
	}

	public void setJoriCoupon(int joriCoupon) {
		this.joriCoupon = joriCoupon;
	}

	public String getMyIcon() {
		return myIcon;
	}

	public void setMyIcon(String myIcon) {
		this.myIcon = myIcon;
	}

	public MultipartFile getUploadIcon() {
		return uploadIcon;
	}

	public void setUploadIcon(MultipartFile uploadIcon) {
		this.uploadIcon = uploadIcon;
	}

	public String getJoriSlt() {
		return joriSlt;
	}

	public void setJoriSlt(String joriSlt) {
		this.joriSlt = joriSlt;
	}

	@Override
	public String toString() {
		return "JoriMemBean [memberNo=" + memberNo + ", memberId=" + memberId + ", nickName=" + nickName + ", pwd="
				+ pwd + ", email=" + email + ", joindate=" + joindate + ", mileage=" + mileage + ", joriCoupon="
				+ joriCoupon + ", myIcon=" + myIcon + ", uploadIcon=" + uploadIcon + ", joriSlt=" + joriSlt + "]";
	}
	
}//
