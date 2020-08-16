package com.zxh.crawlerdisplay.web.system.service.impl;

import com.zxh.crawlerdisplay.core.common.bean.CommonParam;
import com.zxh.crawlerdisplay.core.common.bean.DataQuery;
import com.zxh.crawlerdisplay.core.common.bean.Page;
import com.zxh.crawlerdisplay.core.common.service.BaseService;
import com.zxh.crawlerdisplay.core.common.utils.Assert;
import com.zxh.crawlerdisplay.core.utils.sys.SimpleAuthUtil;
import com.zxh.crawlerdisplay.web.system.constant.AuthTypeIconConsts;
import com.zxh.crawlerdisplay.web.system.dao.IAuthorityDao;
import com.zxh.crawlerdisplay.web.system.dto.authority.AuthZtreeDto;
import com.zxh.crawlerdisplay.web.system.dto.authority.AuthorityDTO;
import com.zxh.crawlerdisplay.web.system.entity.Authority;
import com.zxh.crawlerdisplay.web.system.service.IAuthorityService;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.*;

@Service("authorityService")
@Transactional
public class AuthorityServiceImpl extends BaseService implements IAuthorityService {
	@Resource
	private IAuthorityDao authorityDao;

	/**
	 * 分页查询
	 * 
	 * @return
	 */
	@Override
	public Page<AuthorityDTO> searchAuthByPage(DataQuery dq) {

		Long recTotal = this.authorityDao.countByCondition(dq.assemblePageOffset().getQueryMap());
		dq.assembleOrderInfo(Authority.class, "a");

		List<AuthorityDTO> list = this.authorityDao.selectListByCondition(dq.getQueryMap());
		DataQuery.wrapTableNo2(list, dq.getStartQuery());

		return new Page<AuthorityDTO>(dq.getCurrentPage(), dq.getPageSize(), list, recTotal);
	}

	/**
	 * 通过id查找权限
	 */
	@Override
	public AuthorityDTO getAuthById(String id) {
		Assert.hasText(id, "id must not be null");

		return this.authorityDao.selectWithLeftParentById(id);

	}

	/**
	 * 获取整棵权限树的结构，如果authId不为空，则在权限树选中对应的节点
	 * 
	 * @param authId
	 * @return
	 */
	@Override
	public String getWholeZtreeStructure(String authId) {

		List<Authority> wholeAuths = this.authorityDao.selectAuthByCondition3(null);

		StringBuilder sb = new StringBuilder("[");
		for (int i = 0; i < wholeAuths.size(); i++) {
			Authority curr = wholeAuths.get(i);
			sb.append("{ id:\"" + curr.getId() + "\"");
			if (StringUtils.isBlank(curr.getParentId())) {
				sb.append(",pId:0");
			} else {
				sb.append(",pId:\"" + curr.getParentId() + "\"");
			}

			sb.append(",name:\"" + (curr.getAuthOrder() == null ? "0" : curr.getAuthOrder()) + "." + curr.getAuthText() + "\"");
			setAuthTypeIcon(sb, curr.getAuthType());
			if (curr.getId().equals(authId)) {

				sb.append(",checked:true");
			}

			sb.append(", open:true},");
		}

		if (sb.length() > 0) {
			sb.deleteCharAt(sb.length() - 1);
			sb.append("]");
		}

		return sb.toString();
	}

	/**
	 * 获取所有的权限节点并生成树结构
	 * 
	 * @param roleId
	 *            角色id
	 * @return
	 */
	@Override
	public String getWholeZtreeWithCheck(String roleId) {

		List<Authority> wholeAuths = this.authorityDao.selectAuthByCondition3(null);

		List<Authority> ownAuths = new ArrayList<Authority>();
		if (!StringUtils.isBlank(roleId)) {
			ownAuths = this.authorityDao.selectAuthByCondition3(roleId);
		}

		// { id:2, pId:0, name:"随意勾选 2", checked:true, open:true},
		StringBuilder sb = new StringBuilder("[");
		for (int i = 0; i < wholeAuths.size(); i++) {
			Authority curr = wholeAuths.get(i);
			sb.append("{ id:\"" + curr.getId() + "\"");
			if (StringUtils.isBlank(curr.getParentId())) {
				sb.append(",pId:0");
			} else {
				sb.append(",pId:\"" + curr.getParentId() + "\"");
			}

			sb.append(",name:\"" + (curr.getAuthOrder() == null ? "0" : curr.getAuthOrder()) + "." + curr.getAuthText() + "\"");
			setAuthTypeIcon(sb, curr.getAuthType());
			if (!ownAuths.isEmpty()) {
				if (ownAuths.contains(curr)) {
					sb.append(",checked:true");
				}
			}

			sb.append(", open:true},");
		}

		if (sb.length() > 0) {
			sb.deleteCharAt(sb.length() - 1);
			sb.append("]");
		}

		return sb.toString();

	}

