/**
 * 
 */
package com.zxh.crawlerdisplay.core.trace;

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
	private static ThreadLocal<String> nextSpanId = new ThreadLocal<String>() {
		public String initialValue() {
			this.set("1");
	        return this.get();
	    }
	};

	public static void push(TraceInfo traceInfo) {
		context.get().push(traceInfo);
	}

	public static TraceInfo pop() {
		if (context.get().isEmpty()) {
			return null;
		}
		
		TraceInfo traceInfo = context.get().pop();
		// reset spanId
		String spanId = traceInfo.getSpanId();
		if (context.get().isEmpty()) {
			long nextSpanValue = Long.valueOf(spanId) + 1;
			nextSpanId.set(String.valueOf(nextSpanValue));
		} else {
			String prefix = spanId.substring(0, spanId.lastIndexOf("."));
			String suffix = spanId.substring(spanId.lastIndexOf(".") + 1);
			long nextSpanValue = Long.valueOf(suffix) + 1;
			nextSpanId.set(String.valueOf(prefix + "." + nextSpanValue));
		}
		return traceInfo;
	}
	
	public static String getTraceId() {
		if (context.get().isEmpty()) {
			return UUIDGenerator.getUUID();
		}
		return context.get().peek().getTraceId();
	}
	
	public static String getSpanId() {
		String spanId = nextSpanId.get();
		nextSpanId.set(spanId + ".1");
		return spanId;
	}
	
	public static String getParentId() {
		if (context.get().isEmpty()) {
			return null;
		}
		return context.get().peek().getSpanId();
	}
	
	static class UUIDGenerator {
		public static String getUUID() {
			return UUID.randomUUID().toString().replaceAll("-", "");
		}
	}
	
}
