package com.zxh.crawlerdisplay.web.system.service;

import java.util.List;

import com.zxh.crawlerdisplay.core.common.bean.DataQuery;
import com.zxh.crawlerdisplay.core.common.bean.Page;
import com.zxh.crawlerdisplay.web.system.dto.role.RoleDTO;

public interface IRoleService {
	
	public List<RoleDTO> selectRolesByUserId(String userId);
	
	public List<RoleDTO> searchListByCondition(DataQuery dq);
	
	public Page<RoleDTO> searchRoleByPage(DataQuery dq);
	
	public RoleDTO getRoleById(String id);
	
	public void addRole(RoleDTO dto,String[] auths);
	
	public void updateRole(RoleDTO dto,String[]  auths);
	
	public void deleteRoles(String[] ids);	
	
	public void resetAccountRole(String userId,String roleName);
	
	public void reloadAuthMap();

	
}
