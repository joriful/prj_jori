package com.jori.member.model;

import java.sql.Timestamp;

import org.springframework.web.multipart.MultipartFile;

public class JoriMemBean {
	private int jmemNo;
	private String email;
	private String pwd;
	private String nick;
	private Timestamp regdate;
	private int rp;
	private int jPhon;
	private int jZip;
	private String jAddr;
	private String jAddrDetail;
	private int jCoin;
	private String jIcon;
	//salt
	private String joriSlt;
		
	//업로드 아이콘
	private MultipartFile uploadIcon;

	public int getJmemNo() {
		return jmemNo;
	}

	public void setJmemNo(int jmemNo) {
		this.jmemNo = jmemNo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}

	public int getRp() {
		return rp;
	}

	public void setRp(int rp) {
		this.rp = rp;
	}

	public int getjPhon() {
		return jPhon;
	}

	public void setjPhon(int jPhon) {
		this.jPhon = jPhon;
	}

	public int getjZip() {
		return jZip;
	}

	public void setjZip(int jZip) {
		this.jZip = jZip;
	}

	public String getjAddr() {
		return jAddr;
	}

	public void setjAddr(String jAddr) {
		this.jAddr = jAddr;
	}

	public String getjAddrDetail() {
		return jAddrDetail;
	}

	public void setjAddrDetail(String jAddrDetail) {
		this.jAddrDetail = jAddrDetail;
	}

	public int getjCoin() {
		return jCoin;
	}

	public void setjCoin(int jCoin) {
		this.jCoin = jCoin;
	}

	public String getjIcon() {
		return jIcon;
	}

	public void setjIcon(String jIcon) {
		this.jIcon = jIcon;
	}

	public String getJoriSlt() {
		return joriSlt;
	}

	public void setJoriSlt(String joriSlt) {
		this.joriSlt = joriSlt;
	}

	public MultipartFile getUploadIcon() {
		return uploadIcon;
	}

	public void setUploadIcon(MultipartFile uploadIcon) {
		this.uploadIcon = uploadIcon;
	}

	@Override
	public String toString() {
		return "JoriMemBean [jmemNo=" + jmemNo + ", email=" + email + ", pwd=" + pwd + ", nick=" + nick + ", regdate="
				+ regdate + ", rp=" + rp + ", jPhon=" + jPhon + ", jZip=" + jZip + ", jAddr=" + jAddr + ", jAddrDetail="
				+ jAddrDetail + ", jCoin=" + jCoin + ", jIcon=" + jIcon + ", joriSlt=" + joriSlt + ", uploadIcon="
				+ uploadIcon + "]";
	}
	


	
}//
