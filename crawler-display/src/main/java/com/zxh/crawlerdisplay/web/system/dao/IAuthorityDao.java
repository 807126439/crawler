package com.zxh.crawlerdisplay.web.system.dao;

import java.util.List;
import java.util.Map;

import com.zxh.crawlerdisplay.core.common.bean.CommonParam;
import com.zxh.crawlerdisplay.core.common.dao.IBaseDao;
import com.zxh.crawlerdisplay.web.system.dto.authority.AuthorityDTO;
import com.zxh.crawlerdisplay.web.system.entity.Authority;
import org.springframework.stereotype.Repository;

public interface IAuthorityDao extends IBaseDao<String, Authority>{
	
    
    public AuthorityDTO selectWithLeftParentById(String id);
    
    public Long countByCondition(Map<String, Object> map);
    
    public List<AuthorityDTO> selectListByCondition(Map<String, Object> map);
       
    public List<Authority> selectAuthByCondition(Map<String, Object> map);
    
    public List<Authority> selectAuthByCondition2(Map<String, Object> map);
    
    public List<Authority> selectAuthByCondition3(String roleId);
    
    public List<Authority> selectAuthByCondition4(String parentId);
    
    public List<String> getAuthControlItem(Map<String, Object> map);
    
    public Long checkUniqueIsExist(CommonParam cp);
    
 
}