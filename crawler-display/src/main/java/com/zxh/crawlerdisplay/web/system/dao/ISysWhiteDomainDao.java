package com.zxh.crawlerdisplay.web.system.dao;

import com.zxh.crawlerdisplay.core.common.dao.IBaseDao;
import com.zxh.crawlerdisplay.web.system.dto.white.SysWhiteDomainDTO;
import com.zxh.crawlerdisplay.web.system.entity.SysWhiteDomain;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

public interface ISysWhiteDomainDao extends IBaseDao<String, SysWhiteDomain> {

    Long countByCondition(Map<String, Object> queryMap);

    List<SysWhiteDomainDTO> selectListByCondition(Map<String, Object> queryMap);

    SysWhiteDomainDTO getDetailById(String id);
}