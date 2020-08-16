<#include "../../common/tag/tags.ftl"/>

<!DOCTYPE html>

<html>
  <head>
    <base href="${basePath!}">
    
    <title></title>
    
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
	            <a href="javascript:location.replace(location.href);" class="ui-btn ui-btn-secondary size-s">刷新</a>
	            <@m.if_own_auth authCode="deleteSysLogs">
	           	    <a href="javascript:void(0)" class="ui-btn ui-btn-danger size-s" onclick="datadel()">删除</a>
	            </@m.if_own_auth>
	          </div>
	          </div>
	          <div class="ui-table-actions-left"> 
          		  时间：<input type="text" onfocus="WdatePicker()" id="datemin" class="ui-input Wdate size-s" style="width:150px;">
				-
				<input type="text" onfocus="WdatePicker({minDate:'#F{$dp.$D(\'datemin\')}'})" id="datemax" class="ui-input Wdate size-s" style="width:150px;">         
	            <a href="javascript:void(0)" class="ui-btn size-s" onclick="goSearch()"><i class="icon_search" ></i>查询</a>
	          </div>
	         
	        </div>
	        
	        <table id="sysLogs_table" class="ui-table ui-table-border-row ui-table-border-col ui-table-hover table_datatable" width="100%" fixtable>         
	        </table>
	        
	      </div>
	    </div>





	 <#include "../../common/script/main-js.ftl"/>
	
		
	<@m.ajs_button operCode="deleteSysLogs"  funMethod="del_model(this,'{0}')" context="删除" varName="model_del"/>
			
	<script type="text/javascript" src="${request.contextPath}/plug-in/web/system/sysLogs/sysLogs-list.js"></script> 
		
</body>
  
  
  
</html>