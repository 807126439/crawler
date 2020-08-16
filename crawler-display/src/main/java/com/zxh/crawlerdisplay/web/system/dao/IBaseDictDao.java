package com.zxh.crawlerdisplay.web.system.dao;

import java.util.List;
import java.util.Map;

import com.zxh.crawlerdisplay.core.common.dao.IBaseDao;
import com.zxh.crawlerdisplay.web.system.entity.BaseDict;
import org.springframework.stereotype.Repository;

public interface IBaseDictDao extends IBaseDao<String, BaseDict>{



      
    public Long countByCondition(Map<String, Object> queryMap);
    
    public List<BaseDict> selectListByCondition(Map<String, Object> queryMap);
}