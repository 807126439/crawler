package com.zxh.crawlerdisplay.web.file.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.zxh.crawlerdisplay.core.common.dao.IBaseDao;
import com.zxh.crawlerdisplay.web.file.dto.baseFile.PreviewImageDTO;
import com.zxh.crawlerdisplay.web.file.entity.BaseFile;

public interface IBaseFileDao extends IBaseDao<Long, BaseFile>{
	
	public Map<String,String> getBigPatternViewPath(Long id);
    
    public Map<String,String> getFileWholePath(Long id);
    
    public Map<String,String> getFileViewPath(Long id);

	public List<PreviewImageDTO> getByMainId(Long baseFileId);
	
	public List<BaseFile> getBaseFileByMainId(Long mainId);
	
	public int deleteByMainId(Long mainId);
	
	public int updateStatusByIds(@Param("status")Short status,@Param("ids")List<Long> ids);
}