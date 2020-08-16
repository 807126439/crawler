package com.zxh.crawlerdisplay.web.fundation.service.impl;

import com.zxh.crawlerdisplay.core.common.bean.DataQuery;
import com.zxh.crawlerdisplay.core.common.bean.Page;
import com.zxh.crawlerdisplay.core.common.service.BaseService;
import com.zxh.crawlerdisplay.core.common.utils.Assert;
import com.zxh.crawlerdisplay.web.fundation.dao.IFundationDao;
import com.zxh.crawlerdisplay.web.fundation.dto.FundationDTO;
import com.zxh.crawlerdisplay.web.fundation.entity.Fundation;
import com.zxh.crawlerdisplay.web.fundation.service.IFundationService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Service("fundationService")
@Transactional
public class FundationServiceImpl extends BaseService implements IFundationService {

	
   @Resource
   private IFundationDao fundationDao;
   
   
   /**
    * 分页查询
    * @param dq
    */
   @Override
   public Page<FundationDTO> searchByPage(DataQuery dq) {
   		
   		Long recTotal = this.fundationDao.countByCondition(dq.assemblePageOffset().getQueryMap());
		dq.assembleOrderInfo(Fundation.class, null);
		List<FundationDTO> resultlist = this.fundationDao.selectListByCondition(dq.getQueryMap());
   
   		return new Page<FundationDTO>(dq.getCurrentPage(), dq.getPageSize(), resultlist, recTotal);
   }
   
   
   /**
    * 查询详细
    * @param id
    */
   @Override
   public FundationDTO getDetailById(String id){
   	   Assert.hasText(id, Assert.NULL_PARAM_STR("id"));
   	   
   
   	   FundationDTO result = this.fundationDao.getDetailById(id);
   	   Assert.notNull(result,Assert.EMPTY_REOCRD_STR);
   	   
   	   return result;
   }
   
   
   
   
   /**
    * 添加
    * @param dto
   	*/
   @Override
   public void addFundation(FundationDTO dto){
   
   	  Fundation model = new Fundation();
   	  
	  	model.setCode(dto.getCode());
	  	model.setFundationName(dto.getFundationName());
	  	model.setCrawlStatus(FundationDTO.CRAWL_STATUS_ORIGINAL);
	  	model.setGmtCreate(new Date());
	  	model.setGmtModify(new Date());
   
   	  this.fundationDao.insert(model);
   	  
      this.writeInfoLog("Add: "+model.toString());
      
   }
   
   
   
   /**
    * 修改
    * @param dto
   	*/
   @Override
   public void updateFundation(FundationDTO dto){

    	Fundation model = this.fundationDao.getById(dto.getId());
    	Assert.notNull(model,Assert.EMPTY_REOCRD_STR);
    	
	  	model.setId(dto.getId());
	  	model.setCode(dto.getCode());
	  	model.setFundationName(dto.getFundationName());
	  	model.setCrawlStatus(dto.getCrawlStatus());
	  	model.setGmtCreate(dto.getGmtCreate());
	  	model.setGmtModify(dto.getGmtModify());
	  
    	this.fundationDao.update(model);
    	   	
    	this.writeInfoLog("Update: "+model.toString());
        
   }
   
   
   
    /**
   	 * 删除
   	 * @param ids
   	 */
   	@Override
    public void deleteFundations(int[] ids){
    	for (int i = 0; i < ids.length; i++) {
			this.fundationDao.deleteById(ids[i]);
				
	    	 this.writeInfoLog("Delete id="+ids[i]);
	        
		}
    }
   

}
