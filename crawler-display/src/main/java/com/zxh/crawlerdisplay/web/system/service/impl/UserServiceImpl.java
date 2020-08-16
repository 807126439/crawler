package com.zxh.crawlerdisplay.web.system.service.impl;

import com.zxh.crawlerdisplay.core.common.bean.CommonParam;
import com.zxh.crawlerdisplay.core.common.bean.DataQuery;
import com.zxh.crawlerdisplay.core.common.bean.Page;
import com.zxh.crawlerdisplay.core.common.dto.DownLoadDTO;
import com.zxh.crawlerdisplay.core.common.dto.ZtreeDTO;
import com.zxh.crawlerdisplay.core.common.encrypt.Base64Util;
import com.zxh.crawlerdisplay.core.common.encrypt.DESUtil;
import com.zxh.crawlerdisplay.core.common.exception.BusinessException;
import com.zxh.crawlerdisplay.core.common.service.BaseService;
import com.zxh.crawlerdisplay.core.common.utils.Assert;
import com.zxh.crawlerdisplay.core.utils.excel.ExcelUtils;
import com.zxh.crawlerdisplay.core.utils.excel.ExcelUtils.TitleSet;
import com.zxh.crawlerdisplay.core.utils.excel.WrapExcelData;
import com.zxh.crawlerdisplay.core.utils.hash.Md5PassEncodeUtil;
import com.zxh.crawlerdisplay.core.utils.hash.ShaPassEncodeUtil;
import com.zxh.crawlerdisplay.web.file.service.IBaseFileService;
import com.zxh.crawlerdisplay.web.file.service.IZonePathService;
import com.zxh.crawlerdisplay.web.system.dao.IRoleDao;
import com.zxh.crawlerdisplay.web.system.dao.IUserDao;
import com.zxh.crawlerdisplay.web.system.dto.unit.UnitDTO;
import com.zxh.crawlerdisplay.web.system.dto.user.LoginUserDTO;
import com.zxh.crawlerdisplay.web.system.dto.user.UserDTO;
import com.zxh.crawlerdisplay.web.system.entity.Role;
import com.zxh.crawlerdisplay.web.system.entity.User;
import com.zxh.crawlerdisplay.web.system.service.IBaseDictService;
import com.zxh.crawlerdisplay.web.system.service.IRoleService;
import com.zxh.crawlerdisplay.web.system.service.IUnitService;
import com.zxh.crawlerdisplay.web.system.service.IUserService;
import org.apache.commons.lang.StringUtils;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.*;

@Service("userService")
@Transactional
public class UserServiceImpl extends BaseService implements IUserService {
	@Resource
	private IUserDao userDao;
	@Resource
	private IRoleDao roleDao;
	@Resource
	private IBaseDictService baseDictService;
	@Resource
	private IBaseFileService baseFileService;
	@Resource
	private IZonePathService zonePathService;
	@Resource
	private IRoleService roleService;
	@Resource
	private IUnitService unitService;

	@Override
	public Map<String, String> selectIdNameMapByCondition(DataQuery dq) {
		dq.assemblePageOffset();
		dq.assembleOrderInfo(User.class, "u");
		List<UserDTO> userlist = this.userDao.selectListByCondition(dq.getQueryMap());

		Map<String, String> map = new HashMap<String, String>();
		for (UserDTO dto : userlist) {
			map.put(dto.getId(), dto.getChineseName());
		}
		return map;
	}

	/**
	 * 分页查询
	 * 
	 * @return
	 * @author wb_java_zjr
	 */
	@Override
	public Page<UserDTO> searchUserByPage(DataQuery dq) {

		Long recTotal = this.userDao.countByCondition(dq.assemblePageOffset().getQueryMap());
		dq.assembleOrderInfo(User.class, "u");
		List<UserDTO> userlist = this.userDao.selectListByCondition(dq.getQueryMap());

		DataQuery.wrapTableNo2(userlist, dq.getStartQuery());

		return new Page<UserDTO>(dq.getCurrentPage(), dq.getPageSize(), userlist, recTotal);
	}

	/**
	 * 查找单个用户
	 * 
	 * @param id
	 * @return
	 * @author wb_java_zjr
	 */
	@Override
	public UserDTO getUserById(String id) {
		Assert.notNull(id, "id must not be null");
		UserDTO result = this.userDao.getDetailById(id);
		return result;

	}

