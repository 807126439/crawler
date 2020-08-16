package com.zxh.crawlerdisplay.web.system.controller;

import com.zxh.crawlerdisplay.core.common.bean.AjaxJson;
import com.zxh.crawlerdisplay.core.common.bean.DataQuery;
import com.zxh.crawlerdisplay.core.common.bean.Page;
import com.zxh.crawlerdisplay.core.common.controller.BaseController;
import com.zxh.crawlerdisplay.core.common.dto.ZtreeDTO;
import com.zxh.crawlerdisplay.core.spring.security.utils.SecurityPrincipalUtil;
import com.zxh.crawlerdisplay.web.system.dto.baseDict.BaseDictDTO;
import com.zxh.crawlerdisplay.web.system.dto.role.RoleDTO;
import com.zxh.crawlerdisplay.web.system.dto.user.UserDTO;
import com.zxh.crawlerdisplay.web.system.entity.BaseDict;
import com.zxh.crawlerdisplay.web.system.entity.Role;
import com.zxh.crawlerdisplay.web.system.service.IBaseDictService;
import com.zxh.crawlerdisplay.web.system.service.IRoleService;
import com.zxh.crawlerdisplay.web.system.service.IUnitService;
import com.zxh.crawlerdisplay.web.system.service.IUserService;
import org.apache.commons.lang.StringUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
@Scope("prototype")
@RequestMapping("/userController")
public class UserController extends BaseController {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5177791084663689444L;
	@Resource
	private IUserService userService;
	@Resource
	private IRoleService roleService;
	@Resource
	private IBaseDictService baseDictService;
	@Resource
	private IUnitService unitService;

	/**
	 * 跳转到用户管理页面
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "viewPage", method = { RequestMethod.GET })
	public String viewUserPage(HttpServletRequest request) {
		
		if(SecurityPrincipalUtil.checkIsHasRole(Role.ROLE_ADMIN)){
			request.setAttribute("isAdmin", Boolean.TRUE.booleanValue());
		}
		

		return "system/user/userList.ftl";
	}
	
	
//	@RequestMapping(value = "viewPageByUnit", method = { RequestMethod.GET })
//	public String viewPageByUnit(HttpServletRequest request) {
//		
//		request.setAttribute("unitId", getNowUser().getUnitId());
//
//		return "system/user/userList.ftl";
//	}
	
	

	/**
	 * 分页查询
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "getPageData", method = { RequestMethod.POST })
	@ResponseBody
	public Map<String, Object> loadUserByPage(HttpServletRequest request, DataQuery dq, String userName, String chineseName, String unitId,String unitName) {

		this.wrapTableQueryParams(request, dq);
		dq.putToMap("userName", StringUtils.isBlank(userName) ? null : "%" + userName + "%")
				.putToMap("chineseName", StringUtils.isBlank(chineseName) ? null : "%" + chineseName + "%").putStringAllLike("unitName", unitName);


		if(!SecurityPrincipalUtil.checkIsHasRole(Role.ROLE_ADMIN)){
			dq.putToMap("unitId", getNowUser().getUnitId());
		}else{
			dq.putToMap("unitId", unitId);
		}
		
		
		Page<UserDTO> pageResult = this.userService.searchUserByPage(dq);

		return this.handlePageReult(pageResult);
	}

	@RequestMapping(value = "/skipAddUser", method = { RequestMethod.GET })
	public String skipAddUser(HttpServletRequest request) {

		// 根据单位的标志查找对应的角色集合
		DataQuery dq = new DataQuery();
		dq.putToMap("roleType", Role.TYPE_BACK);

		List<RoleDTO> roleList = this.roleService.searchListByCondition(dq);
		request.setAttribute("roleList", roleList);
		
		if(!SecurityPrincipalUtil.checkIsHasRole(Role.ROLE_ADMIN)){
			request.setAttribute("unitId", getNowUser().getUnitId());
			request.setAttribute("unitName", this.unitService.getDetailById(getNowUser().getUnitId()).getUnitName());
			
			List<String> ownRoleTexts = new ArrayList<String>();
			for (RoleDTO role : roleList) {
				if(SecurityPrincipalUtil.checkIsHasRole(role.getRoleName())){
					ownRoleTexts.add(role.getRoleText());
				}
			}
			
			
			//StringBuilder ownRoles = new StringBuilder();
			for (RoleDTO role : roleList) {
				for (String roleName : ownRoleTexts) {
					if(role.getRoleText().equals(roleName)){
						role.setCheck(true);
						break;	
					}
					
				}
				
			}
			request.setAttribute("ownRoles", StringUtils.join(ownRoleTexts, ","));
			
		}
		

		request.setAttribute("operation", "add");

		return "system/user/addUser.ftl";
	}

	/**
	 * 添加用户
	 * 
	 * @param dto
	 * @param pwd
	 * @param pwd2
	 * @param roleCodes
	 * @return
	 */
	@RequestMapping(value = "/addUser", method = { RequestMethod.POST })
	@ResponseBody
	public AjaxJson addUser(HttpServletRequest request, UserDTO dto, String pwd, String pwd2, String[] roleIds) {

		this.userService.addUser(dto, pwd, pwd2, roleIds);

		return new AjaxJson(this.ADD_SUCCESS_MESSAGE, AjaxJson.success);
	}