	private void setAuthTypeIcon(StringBuilder sb, Short authType) {
		switch (authType) {
		case Authority.auth_acess:
			sb.append(",icon:\"" + AuthTypeIconConsts.AUTH_ACCESS + "\"");

			break;
		case Authority.auth_button:
			sb.append(",icon:\"" + AuthTypeIconConsts.AUTH_BUTTON + "\"");

			break;
		case Authority.auth_menu:
			sb.append(",icon:\"" + AuthTypeIconConsts.AUTH_MENU + "\"");

			break;

		default:
			break;
		}
	}

	/**
	 * 查询ztree权限树
	 * 
	 * @param parentId
	 * @param level
	 * @return
	 */
	@Override
	public List<AuthZtreeDto> searchAuthZtree(String parentId, Integer level) {
		List<Authority> authList = this.authorityDao.selectAuthByCondition4(!StringUtils.isBlank(parentId) ? parentId : null);
		List<AuthZtreeDto> dtoList = new ArrayList<AuthZtreeDto>();

		Map<String, Object> queryMap = new HashMap<String, Object>();
		for (int i = 0; i < authList.size(); i++) {
			Authority auth = authList.get(i);
			queryMap.put("parentId", auth.getId());
			AuthZtreeDto dto = new AuthZtreeDto(auth.getId(), (auth.getAuthOrder() == null ? 0 : auth.getAuthOrder()) + "-" + auth.getAuthText(),
					this.authorityDao.countByCondition(queryMap) > 0, auth.getParentId(), level == null ? 0 : level);

			dtoList.add(dto);

		}

		return dtoList;

	}

	/**
	 * 添加权限
	 * 
	 * @param dto
	 */
	@Override
	public String addAuth(AuthorityDTO dto) {
		Assert.hasText(dto.getAuthCode(), "权限码不能为空！");
		Assert.hasText(dto.getAuthText(), "权限名不能为空！");

		Assert.isTrue(Authority.auth_acess == dto.getAuthType() || Authority.auth_button == dto.getAuthType() || Authority.auth_menu == dto.getAuthType(),
				"error value");

		Assert.isTrue(this.authorityDao.checkUniqueIsExist(new CommonParam("auth_code", dto.getAuthCode())) == 0, "权限码已存在！");

		/*
		 * Assert.isTrue( this.authorityDao.checkUniqueIsExist(new
		 * CommonParam("auth_text", dto.getAuthText()))==0, "权限名已存在！");
		 */

		Authority authority = new Authority(dto.getAuthCode(), dto.getAuthText(), dto.getResourecesUrl(), dto.getAuthType(),
				dto.getFlag() == null ? Authority.flag_normal : dto.getFlag(), dto.getIcon(), dto.getAuthOrder(), dto.getParentId(), dto.getOpenWay(),
				dto.getPosition());

		this.authorityDao.insert(authority);

		return authority.getId();
	}

