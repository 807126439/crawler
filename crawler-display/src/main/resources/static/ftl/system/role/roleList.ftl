<#include "../../common/tag/tags.ftl"/>

<!DOCTYPE html>
<html>
  <head>
    <base href="${request.contextPath}">
    
    <title>角色列表</title>
    
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="renderer" content="webkit|ie-stand">
	
	  <#include "../../common/script/main-css.ftl"/>
  </head>
  
  
  <body>
	<div class="ui-panel">
	
	
	      <div class="ui-panel-body">
	        <div class="ui-table-actions">
	          <div class="ui-table-actions-right">
		           <div class="ui-btn-group">
	            <@m.if_own_auth authCode="skipAddRole">
	            	<a href="javascript:void(0)" class="ui-btn ui-btn-normal size-s" onclick="role_add('添加角色','${request.contextPath}/roleController/skipAddRole.do','850','510')">添加角色</a>
	            </@m.if_own_auth>         
	            <a href="javascript:location.replace(location.href);" class="ui-btn ui-btn-secondary size-s">刷新</a>
	            <@m.if_own_auth authCode="delRole">
	           	    <a href="javascript:void(0)" class="ui-btn ui-btn-danger size-s" onclick="datadel()">删除</a>
	            </@m.if_own_auth> 
	            </div>
	          </div>
	          
	          
	          <div class="ui-table-actions-left">
	            <label>角色码：</label>
	            <input style="width:180px" name="search" type="text" class="ui-input size-s" placeholder="角色码" id="ser_name">
	            <label>角色名：</label>
	            <input type="text"  class="ui-input size-s" style="width:180px" placeholder="角色名" id="ser_text" >	           
	            <a href="javascript:void(0)" class="ui-btn size-s" onclick="goSearch()"><i class="icon_search" ></i>查询</a>
	          </div>
	         
	        </div>
	        
	        <table id="role_table" class="ui-table ui-table-border-row ui-table-border-col ui-table-hover table_datatable" width="100%" fixtable>         
	        </table>
	        
	      </div>
	</div>
	
		<#include "../../common/script/main-js.ftl"/>
	 
	   <@m.ajs_button operCode="editRole"  funMethod="role_edit('编辑','{0}','850','510')" context="编辑" varName="edit_role"  />	   
	   <@m.ajs_button operCode="delRole"  funMethod="role_del(this,'{0}')" context="删除" varName="del_role" />
	 
	   <script type="text/javascript" src="${request.contextPath}/plug-in/web/system/role/role-list.js"></script> 
	 
		
</body>
  
  
  
</html>