	/**
	 * 新增用户
	 * 
	 * @param dto
	 * @author wb_java_zjr
	 */
	@Override
	public void addUser(UserDTO dto, String password, String password2, String[] roleIds) {
		Assert.hasText(dto.getUserName(), "用户名不能为空！");
		Assert.hasText(dto.getPhone(), "手机号码不能为空");

		if (this.userDao.checkUniqueIsExist(new CommonParam("user_name", dto.getUserName())) > 0) {
			throw new BusinessException("用户名：" + dto.getUserName() + " 已存在！");
		}

		if (!StringUtils.isBlank(dto.getEmail())) {
			if (this.userDao.checkUniqueIsExist(new CommonParam("email", dto.getEmail())) > 0) {
				throw new BusinessException("邮箱：" + dto.getEmail() + " 已存在！");

			}
		}

		if (!StringUtils.isBlank(dto.getPhone())) {
			if (this.userDao.checkUniqueIsExist(new CommonParam("phone", dto.getPhone())) > 0) {
				throw new BusinessException("手机号码：" + dto.getPhone() + " 已存在！");

			}
		}

		if (!password.equals(password2)) {
			throw new BusinessException("两次输入的密码不一致！");
		}

		// 先用md5加密，再用sha加密
		password = Md5PassEncodeUtil.encode(password);
		String encodePwd = ShaPassEncodeUtil.encodePassWord(dto.getUserName(), password);

		User user = new User(dto.getUserName(), dto.getChineseName(), encodePwd, dto.getEmail(), dto.getUserType(), dto.getPhone(), dto.getOfficeTel(),
				dto.getUnitId(), dto.getMemo(), dto.getWxCode());

		this.userDao.insert(user);

		if (roleIds != null && roleIds.length > 0) {
			Map<String, Object> queryMap = new HashMap<String, Object>();
			queryMap.put("userId", user.getId());
			queryMap.put("roleIds", roleIds);

			this.userDao.bathInsertUserAndRole(queryMap);
		}

		this.writeInfoLog("Add " + user.toString());

	}

