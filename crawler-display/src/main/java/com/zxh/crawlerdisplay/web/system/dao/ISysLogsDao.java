package com.zxh.crawlerdisplay.web.system.dao;

import com.zxh.crawlerdisplay.core.common.dao.IBaseDao;
import com.zxh.crawlerdisplay.web.system.dto.log.SysLogsDTO;
import com.zxh.crawlerdisplay.web.system.entity.SysLogs;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

public interface ISysLogsDao extends IBaseDao<Long, SysLogs> {

    Long countByCondition(Map<String, Object> queryMap);

    List<SysLogsDTO> selectListByCondition(Map<String, Object> queryMap);

    SysLogsDTO getDetailById(Long id);
}