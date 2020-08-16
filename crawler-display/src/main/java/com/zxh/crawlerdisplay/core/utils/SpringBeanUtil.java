package com.zxh.crawlerdisplay.core.utils;

import java.util.Locale;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.ContextLoader;


public class SpringBeanUtil {
	
	 private static ApplicationContext context;

    public void setApplicationContext(ApplicationContext applicationContext)
            throws BeansException {
        context = applicationContext;
    }

    public static ApplicationContext getContext(){
        return context;
    }

    public static Object getBean(String beanName) {
        return context.getBean(beanName);
    }



}
