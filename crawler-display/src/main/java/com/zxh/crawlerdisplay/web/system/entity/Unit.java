package com.zxh.crawlerdisplay.web.system.entity;

import java.io.Serializable;

import com.zxh.crawlerdisplay.core.annotations.DbField;
import com.zxh.crawlerdisplay.core.common.entity.UUIDEntity;

public class Unit extends UUIDEntity implements Serializable {

	private static final long serialVersionUID = 1L;

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

	@DbField(name = "sort_no")
	public Integer getSortNo() {
		return sortNo;
	}

	public void setSortNo(Integer sortNo) {
		this.sortNo = sortNo;
	}

	@DbField(name = "unit_name")
	public String getUnitName() {
		return unitName;
	}

	public void setUnitName(String unitName) {
		this.unitName = unitName == null ? null : unitName.trim();
	}

	@DbField(name = "unit_type")
	public String getUnitType() {
		return unitType;
	}

	public void setUnitType(String unitType) {
		this.unitType = unitType == null ? null : unitType.trim();
	}

	@DbField(name = "organization_code")
	public String getOrganizationCode() {
		return organizationCode;
	}

	public void setOrganizationCode(String organizationCode) {
		this.organizationCode = organizationCode == null ? null : organizationCode.trim();
	}

	@DbField(name = "link_man")
	public String getLinkMan() {
		return linkMan;
	}

	public void setLinkMan(String linkMan) {
		this.linkMan = linkMan == null ? null : linkMan.trim();
	}

	@DbField(name = "link_tel")
	public String getLinkTel() {
		return linkTel;
	}

	public void setLinkTel(String linkTel) {
		this.linkTel = linkTel == null ? null : linkTel.trim();
	}

	@DbField(name = "note")
	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note == null ? null : note.trim();
	}

	@DbField(name = "status")
	public Short getStatus() {
		return status;
	}

	public void setStatus(Short status) {
		this.status = status;
	}

	@DbField(name = "flag")
	public Short getFlag() {
		return flag;
	}

	public void setFlag(Short flag) {
		this.flag = flag;
	}

	@DbField(name = "create_by")
	public String getCreateBy() {
		return createBy;
	}

	public void setCreateBy(String createBy) {
		this.createBy = createBy == null ? null : createBy.trim();
	}

	@DbField(name = "update_by")
	public String getUpdateBy() {
		return updateBy;
	}

	public void setUpdateBy(String updateBy) {
		this.updateBy = updateBy == null ? null : updateBy.trim();
	}

	@DbField(name = "contractor_type_code")
	public String getContractorTypeCode() {
		return contractorTypeCode;
	}

	public void setContractorTypeCode(String contractorTypeCode) {
		this.contractorTypeCode = contractorTypeCode;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append(getClass().getSimpleName());
		sb.append(" [");
		sb.append("Hash = ").append(hashCode());
		sb.append(",Super = ").append(super.toString());
		sb.append(", serialVersionUID=").append(serialVersionUID);
		sb.append(", sortNo=").append(sortNo);
		sb.append(", unitName=").append(unitName);
		sb.append(", unitType=").append(unitType);
		sb.append(", organizationCode=").append(organizationCode);
		sb.append(", linkMan=").append(linkMan);
		sb.append(", linkTel=").append(linkTel);
		sb.append(", note=").append(note);
		sb.append(", status=").append(status);
		sb.append(", flag=").append(flag);
		sb.append(", createBy=").append(createBy);
		sb.append(", updateBy=").append(updateBy);
		sb.append("]");
		return sb.toString();
	}
}