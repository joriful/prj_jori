package com.jori.rank.prodRank;

public class ProductsBean {
	private int gdNo;
	private int gdcgNo;
	private String gdName;
	private String gdUrl;
	private int gdodrCnt;
	private int gdprice;
	private int prodSort;
	
	private String gdInfo;

	public int getGdNo() {
		return gdNo;
	}

	public void setGdNo(int gdNo) {
		this.gdNo = gdNo;
	}

	public int getGdcgNo() {
		return gdcgNo;
	}

	public void setGdcgNo(int gdcgNo) {
		this.gdcgNo = gdcgNo;
	}

	public String getGdName() {
		return gdName;
	}

	public void setGdName(String gdName) {
		this.gdName = gdName;
	}

	public String getGdUrl() {
		return gdUrl;
	}

	public void setGdUrl(String gdUrl) {
		this.gdUrl = gdUrl;
	}

	public int getGdodrCnt() {
		return gdodrCnt;
	}

	public void setGdodrCnt(int gdodrCnt) {
		this.gdodrCnt = gdodrCnt;
	}

	public int getGdprice() {
		return gdprice;
	}

	public void setGdprice(int gdprice) {
		this.gdprice = gdprice;
	}

	public int getProdSort() {
		return prodSort;
	}

	public void setProdSort(int prodSort) {
		this.prodSort = prodSort;
	}

	public String getGdInfo() {
		return gdInfo;
	}

	public void setGdInfo(String gdInfo) {
		this.gdInfo = gdInfo;
	}

	@Override
	public String toString() {
		return "ProductsBean [gdNo=" + gdNo + ", gdcgNo=" + gdcgNo + ", gdName=" + gdName + ", gdUrl=" + gdUrl
				+ ", gdodrCnt=" + gdodrCnt + ", gdprice=" + gdprice + ", prodSort=" + prodSort + ", gdInfo=" + gdInfo
				+ "]";
	}
	
	
}//
