package com.zxh.crawlerdisplay.web.system.dao;

import java.util.List;
import java.util.Map;

import com.zxh.crawlerdisplay.core.common.dao.IBaseDao;
import com.zxh.crawlerdisplay.web.system.entity.LoginLog;
import org.springframework.stereotype.Repository;

public interface ILoginLogDao extends IBaseDao<Long, LoginLog>{
	
 
    
    public Long countByCondition(Map<String,Object> map);
    
    public List<LoginLog> selectListByCondition(Map<String,Object> map);

}