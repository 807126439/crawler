package com.zxh.crawlerdisplay.web.system.entity;

import com.zxh.crawlerdisplay.core.annotations.DbField;
import com.zxh.crawlerdisplay.core.common.entity.UUIDEntity;

import java.io.Serializable;
import java.util.List;

/**
 * 1.只有authType为auth_acess或auth_button的数据才会纳入权限管理 auth_menu的不会纳入权限管理，充当一个链接的作用
 * 2.flag=1的记录开启对页面的元素的权限控制
 * 
 * @author wb_java_zjr
 * 
 */
public class Authority extends UUIDEntity implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2035792886208959436L;

	public final static short flag_openControl = 1;
	public final static short flag_normal = 0;

	public final static short auth_menu = 0;
	public final static short auth_acess = 1;
	public final static short auth_button = 2;

	public final static short SELF_OPEN_WAY = 0;
	public final static short PARENT_OPEN_WAY = 1;
	public final static short BLANK_OPEN_WAY = 2;

	public final static short POSITION_TOP = 1; // 首页顶部菜单

	public final static short POSITION_MORE = 2; // 【更多】中的菜单

	public final static short POSITION_NO_INDEX_PAGE = 3; // 非首页菜单

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
	private Short openWay;
	private Short position;

	// 非数据库字段
	private List<Authority> childList;

	public Authority() {
	}

	public Authority(String authCode, String authText, String resourecesUrl, Short authType, Short flag, String icon, Integer authOrder, String parentId,
			Short openWay, Short position) {
		super();
		this.authCode = authCode;
		this.authText = authText;
		this.resourecesUrl = resourecesUrl;
		this.authType = authType;
		this.flag = flag;
		this.icon = icon;
		this.authOrder = authOrder;
		this.parentId = parentId;
		this.openWay = openWay;
		this.position = position;
	}
	@DbField(name = "menu_icon")
	public String getMenuIcon() {
		return menuIcon;
	}

	public void setMenuIcon(String menuIcon) {
		this.menuIcon = menuIcon;
	}
	@DbField(name = "nav_bar_icon")
	public String getNavBarIcon() {
		return navBarIcon;
	}

	public void setNavBarIcon(String navBarIcon) {
		this.navBarIcon = navBarIcon;
	}

	@DbField(name = "auth_code")
	public String getAuthCode() {
		return authCode;
	}

	public void setAuthCode(String authCode) {
		this.authCode = authCode == null ? null : authCode.trim();
	}

	@DbField(name = "auth_text")
	public String getAuthText() {
		return authText;
	}

	public void setAuthText(String authText) {
		this.authText = authText == null ? null : authText.trim();
	}

	@DbField(name = "resoureces_url")
	public String getResourecesUrl() {
		return resourecesUrl;
	}

	public void setResourecesUrl(String resourecesUrl) {
		this.resourecesUrl = resourecesUrl == null ? null : resourecesUrl.trim();
	}

	@DbField(name = "auth_type")
	public Short getAuthType() {
		return authType;
	}

	public void setAuthType(Short authType) {
		this.authType = authType;
	}

	@DbField(name = "flag")
	public Short getFlag() {
		return flag;
	}

	public void setFlag(Short flag) {
		this.flag = flag;
	}

	@DbField(name = "icon")
	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon == null ? null : icon.trim();
	}

	@DbField(name = "auth_order")
	public Integer getAuthOrder() {
		return authOrder;
	}

	public void setAuthOrder(Integer authOrder) {
		this.authOrder = authOrder;
	}

	@DbField(name = "parent_id")
	public String getParentId() {
		return parentId;
	}

	public void setParentId(String parentId) {
		this.parentId = parentId == null ? null : parentId.trim();
	}

	@DbField(name = "open_way")
	public Short getOpenWay() {
		return openWay;
	}

	public void setOpenWay(Short openWay) {
		this.openWay = openWay;
	}

	@DbField(name = "position")
	public Short getPosition() {
		return position;
	}

	public void setPosition(Short position) {
		this.position = position;
	}

	public List<Authority> getChildList() {
		return childList;
	}

	public void setChildList(List<Authority> childList) {
		this.childList = childList;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append(getClass().getSimpleName());
		sb.append(" [");
		sb.append("Hash = ").append(hashCode());
		sb.append(",Super = ").append(super.toString());
		sb.append(", serialVersionUID=").append(serialVersionUID);
		sb.append(", authCode=").append(authCode);
		sb.append(", authText=").append(authText);
		sb.append(", authOrder=").append(authOrder);
		sb.append(", authType=").append(authType);
		sb.append(", resourecesUrl=").append(resourecesUrl);
		sb.append(", flag=").append(flag);
		sb.append(", icon=").append(icon);
		sb.append(", parentId=").append(parentId);
		sb.append(", openWay=").append(openWay);
		sb.append("]");
		return sb.toString();
	}
}