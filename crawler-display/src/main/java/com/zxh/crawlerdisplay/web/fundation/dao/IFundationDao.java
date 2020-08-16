package com.zxh.crawlerdisplay.web.fundation.dao;

import com.zxh.crawlerdisplay.core.common.dao.IBaseDao;
import com.zxh.crawlerdisplay.web.fundation.dto.FundationDTO;
import com.zxh.crawlerdisplay.web.fundation.entity.Fundation;

import java.util.List;
import java.util.Map;

public interface IFundationDao extends IBaseDao<Integer, Fundation> {

    Long countByCondition(Map<String, Object> queryMap);

    List<FundationDTO> selectListByCondition(Map<String, Object> queryMap);

    FundationDTO getDetailById(String id);
}