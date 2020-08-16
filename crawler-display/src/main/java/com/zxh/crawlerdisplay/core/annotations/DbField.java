package com.zxh.crawlerdisplay.core.annotations;

import java.lang.annotation.Retention;
import java.lang.annotation.Target;
import static java.lang.annotation.ElementType.METHOD;
import static java.lang.annotation.ElementType.FIELD;
import static java.lang.annotation.RetentionPolicy.RUNTIME;


@Target({METHOD,FIELD})
@Retention(RUNTIME)
public @interface DbField {

	  String name() default "";
	  
	  String text() default "";

	//中文名称
	String chineseName() default "";

	//是否在属性列表中显示
	boolean show() default true;
}
