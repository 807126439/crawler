package com.zxh.crawlerdisplay.web.system.service;

import com.zxh.crawlerdisplay.core.common.bean.DataQuery;
import com.zxh.crawlerdisplay.core.common.bean.Page;
import com.zxh.crawlerdisplay.web.system.dto.department.DepartmentDTO;

public interface IDepartmentService {

	Page<DepartmentDTO> searchByPage(DataQuery dq);

	DepartmentDTO getDetailById(String id);

	void addDepartment(DepartmentDTO dto);

	void updateDepartment(DepartmentDTO dto);

	void deleteDepartments(String[] ids);

	Boolean isDepartmentNoExist(String unitId, String departNo);

}
