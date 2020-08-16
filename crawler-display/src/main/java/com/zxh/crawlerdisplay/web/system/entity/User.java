package com.zxh.crawlerdisplay.web.system.entity;

import com.zxh.crawlerdisplay.core.annotations.DbField;
import com.zxh.crawlerdisplay.core.common.entity.UUIDEntity;

import java.io.Serializable;

/**
 * 用户
 * 
 * @author wb_java_zjr
 * 
 */
public class User extends UUIDEntity implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 70102558602794410L;

	public static final short CUST_USER = 1;
	public static final short BACK_USER = 0;

	public static final short CHANGED_PWD = 1;
	public static final short NOT_CHANGE_PWD = 0;

	public static final String IDCARD_SECRET_KEY = "SZDAJ_WANVE_6868888";

	private String userName;

	private String chineseName;

	private String passWord;

	private String email;

	private String phone;

	private String linkAddress;

	private String memo;

	private String unitId;

	private String officeTel;

	private Boolean enabled;

	private Boolean credentialsNonExpired;

	private Boolean accountNonLocked;

	private Boolean accountNonExpired;

	private Short userType;

	private String wxCode;

	public User() {
	}

	/**
	 * 
	 * @param userName
	 * @param chineseName
	 * @param passWord
	 * @param email
	 * @param userType
	 * @param phone
	 * @param memo
	 */
	public User(String userName, String chineseName, String passWord, String email, Short userType, String phone, String officeTel, String unitId, String memo,
			String wxCode) {
		super();
		this.userName = userName;
		this.chineseName = chineseName;
		this.passWord = passWord;
		this.email = email;
		this.userType = userType;
		this.phone = phone;
		this.officeTel = officeTel;
		this.unitId = unitId;
		this.memo = memo;
		this.enabled = true;
		this.credentialsNonExpired = true;
		this.accountNonLocked = true;
		this.accountNonExpired = true;
		this.wxCode = wxCode;
	}

	@DbField(name = "user_name")
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName == null ? null : userName.trim();
	}

	@DbField(name = "chinese_name")
	public String getChineseName() {
		return chineseName;
	}

	public void setChineseName(String chineseName) {
		this.chineseName = chineseName == null ? null : chineseName.trim();
	}

	@DbField(name = "pass_word")
	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord == null ? null : passWord.trim();
	}

	@DbField(name = "email")
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email == null ? null : email.trim();
	}

	@DbField(name = "user_type")
	public Short getUserType() {
		return userType;
	}

	public void setUserType(Short userType) {
		this.userType = userType;
	}

	@DbField(name = "phone")
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone == null ? null : phone.trim();
	}

	@DbField(name = "memo")
	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo == null ? null : memo.trim();
	}

	@DbField(name = "UNIT_ID")
	public String getUnitId() {
		return unitId;
	}

	public void setUnitId(String unitId) {
		this.unitId = unitId;
	}

	@DbField(name = "OFFICE_TEL")
	public String getOfficeTel() {
		return officeTel;
	}

	public void setOfficeTel(String officeTel) {
		this.officeTel = officeTel;
	}

	@DbField(name = "enabled")
	public Boolean getEnabled() {
		return enabled;
	}

	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}

	@DbField(name = "credentials_non_expired")
	public Boolean getCredentialsNonExpired() {
		return credentialsNonExpired;
	}

	public void setCredentialsNonExpired(Boolean credentialsNonExpired) {
		this.credentialsNonExpired = credentialsNonExpired;
	}

	@DbField(name = "account_non_locked")
	public Boolean getAccountNonLocked() {
		return accountNonLocked;
	}

	public void setAccountNonLocked(Boolean accountNonLocked) {
		this.accountNonLocked = accountNonLocked;
	}

	@DbField(name = "account_non_expired")
	public Boolean getAccountNonExpired() {
		return accountNonExpired;
	}

	public void setAccountNonExpired(Boolean accountNonExpired) {
		this.accountNonExpired = accountNonExpired;
	}

	@DbField(name = "wx_code")
	public String getWxCode() {
		return wxCode;
	}

	public void setWxCode(String wxCode) {
		this.wxCode = wxCode;
	}

	@DbField(name = "link_address")
	public String getLinkAddress() {
		return linkAddress;
	}

	public void setLinkAddress(String linkAddress) {
		this.linkAddress = linkAddress;
	}

	@Override
	public String toString() {
		return "User [userName=" + userName + ", chineseName=" + chineseName + ", passWord=" + passWord + ", email=" + email + ", phone=" + phone
				+ ", linkAddress=" + linkAddress + ", memo=" + memo + ", unitId=" + unitId + ", officeTel=" + officeTel + ", enabled=" + enabled
				+ ", credentialsNonExpired=" + credentialsNonExpired + ", accountNonLocked=" + accountNonLocked + ", accountNonExpired=" + accountNonExpired
				+ ", userType=" + userType + ", wxCode=" + wxCode + "]";
	}

}