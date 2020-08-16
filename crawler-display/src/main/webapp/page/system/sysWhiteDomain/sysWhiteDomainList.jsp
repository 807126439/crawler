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
	

	<div class="ui-page-container">
	    <div class="ui-panel">
	      <div class="ui-panel-body">
	        <div class="ui-table-actions">
	          <div class="btns ui-btn-group">
	            <m:if_own_auth authCode="skipAddSysWhiteDomain">
	            	<a href="javascript:void(0)" class="ui-btn ui-btn-normal" onclick="model_add('添加','800','250')">添加</a>
	            </m:if_own_auth>         
	            <a href="javascript:location.replace(location.href);" class="ui-btn ui-btn-secondary">刷新</a>
	            <m:if_own_auth authCode="deleteSysWhiteDomain">
	           	    <a href="javascript:void(0)" class="ui-btn ui-btn-danger" onclick="datadel()">删除</a>
	            </m:if_own_auth> 
	            <m:if_own_auth authCode="refreshWhiteDomain">
	           	    <a href="javascript:void(0)" class="ui-btn" onclick="refreshData()">重置缓存</a>
	            </m:if_own_auth> 
	          </div>
	          
	          <div class="inputs">
	          
	         
	           </div>
	        
	        <table id="sysWhiteDomain_table" class="ui-table ui-table-border-row ui-table-border-col ui-table-hover table_datatable" width="100%" fixtable>         
	        </table>
	        
	      </div>
	    </div>
	  </div>

	
			
		<%@include file="/page/common/script/main-js.jsp" %>
	
		<m:ljs_button operCode="getSysWhiteDomainDetail"  funMethod="edit_model('编辑','{0}','800','250')" context="编辑" varName="model_edit" />
		<m:ljs_button operCode="deleteSysWhiteDomain"  funMethod="del_model(this,'{0}')" context="删除" varName="model_del" />
			

	   <script type="text/javascript" src="<%=path%>/plug-in/web/system/sysWhiteDomain/sysWhiteDomain-list.js"></script> 
		
</body>
  
  
  
</html>