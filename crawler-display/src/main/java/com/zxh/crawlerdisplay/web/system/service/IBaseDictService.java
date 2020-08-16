package com.zxh.crawlerdisplay.web.system.service;

import java.util.List;
import java.util.Map;

import com.zxh.crawlerdisplay.core.common.bean.DataQuery;
import com.zxh.crawlerdisplay.core.common.bean.Page;
import com.zxh.crawlerdisplay.web.system.dto.baseDict.BaseDictDTO;

public interface IBaseDictService {

	/**
	 * 获取 值-条目 映射
	 * 
	 * @author wanve_java_cjy 2018-9-14
	 * @param dq
	 * @return
	 */
	public Map<String, String> getValueItemMapByCondition(DataQuery dq);

	public List<BaseDictDTO> searchListByCondition(DataQuery dq);

	public BaseDictDTO getByCondition(DataQuery dq);

	public Page<BaseDictDTO> searchBaseDictByPage(DataQuery dq);

	public BaseDictDTO getDictById(String id);

	public void addDict(BaseDictDTO dto);

	public void updateDict(BaseDictDTO dto);

	public void deleteDicts(String[] ids);
}
