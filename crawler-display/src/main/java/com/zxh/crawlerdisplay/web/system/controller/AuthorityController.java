package com.zxh.crawlerdisplay.web.system.controller;

import com.zxh.crawlerdisplay.core.common.bean.AjaxJson;
import com.zxh.crawlerdisplay.core.common.bean.DataQuery;
import com.zxh.crawlerdisplay.core.common.bean.Page;
import com.zxh.crawlerdisplay.core.common.controller.BaseController;
import com.zxh.crawlerdisplay.web.system.dto.authority.AuthZtreeDto;
import com.zxh.crawlerdisplay.web.system.dto.authority.AuthorityDTO;
import com.zxh.crawlerdisplay.web.system.dto.baseDict.BaseDictDTO;
import com.zxh.crawlerdisplay.web.system.entity.BaseDict;
import com.zxh.crawlerdisplay.web.system.service.IAuthorityService;
import com.zxh.crawlerdisplay.web.system.service.IBaseDictService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@Scope("prototype")
@RequestMapping("/authController")
public class AuthorityController extends BaseController {
	/**
	 * 
	 */
	private static final long serialVersionUID = 7179495045003000755L;

	@Autowired
	private IAuthorityService authorityService;
	@Autowired
	private IBaseDictService baseDictService;

	@RequestMapping(value = "viewPage", method = { RequestMethod.GET })
	public String viewAuthPage(HttpServletRequest request) {
		this.wrapMenuTitle(request);

		DataQuery dq = new DataQuery();
		dq.getQueryMap().put("dictType", BaseDict.AUTH_FLAG_DICT_TYPE);
		dq.getQueryMap().put("dictFlag", true);
		List<BaseDictDTO> flagDicts = this.baseDictService.searchListByCondition(dq);

		dq.getQueryMap().put("dictType", BaseDict.AUTH_TYPE_DICT_TYPE);
		List<BaseDictDTO> typeDicts = this.baseDictService.searchListByCondition(dq);

		request.setAttribute("flagDict", flagDicts);
		request.setAttribute("typeDict", typeDicts);

		return "system/auth/authList.ftl";
	}

	/**
	 * 分页查询
	 * 
	 * @param request
	 * @param dq
	 * @param authName
	 * @param authCode
	 * @param parAuthName
	 * @param authType
	 * @param flag
	 * @return
	 */
	@RequestMapping(value = "getPageData", method = { RequestMethod.POST })
	@ResponseBody
	public Map<String, Object> loadAuthByPage(HttpServletRequest request, DataQuery dq, String authName, String authCode, String parAuthName, Short authType,
			Short flag) {

		this.wrapTableQueryParams(request, dq);
		dq.getQueryMap().put("authName", StringUtils.isBlank(authName) ? null : authName);
		dq.getQueryMap().put("authCode", StringUtils.isBlank(authCode) ? null : authCode);
		dq.getQueryMap().put("parAuthName", StringUtils.isBlank(parAuthName) ? null : parAuthName);
		dq.getQueryMap().put("authType", authType);
		dq.getQueryMap().put("flag", flag);

		Page<AuthorityDTO> pageResult = this.authorityService.searchAuthByPage(dq);

		return this.handlePageReult(pageResult);
	}

