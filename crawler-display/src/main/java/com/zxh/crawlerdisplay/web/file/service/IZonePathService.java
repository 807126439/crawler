package com.zxh.crawlerdisplay.web.file.service;

import java.util.Map;

import com.zxh.crawlerdisplay.core.common.bean.DataQuery;
import com.zxh.crawlerdisplay.core.common.bean.Page;
import com.zxh.crawlerdisplay.web.file.dto.zone.ZonePathDTO;
import com.zxh.crawlerdisplay.web.file.entity.ZonePath;

public interface IZonePathService {
	
	public ZonePath getUseableZone(String type);
	
	public Page<ZonePathDTO> searchZonePathByPage(DataQuery dq);
	
	public ZonePath getZonePathById(Long id);
	 
	public void addZonePath(ZonePathDTO dto);
	
	public void updateZonePath(ZonePathDTO dto);
	
	public void deleteZonePath(Long[] ids);
	
	public void createDirectory(Long[] ids);
	
	public String viewCache(Long zpId,Map<Long, String> cache);
	
	public String getTempFileWholePath(String fileType);
	 
	 
}
