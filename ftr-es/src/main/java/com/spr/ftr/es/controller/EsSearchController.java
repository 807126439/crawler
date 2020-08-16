package com.spr.ftr.es.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.spr.ftr.es.bean.LbIndexDTO;
import com.spr.ftr.es.config.IndexConfig;
import com.spr.ftr.es.dto.EsIndexDTO;
import com.spr.ftr.es.dto.EsSearchDTO;
import com.spr.ftr.es.dto.Page;
import com.spr.ftr.es.exception.RespResult;
import com.spr.ftr.es.service.IEsSearch;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.text.SimpleDateFormat;

@RestController
@RequestMapping("/")
public class EsSearchController {

	@Autowired
	private IEsSearch esSearch;
	@Autowired
	private IndexConfig indexConfig;

	private ObjectMapper getMapper() {
		ObjectMapper mapper = new ObjectMapper();
		mapper.setDateFormat(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"));

		return mapper;
	}

	/**
	 * 添加索引
	 * 
	 * @param jsonData
	 * @return 2018-7-16 下午2:24:36
	 */
	@RequestMapping("/index/add")
	public RespResult addIndex(String jsonData) {
		RespResult rs = new RespResult();
		try {

			LbIndexDTO param = getMapper().readValue(jsonData, LbIndexDTO.class);

			EsIndexDTO dto = new EsIndexDTO();
			dto.setIndices(indexConfig.getIndexName());
			dto.setIndexType(indexConfig.getTypeName());
			dto.setId(param.getEntityId());
			dto.addField("category", param.getCategory()).addField("content", param.getContent());

			dto.addFilePaths(param.getFilePaths());

			this.esSearch.addIndex(dto);

			rs.setMsg("").setStatus(RespResult.SUCCESS);

		} catch (Exception e) {
			e.printStackTrace();

			rs.setMsg(e.getMessage()).setStatus(RespResult.FAIL);
		}

		return rs;
	}

	/**
	 * 修改索引
	 * 
	 * @param jsonData
	 * @return 2018-7-16 下午2:24:42
	 */
	@RequestMapping("/index/update")
	public RespResult updateIndex(String jsonData) {
		RespResult rs = new RespResult();
		try {

//			LbIndexDTO param = getMapper().readValue(jsonData, LbIndexDTO.class);
//
//			EsIndexDTO dto = new EsIndexDTO();
//			dto.setIndices(indexConfig.getIndexName());
//			dto.setIndexType(indexConfig.getTypeName());
//			dto.setId(param.getEntityId());
//			dto.addField("category", param.getCategory()).addField("content", param.getContent());
//
//			dto.addFilePaths(param.getFilePaths());
//
//			this.esSearch.updateIndex(dto);
//
//			rs.setMsg("").setStatus(RespResult.SUCCESS);

		} catch (Exception e) {
			e.printStackTrace();

			rs.setMsg(e.getMessage()).setStatus(RespResult.FAIL);
		}

		return rs;
	}

	/**
	 * 删除索引
	 * 
	 * @param entityId
	 * @return 2018-7-16 下午2:24:50
	 */
	@RequestMapping("/index/delete")
	public RespResult deleteIndex(String entityId) {
		RespResult rs = new RespResult();
		try {

//			EsIndexDTO dto = new EsIndexDTO();
//			dto.setIndices(indexConfig.getIndexName());
//			dto.setIndexType(indexConfig.getTypeName());
//			dto.setId(entityId);
//
//			this.esSearch.deleteIndex(dto);
//
//			rs.setMsg("").setStatus(RespResult.SUCCESS);

		} catch (Exception e) {
			e.printStackTrace();

			rs.setMsg(e.getMessage()).setStatus(RespResult.FAIL);
		}

		return rs;
	}

	/**
	 * 搜索
	 * 
	 * @param searchVal
	 * @return 2018-7-16 下午2:24:56
	 */
	@RequestMapping("/esSearch")
	public RespResult esSearch(String searchVal) {
		RespResult rs = new RespResult();
		try {

			EsSearchDTO query = new EsSearchDTO(indexConfig.getIndexName(), indexConfig.getTypeName(), searchVal == null ? "" : searchVal);

			query.addQueryFields("category").addQueryFields("content").addQueryFields("fileContent").addHighlightFields("content")
					.addHighlightFields("fileContent");

			Page<JSONObject> pageResult = this.esSearch.search(query);

			rs.setMsg("").setStatus(RespResult.SUCCESS).setData(pageResult);

		} catch (Exception e) {
			e.printStackTrace();

			rs.setMsg(e.getMessage()).setStatus(RespResult.FAIL);
		}

		return rs;
	}
}
