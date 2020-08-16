package com.spr.ftr.es.service;

import com.spr.ftr.es.dto.EsIndexDTO;
import com.spr.ftr.es.dto.EsSearchDTO;
import com.spr.ftr.es.dto.Page;
import net.sf.json.JSONObject;


public interface IEsSearch {

	void addIndex(EsIndexDTO dto);

	void updateIndex(EsIndexDTO dto);

	void deleteIndex(EsIndexDTO dto);

	Page<JSONObject> search(EsSearchDTO dto);

}
