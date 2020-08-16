package com.zxh.crawlerdisplay.web.system.dao;

import java.util.List;
import java.util.Map;

import com.zxh.crawlerdisplay.core.common.dao.IBaseDao;
import com.zxh.crawlerdisplay.web.system.dto.unit.UnitDTO;
import com.zxh.crawlerdisplay.web.system.entity.Unit;
import org.springframework.stereotype.Repository;

public interface IUnitDao extends IBaseDao<String, Unit> {

	Long countByCondition(Map<String, Object> queryMap);

	List<UnitDTO> selectListByCondition(Map<String, Object> queryMap);

	UnitDTO getDetailById(String id);

	UnitDTO getDetailByOrganizationCode(String organizationCode);
}