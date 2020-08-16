package com.zxh.crawlerdisplay.web.system.service;

import com.zxh.crawlerdisplay.core.common.bean.DataQuery;
import com.zxh.crawlerdisplay.core.common.bean.Page;
import com.zxh.crawlerdisplay.web.system.dto.log.SysLogsDTO;

public interface ISysLogsService {

	 Page<SysLogsDTO> searchByPage(DataQuery dq);
	
	 SysLogsDTO getDetailById(Long id);
	
	 void deleteSysLogss(Long[] ids);

}
