package com.zxh.crawlerdisplay.web.system.service.impl;

import com.zxh.crawlerdisplay.core.common.bean.DataQuery;
import com.zxh.crawlerdisplay.core.common.bean.Page;
import com.zxh.crawlerdisplay.core.common.dto.ZtreeDTO;
import com.zxh.crawlerdisplay.core.common.exception.BusinessException;
import com.zxh.crawlerdisplay.core.common.service.BaseService;
import com.zxh.crawlerdisplay.core.common.utils.Assert;
import com.zxh.crawlerdisplay.core.gobal.GobalVal;
import com.zxh.crawlerdisplay.web.system.dao.IUnitDao;
import com.zxh.crawlerdisplay.web.system.dto.unit.UnitDTO;
import com.zxh.crawlerdisplay.web.system.entity.Unit;
import com.zxh.crawlerdisplay.web.system.service.IBaseDictService;
import com.zxh.crawlerdisplay.web.system.service.IUnitService;
import com.zxh.crawlerdisplay.web.system.service.IUserService;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.*;

@Service("unitService")
@Transactional
public class UnitServiceImpl extends BaseService implements IUnitService {

	@Resource
	private IUnitDao unitDao;
	@Resource
	private IBaseDictService baseDictService;
	@Resource
	private IUserService userService;

	/**
	 * 分页查询
	 * 
	 * @param dq
	 */
	@Override
	public Page<UnitDTO> searchByPage(DataQuery dq) {

		Long recTotal = this.unitDao.countByCondition(dq.assemblePageOffset().getQueryMap());
		dq.assembleOrderInfo(Unit.class, null);
		List<UnitDTO> resultlist = this.unitDao.selectListByCondition(dq.getQueryMap());
		return new Page<UnitDTO>(dq.getCurrentPage(), dq.getPageSize(), resultlist, recTotal);
	}

	/**
	 * 查询详细
	 * 
	 * @param id
	 */
	@Override
	public UnitDTO getDetailById(String id) {
		Assert.hasText(id, Assert.NULL_PARAM_STR("id"));

		UnitDTO result = this.unitDao.getDetailById(id);
		Assert.notNull(result, Assert.EMPTY_REOCRD_STR);

		return result;
	}

	/**
	 * 添加
	 * 
	 * @param dto
	 */
	@Override
	public void addUnit(UnitDTO dto) {
		Assert.hasText(dto.getUnitName(), "请填写单位名称");
		Assert.hasText(dto.getOrganizationCode(), "请填写组织机构代码");

		if (judgeOrganizationCodeExist(dto.getOrganizationCode())) {
			throw new BusinessException("该组织机构代码已存在，请勿重复添加");
		}

		Unit model = new Unit();
		model.setSortNo(dto.getSortNo());
		model.setUnitName(dto.getUnitName());
		model.setOrganizationCode(dto.getOrganizationCode());
		model.setLinkMan(dto.getLinkMan());
		model.setLinkTel(dto.getLinkTel());
		model.setNote(dto.getNote());
		model.setStatus(GobalVal.STATUS_ENABLE);
		model.setFlag(GobalVal.NORMAL_FLAG);
		model.setCreateBy(getNowUser().getUsername());

		this.unitDao.insert(model);

		this.writeInfoLog("Add: " + model.toString());

	}