	/**
	 * 修改权限
	 * 
	 * @param dto
	 */
	@Override
	public void updateAuth(AuthorityDTO dto) {
		Assert.hasText(dto.getId(), "id must not be null");
		Assert.hasText(dto.getAuthCode(), "权限码不能为空！");
		Assert.hasText(dto.getAuthText(), "权限名不能为空！");

		Authority authority = this.authorityDao.getById(dto.getId());
		Assert.isTrue(this.authorityDao.checkUniqueIsExist(new CommonParam("auth_code", dto.getAuthCode(), authority.getId())) == 0, "权限码已存在！");

		/*
		 * Assert.isTrue( this.authorityDao.checkUniqueIsExist(new
		 * CommonParam("auth_text", dto.getAuthText(), authority.getId()))==0,
		 * "权限名已存在！");
		 */

		authority.setNavBarIcon(StringUtils.isNotBlank(dto.getNavBarIcon())?dto.getNavBarIcon():"");
		authority.setMenuIcon(StringUtils.isNotBlank(dto.getMenuIcon())?dto.getMenuIcon():"");

		authority.setAuthCode(dto.getAuthCode());
		authority.setAuthText(dto.getAuthText());
		authority.setResourecesUrl(dto.getResourecesUrl());
		authority.setAuthType(dto.getAuthType());
		authority.setFlag(dto.getFlag() == null ? Authority.flag_normal : dto.getFlag());
		authority.setIcon(dto.getIcon());
		authority.setAuthOrder(dto.getAuthOrder());
		authority.setParentId(dto.getParentId());
		authority.setOpenWay(dto.getOpenWay());
		authority.setPosition(dto.getPosition());

		this.authorityDao.update(authority);
	}

	/**
	 * 删除权限
	 * 
	 * @param ids
	 */
	@Override
	public void deleteAuth(String[] ids) {
		for (int i = 0; i < ids.length; i++) {
			//this.authorityDao.deleteById(ids[i]);
			deleteAllChildAuth(ids[i]);
		}
	}

	//递归删除子级权限
	private void deleteAllChildAuth(String id){
		List<Authority> authorities = this.authorityDao.selectAuthByCondition4(id);
		if(authorities!=null&&authorities.size()>0){
			for(Authority authority:authorities){
				deleteAllChildAuth(authority.getId());
			}
		}
		this.authorityDao.deleteById(id);
	}

	/**
	 * 获取权限的控制码
	 *
	 * @param roleIdList
	 * @return
	 */
	@Override
	public List<String> getAuthControlItem(Set<String> roleIdList) {

		Map<String, Object> queryMap = new HashMap<String, Object>();
		queryMap.put("roleIds", roleIdList);
		queryMap.put("flag", Authority.flag_openControl);
		queryMap.put("type", new Short[] { Authority.auth_acess, Authority.auth_button });

		return this.authorityDao.getAuthControlItem(queryMap);
	}

	/**
	 * 获取用户的权限菜单
	 *
	 * @param roleIdList
	 * @param contextName
	 * @return
	 */
	@Override
	public String getAuthMenu(Set<String> roleIdList, String contextName) {

		Map<String, Object> queryMap = new HashMap<String, Object>();
		queryMap.put("roleIds", roleIdList);
		queryMap.put("flag", Authority.flag_openControl);
		queryMap.put("typelist", new short[] { Authority.auth_menu });// 菜单类型
		queryMap.put("position", Authority.POSITION_TOP);// 首页顶部菜单
		List<Authority> topAuthList = this.authorityDao.selectAuthByCondition2(queryMap);

		queryMap.put("position", Authority.POSITION_MORE);// 【更多】中的菜单
		List<Authority> moreAuthList = this.authorityDao.selectAuthByCondition2(queryMap);

		StringBuilder menuStr = new StringBuilder();
		menuStr.append("<ul class=\"header-nav\">");
		// 主页
		menuStr.append("<li class=\"header-nav__item home-item active\">");
		menuStr.append("<a href=\"" + contextName + "/index.do" + "\"><img class='icon-menu' src='" + contextName
				+ "/plug-in/main/images/icons_menu/home.png'/><span class=\"text-menu\">主 页</span></a>");
		menuStr.append("</li>");

		// 顶端菜单
		StringBuilder topMenuStr = new StringBuilder();
		if (topAuthList != null && !topAuthList.isEmpty()) {
			for (Authority auth : topAuthList) {
				topMenuStr.append("<li class=\"header-nav__item\">");
				topMenuStr.append("<a target=\"mainframe\" id=\"" + auth.getAuthCode() + "\" href=\"" + handleUrl(contextName, auth) + "\" >");
				topMenuStr.append("<img class=\"icon-menu\" src=\""  + auth.getMenuIcon() + "\"/>");
				topMenuStr.append("<span class=\"text-menu\">" + auth.getAuthText() + "</span>");
				topMenuStr.append("</a>");
				topMenuStr.append("</li>");
			}
		}
		menuStr.append(topMenuStr);
		// 更多中的菜单
		StringBuilder moreMenuStr = new StringBuilder();
		if (moreAuthList != null && !moreAuthList.isEmpty()) {

			menuStr.append("<li class=\"header-nav__item\" id=\"moreNav\" >");
			menuStr.append("<a href=\"javascript:;\"><img class=\"icon-menu\" src='" + contextName
					+ "/plug-in/main/images/icons_menu/more.png'><span class=\"text-menu\">更 多</span></a>");
			menuStr.append("</li>");
			menuStr.append("</ul>");

			moreMenuStr.append("<div class=\"header-more-nav-bar\">");
			moreMenuStr.append("<ul class=\"header-more-nav\">");
			for (Authority auth : moreAuthList) {
				moreMenuStr.append("<li class=\"header-more-nav__item\">");
				moreMenuStr.append("<a target=\"mainframe\" id=\"" + auth.getAuthCode() + "\" href=\"" + handleUrl(contextName, auth) + "\">");
				moreMenuStr.append("<img class=\"icon-menu\" src=\"" + auth.getNavBarIcon() + "\"/>");
				moreMenuStr.append("<span class=\"text-menu\">" + auth.getAuthText() + "</span>");
				moreMenuStr.append("</a>");
				moreMenuStr.append("</li>");
			}
			moreMenuStr.append("</ul>");
			moreMenuStr.append("</div>");
		} else {
			menuStr.append("</ul>");
		}
		menuStr.append(moreMenuStr);

		return menuStr.toString();
	}

