package com.zxh.crawlerdisplay.web.system.service;

import java.util.List;
import java.util.Map;

import com.zxh.crawlerdisplay.core.common.bean.DataQuery;
import com.zxh.crawlerdisplay.core.common.bean.Page;
import com.zxh.crawlerdisplay.core.common.dto.ZtreeDTO;
import com.zxh.crawlerdisplay.web.system.dto.unit.UnitDTO;

public interface IUnitService {

	Map<String, String> selectIdNameMapByCondition(DataQuery dq);

	Page<UnitDTO> searchByPage(DataQuery dq);

	List<UnitDTO> selectListByCondition(DataQuery dq);

	UnitDTO getDetailById(String id);

	void addUnit(UnitDTO dto);

	void updateUnit(UnitDTO dto);

	void deleteUnits(String[] ids);

	Boolean judgeOrganizationCodeExist(String organizationCode);

	List<ZtreeDTO> getUnitTreeData(String type);

	String getOrAddUnitByOrganizationCode(String organizationCode, String unitName, String linkMan, String linkTel);

}
