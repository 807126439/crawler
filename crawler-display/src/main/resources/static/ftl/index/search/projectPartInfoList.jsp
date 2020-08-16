<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="/page/common/tag/mytags.jsp" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
  	<meta name="renderer" content="webkit|ie-stand">
 	<meta http-equiv="Pragma" content="no-cache">
 	<meta http-equiv="Cache-Control" content="no-cache">
  	<meta http-equiv="Expires" content="0">
  	
  	<title></title>
 	
	<%@include file="/page/common/script/main-css.jsp" %>

  </head>
  
  
  <body>
	  <div class="ui-panel">
 
 		  <c:if test="${enterWay == 'home'}">
 		  	<%@include file="/page/common/nav/navLine.jsp"%>
 		  </c:if>
 		  <c:if test="${enterWay == 'project'}">
 		  	 <div class="ui-panel-header">
			    <span class="tt color-primary">${proName}-工程管理</span>
			    <div class="ui-location">
			      <span class="ui-location-pre">当前位置：</span>
			      <ol class="ui-location-path">
			          <li><a href="<%=path%>/home.do">首页</a></li>
			          <li>${TITLE}</li>
			      </ol>
			    </div>
			  </div>
 		  </c:if>


	      <div class="ui-panel-body">
	        <div class="ui-table-actions">
	          <div class="ui-table-actions-right">
		           <div class="ui-btn-group">      
		            <a href="javascript:location.replace(location.href);" class="ui-btn ui-btn-secondary size-s">刷新</a>
		            
		             <c:if test="${enterWay == 'home'}">
			 		  	<a href="<%=path %>/home.do" class="ui-btn ui-btn-warning size-s">返回</a>
			 		 </c:if>
			 		 <c:if test="${enterWay == 'project'}">
			 		    <a href="javascript:history.go(-1)" class="ui-btn ui-btn-warning size-s">返回</a>
			 		 </c:if>
		          </div>
	          </div>

    		 <div class="ui-table-actions-left">
	            <label>工程名称：</label>
	            <input style="width:180px"  type="text" class="ui-input size-s" placeholder="" id="partName">	 
	            <button type="button" class="ui-btn size-s"  onclick="goSearch()" >查 询</button>        
	          </div>
	         
	        </div>
	        
	         <table id="projectPartInfo_table" class="ui-table ui-table-border-row ui-table-border-col ui-table-hover table_datatable" width="100%" fixtable>
	        </table>
	        
		</div>
		<input type="hidden" value="${proId}" id="proId">
		<input type="hidden" value="${buildUnitId}" id="buildUnitId">
		<input type="hidden" value="${agentUnitId}" id="agentUnitId"> 
		<input type="hidden" value="${pageType}" id="pageType" />
		<%@include file="/page/common/script/main-js.jsp" %>
		
		
		
<%-- 		<!-- 主管单位 -->
		<c:if test="${pageType == 'adminUnit'}">
			<m:ajs_button operCode="adminViewEvaluateRecord"  funMethod="adminView_EvaluateRecord('{0}')" context="查看履约评价" varName="adminEvaluateRecord_view" />
		</c:if>
		<!-- 建设单位 -->
		<c:if test="${pageType == 'buildUnit'}">
	    	<m:ajs_button operCode="buildUnitViewEvaluateRecord"  funMethod="buildUnitView_EvaluateRecord('{0}')" context="查看履约评价" varName="buildUnitEvaluateRecord_view" />
		</c:if>
		<!-- 代建单位  -->
		<c:if test="${pageType == 'agentUnit'}">
			<m:ajs_button operCode="agentUnitViewEvaluateRecord"  funMethod="agentUnitview_EvaluateRecord('{0}')" context="查看履约评价" varName="agentUnitEvaluateRecord_view" />		
		</c:if>	 --%>
		

	    <script type="text/javascript" src="<%=path%>/plug-in/web/index/search/projectPartInfo-list.js"></script> 
</body>
</html>
