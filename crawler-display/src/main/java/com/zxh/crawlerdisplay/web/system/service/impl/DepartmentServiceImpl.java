package com.zxh.crawlerdisplay.web.system.service.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zxh.crawlerdisplay.core.common.bean.DataQuery;
import com.zxh.crawlerdisplay.core.common.bean.Page;
import com.zxh.crawlerdisplay.core.common.exception.BusinessException;
import com.zxh.crawlerdisplay.core.common.service.BaseService;
import com.zxh.crawlerdisplay.core.common.utils.Assert;
import com.zxh.crawlerdisplay.core.gobal.GobalVal;
import com.zxh.crawlerdisplay.web.system.dao.IDepartmentDao;
import com.zxh.crawlerdisplay.web.system.dto.department.DepartmentDTO;
import com.zxh.crawlerdisplay.web.system.entity.Department;
import com.zxh.crawlerdisplay.web.system.service.IDepartmentService;

@Service("departmentService")
@Transactional
public class DepartmentServiceImpl extends BaseService implements IDepartmentService {

	@Resource
	private IDepartmentDao departmentDao;

	/**
	 * 分页查询
	 * 
	 * @param dq
	 */
	@Override
	public Page<DepartmentDTO> searchByPage(DataQuery dq) {

		Long recTotal = this.departmentDao.countByCondition(dq.assemblePageOffset().getQueryMap());
		dq.assembleOrderInfo(Department.class, null);
		List<DepartmentDTO> resultlist = this.departmentDao.selectListByCondition(dq.getQueryMap());

		return new Page<DepartmentDTO>(dq.getCurrentPage(), dq.getPageSize(), resultlist, recTotal);
	}

	/**
	 * 查询详细
	 * 
	 * @param id
	 */
	@Override
	public DepartmentDTO getDetailById(String id) {
		Assert.hasText(id, Assert.NULL_PARAM_STR("id"));

		DepartmentDTO result = this.departmentDao.getDetailById(id);
		Assert.notNull(result, Assert.EMPTY_REOCRD_STR);

		return result;
	}

	/**
	 * 添加
	 * 
	 * @param dto
	 */
	@Override
	public void addDepartment(DepartmentDTO dto) {
		Assert.hasText(dto.getUnitId(), "请选择单位");
		Assert.hasText(dto.getDepartNo(), "请填写部门编号");
		Assert.hasText(dto.getDepartName(), "请填写部门名称");

		if (isDepartmentNoExist(dto.getUnitId(), dto.getDepartNo())) {
			throw new BusinessException("此部门编号在该单位下已存在，请勿重复添加");
		}

		Department model = new Department();
		model.setUnitId(dto.getUnitId());
		model.setDepartNo(dto.getDepartNo());
		model.setDepartName(dto.getDepartName());
		model.setNote(dto.getNote());
		model.setLevel(dto.getLevel());
		model.setStatus(GobalVal.STATUS_ENABLE);
		model.setFlag(GobalVal.NORMAL_FLAG);

		this.departmentDao.insert(model);

		this.writeInfoLog("Add: " + model.toString());

	}

	/**
	 * 修改
	 * 
	 * @param dto
	 */
	@Override
	public void updateDepartment(DepartmentDTO dto) {
		Assert.hasText(dto.getUnitId(), "请选择单位");
		Assert.hasText(dto.getDepartNo(), "请填写部门编号");
		Assert.hasText(dto.getDepartName(), "请填写部门名称");
		Assert.hasText(dto.getId(), Assert.NULL_PARAM_STR("id"));

		Department model = this.departmentDao.getById(dto.getId());
		Assert.notNull(model, Assert.EMPTY_REOCRD_STR);

		if (!dto.getDepartNo().equals(model.getDepartNo())) {
			if (isDepartmentNoExist(dto.getUnitId(), dto.getDepartNo())) {
				throw new BusinessException("此部门编号在该单位下已存在，请勿重复添加");
			}
		}

		model.setDepartNo(dto.getDepartNo());
		model.setDepartName(dto.getDepartName());
		model.setNote(dto.getNote());
		model.setLevel(dto.getLevel());
		model.setUnitId(dto.getUnitId());
		model.setGmtModified(new Date());

		this.departmentDao.update(model);

		this.writeInfoLog("Update: " + model.toString());

	}

	/**
	 * 删除
	 * 
	 * @param ids
	 */
	@Override
	public void deleteDepartments(String[] ids) {
		for (int i = 0; i < ids.length; i++) {
			this.departmentDao.deleteById(ids[i]);

			this.writeInfoLog("Delete id:" + ids[i]);

		}
	}

	@Override
	public Boolean isDepartmentNoExist(String unitId, String departNo) {
		DataQuery dq = new DataQuery();
		dq.putToMap("unitId", unitId);
		dq.putToMap("departNo", departNo);
		Long num = this.departmentDao.countByCondition(dq.getQueryMap());
		return num > 0 ? true : false;
	}

}
