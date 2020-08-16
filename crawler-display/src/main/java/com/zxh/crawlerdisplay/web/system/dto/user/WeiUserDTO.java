package com.zxh.crawlerdisplay.web.system.dto.user;

public class WeiUserDTO {

	private String id;
	private String userName;
	private String phone;
	private String weixinCode;

	private String unitName;

	public WeiUserDTO() {
	}

	public WeiUserDTO(String phone) {
		super();
		this.phone = phone;
	}

	public WeiUserDTO(String userName, String phone, String weixinCode) {
		super();
		this.userName = userName;
		this.phone = phone;
		this.weixinCode = weixinCode;
	}

	public String getUnitName() {
		return unitName;
	}

	public void setUnitName(String unitName) {
		this.unitName = unitName;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getWeixinCode() {
		return weixinCode;
	}

	public void setWeixinCode(String weixinCode) {
		this.weixinCode = weixinCode;
	}

}
