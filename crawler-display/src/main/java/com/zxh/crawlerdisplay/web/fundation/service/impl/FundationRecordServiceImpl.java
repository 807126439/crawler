package com.zxh.crawlerdisplay.web.fundation.service.impl;

import com.zxh.crawlerdisplay.core.common.bean.DataQuery;
import com.zxh.crawlerdisplay.core.common.bean.Page;
import com.zxh.crawlerdisplay.core.common.service.BaseService;
import com.zxh.crawlerdisplay.core.common.utils.Assert;
import com.zxh.crawlerdisplay.dubbo.model.FundationRecord;
import com.zxh.crawlerdisplay.web.fundation.dao.IFundationRecordDao;
import com.zxh.crawlerdisplay.web.fundation.dto.FundationRecordDTO;
import com.zxh.crawlerdisplay.web.fundation.service.IFundationRecordService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service("fundationRecordService")
@Transactional
public class FundationRecordServiceImpl extends BaseService implements IFundationRecordService {

	
   @Resource
   private IFundationRecordDao fundationRecordDao;
   
   
   /**
    * 分页查询
    * @param dq
    */
   @Override
   public Page<FundationRecordDTO> searchByPage(DataQuery dq) {
   		
   		Long recTotal = this.fundationRecordDao.countByCondition(dq.assemblePageOffset().getQueryMap());
		dq.assembleOrderInfo(FundationRecord.class, null);
		List<FundationRecordDTO> resultlist = this.fundationRecordDao.selectListByCondition(dq.getQueryMap());
   
   		return new Page<FundationRecordDTO>(dq.getCurrentPage(), dq.getPageSize(), resultlist, recTotal);
   }

	@Override
	public List<FundationRecordDTO> searchByCode(int code) {
		return this.fundationRecordDao.searchByCode(code);
	}


	/**
    * 查询详细
    * @param id
    */
   @Override
   public FundationRecordDTO getDetailById(String id){
   	   Assert.hasText(id, Assert.NULL_PARAM_STR("id"));
   	   
   
   	   FundationRecordDTO result = this.fundationRecordDao.getDetailById(id);
   	   Assert.notNull(result,Assert.EMPTY_REOCRD_STR);
   	   
   	   return result;
   }
   
   
   
   
   /**
    * 添加
    * @param dto
   	*/
   @Override
   public void addFundationRecord(FundationRecordDTO dto){
   
   	  FundationRecord model = new FundationRecord();
   	  
	  	model.setId(dto.getId());
	  	model.setCode(dto.getCode());
	  	model.setDate(dto.getDate());
	  	model.setNetValue(dto.getNetValue());
	  	model.setAccumulatedNet(dto.getAccumulatedNet());
	  	model.setGrowthRate(dto.getGrowthRate());
	  	model.setBuyStatus(dto.getBuyStatus());
	  	model.setSellStatus(dto.getSellStatus());
	  	model.setDistribution(dto.getDistribution());
   
   	  this.fundationRecordDao.insert(model);
   	  
      this.writeInfoLog("Add: "+model.toString());
      
   }
   
   
   
   /**
    * 修改
    * @param dto
   	*/
   @Override
   public void updateFundationRecord(FundationRecordDTO dto){

    	FundationRecord model = this.fundationRecordDao.getById(dto.getId());
    	Assert.notNull(model,Assert.EMPTY_REOCRD_STR);
    	
	  	model.setId(dto.getId());
	  	model.setCode(dto.getCode());
	  	model.setDate(dto.getDate());
	  	model.setNetValue(dto.getNetValue());
	  	model.setAccumulatedNet(dto.getAccumulatedNet());
	  	model.setGrowthRate(dto.getGrowthRate());
	  	model.setBuyStatus(dto.getBuyStatus());
	  	model.setSellStatus(dto.getSellStatus());
	  	model.setDistribution(dto.getDistribution());
	  
    	this.fundationRecordDao.update(model);
    	   	
    	this.writeInfoLog("Update: "+model.toString());
        
   }
   
   
   
    /**
   	 * 删除
   	 * @param ids
   	 */
    public void deleteFundationRecords(int[] ids){
    	for (int i = 0; i < ids.length; i++) {
			this.fundationRecordDao.deleteById(ids[i]);
				
	    	 this.writeInfoLog("Delete id="+ids[i]);
	        
		}
    }
   

}
