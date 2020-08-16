package com.zxh.crawlerdisplay.core.spring.security.service;

import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zxh.crawlerdisplay.core.spring.security.status.ErrorCode;
import com.zxh.crawlerdisplay.core.spring.security.user.UserBO;
import com.zxh.crawlerdisplay.web.system.dao.IRoleDao;
import com.zxh.crawlerdisplay.web.system.dao.IUserDao;
import com.zxh.crawlerdisplay.web.system.dto.user.LoginUserDTO;
import com.zxh.crawlerdisplay.web.system.entity.Role;

@SuppressWarnings("deprecation")
@Service
@Transactional(readOnly = true)
public class MyUserDetailsServiceImpl implements UserDetailsService {
	@Resource
	private IUserDao userDao;
	@Resource
	private IRoleDao roleDao;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		LoginUserDTO user = this.userDao.selectLoginUserByName(username);

		if (user == null) {
			throw new UsernameNotFoundException(ErrorCode.ACCOUNT_ERROR + ",不存在此用户！");
		}

		List<Role> roleList = this.roleDao.selectRolesByUserId(user.getId());
		Set<String> roleIds = new HashSet<String>();
		return new UserBO(user.getUserName(), user.getPassWord(), user.getEnabled(), user.getAccountNonExpired(), user.getCredentialsNonExpired(),
				user.getAccountNonLocked(), getGrantedAuthorities(roleList, roleIds), roleIds, user.getId(), user.getUserType(),
				user.getChineseName(),user.getUnitId(),user.getUnitName());

	}

	// 用于获取用户的权限
	public Collection<GrantedAuthority> getGrantedAuthorities(List<Role> roleList, Set<String> roleIds) {
		Collection<GrantedAuthority> authorities = new HashSet<GrantedAuthority>();

		for (Role rs : roleList) {
			authorities.add(new SimpleGrantedAuthority(rs.getRoleName()));
			roleIds.add(rs.getId());
		}

		return authorities;
	}

	// 用于获取用户的权限
	public static Collection<GrantedAuthority> getGrantedAuthorities(Set<Role> roleSet) {
		Collection<GrantedAuthority> authorities = new HashSet<GrantedAuthority>();

		for (Role rs : roleSet) {
			authorities.add(new SimpleGrantedAuthority(rs.getRoleName()));
		}

		return authorities;
	}

	public static String getRoleStrsFromGrantedAuthority(Collection<GrantedAuthority> authorities) {
		StringBuilder sb = new StringBuilder();
		for (GrantedAuthority authority : authorities) {
			sb.append(authority.getAuthority() + ",");
		}

		return sb.toString();
	}

}
