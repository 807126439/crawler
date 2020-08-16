package com.zxh.crawlerdisplay.web.system.entity;

import com.zxh.crawlerdisplay.core.annotations.DbField;
import com.zxh.crawlerdisplay.core.common.entity.UUIDEntity;
import java.io.Serializable;

public class Department extends UUIDEntity implements Serializable {

    private static final long serialVersionUID = 1L;

    private String departNo;

    private String departName;

    private String note;

    private Integer level;

    private Short status;

    private Short flag;

    private String unitId;

    @DbField(name="depart_no")
    public String getDepartNo() {
        return departNo;
    }

    public void setDepartNo(String departNo) {
        this.departNo = departNo == null ? null : departNo.trim();
    }

    @DbField(name="depart_name")
    public String getDepartName() {
        return departName;
    }

    public void setDepartName(String departName) {
        this.departName = departName == null ? null : departName.trim();
    }

    @DbField(name="note")
    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note == null ? null : note.trim();
    }

    @DbField(name="level")
    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    @DbField(name="status")
    public Short getStatus() {
        return status;
    }

    public void setStatus(Short status) {
        this.status = status;
    }

    @DbField(name="flag")
    public Short getFlag() {
        return flag;
    }

    public void setFlag(Short flag) {
        this.flag = flag;
    }

    @DbField(name="unit_id")
    public String getUnitId() {
        return unitId;
    }

    public void setUnitId(String unitId) {
        this.unitId = unitId == null ? null : unitId.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(",Super = ").append(super.toString());
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append(", departNo=").append(departNo);
        sb.append(", departName=").append(departName);
        sb.append(", note=").append(note);
        sb.append(", level=").append(level);
        sb.append(", status=").append(status);
        sb.append(", flag=").append(flag);
        sb.append(", unitId=").append(unitId);
        sb.append("]");
        return sb.toString();
    }
}