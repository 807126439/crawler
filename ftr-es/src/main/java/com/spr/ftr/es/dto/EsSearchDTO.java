package com.spr.ftr.es.dto;

import com.spr.ftr.es.dto.base.EsBaseDTO;

import java.util.ArrayList;
import java.util.List;


public class EsSearchDTO extends EsBaseDTO {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String searchVal;

	private Integer pageSize = 10;
	private Integer currentPage = 1;
	private List<String> queryFields;
	private List<String> highlightFields;

	public EsSearchDTO() {

	}

	public EsSearchDTO(String indices, String indexType, String searchVal) {
		super();
		setIndices(indices);
		setIndexType(indexType);
		this.searchVal = searchVal;
		this.queryFields = new ArrayList<String>();
		this.highlightFields = new ArrayList<String>();
	}

	public String getSearchVal() {
		return searchVal;
	}

	public void setSearchVal(String searchVal) {
		this.searchVal = searchVal;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	public Integer getStartQuery() {
		return (this.currentPage - 1) * this.pageSize;
	}

	public List<String> getQueryFields() {
		return queryFields;
	}

	public EsSearchDTO addQueryFields(String name) {

		this.queryFields.add(name);

		return this;
	}

	public List<String> getHighlightFields() {
		return highlightFields;
	}

	public EsSearchDTO addHighlightFields(String name) {
		this.highlightFields.add(name);

		return this;
	}

	public void setQueryFields(List<String> queryFields) {
		this.queryFields = queryFields;
	}

	public void setHighlightFields(List<String> highlightFields) {
		this.highlightFields = highlightFields;
	}

}
