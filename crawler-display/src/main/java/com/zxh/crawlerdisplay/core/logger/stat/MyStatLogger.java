package com.zxh.crawlerdisplay.core.logger.stat;

import com.alibaba.druid.pool.DruidDataSourceStatLogger;
import com.alibaba.druid.pool.DruidDataSourceStatLoggerAdapter;
import com.alibaba.druid.pool.DruidDataSourceStatValue;

public class MyStatLogger extends DruidDataSourceStatLoggerAdapter implements DruidDataSourceStatLogger {

	@Override
	public void log(DruidDataSourceStatValue statValue) {
		// TODO Auto-generated method stub
		super.log(statValue);
	}
	
	

}
