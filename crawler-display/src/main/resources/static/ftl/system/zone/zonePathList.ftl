<#include "../../common/tag/tags.ftl"/>

<!DOCTYPE html>
<html>
  <head>
    <base href="${basePath!}">
    
    <title>区间路径列表</title>
    
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
		           
	            <@m.if_own_auth authCode="skipAddZonePath">
	            	<a href="javascript:void(0)" class="ui-btn ui-btn-normal size-s" onclick="zone_path_add('添加路径','skipAddZonePath.do','800','480')">添加路径</a>
	            </@m.if_own_auth>
	            <@m.if_own_auth authCode="createFileDirectory">
	            	<a href="javascript:void(0)" class="ui-btn size-s" onclick="data_create_dir()">生成目录</a>
	            </@m.if_own_auth>         
	            <a href="javascript:location.replace(location.href);" class="ui-btn ui-btn-secondary size-s">刷新</a>
	            <@m.if_own_auth authCode="delZonePath">
	           	    <a href="javascript:void(0)" class="ui-btn ui-btn-danger size-s" onclick="datadel()">删除</a>
	            </@m.if_own_auth> 
	          </div>
	          
	         
	        </div>
	        
	        <table id="zone_path_table" class="ui-table ui-table-border-row ui-table-border-col ui-table-hover table_datatable" width="100%" fixtable>         
	        </table>
	        
	      </div>
	    </div>



	  <#include "../../common/script/main-js.ftl"/>
		
		
		<@m.ajs_button operCode="getZonePathDetail"  funMethod="zone_path_edit('编辑','{0}','800','480')" context="编辑" varName="edit_zone_path"/>
		<@m.ajs_button operCode="delZonePath"  funMethod="zone_path_del(this,'{0}')" context="删除" varName="del_zone_path" />	
       

		<script type="text/javascript" src="${request.contextPath}/plug-in/web/system/zone/zone-path-list.js"></script> 
		
		
</body>
  
  
  
</html>
