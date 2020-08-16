/**
 * 
 */
package com.zxh.crawlerdisplay.core.trace;

import java.lang.reflect.Modifier;
import java.util.Date;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

/**
 * @date 2019-2-28
 * @author wanve_java_cjy
 *
 */
//@Aspect
//@Component
public class TraceAspect {
	
	// 配置切入点,该方法无方法体,主要为方便同类中其他方法使用此处配置的切入点
	@Pointcut("execution(* com.zxh.crawlerdisplay.web..*.*(..))")
	public void aspect(){}
	
	/*
	 * 配置前置通知,使用在方法aspect()上注册的切入点
	 * 同时接受JoinPoint切入点对象,可以没有该参数
	 */
	@Before("aspect()")
	public void before(JoinPoint joinPoint){
		TraceInfo traceInfo = new TraceInfo();
		traceInfo.setTraceId(TraceContext.getTraceId());
		traceInfo.setParentId(TraceContext.getParentId());
		traceInfo.setSpanId(TraceContext.getSpanId());
		
		traceInfo.setClassName(joinPoint.getSignature().getDeclaringTypeName());
		traceInfo.setMethodName(joinPoint.getSignature().getName());
		traceInfo.setArgs(joinPoint.getArgs());
		traceInfo.setModifier(Modifier.toString(joinPoint.getSignature().getModifiers()));
		traceInfo.setKind(joinPoint.getKind());
		
		traceInfo.setStartTimeMillis(System.currentTimeMillis());
		traceInfo.setStartTime(new Date());
		TraceContext.push(traceInfo);
		
		// System.out.println("before logger: " + traceInfo);// TODO
	}
	
	// 配置后置通知,使用在方法aspect()上注册的切入点
	@After("aspect()")
	public void after(JoinPoint joinPoint){
		TraceInfo traceInfo = TraceContext.pop();
		traceInfo.setEndTime(new Date());
		traceInfo.setEndTimeMillis(System.currentTimeMillis());
		traceInfo.countRunTime();
		
		System.out.println("after logger: " + traceInfo);// TODO
	}
	
	//配置环绕通知,使用在方法aspect()上注册的切入点
//	@Around("aspect()")
//	public Object around(JoinPoint joinPoint){
//		System.out.println("around");
//		Object result = null;
//		try {
//			result = ((ProceedingJoinPoint)joinPoint).proceed();
//		} catch (Throwable e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return result;
//	}
	
}
