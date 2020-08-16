package com.zxh.crawlerdisplay.web.system.dao;

import com.zxh.crawlerdisplay.core.common.dao.IBaseDao;
import com.zxh.crawlerdisplay.web.system.dto.department.DepartmentDTO;
import com.zxh.crawlerdisplay.web.system.entity.Department;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

public interface IDepartmentDao extends IBaseDao<String, Department> {

    Long countByCondition(Map<String, Object> queryMap);

    List<DepartmentDTO> selectListByCondition(Map<String, Object> queryMap);

    DepartmentDTO getDetailById(String id);
}