	/**
	 * 身份证号码des加密
	 * 
	 * @param idcardNo
	 * @return 2018-10-16 下午5:33:53
	 */
	private String encryptIdcardNo(String idcardNo) {
		String result = null;

		if (StringUtils.isNotBlank(idcardNo)) {
			byte[] orginal = DESUtil.encryptDES(idcardNo.getBytes(), User.IDCARD_SECRET_KEY);
			try {
				result = Base64Util.encryptBASE64(orginal);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return result;
	}

	/**
	 * 身份证号码des解密
	 * 
	 * @param encryptStr
	 * @return 2018-10-16 下午5:38:45
	 */
	private String decryptIdcardNo(String encryptStr) {
		String result = null;
		if (StringUtils.isNotBlank(encryptStr)) {
			try {
				result = new String(DESUtil.decryptDES(Base64Util.decryptBASE64(encryptStr), User.IDCARD_SECRET_KEY));
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return result;
	}

	/**
	 * 修改用户
	 * 
	 * @param dto
	 * @author wb_java_zjr
	 */
	@Override
	public void updateUser(UserDTO dto, String[] roleIds) {
		Assert.notNull(dto.getId(), "id must not be null");
		Assert.hasText(dto.getUserName(), "用户名不能为空！");
		Assert.hasText(dto.getPhone(), "手机号码不能为空");

		User user = this.userDao.getById(dto.getId());

		if (this.userDao.checkUniqueIsExist(new CommonParam("user_name", dto.getUserName(), dto.getId())) > 0) {
			throw new BusinessException("用户名：" + dto.getUserName() + " 已存在！");
		}

		if (!StringUtils.isBlank(dto.getEmail())) {
			if (this.userDao.checkUniqueIsExist(new CommonParam("email", dto.getEmail(), dto.getId())) > 0) {
				throw new BusinessException("邮箱：" + dto.getEmail() + " 已存在！");

			}
		}

		if (!StringUtils.isBlank(dto.getPhone())) {
			if (this.userDao.checkUniqueIsExist(new CommonParam("phone", dto.getPhone(), dto.getId())) > 0) {
				throw new BusinessException("手机号码：" + dto.getPhone() + " 已存在！");

			}
		}

		//user.setUserName(dto.getUserName());
		user.setUnitId(dto.getUnitId());
		user.setChineseName(dto.getChineseName());
		user.setEmail(dto.getEmail());
		user.setPhone(dto.getPhone());
		user.setOfficeTel(dto.getOfficeTel());
		user.setMemo(dto.getMemo());
		user.setEnabled(dto.getEnabled() == null ? false : dto.getEnabled());
		user.setWxCode(dto.getWxCode());

		this.userDao.update(user);

		// 删除用户和角色的关联
		this.userDao.deleteUserAndRoleByUserId(user.getId());

		if (roleIds != null && roleIds.length > 0) {
			Map<String, Object> queryMap = new HashMap<String, Object>();
			queryMap.put("userId", user.getId());
			queryMap.put("roleIds", roleIds);

			this.userDao.bathInsertUserAndRole(queryMap);
		}

		if (this.logger.isInfoEnabled()) {
			this.logger.info("Update " + user.toString());
		}
	}

	/**
	 * 更新当前用户信息
	 * 
	 * @param dto
	 */
	@Override
	public void updateNowUserInfo(UserDTO dto) {

		User user = this.userDao.getById(getNowUserId());

		if (!StringUtils.isBlank(dto.getEmail())) {
			if (this.userDao.checkUniqueIsExist(new CommonParam("email", dto.getEmail(), getNowUserId())) > 0) {
				throw new BusinessException("邮箱：" + dto.getEmail() + " 已存在！");
			}
		}

		if (!StringUtils.isBlank(dto.getPhone())) {
			if (this.userDao.checkUniqueIsExist(new CommonParam("phone", dto.getPhone(), getNowUserId())) > 0) {
				throw new BusinessException("手机号码：" + dto.getPhone() + " 已存在！");
			}
		}

		user.setChineseName(dto.getChineseName());
		user.setPhone(dto.getPhone());
		user.setEmail(dto.getEmail());
		user.setOfficeTel(dto.getOfficeTel());
		user.setGmtModified(new Date());
		user.setWxCode(dto.getWxCode());

		this.userDao.update(user);
	}

	/**
	 * 删除用户
	 * 
	 * @param ids
	 */
	@Override
	public void deleteUser(String[] ids) {
		for (String id : ids) {
			User user = this.userDao.getById(id);
			if (user != null) {

				this.userDao.deleteById(id);

			}

		}
	}

	/**
	 * 管理员修改密码
	 * 
	 * @param userId
	 * @param newPwd
	 * @author wb_java_zjr
	 */
	@Override
	public void changePassWordByAdmin(String userId, String newPwd, String newPwd2) {
		Assert.notNull(userId, "userId must not be null");

		if (!newPwd.equals(newPwd2)) {
			throw new BusinessException("两次输入的密码不一致！");
		}
		User user = this.userDao.getById(userId);

		newPwd = Md5PassEncodeUtil.encode(newPwd);
		String encodePwd = ShaPassEncodeUtil.encodePassWord(user.getUserName(), newPwd);

		Map<String, Object> values = new HashMap<String, Object>();
		values.put("id", user.getId());
		values.put("pwd", encodePwd);

		this.userDao.changePassword(values);

	}

	/**
	 * 用户修改密码
	 * 
	 * @param oldPwd
	 *            旧密码
	 * @param newPwd
	 *            新密码
	 * @param newPwd2
	 *            新密码
	 * @author wb_java_zjr
	 */
	@Override
	public void updatePassWord(String oldPwd, String newPwd, String newPwd2) {
		if (StringUtils.isBlank(oldPwd) || StringUtils.isBlank(newPwd) || StringUtils.isBlank(newPwd2)) {
			throw new BusinessException("输入数据有误！");
		}
		if (!newPwd.equals(newPwd2)) {
			throw new BusinessException("两次输入的密码不一致！");
		}

		User user = this.userDao.getById(getNowUserId());

		oldPwd = Md5PassEncodeUtil.encode(oldPwd);
		oldPwd = ShaPassEncodeUtil.encodePassWord(user.getUserName(), oldPwd);
		if (!oldPwd.equals(user.getPassWord())) {// 检查输入的密码是否正确
			throw new BusinessException("您输入的密码不正确！");
		}

		newPwd = Md5PassEncodeUtil.encode(newPwd);
		String encodePwd = ShaPassEncodeUtil.encodePassWord(user.getUserName(), newPwd);// 加密新的密码

		Map<String, Object> values = new HashMap<String, Object>();
		values.put("id", user.getId());
		values.put("pwd", encodePwd);

		this.userDao.changePassword(values);

	}

	/**
	 * 用户注册
	 * 
	 * @param dto
	 * @param password
	 * @param password2
	 * @param registerType
	 * @param ucode
	 */
	@Override
	public void registerUser(UserDTO dto, String password, String password2, Short registerType, String ucode) {
		Assert.notNull(registerType, "registerType could not be null");
		Assert.hasText(dto.getUserName(), "用户名不能为空");
		Assert.hasText(password, "密码不能为空");
		Assert.hasText(password2, "密码不能为空");
		Assert.isTrue(password.equals(password2), "两次输入的密码不相同");

		String encodePwd = ShaPassEncodeUtil.encodePassWord(dto.getUserName(), password);

		if (this.userDao.checkUniqueIsExist(new CommonParam("user_name", dto.getUserName())) > 0) {
			throw new BusinessException("用户名：" + dto.getUserName() + " 已存在！");
		}

	}

	/**
	 * 导出excel
	 */
	@Override
	public DownLoadDTO exportExcel(DataQuery dq, String dataType) {
		Assert.hasText(dataType, Assert.NULL_PARAM_STR("dataType"));

		// 查询导出数据
		List<UserDTO> userlist = new ArrayList<UserDTO>();

		Assert.notEmpty(userlist, "无导出的数据！");
		WrapExcelData wrapExcelData = null;

		String fileName = null;
		TitleSet[] titleArray = null; // 表头
		if ("unit".equals(dataType)) {
			fileName = "单位注册用户列表";
			titleArray = new TitleSet[] { new TitleSet("序号", 20), new TitleSet("申请单位", 40), new TitleSet("单位性质", 20), new TitleSet("单位级别", 20),
					new TitleSet("经营范围", 50), new TitleSet("法人代表", 30), new TitleSet("联系人", 20), new TitleSet("联系电话", 30), new TitleSet("办公地址", 50),
					new TitleSet("用户名", 30), new TitleSet("忘记密码提示问题", 40), new TitleSet("忘记密码提示答案", 40), new TitleSet("提交时间", 30), new TitleSet("最后修改时间", 30),
					new TitleSet("附件", 80), new TitleSet("状态", 30), new TitleSet("审核意见", 60), new TitleSet("审核人", 30), new TitleSet("审核时间", 30) };

			wrapExcelData = new WrapExcelData<UserDTO>() {

				@Override
				public void wrapData(UserDTO obj, HSSFRow row) {
					row.createCell(0).setCellValue(obj.getSort());

				}
			};

		}

		String savePath = this.zonePathService.getTempFileWholePath("xls");
		ExcelUtils<UserDTO> excelUtils = new ExcelUtils<UserDTO>(titleArray, savePath, userlist, wrapExcelData);

		if (excelUtils.generateExecl()) {

			return new DownLoadDTO(fileName + ".xls", savePath);
		} else {
			throw new BusinessException("导出失败！");
		}

	}

	/**
	 * 停用或恢复账号
	 * 
	 * @param userId
	 */
	@Override
	public void changeAccountEnable(String userId) {
		Assert.hasText(userId, Assert.NULL_PARAM_STR("userId"));

		User account = this.userDao.getById(userId);
		if (account != null) {
			if (account.getEnabled().booleanValue()) {
				account.setEnabled(false);
			} else {
				account.setEnabled(true);
			}

			this.userDao.update(account);

		}

	}

	/**
	 * 添加角色到用户
	 * 
	 * @param userId
	 *            用户id
	 */
	@Override
	public void addRolesToUser(String userId, String[] roleCodes) {
		Assert.hasText(userId, Assert.NULL_PARAM_STR("userId"));
		Assert.notEmpty(roleCodes);

		List<Role> roles = this.roleDao.selectByRoleCodes(roleCodes);
		List<String> roleIds = new ArrayList<String>(roles.size());
		for (Role role : roles) {
			roleIds.add(role.getId());
		}

		if (!roleIds.isEmpty()) {
			Map<String, Object> queryMap = new HashMap<String, Object>();
			queryMap.put("userId", userId);
			queryMap.put("roleIds", roleIds);

			this.userDao.bathInsertUserAndRole(queryMap);
		}
	}

	/**
	 * 删除用户的角色
	 * 
	 * @param userId
	 *            用户id
	 */
	@Override
	public void deleteRolesToUser(String userId, String[] roleCodes) {
		Assert.hasText(userId, Assert.NULL_PARAM_STR("userId"));
		Assert.notEmpty(roleCodes);

		List<Role> roles = this.roleDao.selectByRoleCodes(roleCodes);
		List<String> roleIds = new ArrayList<String>(roles.size());
		for (Role role : roles) {
			roleIds.add(role.getId());
		}

		if (!roleIds.isEmpty()) {
			this.userDao.deleteUserAndRoleRelation(userId, roleIds);
		}

	}

	/**
	 * 验证用户名和密码
	 * 
	 * @param userName
	 * @param pwd
	 * @return
	 */
	@Override
	public LoginUserDTO authenticationUser(String userName, String pwd) {

		LoginUserDTO user = this.userDao.selectLoginUserByName(userName);
		Assert.notNull(user, "不存在此用户");

		String authenticationPwd = ShaPassEncodeUtil.encodePassWord(user.getUserName(), pwd);
		if (!authenticationPwd.equals(user.getPassWord())) {// 检查输入的密码是否正确
			throw new BusinessException("密码不正确");
		}

		return user;
	}

	@Override
	public LoginUserDTO selectLoginUserByName(String userName) {
		LoginUserDTO user = this.userDao.selectLoginUserByName(userName);
		Assert.notNull(user, "不存在此用户");

		return user;
	}

	@Override
	public List<ZtreeDTO> getUserTreeDataByUnitId(String unitId) {
		List<ZtreeDTO> resultList = new ArrayList<ZtreeDTO>();

		UnitDTO unit = this.unitService.getDetailById(unitId);
		ZtreeDTO unitTree = new ZtreeDTO();
		unitTree.setId(unit.getId());
		unitTree.setName(unit.getUnitName());
		unitTree.setIsParent(true);
		resultList.add(unitTree);

		DataQuery dq = new DataQuery();
		dq.putToMap("unitId", unitId);

		// 人员数据
		List<UserDTO> userList = this.userDao.selectListByCondition(dq.getQueryMap());
		if (userList != null && userList.size() > 0) {
			for (UserDTO userDTO : userList) {
				ZtreeDTO ztreeDTO = new ZtreeDTO();
				ztreeDTO.setId(userDTO.getId());
				ztreeDTO.setName(userDTO.getUserName());
				if (StringUtils.isNotBlank(userDTO.getChineseName())) {
					ztreeDTO.setName(userDTO.getChineseName() + "(" + ztreeDTO.getName() + ")");
				}
				ztreeDTO.setpId(unitTree.getId());
				resultList.add(ztreeDTO);
			}
		}

		return resultList;
	}

	@Override
	public void addUnitDefaultUser(String unitId, String userName, String chineseName, String roleType) {

		if (StringUtils.isNotBlank(userName)) {

			if (this.userDao.checkUniqueIsExist(new CommonParam("user_name", userName)) <= 0) {
				// 先用md5加密，再用sha加密
				String password = Md5PassEncodeUtil.encode(userName);
				String encodePwd = ShaPassEncodeUtil.encodePassWord(userName, password);

				User user = new User();
				user.setUnitId(unitId);
				user.setUserName(userName);
				user.setPassWord(encodePwd);
				user.setChineseName(chineseName);
				user.setPhone(userName);
				user.setEnabled(true);
				user.setCredentialsNonExpired(true);
				user.setAccountNonLocked(true);
				user.setAccountNonExpired(true);

				this.userDao.insert(user);

				if (StringUtils.isNotBlank(roleType)) {
					Map<String, Object> queryMap = new HashMap<String, Object>();
					queryMap.put("userId", user.getId());
					String roleId = "";
					if ("buildUnit".equals(roleType)) {
						roleId = Role.BUILD_UNIT_ROLE_ID;
					} else if ("agentUnit".equals(roleType)) {
						roleId = Role.AGENT_UNIT_ROLE_ID;
					} else if ("contractorUnit".equals(roleType)) {
						roleId = Role.CONTRACTOR_UNIT_ROLE_ID;
					}
					queryMap.put("roleIds", new String[] { roleId });
					this.userDao.bathInsertUserAndRole(queryMap);
				}

				this.writeInfoLog("Add " + user.toString());
			}

		}

	}
}
