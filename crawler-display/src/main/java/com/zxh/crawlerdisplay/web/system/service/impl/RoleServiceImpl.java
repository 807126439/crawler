package com.zxh.crawlerdisplay.web.system.service.impl;

import com.zxh.crawlerdisplay.core.common.bean.CommonParam;
import com.zxh.crawlerdisplay.core.common.bean.DataQuery;
import com.zxh.crawlerdisplay.core.common.bean.Page;
import com.zxh.crawlerdisplay.core.common.exception.BusinessException;
import com.zxh.crawlerdisplay.core.common.service.BaseService;
import com.zxh.crawlerdisplay.core.common.utils.Assert;
import com.zxh.crawlerdisplay.core.spring.security.service.IMySecurityMetadataSource;
import com.zxh.crawlerdisplay.web.system.dao.IAuthorityDao;
import com.zxh.crawlerdisplay.web.system.dao.IRoleDao;
import com.zxh.crawlerdisplay.web.system.dao.IUserDao;
import com.zxh.crawlerdisplay.web.system.dto.role.RoleDTO;
import com.zxh.crawlerdisplay.web.system.entity.Role;
import com.zxh.crawlerdisplay.web.system.service.IRoleService;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.*;

@Service("roleService")
@Transactional
public class RoleServiceImpl extends BaseService implements IRoleService {
	@Resource
	private IRoleDao roleDao;
	@Resource
	private IAuthorityDao authorityDao;
	@Resource
	private IUserDao userDao;
//	@Resource
//	private IMySecurityMetadataSource myInvocationSecurityMetadataSource;

	@Override
	public List<RoleDTO> selectRolesByUserId(String userId) {

		List<Role> resultList = this.roleDao.selectRolesByUserId(userId);
		List<RoleDTO> dtoList = new ArrayList<RoleDTO>();
		for (int i = 0; i < resultList.size(); i++) {
			RoleDTO dto = new RoleDTO();
			this.getMapper().map(resultList.get(i), dto);
			dtoList.add(dto);
		}

		return dtoList;
	}

	/**
	 * 根据条件查询对象集合
	 */
	@Override
	public List<RoleDTO> searchListByCondition(DataQuery dq) {
		dq.setNotQueryPage();
		dq.assembleOrderInfo(Role.class, null);
		List<Role> resultList = this.roleDao.selectListByCondition(dq.getQueryMap());
		List<RoleDTO> dtoList = new ArrayList<RoleDTO>();
		for (int i = 0; i < resultList.size(); i++) {
			RoleDTO dto = new RoleDTO();
			this.getMapper().map(resultList.get(i), dto);
			dtoList.add(dto);
		}

		return dtoList;

	}

	/**
	 * 分页查询
	 * 
	 * @return
	 */
	@Override
	public Page<RoleDTO> searchRoleByPage(DataQuery dq) {

		Long recTotal = this.roleDao.countByCondition(dq.assemblePageOffset().getQueryMap());
		dq.assembleOrderInfo(Role.class, null);
		List<Role> list = this.roleDao.selectListByCondition(dq.getQueryMap());

		List<RoleDTO> dtoList = new ArrayList<RoleDTO>();
		for (int i = 0; i < list.size(); i++) {
			RoleDTO dto = new RoleDTO();
			this.getMapper().map(list.get(i), dto);
			dtoList.add(dto);
		}

		return new Page<RoleDTO>(dq.getCurrentPage(), dq.getPageSize(), dtoList, recTotal);
	}

	/**
	 * 查找单个角色
	 * 
	 * @param id
	 * @return
	 */
	@Override
	public RoleDTO getRoleById(String id) {
		if (id == null) {
			throw new BusinessException("param is null");
		}
		Role role = this.roleDao.getById(id);
		RoleDTO dto = new RoleDTO();
		this.getMapper().map(role, dto);

		return dto;

	}

