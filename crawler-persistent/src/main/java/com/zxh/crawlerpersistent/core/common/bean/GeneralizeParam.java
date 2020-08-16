package com.zxh.crawlerpersistent.core.common.bean;

public class GeneralizeParam {

	private String year;
	private String sn;

	public GeneralizeParam() {
	}

	public GeneralizeParam(String year, String sn) {
		super();
		this.year = year;
		this.sn = sn;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getSn() {
		return sn;
	}

	public void setSn(String sn) {
		this.sn = sn;
	}

}
