package com.zxh.crawlerdisplay.web.fundation.service;


import com.zxh.crawlerdisplay.core.common.bean.DataQuery;
import com.zxh.crawlerdisplay.core.common.bean.Page;
import com.zxh.crawlerdisplay.web.fundation.dto.FundationRecordDTO;

import java.util.List;

public interface IFundationRecordService {

	 Page<FundationRecordDTO> searchByPage(DataQuery dq);

	List<FundationRecordDTO> searchByCode( int code);
	
	 FundationRecordDTO getDetailById(String id);
	
	 void addFundationRecord(FundationRecordDTO dto);
	
	 void updateFundationRecord(FundationRecordDTO dto);
	
	 void deleteFundationRecords(int[] ids);

}
