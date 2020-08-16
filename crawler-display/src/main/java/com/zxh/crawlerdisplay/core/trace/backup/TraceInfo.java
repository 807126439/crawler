/**
 * 
 */
package com.zxh.crawlerdisplay.core.trace.backup;

import java.util.Arrays;
import java.util.Date;

/**
 * @date 2019-3-5
 * @author wanve_java_cjy
 *
 */
public class TraceInfo {

	private String traceId;
	private String parentId;
	private String spanId;

	private Long runTime;
	private Long startTimeMillis;
	private Long endTimeMillis;
	private Date startTime;
	private Date endTime;
	
	// signature
	private String className;
	private String methodName;
	private Object[] args;
	private String modifier; 
	private String kind;
	// sourceLocation
	// staticPart
	// target

	// controller
	private String contextPath;

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "TraceInfo [traceId=" + traceId + ", parentId=" + parentId
				+ ", spanId=" + spanId + ", runTime=" + runTime
				+ ", startTimeMillis=" + startTimeMillis + ", endTimeMillis="
				+ endTimeMillis + ", startTime=" + startTime + ", endTime="
				+ endTime + ", className=" + className + ", methodName="
				+ methodName + ", args=" + Arrays.toString(args)
				+ ", modifier=" + modifier + ", kind=" + kind
				+ ", contextPath=" + contextPath + "]";
	}

	/**
	 * @return the startTimeMillis
	 */
	public Long getStartTimeMillis() {
		return startTimeMillis;
	}

	/**
	 * @param startTimeMillis the startTimeMillis to set
	 */
	public void setStartTimeMillis(Long startTimeMillis) {
		this.startTimeMillis = startTimeMillis;
	}

	/**
	 * @return the endTimeMillis
	 */
	public Long getEndTimeMillis() {
		return endTimeMillis;
	}

	/**
	 * @param endTimeMillis the endTimeMillis to set
	 */
	public void setEndTimeMillis(Long endTimeMillis) {
		this.endTimeMillis = endTimeMillis;
	}

	/**
	 * @return the parentId
	 */
	public String getParentId() {
		return parentId;
	}

	/**
	 * @param parentId the parentId to set
	 */
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}

	/**
	 * @return the contextPath
	 */
	public String getContextPath() {
		return contextPath;
	}

	/**
	 * @param contextPath the contextPath to set
	 */
	public void setContextPath(String contextPath) {
		this.contextPath = contextPath;
	}

	/**
	 * @return the className
	 */
	public String getClassName() {
		return className;
	}

	/**
	 * @return the args
	 */
	public Object[] getArgs() {
		return args;
	}


	/**
	 * @param args the args to set
	 */
	public void setArgs(Object[] args) {
		this.args = args;
	}


	/**
	 * @return the kind
	 */
	public String getKind() {
		return kind;
	}


	/**
	 * @param kind the kind to set
	 */
	public void setKind(String kind) {
		this.kind = kind;
	}


	/**
	 * @return the modifier
	 */
	public String getModifier() {
		return modifier;
	}


	/**
	 * @param modifier the modifier to set
	 */
	public void setModifier(String modifier) {
		this.modifier = modifier;
	}


	/**
	 * @param className the className to set
	 */
	public void setClassName(String className) {
		this.className = className;
	}


	/**
	 * @return the methodName
	 */
	public String getMethodName() {
		return methodName;
	}


	/**
	 * @param methodName the methodName to set
	 */
	public void setMethodName(String methodName) {
		this.methodName = methodName;
	}

	/**
	 * @return the traceId
	 */
	public String getTraceId() {
		return traceId;
	}
	/**
	 * @param traceId the traceId to set
	 */
	public void setTraceId(String traceId) {
		this.traceId = traceId;
	}
	/**
	 * @return the spanId
	 */
	public String getSpanId() {
		return spanId;
	}
	/**
	 * @param spanId the spanId to set
	 */
	public void setSpanId(String spanId) {
		this.spanId = spanId;
	}
	/**
	 * @return the startTime
	 */
	public Date getStartTime() {
		return startTime;
	}
	/**
	 * @param startTime the startTime to set
	 */
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	/**
	 * @return the endTime
	 */
	public Date getEndTime() {
		return endTime;
	}
	/**
	 * @param endTime the endTime to set
	 */
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	/**
	 * @return the runTime
	 */
	public Long getRunTime() {
		return runTime;
	}
	/**
	 * @param runTime the runTime to set
	 */
	public void setRunTime(Long runTime) {
		this.runTime = runTime;
	}
	
	public void countRunTime() {
		// through Date
//		if (this.startTime == null || this.endTime == null) {
//			this.runTime = 0L;
//		} else {
//			this.runTime = Math.abs(this.startTime.getTime() - this.endTime.getTime());
//		}
		
		// through long
		if (this.startTimeMillis > this.endTimeMillis) {
			this.runTime = 0L;
		}
		this.runTime = Math.abs(this.endTimeMillis - this.startTimeMillis);
	}
	
}
