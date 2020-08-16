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
    
    <title>数字字典列表</title>
    
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
		           
		           <m:if_own_auth authCode="skipAddDict">
	            	<a href="javascript:void(0)" class="ui-btn ui-btn-normal size-s" onclick="dict_add('添加字典','720','380')">添加</a>
	            </m:if_own_auth>         
	            <a href="javascript:location.replace(location.href);" class="ui-btn ui-btn-secondary size-s">刷新</a>
	            <m:if_own_auth authCode="delDict">
	           	    <a href="javascript:void(0)" class="ui-btn ui-btn-danger size-s" onclick="datadel()">删除</a>
	            </m:if_own_auth> 
	           </div>
	          </div>
	          
	          <div class="ui-table-actions-left">    
	          	<c:choose>	
				 <c:when test="${model eq 'profile' }">
				 	 <input type="hidden"  id="dictType"  value="${dictType}">
				 	 <input type="hidden"  id="dict-model"  value="${model}">
				 </c:when>
				 <c:otherwise>
				 	<input type="text"  class="ui-input size-s" style="width:250px" placeholder="字典类别" id="dictType" >&nbsp;&nbsp;				 
				 </c:otherwise>
				</c:choose>	          	          
	            <input style="width:180px" name="search" type="text" class="ui-input size-s" placeholder="字典条目" id="dictItem">
	          
	            <a href="javascript:void(0)" class="ui-btn size-s" onclick="goSearch()"><i class="icon_search" ></i>查询</a>
	          </div>
	         
	        </div>
	        
	        <table id="dict_table" class="ui-table ui-table-border-row ui-table-border-col ui-table-hover table_datatable" width="100%" fixtable>         
	        </table>
	        
	      </div>
	    </div>



				
		
		<%@include file="/page/common/script/main-js.jsp" %>
		
		
		<m:ajs_button operCode="getDictDetail"  funMethod="dict_edit('编辑','{0}','720','380')" context="编辑" varName="edit_dict" />
		<m:ajs_button operCode="delDict"  funMethod="dict_del(this,'{0}')" context="删除" varName="del_dict" />	
       

		<script type="text/javascript" src="<%=path%>/plug-in/web/system/dict/dict-list.js"></script> 

		
</body>
  
  
  
</html>
