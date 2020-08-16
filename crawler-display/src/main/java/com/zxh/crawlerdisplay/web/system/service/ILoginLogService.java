package com.zxh.crawlerdisplay.web.system.service;

import com.zxh.crawlerdisplay.core.common.bean.DataQuery;
import com.zxh.crawlerdisplay.core.common.bean.Page;
import com.zxh.crawlerdisplay.web.system.dto.log.LoginLogDTO;

public interface ILoginLogService {

	public void saveLog(LoginLogDTO dto);
	
	public Page<LoginLogDTO> searchLoginLogByPage(DataQuery dq);
	
	public void deleteLogs(Long[] ids);
}
