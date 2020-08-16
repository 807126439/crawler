/**
 * 
 */
package com.zxh.crawlerdisplay.core.trace.backup;

import java.util.Stack;
import java.util.UUID;

/**
 * @date 2019-3-5
 * @author wanve_java_cjy
 * 
 */
public class TraceContext {

	private static ThreadLocal<Stack<TraceInfo>> context = new ThreadLocal<Stack<TraceInfo>>() {
		public Stack<TraceInfo> initialValue() {
			this.set(new Stack<TraceInfo> ());
	        return this.get();
	    }
	};
	private static ThreadLocal<String> traceIdLocal = new ThreadLocal<String>();
	private static ThreadLocal<String> spanIdLocal = new ThreadLocal<String>() {
		public String initialValue() {
			this.set("1");
	        return this.get();
	    }
	};

	public static void push(TraceInfo traceInfo) {
		TraceContext.context.get().push(traceInfo);
	}

	public static TraceInfo pop() {
		if (TraceContext.context.get().isEmpty()) {
			traceIdLocal.remove();
			return null;
		}
		
		TraceInfo traceInfo = TraceContext.context.get().pop();
		// reset spanId
		String spanId = traceInfo.getSpanId();
		if (context.get().isEmpty()) {
			long nextSpanValue = Long.valueOf(spanId) + 1;
			spanIdLocal.set(String.valueOf(nextSpanValue));
			traceIdLocal.remove();
		} else {
			String prefix = spanId.substring(0, spanId.lastIndexOf("."));
			String suffix = spanId.substring(spanId.lastIndexOf(".") + 1);
			long nextSpanValue = Long.valueOf(suffix) + 1;
			spanIdLocal.set(String.valueOf(prefix + "." + nextSpanValue));
		}
		return traceInfo;
	}
	
	public static String getTraceId() {
		if (traceIdLocal.get() == null) {
			traceIdLocal.set(UUIDGenerator.getUUID());
		}
		return traceIdLocal.get();
	}
	
	public static String getSpanId() {		
		String spanId = spanIdLocal.get();
		spanIdLocal.set(spanId + ".1");
		return spanId;
	}
	
	public static String getParentId() {
		if (context.get().isEmpty()) {
			return null;
		}
		TraceInfo traceInfo = context.get().peek();
		return traceInfo.getSpanId();
	}
	
	static class UUIDGenerator {
		public static String getUUID() {
			return UUID.randomUUID().toString().replaceAll("-", "");
		}
	}
	
}