	/**
	 * 修改
	 * 
	 * @param dto
	 */
	@Override
	public void updateUnit(UnitDTO dto) {
		Assert.hasText(dto.getId(), Assert.NULL_PARAM_STR("id"));
		Assert.hasText(dto.getUnitName(), "请填写单位名称");
		Assert.hasText(dto.getOrganizationCode(), "请填写组织机构代码");

		Unit model = this.unitDao.getById(dto.getId());
		Assert.notNull(model, Assert.EMPTY_REOCRD_STR);

		if (!dto.getOrganizationCode().equals(model.getOrganizationCode())) {
			if (judgeOrganizationCodeExist(dto.getOrganizationCode())) {
				throw new BusinessException("该组织机构代码已存在，请勿重复添加");
			}
		}

		model.setSortNo(dto.getSortNo());
		model.setUnitName(dto.getUnitName());
		model.setOrganizationCode(dto.getOrganizationCode());
		model.setLinkMan(dto.getLinkMan());
		model.setLinkTel(dto.getLinkTel());
		model.setNote(dto.getNote());
		model.setUpdateBy(getNowUser().getUsername());
		model.setGmtModified(new Date());

		this.unitDao.update(model);

		this.writeInfoLog("Update: " + model.toString());

	}

	/**
	 * 删除
	 * 
	 * @param ids
	 */
	@Override
	public void deleteUnits(String[] ids) {
		for (int i = 0; i < ids.length; i++) {
			this.unitDao.deleteById(ids[i]);

			this.writeInfoLog("Delete id:" + ids[i]);

		}
	}

	@Override
	public Boolean judgeOrganizationCodeExist(String organizationCode) {
		DataQuery dq = new DataQuery();
		dq.putToMap("organizationCode", organizationCode);
		Long num = this.unitDao.countByCondition(dq.getQueryMap());
		if (num > 0) {
			return true;
		}
		return false;
	}

	@Override
	public List<ZtreeDTO> getUnitTreeData(String type) {
		List<ZtreeDTO> resultList = new ArrayList<ZtreeDTO>();
		DataQuery dq = new DataQuery();
        if (StringUtils.isNotBlank(type))
			dq.getQueryMap().put("unitType", type);

		dq.getQueryMap().put("sidx", "sort_no");
		dq.getQueryMap().put("sord", "asc");
		List<UnitDTO> unitList = this.unitDao.selectListByCondition(dq.getQueryMap());
		if (unitList != null && unitList.size() > 0) {
			for (UnitDTO unitDTO : unitList) {
				ZtreeDTO ztreeDTO = new ZtreeDTO();
				ztreeDTO.setId(unitDTO.getId());
				ztreeDTO.setName(unitDTO.getUnitName());
				resultList.add(ztreeDTO);
			}
		}
		return resultList;
	}

	@Override
	public List<UnitDTO> selectListByCondition(DataQuery dq) {
		return this.unitDao.selectListByCondition(dq.getQueryMap());
	}

	@Override
	public Map<String, String> selectIdNameMapByCondition(DataQuery dq) {
		dq.assemblePageOffset();
		dq.assembleOrderInfo(Unit.class, null);
		List<UnitDTO> list = this.unitDao.selectListByCondition(dq.getQueryMap());

		Map<String, String> map = new HashMap<String, String>();
		for (UnitDTO dto : list) {
			map.put(dto.getId(), dto.getUnitName());
		}
		return map;
	}

	/**
	 * 根据组织机构代码查询承包商
	 */
	@Override
	public String getOrAddUnitByOrganizationCode(String organizationCode, String unitName, String linkMan, String linkTel) {
		String unitId = "";
		UnitDTO unitDTO = this.unitDao.getDetailByOrganizationCode(organizationCode);
		if (unitDTO != null) {
			unitId = unitDTO.getId();
		} else {
			// 单位不存在，新建单位
			Unit unit = new Unit();
			unit.setOrganizationCode(organizationCode);
			unit.setUnitName(unitName);
			unit.setLinkMan(linkMan);
			unit.setLinkTel(linkTel);
			unit.setFlag(GobalVal.NORMAL_FLAG);
			unit.setStatus(GobalVal.STATUS_ENABLE);
			unit.setCreateBy(getNowUser().getUsername());
			this.unitDao.insert(unit);
			unitId = unit.getId();

			// 新建承包商用户(账号密码均为组织机构代码)
			this.userService.addUnitDefaultUser(unitId, organizationCode, linkMan, "contractorUnit");

		}
		return unitId;
	}
}
