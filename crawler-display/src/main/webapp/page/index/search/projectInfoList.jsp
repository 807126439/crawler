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
  	
  	<title>项目信息管理</title>
 	
	<%@include file="/page/common/script/main-css.jsp" %>

  </head>
  
  
  <body>
	  <div class="ui-panel">
 
		<%@include file="/page/common/nav/navLine.jsp"%>

	      <div class="ui-panel-body">
	        <div class="ui-table-actions">
	          <div class="ui-table-actions-right">
		           <div class="ui-btn-group">      
		            <a href="javascript:location.replace(location.href);" class="ui-btn ui-btn-secondary size-s">刷新</a>
		            <a href="<%=path %>/home.do" class="ui-btn ui-btn-warning size-s">返回</a>
		          </div>
	          </div>

    		 <div class="ui-table-actions-left">
    		 	 <label>项目编号：</label>
	             <input style="width:180px" type="text" class="ui-input size-s" placeholder="" id="buildNo">	 
	             <label>项目名称：</label>
	             <input style="width:180px" type="text" class="ui-input size-s" placeholder="" id="proName">	 
	             <button type="button" class="ui-btn size-s"  onclick="goSearch()" >查 询</button>        
	          </div>	         
	        </div>
	        
	         <table id="projectInfo_table" class="ui-table ui-table-border-row ui-table-border-col ui-table-hover table_datatable" width="100%" fixtable>
	        </table>	        
		</div>
		<input type="hidden" id="buildUnitId" value="${buildUnitId}">
		<input type="hidden" id="agentUnitId" value="${agentUnitId}">
		<%@include file="/page/common/script/main-js.jsp" %>
	    <m:ajs_button operCode="skipCheckProjectInfo"  funMethod="check_model('查看项目详情','{0}','650','520')" context="查看项目详情" varName="model_check" />
	    <m:ajs_button operCode="projectPartInfoManage"  funMethod="skip_part('单项工程管理','{0}')" context="工程信息管理" varName="part_skip" />	    
	    <script type="text/javascript" src="<%=path%>/plug-in/web/index/search/projectInfo-list.js"></script> 	
</body>
  
  
  
</html>