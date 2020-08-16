package com.zxh.crawlerdisplay.web.system.service.impl;

import com.zxh.crawlerdisplay.core.common.bean.DataQuery;
import com.zxh.crawlerdisplay.core.common.bean.Page;
import com.zxh.crawlerdisplay.core.common.service.BaseService;
import com.zxh.crawlerdisplay.web.file.dto.baseFile.SaveResult;
import com.zxh.crawlerdisplay.web.file.entity.ZonePath;
import com.zxh.crawlerdisplay.web.file.service.IBaseFileService;
import com.zxh.crawlerdisplay.web.system.constant.BaseDictConsts;
import com.zxh.crawlerdisplay.web.system.dao.IIconConfigDao;
import com.zxh.crawlerdisplay.web.system.dto.baseDict.BaseDictDTO;
import com.zxh.crawlerdisplay.web.system.dto.iconConfig.IconConfigDTO;
import com.zxh.crawlerdisplay.web.system.entity.IconConfig;
import com.zxh.crawlerdisplay.web.system.service.IBaseDictService;
import com.zxh.crawlerdisplay.web.system.service.IIconConfigService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Service("iconConfigService")
@Transactional
public class IconConfigServiceImpl extends BaseService implements IIconConfigService {

	@Resource
	private IIconConfigDao iconConfigDao;
	@Resource
	private IBaseFileService baseFileService;
	@Resource
	private IBaseDictService baseDictService;

	// 自定义分页查询
	@Override
	public List<IconConfigDTO> selectListByCondition(DataQuery dq) {
		return this.iconConfigDao.selectListByCondition(dq.getQueryMap());
	}

	// 分页查询
	@Override
	public Page<IconConfigDTO> searchByPage(DataQuery dq) {

		Long recTotal = this.iconConfigDao.countByCondition(dq.assemblePageOffset().getQueryMap());
		dq.assembleOrderInfo(IconConfig.class, null);
		List<IconConfigDTO> resultlist = this.iconConfigDao.selectListByCondition(dq.getQueryMap());
		this.handelIconTypeName(resultlist);
		return new Page<IconConfigDTO>(dq.getCurrentPage(), dq.getPageSize(), resultlist, recTotal);
	}

	/**
	 * 删除
	 * 
	 * @param ids
	 */
	@Override
	public void deleteIconConfigs(String[] ids) {
		for (int i = 0; i < ids.length; i++) {
			IconConfig model = this.iconConfigDao.getById(ids[i]);
			if (model != null) {
				// 删除真实附件记录
				this.baseFileService.realDeteleFile(model.getBaseFileId());
				// 删除附件信息记录
				this.iconConfigDao.deleteById(ids[i]);

				this.writeInfoLog("Delete id=" + ids[i]);
			}
		}
	}

	// 添加新图标
	@Override
	public void addIconConfig(Short iconType, MultipartFile uploadFile) {
		SaveResult sr = this.baseFileService.addBaseFile(uploadFile, ZonePath.COMMON_FILE);
		IconConfig model = new IconConfig();
		model.setIconType(iconType);
		model.setFileName(sr.getFileName());
		model.setBaseFileId(sr.getId());
		model.setFileViewPath(sr.getViewPattern());// TODO
		model.setCreateBy(this.getNowUser().getChineseName());
		this.iconConfigDao.insert(model);
		this.writeInfoLog("Add: " + model.toString());
	}

	@Override
	public Map<String, List<IconConfigDTO>> getIconList() {
		List<IconConfigDTO> resultList = this.selectListByCondition(new DataQuery());
		this.handelIconTypeName(resultList);
		Map<String, List<IconConfigDTO>> resultMap = new HashMap<>();
		if (resultList != null && !resultList.isEmpty()) {
			for (IconConfigDTO iconDTO : resultList) {
				if (resultMap.containsKey(iconDTO.getIconTypeName())) {
					resultMap.get(iconDTO.getIconTypeName()).add(iconDTO);
				} else {
					List<IconConfigDTO> iconList = new ArrayList<>();
					iconList.add(iconDTO);
					resultMap.put(iconDTO.getIconTypeName(), iconList);
				}
			}
		}
		return resultMap;
	}

	private void handelIconTypeName(List<IconConfigDTO> resultlist) {
		if (resultlist != null && !resultlist.isEmpty()) {
			DataQuery newDq = new DataQuery();
			newDq.putToMap("dictType", BaseDictConsts.ICON_TYPE);
			List<BaseDictDTO> iconTypeList = this.baseDictService.searchListByCondition(newDq);

			if (iconTypeList != null && !iconTypeList.isEmpty()) {
				for (IconConfigDTO iconConfigDTO : resultlist) {
					for (BaseDictDTO baseDictDTO : iconTypeList) {
						if (iconConfigDTO.getIconType().toString().equals(baseDictDTO.getDictValue())) {
							iconConfigDTO.setIconTypeName(baseDictDTO.getDictItem());
						}
					}
				}

			}
		}

	}
}