	/**
	 * 添加角色，并设置权限
	 * 
	 * @param dto
	 * @param auths
	 */
	@Override
	public void addRole(RoleDTO dto, String[] auths) {
		if (!StringUtils.isBlank(dto.getRoleName())) {
			Long count = this.roleDao.checkUniqueIsExist(new CommonParam("role_name", dto.getRoleName()));
			if (count > 0) {
				throw new BusinessException("角色码：" + dto.getRoleName() + " 已存在！");
			}
		} else {
			throw new BusinessException("角色码不可为空！");
		}

		if (!StringUtils.isBlank(dto.getRoleText())) {
			Long count = this.roleDao.checkUniqueIsExist(new CommonParam("role_text", dto.getRoleText()));
			if (count > 0) {
				throw new BusinessException("角色名：" + dto.getRoleText() + " 已存在！");
			}
		} else {
			throw new BusinessException("角色名不可为空！");
		}

		Role role = new Role(dto.getRoleName(), dto.getRoleText(), dto.getRoleMemo(), dto.getRoleType());
		this.roleDao.insert(role);

		if (auths != null) {
			Set<String> authIds = new HashSet<String>();
			for (int i = 0; i < auths.length; i++) {
				authIds.add(auths[i]);
			}

			Map<String, Object> queryMap = new HashMap<String, Object>();
			queryMap.put("roleId", role.getId());
			queryMap.put("authIds", authIds);
			this.roleDao.bathInsertRoleAndAuth(queryMap);
		}

	}

	/**
	 * 修改角色
	 * 
	 * @param dto
	 */
	@Override
	public void updateRole(RoleDTO dto, String[] authIds) {
		Role role = this.roleDao.getById(dto.getId());
		if (role == null) {
			throw new BusinessException("can't find the role");
		}

		if (!StringUtils.isBlank(dto.getRoleName())) {
			Long count = this.roleDao.checkUniqueIsExist(new CommonParam("role_name", dto.getRoleName(), role.getId()));
			if (count > 0) {
				throw new BusinessException("角色码：" + dto.getRoleName() + " 已存在！");
			}
		} else {
			throw new BusinessException("角色码不可为空！");
		}

		if (!StringUtils.isBlank(dto.getRoleText())) {
			Long count = this.roleDao.checkUniqueIsExist(new CommonParam("role_text", dto.getRoleText(), role.getId()));
			if (count > 0) {
				throw new BusinessException("角色名：" + dto.getRoleText() + " 已存在！");
			}
		} else {
			throw new BusinessException("角色名不可为空！");
		}

		role.setRoleName(dto.getRoleName());
		role.setRoleText(dto.getRoleText());
		role.setRoleMemo(dto.getRoleMemo());
		role.setRoleType(dto.getRoleType());
		role.setGmtModified(new Date());

		this.roleDao.update(role);

		// 删除角色与权限的关联
		this.roleDao.deleteRoleAndAuthByRoleId(role.getId());

		if (authIds != null && authIds.length > 0) {

			Map<String, Object> queryMap = new HashMap<String, Object>();
			queryMap.put("roleId", role.getId());
			queryMap.put("authIds", authIds);
			this.roleDao.bathInsertRoleAndAuth(queryMap);
		}

	}

	/**
	 * 删除
	 * 
	 * @param ids
	 */
	@Override
	public void deleteRoles(String[] ids) {

		for (int i = 0; i < ids.length; i++) {
			this.roleDao.deleteById(ids[i]);
		}

	}

	/**
	 * 重置用户角色
	 * 
	 * @param userId
	 * @param roleName
	 */
	@Override
	public void resetAccountRole(String userId, String roleName) {
		Assert.hasText(userId, Assert.NULL_PARAM_STR("userId"));
		Assert.hasText(roleName, Assert.NULL_PARAM_STR("roleName"));

		this.userDao.deleteUserAndRoleByUserId(userId);
		Role role = this.roleDao.getUniqueByProperty(new CommonParam("role_name", roleName));
		if (role != null) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("userId", userId);
			map.put("roleIds", new String[] { role.getId() });
			this.userDao.bathInsertUserAndRole(map);
		}
	}

	/**
	 * 重置角色权限缓存
	 */
	@Override
	public void reloadAuthMap() {
//		this.myInvocationSecurityMetadataSource.reloadResourceMap();
	}

}
