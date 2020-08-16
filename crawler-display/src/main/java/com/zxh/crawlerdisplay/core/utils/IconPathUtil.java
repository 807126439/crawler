package com.zxh.crawlerdisplay.core.utils;

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

	//小图标
	public static String getSmallIconPathByfileType(String fileType) {
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
			iconPath = GobalVal.SMALL_ICON_PATH + fileType + ".png";
			break;
		case "jpg":
		case "img":
		case "png":
		case "gif":
			iconPath = GobalVal.SMALL_ICON_PATH + "img.png";
			break;
		case "docx":
			iconPath = GobalVal.SMALL_ICON_PATH + "doc.png";
			break;
		case "pptx":
			iconPath = GobalVal.SMALL_ICON_PATH + "ppt.png";
			break;
		case "xlsx":
			iconPath = GobalVal.SMALL_ICON_PATH + "xls.png";
			break;
		default:
			iconPath = GobalVal.SMALL_ICON_PATH + "other.png";
			break;
		}

		return iconPath;
	}

    public static String getIconMatchType(String fileType) {
	if (StringUtils.isBlank(fileType)) {
	    return "other";
	}
	switch (fileType) {
	case "png":
	case "gif":
	case "jpg":
	case "jpeg":
	case "bmp":
	case "img":
	    return "img";
	case "doc":
	case "docx":
	case "wps":
	    return "doc";
	case "ppt":
	case "pptx":
	case "dps":
	    return "ppt";
	case "xls":
	case "xlsx":
	case "et":
	    return "xls";
	case "pdf":
	    return "pdf";
	case "txt":
	    return "txt";
	case "rar":
	case "zip":
	    return "rar";
	case "3gp":
	case "mp4":
	case "avi":
	case "mpv2":
	case "mpg":
	case "mpe":
	case "mpeg":
	case "rmvb":
	case "rm":
	case "asf":
	case "divx":
	case "wmv":
	case "mkv":
	case "vob":
	case "flv":
	case "ogm":
	case "qt":
	    return "video";
	default:
	    return "other";
	}
    }

}
