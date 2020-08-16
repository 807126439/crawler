package com.zxh.crawlerdisplay.web.system.service;

import java.util.List;

import com.zxh.crawlerdisplay.core.common.bean.DataQuery;
import com.zxh.crawlerdisplay.core.common.bean.Page;
import com.zxh.crawlerdisplay.web.system.dto.white.SysWhiteDomainDTO;

public interface ISysWhiteDomainService {

	Page<SysWhiteDomainDTO> searchByPage(DataQuery dq);

	SysWhiteDomainDTO getDetailById(String id);

	void addSysWhiteDomain(SysWhiteDomainDTO dto);

	void updateSysWhiteDomain(SysWhiteDomainDTO dto);

	void deleteSysWhiteDomains(String[] ids);

	List<SysWhiteDomainDTO> searchList(DataQuery dq);

}
