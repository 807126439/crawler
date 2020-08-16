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
	<%@include file="/page/common/nav/navLine.jsp" %>


	<div class="ui-page-container">
	    <div class="ui-panel">
	      <div class="ui-panel-body">
	        <div class="ui-table-actions">
	          <div class="btns ui-btn-group">
	            <m:if_own_auth authCode="skipAddMsgRecord">
	            	<a href="javascript:void(0)" class="ui-btn ui-btn-normal" onclick="model_add('发送短信','','')">发送短信</a>
	            </m:if_own_auth>         
	            <a href="javascript:location.replace(location.href);" class="ui-btn ui-btn-secondary">刷新</a>
	            <m:if_own_auth authCode="deleteMsgRecord">
	           	    <a href="javascript:void(0)" class="ui-btn ui-btn-danger" onclick="datadel()">删除</a>
	            </m:if_own_auth> 
	          </div>
	          
	          <div class="inputs">
	            <label>短信内容：</label>
	            <input style="width:190px" name="content" type="text" class="ui-input" placeholder="请输入发送内容" id="content">
	            <label>收信人：</label>
	            <input style="width:190px" name="receiver" type="text" class="ui-input" placeholder="请输入收信人" id="receiver">
	            <a href="javascript:void(0)" class="ui-btn" onclick="goSearch()"><i class="icon_search" ></i>查询</a>
	          </div>
	         
	        </div>
	        
	        <table id="msgRecord_table" class="ui-table ui-table-border-row ui-table-border-col ui-table-hover table_datatable" width="100%" fixtable>         
	        </table>
	        
	      </div>
	    </div>
	  </div>

	
			
		<%@include file="/page/common/script/main-js.jsp" %>
	
		<m:ljs_button operCode="addMsgRecord"  funMethod="send_model(this,'{0}')" context="重新发送" varName="model_send" />
		<m:ljs_button operCode="deleteMsgRecord"  funMethod="del_model(this,'{0}')" context="删除" varName="model_del" />
			

	   <script type="text/javascript" src="<%=path%>/plug-in/web/system/msgRecord/msgRecord-list.js"></script> 
		
</body>
  
  
  
</html>