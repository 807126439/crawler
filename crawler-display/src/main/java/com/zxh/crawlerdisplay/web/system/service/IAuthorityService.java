package com.zxh.crawlerdisplay.web.system.service;

import java.util.List;
import java.util.Set;

import com.zxh.crawlerdisplay.core.common.bean.DataQuery;
import com.zxh.crawlerdisplay.core.common.bean.Page;
import com.zxh.crawlerdisplay.web.system.dto.authority.AuthZtreeDto;
import com.zxh.crawlerdisplay.web.system.dto.authority.AuthorityDTO;
import com.zxh.crawlerdisplay.web.system.entity.Authority;

public interface IAuthorityService {

	public Page<AuthorityDTO> searchAuthByPage(DataQuery dq);

	public String getWholeZtreeWithCheck(String roleId);

	public List<AuthZtreeDto> searchAuthZtree(String parentId, Integer level);

	public AuthorityDTO getAuthById(String id);

	public String addAuth(AuthorityDTO dto);

	public void updateAuth(AuthorityDTO dto);

	public void deleteAuth(String[] ids);

	public List<String> getAuthControlItem(Set<String> roleIdList);

	public String getAuthMenu(Set<String> roleIdList, String contextName);

	public List<Authority> getChildMenuList(String parentId);

	public String getWholeZtreeStructure(String authId);

	void createAuthAuto(String className, String chineseName, String parentId);

}
