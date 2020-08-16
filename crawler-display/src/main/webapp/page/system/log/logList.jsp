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
    
    <title>日志列表</title>
    
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="renderer" content="webkit|ie-stand">
		
	<%@include file="/page/common/script/main-css.jsp" %>

	
  </head>
  
  
  <body>
	<div class="ui-panel">
	
	   <div class="ui-panel-body">
	        <div class="ui-table-actions">
	          <div class="ui-table-actions-right">
		           <div class="ui-btn-group">          
	            <a href="javascript:location.replace(location.href);" class="ui-btn ui-btn-secondary size-s">刷新</a>
	            <m:if_own_auth authCode="delLoginLog">
	           	    <a href="javascript:void(0)" class="ui-btn ui-btn-danger size-s" onclick="datadel()">删除</a>
	            </m:if_own_auth> 
	           </div>
	          </div>
	          
	          <div class="ui-table-actions-left">         	            
	  			<input type="text" onfocus="WdatePicker()" id="datemin" class="ui-input Wdate size-s" placeholder="开始时间" style="width:150px;">
					-
				<input type="text" onfocus="WdatePicker({minDate:'#F{$dp.$D(\'datemin\')}'})" id="datemax" class="ui-input Wdate size-s" placeholder="结束时间" style="width:150px;">
				<input type="text" class="ui-input size-s" style="width:150px" placeholder="用户名" id="log-user" >
  	  
	            <a href="javascript:void(0)" class="ui-btn size-s" onclick="goSearch()"><i class="icon_search" ></i>查询</a>
	          </div>
	         
	        </div>
	        
	        <table id="log_table" class="ui-table ui-table-border-row ui-table-border-col ui-table-hover table_datatable" width="100%" fixtable>         
	        </table>
	        
	      </div>
	    </div>
  


	   <%@include file="/page/common/script/main-js.jsp" %>
			
	   <m:ajs_button operCode="delLoginLog"  funMethod="log_del(this,'{0}')" context="删除" varName="del_log" />


		<script type="text/javascript" src="<%=path%>/plug-in/web/system/log/log-list.js"></script> 
	   
		
</body>
  
  
  
</html>
