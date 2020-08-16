package com.zxh.crawlerdisplay.web.system.entity;

import java.io.Serializable;

import com.zxh.crawlerdisplay.core.annotations.DbField;
import com.zxh.crawlerdisplay.core.common.entity.UUIDEntity;

public class Role extends UUIDEntity implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 285113260417583942L;

	public static final short TYPE_FRONT = 1;
	public static final short TYPE_BACK = 0;

	public static final String BUILD_UNIT_ROLE_ID = "bccdd20634e311e9a040507b9dae4454"; // 建设单位角色ID

	public static final String AGENT_UNIT_ROLE_ID = "8c3183e3364011e985e9507b9d9e8623"; // 代建单位角色ID

	public static final String CONTRACTOR_UNIT_ROLE_ID = "a4cbabe8364011e985e9507b9d9e8623"; // 承包商角色ID

	public static final String ROLE_ADMIN = "ROLE_ADMIN";

	public static final String ROLE_HOUSING = "ROLE_HOUSING";

	public static final String ROLE_BUILD_UNIT = "ROLE_BUILD_UNIT";

	public static final String ROLE_AGENT_BUILD_UNIT = "ROLE_AGENT_BUILD_UNIT";

	private String roleName;

	private String roleText;

	private String roleMemo;

	private Short flag;

	private Short roleType;

	public Role() {
	}

	public Role(String roleName, String roleText, String roleMemo, Short roleType) {
		super();
		this.roleName = roleName;
		this.roleText = roleText;
		this.roleMemo = roleMemo;
		this.flag = 0;
		this.roleType = roleType;
	}

	@DbField(name = "role_name")
	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName == null ? null : roleName.trim();
	}

	@DbField(name = "role_text")
	public String getRoleText() {
		return roleText;
	}

	public void setRoleText(String roleText) {
		this.roleText = roleText == null ? null : roleText.trim();
	}

	@DbField(name = "role_memo")
	public String getRoleMemo() {
		return roleMemo;
	}

	public void setRoleMemo(String roleMemo) {
		this.roleMemo = roleMemo == null ? null : roleMemo.trim();
	}

	@DbField(name = "flag")
	public Short getFlag() {
		return flag;
	}

	public void setFlag(Short flag) {
		this.flag = flag;
	}

	@DbField(name = "role_type")
	public Short getRoleType() {
		return roleType;
	}

	public void setRoleType(Short roleType) {
		this.roleType = roleType;
	}

}