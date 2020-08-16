package com.zxh.crawlerdisplay.web.system.service;

import java.util.List;
import java.util.Map;

import com.zxh.crawlerdisplay.core.common.bean.DataQuery;
import com.zxh.crawlerdisplay.core.common.bean.Page;
import com.zxh.crawlerdisplay.core.common.dto.DownLoadDTO;
import com.zxh.crawlerdisplay.core.common.dto.ZtreeDTO;
import com.zxh.crawlerdisplay.web.system.dto.user.LoginUserDTO;
import com.zxh.crawlerdisplay.web.system.dto.user.UserDTO;

public interface IUserService {

	Map<String, String> selectIdNameMapByCondition(DataQuery dq);

	Page<UserDTO> searchUserByPage(DataQuery dq);

	UserDTO getUserById(String id);

	void addUser(UserDTO dto, String password, String password2, String[] roleIds);

	void updateUser(UserDTO dto, String[] roleIds);

	void changePassWordByAdmin(String userId, String newPwd, String newPwd2);

	void updatePassWord(String oldPwd, String newPwd, String newPwd2);

	void deleteUser(String[] ids);

	void updateNowUserInfo(UserDTO dto);

	void registerUser(UserDTO dto, String password, String password2, Short registerType, String ucode);

	DownLoadDTO exportExcel(DataQuery dq, String dataType);

	void changeAccountEnable(String userId);

	void addRolesToUser(String userId, String[] roleCodes);

	void deleteRolesToUser(String userId, String[] roleCodes);

	LoginUserDTO authenticationUser(String userName, String pwd);

	LoginUserDTO selectLoginUserByName(String userName);

	List<ZtreeDTO> getUserTreeDataByUnitId(String unitId);

	void addUnitDefaultUser(String unitId, String userName, String chineseName, String roleType);

}
