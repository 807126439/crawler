package com.zxh.crawlerdisplay.web.fundation.service;


import com.zxh.crawlerdisplay.core.common.bean.DataQuery;
import com.zxh.crawlerdisplay.core.common.bean.Page;
import com.zxh.crawlerdisplay.web.fundation.dto.FundationDTO;

public interface IFundationService {

	 Page<FundationDTO> searchByPage(DataQuery dq);
	
	 FundationDTO getDetailById(String id);
	
	 void addFundation(FundationDTO dto);
	
	 void updateFundation(FundationDTO dto);
	
	 void deleteFundations(int[] ids);

}
