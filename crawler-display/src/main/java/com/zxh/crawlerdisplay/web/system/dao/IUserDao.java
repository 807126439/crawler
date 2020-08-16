package com.zxh.crawlerdisplay.web.system.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.zxh.crawlerdisplay.core.common.bean.CommonParam;
import com.zxh.crawlerdisplay.core.common.dao.IBaseDao;
import com.zxh.crawlerdisplay.web.system.dto.user.LoginUserDTO;
import com.zxh.crawlerdisplay.web.system.dto.user.SimpleUserDTO;
import com.zxh.crawlerdisplay.web.system.dto.user.UserDTO;
import com.zxh.crawlerdisplay.web.system.dto.user.UserZettDTO;
import com.zxh.crawlerdisplay.web.system.dto.user.WeiUserDTO;
import com.zxh.crawlerdisplay.web.system.entity.User;
import org.springframework.stereotype.Repository;

public interface IUserDao extends IBaseDao<String, User> {

	User getByUserName(String userName);

	List<UserDTO> selectListByCondition(Map<String, Object> queryMap);

	Long countByCondition(Map<String, Object> queryMap);

	User getUniqueByProperty(CommonParam param);

	Long checkUniqueIsExist(CommonParam cp);

	void bathInsertUserAndRole(Map<String, Object> queryMap);

	void deleteUserAndRoleByUserId(String userId);

	void changePassword(Map<String, Object> values);

	LoginUserDTO selectLoginUserByName(String userName);

	UserDTO getDetailById(@Param("id") String id);

	void deleteUserAndRoleRelation(@Param("userId") String userId, @Param("roleIds") List<String> roleIds);

	List<UserZettDTO> selectUnitList(@Param("unitIds") List<String> unitIds);

	List<SimpleUserDTO> selectSimpleUserListByCondition(Map<String, Object> queryMap);

	List<WeiUserDTO> getRecvMsgUserByUnitId(String unitId);

}