	private String handleUrl(String contextName, Authority auth) {
		String href = "";
		// 有Url则跳转Url
		if (StringUtils.isNotBlank(auth.getResourecesUrl())) {
			try {
				href = contextName + auth.getResourecesUrl() + "?title=" + URLEncoder.encode(URLEncoder.encode(auth.getAuthText(), "utf-8"));
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			// 否则查子菜单
			href = "authController/getChildMenus.do?parentId=" + auth.getId();
		}
		return href;

	}

	// 二三级菜单
	@Override
	public List<Authority> getChildMenuList(String parentId) {

		Assert.hasText(parentId, "parentId null error");

		Map<String, Object> queryMap = new HashMap<String, Object>();
		queryMap.put("roleIds", getNowUser().getRoleIds());
		queryMap.put("flag", Authority.flag_openControl);
		queryMap.put("typelist", new short[] { Authority.auth_menu });// 菜单类型
		queryMap.put("parentId", parentId);

		List<Authority> secondLevelList = this.authorityDao.selectAuthByCondition2(queryMap);

		if (secondLevelList != null && !secondLevelList.isEmpty()) {

			for (Authority slAuthority : secondLevelList) {
				queryMap.put("parentId", slAuthority.getId());
				List<Authority> thirdLevelList = this.authorityDao.selectAuthByCondition2(queryMap);

				if (thirdLevelList != null && !thirdLevelList.isEmpty()) {
					slAuthority.setChildList(thirdLevelList);
				}

			}

		}

		return secondLevelList;
	}

	@Override
	public void createAuthAuto(String className, String chineseName, String parentId) {

		AuthorityDTO dto = SimpleAuthUtil.createAuthDTO(SimpleAuthUtil.MANAGE, className, chineseName, parentId);
		String parnetId = this.addAuth(dto);

		AuthorityDTO dto1 = SimpleAuthUtil.createAuthDTO(SimpleAuthUtil.SKIP_ADD, className, chineseName, parnetId);
		this.addAuth(dto1);

		AuthorityDTO dto2 = SimpleAuthUtil.createAuthDTO(SimpleAuthUtil.ADD, className, chineseName, parnetId);
		this.addAuth(dto2);

		AuthorityDTO dto3 = SimpleAuthUtil.createAuthDTO(SimpleAuthUtil.SKIP_EDIT, className, chineseName, parnetId);
		this.addAuth(dto3);

		AuthorityDTO dto4 = SimpleAuthUtil.createAuthDTO(SimpleAuthUtil.EDIT, className, chineseName, parnetId);
		this.addAuth(dto4);

		AuthorityDTO dto5 = SimpleAuthUtil.createAuthDTO(SimpleAuthUtil.DELETE, className, chineseName, parnetId);
		this.addAuth(dto5);

		AuthorityDTO dto6 = SimpleAuthUtil.createAuthDTO(SimpleAuthUtil.QUERYPAGE, className, chineseName, parnetId);
		this.addAuth(dto6);

	}
}
