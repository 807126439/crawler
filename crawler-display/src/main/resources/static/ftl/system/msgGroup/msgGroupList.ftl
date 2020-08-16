<#include "../../common/tag/tags.ftl"/>

<!DOCTYPE html>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
  	<meta name="renderer" content="webkit|ie-stand">
  	<title></title>

	  <#include "../../common/script/main-css.ftl"/>



  </head>
  
  
  <body>
  <#include "../../common/nav/navLine.ftl"/>


	<div class="ui-page-container">
	    <div class="ui-panel">	     
	      <div class="ui-panel-body">
	        <div class="ui-table-actions">
	          <div class="btns ui-btn-group">
	            <@m.if_own_auth authCode="skipAddMsgGroup">
	            	<a href="javascript:void(0)" class="ui-btn ui-btn-normal" onclick="model_add('添加','940','500')">添加</a>
	            </@m.if_own_auth>         
	            <a href="javascript:location.replace(location.href);" class="ui-btn ui-btn-secondary">刷新</a>
	            <@m.if_own_auth authCode="deleteMsgGroup">
	           	    <a href="javascript:void(0)" class="ui-btn ui-btn-danger" onclick="datadel()">删除</a>
	            </@m.if_own_auth> 
	          </div>
	          
	          <div class="inputs">
	          <label>组类型：</label>
	          <div class="ui-input-inline" style="float: none;">
		          <select  class="ui-select ui-hide" id="groupType" style="width:150px">
					<option value="">请选择类型</option>
					<#list typeDicts as t >
						<option value="${t.dictValue}" title="${t.dictItem}">${t.dictItem}</option>
					</#list>
				</select>
				</div>
				<label>组名称:</label>
	            <input style="width:190px" name="search" type="text" class="ui-input" placeholder="请输入组名称" id="groupName">
			   			
	            <a href="javascript:void(0)" class="ui-btn" onclick="goSearch()"><i class="icon_search" ></i>查询</a>
	         </div>
	        
	        <table id="msgGroup_table" class="ui-table ui-table-border-row ui-table-border-col ui-table-hover table_datatable" width="100%" fixtable>         
	        </table>
	        
	      </div>
	    </div>
	  </div>



		<#include "../../common/script/main-js.ftl"/>
	
		<@m.ljs_button operCode="getMsgGroupDetail"  funMethod="edit_model('编辑','{0}','940','500')" context="编辑" varName="model_edit" />
		<@m.ljs_button operCode="deleteMsgGroup"  funMethod="del_model(this,'{0}')" context="删除" varName="model_del" />
			

	   <script type="text/javascript" src="${request.contextPath}/plug-in/web/system/msgGroup/msgGroup-list.js"></script> 
		
</body>
  
  
</html>