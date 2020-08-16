package com.zxh.crawlerdisplay.web.system.service;


import com.zxh.crawlerdisplay.core.common.bean.DataQuery;
import com.zxh.crawlerdisplay.core.common.bean.Page;
import com.zxh.crawlerdisplay.web.system.dto.iconConfig.IconConfigDTO;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Map;


public interface IIconConfigService {

	List<IconConfigDTO> selectListByCondition(DataQuery dq);

	Page<IconConfigDTO> searchByPage(DataQuery dq);

	void deleteIconConfigs(String[] ids);

	/**
	 * 添加新图标
	 */
	void addIconConfig(Short iconType, MultipartFile file);

	/**
	 * 获取分类图标列表
	 */
	Map<String, List<IconConfigDTO>> getIconList();

}
