package com.zxh.crawlerdisplay.web.system.service.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zxh.crawlerdisplay.core.common.bean.DataQuery;
import com.zxh.crawlerdisplay.core.common.bean.Page;
import com.zxh.crawlerdisplay.core.common.service.BaseService;
import com.zxh.crawlerdisplay.core.common.utils.Assert;
import com.zxh.crawlerdisplay.web.system.dao.ISysWhiteDomainDao;
import com.zxh.crawlerdisplay.web.system.dto.white.SysWhiteDomainDTO;
import com.zxh.crawlerdisplay.web.system.entity.SysWhiteDomain;
import com.zxh.crawlerdisplay.web.system.service.ISysWhiteDomainService;

@Service("sysWhiteDomainService")
@Transactional
public class SysWhiteDomainServiceImpl extends BaseService implements ISysWhiteDomainService {

	@Resource
	private ISysWhiteDomainDao sysWhiteDomainDao;

	@Override
	public List<SysWhiteDomainDTO> searchList(DataQuery dq) {

		List<SysWhiteDomainDTO> resultlist = this.sysWhiteDomainDao.selectListByCondition(dq.getQueryMap());

		return resultlist;
	}

	/**
	 * 分页查询
	 * 
	 * @param dq
	 */
	@Override
	public Page<SysWhiteDomainDTO> searchByPage(DataQuery dq) {

		Long recTotal = this.sysWhiteDomainDao.countByCondition(dq.assemblePageOffset().getQueryMap());
		dq.assembleOrderInfo(SysWhiteDomain.class, null);
		List<SysWhiteDomainDTO> resultlist = this.sysWhiteDomainDao.selectListByCondition(dq.getQueryMap());

		DataQuery.wrapTableNo2(resultlist, dq.getStartQuery());

		return new Page<SysWhiteDomainDTO>(dq.getCurrentPage(), dq.getPageSize(), resultlist, recTotal);
	}

	/**
	 * 查询详细
	 * 
	 * @param id
	 */
	@Override
	public SysWhiteDomainDTO getDetailById(String id) {
		Assert.hasText(id, Assert.NULL_PARAM_STR("id"));

		SysWhiteDomainDTO result = this.sysWhiteDomainDao.getDetailById(id);
		Assert.notNull(result, Assert.EMPTY_REOCRD_STR);

		return result;
	}

	/**
	 * 添加
	 * 
	 * @param dto
	 */
	@Override
	public void addSysWhiteDomain(SysWhiteDomainDTO dto) {

		SysWhiteDomain model = new SysWhiteDomain();
		model.setSort(dto.getSort());
		model.setWhiteAddress(dto.getWhiteAddress());
		model.setStatus(dto.getStatus());
		model.setCreateBy(getNowUser().getUsername());

		this.sysWhiteDomainDao.insert(model);

		if (this.logger.isInfoEnabled()) {
			this.logger.info("Add: " + model.toString());
		}
	}

	/**
	 * 修改
	 * 
	 * @param dto
	 */
	@Override
	public void updateSysWhiteDomain(SysWhiteDomainDTO dto) {
		Assert.hasText(dto.getId(), Assert.NULL_PARAM_STR("id"));

		SysWhiteDomain model = this.sysWhiteDomainDao.getById(dto.getId());
		Assert.notNull(model, Assert.EMPTY_REOCRD_STR);

		model.setWhiteAddress(dto.getWhiteAddress());
		model.setStatus(dto.getStatus());
		model.setUpdateBy(getNowUser().getUsername());
		model.setGmtModified(new Date());

		this.sysWhiteDomainDao.update(model);

		if (this.logger.isInfoEnabled()) {
			this.logger.info("Update: " + model.toString());
		}
	}

	/**
	 * 删除
	 * 
	 * @param ids
	 */
	@Override
	public void deleteSysWhiteDomains(String[] ids) {
		for (int i = 0; i < ids.length; i++) {
			this.sysWhiteDomainDao.deleteById(ids[i]);

			if (this.logger.isInfoEnabled()) {
				this.logger.info("Delete id=" + ids[i]);
			}
		}
	}

}
