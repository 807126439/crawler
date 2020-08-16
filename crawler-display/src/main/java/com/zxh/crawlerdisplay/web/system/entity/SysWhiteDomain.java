package com.zxh.crawlerdisplay.web.system.entity;

import com.zxh.crawlerdisplay.core.annotations.DbField;
import com.zxh.crawlerdisplay.core.common.entity.UUIDEntity;
import java.io.Serializable;

public class SysWhiteDomain extends UUIDEntity implements Serializable {

    private static final long serialVersionUID = 1L;

    private String whiteAddress;

    private Short status;

    private String createBy;

    private String updateBy;

    @DbField(name="WHITE_ADDRESS")
    public String getWhiteAddress() {
        return whiteAddress;
    }

    public void setWhiteAddress(String whiteAddress) {
        this.whiteAddress = whiteAddress == null ? null : whiteAddress.trim();
    }

    @DbField(name="STATUS")
    public Short getStatus() {
        return status;
    }

    public void setStatus(Short status) {
        this.status = status;
    }

    @DbField(name="CREATE_BY")
    public String getCreateBy() {
        return createBy;
    }

    public void setCreateBy(String createBy) {
        this.createBy = createBy == null ? null : createBy.trim();
    }

    @DbField(name="UPDATE_BY")
    public String getUpdateBy() {
        return updateBy;
    }

    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy == null ? null : updateBy.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(",Super = ").append(super.toString());
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append(", whiteAddress=").append(whiteAddress);
        sb.append(", status=").append(status);
        sb.append(", createBy=").append(createBy);
        sb.append(", updateBy=").append(updateBy);
        sb.append("]");
        return sb.toString();
    }
}