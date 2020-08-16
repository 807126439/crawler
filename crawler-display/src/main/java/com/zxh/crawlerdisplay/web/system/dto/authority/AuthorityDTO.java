package com.zxh.crawlerdisplay.web.system.dto.authority;

import com.zxh.crawlerdisplay.core.common.dto.UUIDDTO;
import org.apache.commons.lang.StringUtils;

import java.util.List;

public class AuthorityDTO extends UUIDDTO {

	private String authCode;
	private String authText;
	private String resourecesUrl;
	private Short authType;
	private Short flag;
	private String icon;
	/**
	 * 新增菜单图标和导航栏图标
	 */
	private String menuIcon;
	private String navBarIcon;

	private Integer authOrder;
	private String parentId;
	private String parentName;
	private Short openWay;
	private Short position;
	private String iconViewPath;
	private List<AuthorityDTO> childAuths;

	public String getMenuIcon() {
		return menuIcon;
	}

	public void setMenuIcon(String menuIcon) {
		this.menuIcon = menuIcon;
	}

	public String getNavBarIcon() {
		return navBarIcon;
	}

	public void setNavBarIcon(String navBarIcon) {
		this.navBarIcon = navBarIcon;
	}

	public String getAuthText() {
		return authText;
	}

	public void setAuthText(String authText) {
		this.authText = authText;
	}

	public String getAuthCode() {
		return authCode;
	}

	public void setAuthCode(String authCode) {
		this.authCode = authCode;
	}

	public String getResourecesUrl() {
		return StringUtils.isBlank(this.resourecesUrl) ? null : this.resourecesUrl;
	}

	public void setResourecesUrl(String resourecesUrl) {
		this.resourecesUrl = resourecesUrl;
	}

	public String getParentId() {
		return StringUtils.isBlank(this.parentId) ? null : this.parentId;
	}

	public void setParentId(String parentId) {
		this.parentId = parentId;
	}

	public String getParentName() {
		return parentName;
	}

	public void setParentName(String parentName) {
		this.parentName = parentName;
	}

	public Short getFlag() {
		return flag;
	}

	public void setFlag(Short flag) {
		this.flag = flag;
	}

	public Short getAuthType() {
		return authType;
	}

	public void setAuthType(Short authType) {
		this.authType = authType;
	}

	public Integer getAuthOrder() {
		return authOrder;
	}

	public void setAuthOrder(Integer authOrder) {
		this.authOrder = authOrder;
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	public Short getOpenWay() {
		return openWay;
	}

	public void setOpenWay(Short openWay) {
		this.openWay = openWay;
	}

	public Short getPosition() {
		return position;
	}

	public void setPosition(Short position) {
		this.position = position;
	}

	public String getIconViewPath() {
		return iconViewPath;
	}

	public void setIconViewPath(String iconViewPath) {
		this.iconViewPath = iconViewPath;
	}

	public List<AuthorityDTO> getChildAuths() {
		return childAuths;
	}

	public void setChildAuths(List<AuthorityDTO> childAuths) {
		this.childAuths = childAuths;
	}

}
