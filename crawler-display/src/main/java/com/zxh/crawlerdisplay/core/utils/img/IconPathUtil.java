package com.zxh.crawlerdisplay.core.utils.img;

import com.zxh.crawlerdisplay.core.gobal.GobalVal;
import org.apache.commons.lang.StringUtils;

/**
 * 根据文件后缀获取该项目下文件的图标路径
 * 
 * @author Java2
 * 
 */
public class IconPathUtil {

	public static String getIconPathByfileType(String fileType) {
		if (StringUtils.isBlank(fileType)) {
			return "";
		}
		String iconPath = "";
		switch (fileType) {
		case "doc":
		case "pdf":
		case "ppt":
		case "rar":
		case "txt":
		case "video":
		case "xls":
			iconPath = GobalVal.ICON_PATH + fileType + ".png";
			break;
		case "jpg":
		case "img":
		case "png":
		case "gif":
			iconPath = GobalVal.ICON_PATH + "img.png";
			break;
		case "docx":
			iconPath = GobalVal.ICON_PATH + "doc.png";
			break;
		case "pptx":
			iconPath = GobalVal.ICON_PATH + "ppt.png";
			break;
		case "xlsx":
			iconPath = GobalVal.ICON_PATH + "xls.png";
			break;
		default:
			iconPath = GobalVal.ICON_PATH + "other.png";
			break;
		}

		return iconPath;
	}

}
