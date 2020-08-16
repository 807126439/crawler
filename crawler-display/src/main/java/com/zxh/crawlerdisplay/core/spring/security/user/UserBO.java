package com.zxh.crawlerdisplay.core.spring.security.user;

import java.util.Collection;
import java.util.Set;

import org.springframework.security.core.GrantedAuthority;

import com.zxh.crawlerdisplay.core.spring.security.user.extend.MyUser;

public class UserBO extends MyUser {

	/**
	 * 
	 */
	private static final long serialVersionUID = -770844264548674026L;
	
	private String unitId;
	private String unitName;

	public UserBO(String username, String password, boolean enabled, boolean accountNonExpired, boolean credentialsNonExpired, boolean accountNonLocked,
			Collection<? extends GrantedAuthority> authorities, Set<String> roleIds, String id, Short userType, String chineseName,String unitId,String unitName) {

		super(username, password, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, authorities, roleIds, id, userType, chineseName);

		this.unitId = unitId;
		this.unitName = unitName;
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

	
	
	
}
