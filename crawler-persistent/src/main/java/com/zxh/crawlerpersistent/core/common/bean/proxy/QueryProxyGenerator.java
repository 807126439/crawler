package com.zxh.crawlerpersistent.core.common.bean.proxy;

import com.zxh.crawlerpersistent.core.common.bean.DataQuery;
import org.springframework.cglib.proxy.Enhancer;
import org.springframework.cglib.proxy.MethodInterceptor;
import org.springframework.cglib.proxy.MethodProxy;

import java.lang.reflect.Method;

public class QueryProxyGenerator implements MethodInterceptor {

	private Object target;

	private final DataQuery dq;

	public QueryProxyGenerator(DataQuery dq) {
		super();
		this.dq = dq;
	}

	public Object getInstance(Object target) {
		this.target = target; // 给业务对象赋值
		Enhancer enhancer = new Enhancer(); // 创建加强器，用来创建动态代理类
		enhancer.setSuperclass(this.target.getClass()); // 为加强器指定要代理的业务类（即：为下面生成的代理类指定父类）
		// 设置回调：对于代理类上所有方法的调用，都会调用CallBack，而Callback则需要实现intercept()方法进行拦
		enhancer.setCallback(this);
		// 创建动态代理类对象并返回
		return enhancer.create();
	}

	@Override
	public Object intercept(Object obj, Method method, Object[] args, MethodProxy proxy) throws Throwable {
		Object rt = proxy.invokeSuper(obj, args);

		if (method.getName().startsWith("get")) {

		}

		return null;
	}

}
