package com.zxh.crawlerdisplay.web.system.dto.user;

import java.util.Date;

import com.zxh.crawlerdisplay.core.common.dto.UUIDDTO;

public class UserDTO extends UUIDDTO {

	private String userName;
	private String chineseName;
	private String email; // 邮箱地址
	private Short userType; // 用户类型
	private String phone; // 联系电话/手机号码
	private Date createTime; // 创建时间
	private String memo; // 备注
	private String officeTel;
	private String unitId;
	private Boolean enabled;
	private String unitName;
	private String wxCode;
	private String linkAddress;

	public UserDTO() {
	}

	public UserDTO(String userName, String chineseName, String phone, String unitId) {
		super();
		this.userName = userName;
		this.chineseName = chineseName;
		this.phone = phone;
		this.unitId = unitId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getChineseName() {
		return chineseName;
	}

	public void setChineseName(String chineseName) {
		this.chineseName = chineseName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Short getUserType() {
		return userType;
	}

	public void setUserType(Short userType) {
		this.userType = userType;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public Boolean getEnabled() {
		return enabled;
	}

	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}

	public String getOfficeTel() {
		return officeTel;
	}

	public void setOfficeTel(String officeTel) {
		this.officeTel = officeTel;
	}

	public String getUnitId() {
		return unitId;
	}

	public void setUnitId(String unitId) {
		this.unitId = unitId;
	}

	public String getUnitName() {
		return unitName;
	}

	public void setUnitName(String unitName) {
		this.unitName = unitName;
	}

	public String getWxCode() {
		return wxCode;
	}

	public void setWxCode(String wxCode) {
		this.wxCode = wxCode;
	}

	public String getLinkAddress() {
		return linkAddress;
	}

	public void setLinkAddress(String linkAddress) {
		this.linkAddress = linkAddress;
	}

}
