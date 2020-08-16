package com.zxh.crawlerdisplay.web.system.dto.white;

import com.zxh.crawlerdisplay.core.common.dto.UUIDDTO;

public class SysWhiteDomainDTO extends UUIDDTO {

    private String whiteAddress;

    private Short status;

    private String createBy;

    private String updateBy;

    public String getWhiteAddress() {
        return whiteAddress;
    }

    public void setWhiteAddress(String whiteAddress) {
        this.whiteAddress = whiteAddress == null ? null : whiteAddress.trim();
    }

    public Short getStatus() {
        return status;
    }

    public void setStatus(Short status) {
        this.status = status;
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
}