	/**
	 * 跳转到添加权限
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "skipAddAuth", method = { RequestMethod.GET })
	public String skipAddAuth(HttpServletRequest request) {

		DataQuery dq = new DataQuery(new HashMap<String, Object>());
		dq.getQueryMap().put("dictType", BaseDict.AUTH_FLAG_DICT_TYPE);
		dq.getQueryMap().put("dictFlag", true);
		List<BaseDictDTO> flagDicts = this.baseDictService.searchListByCondition(dq);

		dq.getQueryMap().put("dictType", BaseDict.AUTH_TYPE_DICT_TYPE);
		List<BaseDictDTO> typeDicts = this.baseDictService.searchListByCondition(dq);

		dq.getQueryMap().put("dictType", BaseDict.AUTH_OPEN_WAY_TYPE);
		List<BaseDictDTO> wayDicts = this.baseDictService.searchListByCondition(dq);

		dq.getQueryMap().put("dictType", BaseDict.AUTH_POSITION);
		List<BaseDictDTO> positionDicts = this.baseDictService.searchListByCondition(dq);

		request.setAttribute("flagDict", flagDicts);
		request.setAttribute("typeDict", typeDicts);
		request.setAttribute("wayDicts", wayDicts);
		request.setAttribute("positionDicts", positionDicts);

		String authStructure = this.authorityService.getWholeZtreeStructure(null);
		request.setAttribute("authStructure", authStructure);

		return "system/auth/addAuth.ftl";
	}

	/**
	 * 添加权限
	 * 
	 * @param dto
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/addAuth", method = { RequestMethod.POST })
	@ResponseBody
	public AjaxJson addAuth(AuthorityDTO dto) throws Exception {

		String id = this.authorityService.addAuth(dto);

		return new AjaxJson(this.ADD_SUCCESS_MESSAGE, AjaxJson.success, id);
	}

	/**
	 * 查询单个权限信息
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/getDetail", method = { RequestMethod.GET })
	public ModelAndView loadAuthDetail(HttpServletRequest request, @RequestParam(value = "aid", required = true) String aid) {

		AuthorityDTO result = this.authorityService.getAuthById(aid);
		request.setAttribute("authItem", result);

		DataQuery dq = new DataQuery(new HashMap<String, Object>());
		dq.getQueryMap().put("dictType", BaseDict.AUTH_FLAG_DICT_TYPE);
		dq.getQueryMap().put("dictFlag", true);
		List<BaseDictDTO> flagDicts = this.baseDictService.searchListByCondition(dq);

		dq.getQueryMap().put("dictType", BaseDict.AUTH_TYPE_DICT_TYPE);
		List<BaseDictDTO> typeDicts = this.baseDictService.searchListByCondition(dq);

		dq.getQueryMap().put("dictType", BaseDict.AUTH_OPEN_WAY_TYPE);
		List<BaseDictDTO> wayDicts = this.baseDictService.searchListByCondition(dq);

		dq.getQueryMap().put("dictType", BaseDict.AUTH_POSITION);
		List<BaseDictDTO> positionDicts = this.baseDictService.searchListByCondition(dq);

		request.setAttribute("flagDict", flagDicts);
		request.setAttribute("typeDict", typeDicts);
		request.setAttribute("wayDicts", wayDicts);
		request.setAttribute("positionDicts", positionDicts);

		String authStructure = this.authorityService.getWholeZtreeStructure(result.getId());
		request.setAttribute("authStructure", authStructure);
		request.setAttribute("parAuthId", result.getParentId());

		return new ModelAndView("system/auth/editAuth.ftl");

	}

	/**
	 * 修改权限信息
	 * 
	 * @param dto
	 * @return
	 */
	@RequestMapping(value = "/editAuth", method = { RequestMethod.POST })
	@ResponseBody
	public AjaxJson updateAuth(AuthorityDTO dto) {

		this.authorityService.updateAuth(dto);

		return new AjaxJson(this.EDIT_SUCCESS_MESSAGE, AjaxJson.success);
	}

	/**
	 * 删除权限
     *
     * @param aids
	 * @return
	 */
	@RequestMapping(value = "/delAuth", method = { RequestMethod.POST })
	@ResponseBody
	public AjaxJson deleteAuth(String[] aids) {

		this.authorityService.deleteAuth(aids);

		return new AjaxJson(this.DEL_SUCCESS_MESSAGE, AjaxJson.success);
	}

	@RequestMapping(value = "/getZtree", method = { RequestMethod.POST })
	@ResponseBody
	public List<AuthZtreeDto> loadAuthTree(String pid, Integer level) {

		List<AuthZtreeDto> result = this.authorityService.searchAuthZtree(pid, level);

		return result;
	}

	@RequestMapping(value = "/getChildMenus")
	private String getChildMenus(HttpServletRequest request, String parentId) {
		request.setAttribute("menuName", this.authorityService.getAuthById(parentId).getAuthText());
		request.setAttribute("childMenuList", this.authorityService.getChildMenuList(parentId));
		return "index/childMenu.ftl";
	}

	/**
	 * 跳转到添加权限
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/skipCreateAuthAuto")
	public String skipCreateAuthAuto(HttpServletRequest request) {

		String authStructure = this.authorityService.getWholeZtreeStructure(null);
		request.setAttribute("authStructure", authStructure);

		return "system/auth/createAuthAuto.ftl";
	}

	/**
	 * 一键生成7个基本权限 例如： className = "User" chineseName = "用户"
	 * 
	 * manageUser:用户管理 父权限为parentId 下面6个权限的父权限均为【用户管理】 skipAddUser:跳转添加用户
	 * addUser:添加用户 skipEditUser:跳转编辑用户 editUser:编辑用户 deleteUser:删除用户
	 * queryPageUser:分页查询用户
	 * 
	 */
	@RequestMapping(value = "/createAuthAuto", method = { RequestMethod.POST })
	@ResponseBody
	public AjaxJson createAuthAuto(String className, String chineseName, String parentId) {
		this.authorityService.createAuthAuto(className, chineseName, parentId);
		return new AjaxJson("生成成功", AjaxJson.success);
	}

}
