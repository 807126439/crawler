package com.zxh.crawlerdisplay.web.system.dao;

import com.zxh.crawlerdisplay.core.common.bean.CommonParam;
import com.zxh.crawlerdisplay.core.common.dao.IBaseDao;
import com.zxh.crawlerdisplay.web.system.entity.TimeTask;
import org.springframework.stereotype.Repository;

public interface ITimeTaskDao extends IBaseDao<String, TimeTask>{
   
	 public TimeTask getUniqueByProperty(CommonParam cp);
}