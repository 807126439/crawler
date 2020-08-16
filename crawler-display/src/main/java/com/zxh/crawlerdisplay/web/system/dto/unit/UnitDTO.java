package com.zxh.crawlerdisplay.web.system.dto.unit;

import com.zxh.crawlerdisplay.core.common.dto.UUIDDTO;

public class UnitDTO extends UUIDDTO {

	public static final String UNITTYPE_MANAGE = "manage";
	public static final String UNITTYPE_BUILD = "build";
	public static final String UNITTYPE_AGENT = "agent";
	public static final String UNITTYPE_CONTRACTOR = "contractor";

	private Integer sortNo;

	private String unitName;

	private String unitType;

	private String organizationCode;

	private String contractorTypeCode;

	private String linkMan;

	private String linkTel;

	private String note;

	private Short status;

	private Short flag;

	private String createBy;

	private String updateBy;

	private String unitTypeName;

	private String contractorTypeName;

	public Integer getSortNo() {
		return sortNo;
	}

	public void setSortNo(Integer sortNo) {
		this.sortNo = sortNo;
	}

	public String getUnitName() {
		return unitName;
	}

	public void setUnitName(String unitName) {
		this.unitName = unitName == null ? null : unitName.trim();
	}

	public String getUnitType() {
		return unitType;
	}

	public void setUnitType(String unitType) {
		this.unitType = unitType == null ? null : unitType.trim();
	}

	public String getOrganizationCode() {
		return organizationCode;
	}

	public void setOrganizationCode(String organizationCode) {
		this.organizationCode = organizationCode == null ? null : organizationCode.trim();
	}

	public String getLinkMan() {
		return linkMan;
	}

	public void setLinkMan(String linkMan) {
		this.linkMan = linkMan == null ? null : linkMan.trim();
	}

	public String getLinkTel() {
		return linkTel;
	}

	public void setLinkTel(String linkTel) {
		this.linkTel = linkTel == null ? null : linkTel.trim();
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note == null ? null : note.trim();
	}

	public Short getStatus() {
		return status;
	}

	public void setStatus(Short status) {
		this.status = status;
	}

	public Short getFlag() {
		return flag;
	}

	public void setFlag(Short flag) {
		this.flag = flag;
	}

	public String getCreateBy() {
		return createBy;
	}

	public void setCreateBy(String createBy) {
		this.createBy = createBy == null ? null : createBy.trim();
	}

	public String getUpdateBy() {
		return updateBy;
	}

	public void setUpdateBy(String updateBy) {
		this.updateBy = updateBy == null ? null : updateBy.trim();
	}

	public String getUnitTypeName() {
		return unitTypeName;
	}

	public void setUnitTypeName(String unitTypeName) {
		this.unitTypeName = unitTypeName;
	}

	public String getContractorTypeCode() {
		return contractorTypeCode;
	}

	public void setContractorTypeCode(String contractorTypeCode) {
		this.contractorTypeCode = contractorTypeCode;
	}

	public String getContractorTypeName() {
		return contractorTypeName;
	}

	public void setContractorTypeName(String contractorTypeName) {
		this.contractorTypeName = contractorTypeName;
	}

}