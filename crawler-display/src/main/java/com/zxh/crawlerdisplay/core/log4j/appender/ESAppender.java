/**
 * 
 */
package com.zxh.crawlerdisplay.core.log4j.appender;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.AppenderSkeleton;
import org.apache.log4j.spi.LoggingEvent;

import com.zxh.crawlerdisplay.core.utils.DateUtil;
import com.zxh.crawlerdisplay.core.utils.http.HttpUtils;

/**
 * 
 * @date 2018-12-13
 * @author wanve_java_cjy
 *
 */
public class ESAppender extends AppenderSkeleton {

	// 主机名
	private String host;
	// 索引
	private String index;
	// 类型
	private String type;
	// 日期模式
	private String datePattern = "'-'yyyyMMdd";
	

	Date now = new Date();
	SimpleDateFormat sdf;
	
	public ESAppender() {
	}
	
	public ESAppender(String host, String index, String type) {
		this.host = host;
		this.index = index;
		this.type = type;
	}
	
	public ESAppender(String host, String index, String type, String datePattern) {
		this(host, index, type);
		this.datePattern = datePattern;
		activateOptions();
	}
	
	/*
	 * 激活某些属性
	 * @see org.apache.log4j.AppenderSkeleton#activateOptions()
	 */
	@Override
	public void activateOptions() {
	    super.activateOptions();
	    if(datePattern != null && index != null && type != null) {
	      now.setTime(System.currentTimeMillis());
	      sdf = new SimpleDateFormat(datePattern);
	      this.setIndex(index + sdf.format(now));
	      this.setType(type + sdf.format(now));
	    }
	}

	/* 
	 * 释放所有资源
	 * @see org.apache.log4j.Appender#close()
	 */
	@Override
	public void close() {

	}

	/* 
	 * 指定 appender 是否需要 layout
	 * @see org.apache.log4j.Appender#requiresLayout()
	 */
	@Override
	public boolean requiresLayout() {
		return false;
	}

	/* 
	 * 这个方法负责附加日志记录事件，并在错误发生时负责调用错误处理程序
	 * @see org.apache.log4j.AppenderSkeleton#append(org.apache.log4j.spi.LoggingEvent)
	 * 
		System.out.println(this.getHost() + "/" + this.getIndex() + "/" + this.getType() + "/_index");
		
		System.out.println(DateUtil.dateToStrByPattern(new Date(event.getTimeStamp()), "yyyy-MM-dd HH:mm:ss,SSS"));
		
		System.out.println(event.getLevel());
		
		System.out.println(event.getLocationInformation().fullInfo);
		
		System.out.println(event.getMessage());
		
		System.out.println(); // TODO
	 */
	@Override
	protected void append(LoggingEvent event) {		
		Map<String, String> bodys = new HashMap<String, String>();
		bodys.put("timeStamp", DateUtil.dateToStrByPattern(new Date(event.getTimeStamp()), "yyyy-MM-dd HH:mm:ss,SSS"));
		bodys.put("level", event.getLevel().toString());
		bodys.put("locationInformation", event.getLocationInformation().fullInfo);
		bodys.put("message", event.getMessage().toString());
		
		String response = HttpUtils.doPost(this.getHost() + "/" + this.getIndex() + "/" + this.getType() + "/_index", null, bodys);
		System.out.println(response); // TODO
	}

	/**
	 * @param args
	 * @date 2018-12-13
	 * @author wanve_java_cjy
	 */
	public static void main(String[] args) {
	}

	/**
	 * @return the datePattern
	 */
	public String getDatePattern() {
		return datePattern;
	}

	/**
	 * @param datePattern the datePattern to set
	 */
	public void setDatePattern(String datePattern) {
		this.datePattern = datePattern;
	}

	/**
	 * @return the index
	 */
	public String getIndex() {
		return index;
	}

	/**
	 * @param index the index to set
	 */
	public void setIndex(String index) {
		this.index = index;
	}

	/**
	 * @return the type
	 */
	public String getType() {
		return type;
	}

	/**
	 * @param type the type to set
	 */
	public void setType(String type) {
		this.type = type;
	}

	/**
	 * @return the host
	 */
	public String getHost() {
		return host;
	}

	/**
	 * @param host the host to set
	 */
	public void setHost(String host) {
		this.host = host;
	}
}