	/**
	 * 查询用户详细信息
	 * 
	 * @param request
	 * @param uid
	 * @param oper
	 * @return
	 */
	@RequestMapping(value = "getDetail", method = { RequestMethod.GET })
	public String loadUserDetail(HttpServletRequest request, @RequestParam(value = "uid", required = true) String uid, String unitId) {

		UserDTO result = this.userService.getUserById(uid);

		request.setAttribute("userItem", result);

		DataQuery dq = new DataQuery();
		dq.putToMap("roleType", Role.TYPE_BACK);

		List<RoleDTO> roleList = this.roleService.searchListByCondition(dq);
		List<RoleDTO> ownRoleList = this.roleService.selectRolesByUserId(result.getId());

		StringBuilder ownRoles = new StringBuilder();
		for (RoleDTO roleDTO : ownRoleList) {
			ownRoles.append(roleDTO.getRoleText() + ",");
		}

		if (ownRoles.length() > 0) {
			ownRoles.deleteCharAt(ownRoles.length() - 1);
		}

		for (int i = 0; i < roleList.size(); i++) {
			for (int j = 0; j < ownRoleList.size(); j++) {
				if (roleList.get(i).getId().equals(ownRoleList.get(j).getId())) {
					roleList.get(i).setCheck(true);
					break;
				}
			}
		}

		request.setAttribute("ownRoles", ownRoles.toString());
		request.setAttribute("roleList", roleList);

		dq.getQueryMap().put("dictType", BaseDict.USER_BACK_TYPE);
		dq.getQueryMap().put("dictFlag", true);
		List<BaseDictDTO> typeDicts = this.baseDictService.searchListByCondition(dq);
		request.setAttribute("typeDicts", typeDicts);
		
		if(!SecurityPrincipalUtil.checkIsHasRole(Role.ROLE_ADMIN)){
			request.setAttribute("unitId", getNowUser().getUnitId());
		}
		
		request.setAttribute("unitName", result.getUnitName());

		request.setAttribute("operation", "edit");

		return "system/user/editUser.ftl";

	}

	/**
	 * 修改用户信息
	 * 
	 * @param dto
	 * @param roleCodes
	 * @return
	 */
	@RequestMapping(value = "/editUser", method = { RequestMethod.POST })
	@ResponseBody
	public AjaxJson updateUser(UserDTO dto, String[] roleIds) {

		this.userService.updateUser(dto, roleIds);

		return new AjaxJson(this.EDIT_SUCCESS_MESSAGE, AjaxJson.success);
	}

	/**
	 * 管理员修改密码
	 * 
	 * @param uid
	 * @param pwd
	 * @param pwd2
	 * @return
	 */
	@RequestMapping(value = "/changePassword", method = { RequestMethod.POST })
	@ResponseBody
	public AjaxJson changePassword(@RequestParam(value = "uid", required = true) String uid, String pwd, String pwd2) {

		this.userService.changePassWordByAdmin(uid, pwd, pwd2);

		return new AjaxJson("修改密码成功！", AjaxJson.success);
	}

	/**
	 * 删除用户
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping(value = "/deleteUser", method = { RequestMethod.POST })
	@ResponseBody
	public AjaxJson deelteUser(String[] ids) {

		this.userService.deleteUser(ids);

		return new AjaxJson(this.DEL_SUCCESS_MESSAGE, AjaxJson.success);
	}

	/**
	 * 停用或恢复账号
	 * 
	 * @param userId
	 * @return
	 */
	@RequestMapping(value = "/changeAccountEnable", method = { RequestMethod.POST })
	@ResponseBody
	public AjaxJson changeAccountEnable(String userId) {

		this.userService.changeAccountEnable(userId);

		return new AjaxJson(this.OPER_SUCCESS_MESSAGE, AjaxJson.success);
	}

	/**
	 * 加载当前用户信息
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "loadMyDetail", method = { RequestMethod.GET })
	public String loadMyDetail(HttpServletRequest request) {

		UserDTO result = this.userService.getUserById(getNowUser().getId());
		request.setAttribute("userItem", result);

		return "system/user/editMy.ftl";
	}

	/**
	 * 修改当前用户信息
	 * 
	 * @return
	 */
	@RequestMapping(value = "/updateMyInfo", method = { RequestMethod.POST })
	@ResponseBody
	public AjaxJson updateNowUserInfo(UserDTO dto) {

		this.userService.updateNowUserInfo(dto);

		return new AjaxJson(this.EDIT_SUCCESS_MESSAGE, AjaxJson.success);
	}

	/**
	 * 用户修改密码页面
	 * 
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "goChangePwd", method = { RequestMethod.GET })
	public String goChangePwd(HttpServletRequest request, Integer model) {

		return "system/user/changePwd.ftl";
	}

	/**
	 * 用户设置密码
	 * 
	 * @param oldPwd
	 * @param pwd
	 * @param pwd2
	 * @return
	 */
	@RequestMapping(value = "/changePwd", method = { RequestMethod.POST })
	@ResponseBody
	public AjaxJson changePwd(String oldPwd, String pwd, String pwd2) {

		this.userService.updatePassWord(oldPwd, pwd, pwd2);

		return new AjaxJson("修改成功！", AjaxJson.success);
	}

	/**
	 * 跳转设置评价人员
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/skipSetEvaluator")
	public String skipSetEvaluator(HttpServletRequest request, String unitId) {
		request.setAttribute("unitId", unitId);
		return "system/user/setEvaluator.ftl";
	}

	/**
	 * 跳转选择人员
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/skipSelectUser")
	public String skipSelectUser(HttpServletRequest request, String unitId) {
		request.setAttribute("unitId", unitId);
		return "system/user/selectUser.ftl";
	}

	/**
	 * 获取用户数据
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/getUserTreeData")
	@ResponseBody
	public List<ZtreeDTO> getUserTreeData(HttpServletRequest request, String unitId) {
		return this.userService.getUserTreeDataByUnitId(unitId);
	}
}
