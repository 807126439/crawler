package com.zxh.crawlerdisplay.web.system.dto.department;

import com.zxh.crawlerdisplay.core.common.dto.UUIDDTO;

public class DepartmentDTO extends UUIDDTO {

	private String departNo;

	private String departName;

	private String note;

	private Integer level;

	private Short status;

	private Short flag;

	private String unitId;

	private String unitName;

	public String getDepartNo() {
		return departNo;
	}

	public void setDepartNo(String departNo) {
		this.departNo = departNo == null ? null : departNo.trim();
	}

	public String getDepartName() {
		return departName;
	}

	public void setDepartName(String departName) {
		this.departName = departName == null ? null : departName.trim();
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note == null ? null : note.trim();
	}

	public Integer getLevel() {
		return level;
	}

	public void setLevel(Integer level) {
		this.level = level;
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

	public String getUnitId() {
		return unitId;
	}

	public void setUnitId(String unitId) {
		this.unitId = unitId == null ? null : unitId.trim();
	}

	public String getUnitName() {
		return unitName;
	}

	public void setUnitName(String unitName) {
		this.unitName = unitName;
	}

}