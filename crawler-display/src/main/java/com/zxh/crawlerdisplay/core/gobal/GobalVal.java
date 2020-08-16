package com.zxh.crawlerdisplay.core.gobal;

public class GobalVal {
	/** 系统配置文件 */
	public final static String SYSTEM_PROPERTIES = "systemConfig.properties";

	public final static String SYSTEM_USER = "system";

	// 0：不启用 1：启用
	public static final short STATUS_ENABLE = 1;
	public static final short STATUS_DISABLE = 0;

	/** 记录标志 */
	public final static Short NORMAL_FLAG = 1; // 正常
	public final static Short DEL_FLAG = 0; // 已删除

	/** 来源标志 */
	public final static Short SRC_PASS_FLAG = 0; // 旧系统
	public final static Short SRC_NEW_FLAG = 1; // 新创建

	/**
	 * 全文索引状态
	 */
	public final static Short INDEX_STATUS_PENDING = 0; // 待创建
	public final static Short INDEX_STATUS_FINISH = 1; // 已创建
	public final static Short INDEX_STATUS_REFRESH = 2; // 带重新建

	// 文件图标地址
	public final static String ICON_PATH = "/plug-in/main/images/fileicon/icon_large_";// 后加上类别.png例doc.png
	// 文件小图标地址
	public final static String SMALL_ICON_PATH = "/plug-in/main/images/fileicon/icon_small_";// 后加上类别.png例doc.png

	public final static Short DEL_KEEP_DAT = 30; // 删除保留天数
}
