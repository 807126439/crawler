package com.zxh.crawlerdisplay.web.system.dao;

import com.zxh.crawlerdisplay.core.common.dao.IBaseDao;
import com.zxh.crawlerdisplay.web.system.dto.iconConfig.IconConfigDTO;
import com.zxh.crawlerdisplay.web.system.entity.IconConfig;

import java.util.List;
import java.util.Map;


public interface IIconConfigDao extends IBaseDao<String, IconConfig> {

	Long countByCondition(Map<String, Object> queryMap);

	List<IconConfigDTO> selectListByCondition(Map<String, Object> queryMap);

}