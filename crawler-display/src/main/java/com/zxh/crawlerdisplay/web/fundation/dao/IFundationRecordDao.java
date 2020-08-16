package com.zxh.crawlerdisplay.web.fundation.dao;

import com.zxh.crawlerdisplay.core.common.dao.IBaseDao;
import com.zxh.crawlerdisplay.dubbo.model.FundationRecord;
import com.zxh.crawlerdisplay.web.fundation.dto.FundationRecordDTO;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface IFundationRecordDao extends IBaseDao<Integer, FundationRecord> {

    Long countByCondition(Map<String, Object> queryMap);

    List<FundationRecordDTO> selectListByCondition(Map<String, Object> queryMap);

    FundationRecordDTO getDetailById(String id);

    List<FundationRecordDTO> searchByCode(@Param("code") int code);
}