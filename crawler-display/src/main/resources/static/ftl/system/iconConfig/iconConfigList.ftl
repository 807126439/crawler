<#include "../../common/tag/tags.ftl"/>

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

	  <#include "../../common/script/main-css.ftl"/>

  </head>
  
  
  <body>
	  <div class="ui-panel">
 
	      <div class="ui-panel-body">
	        <div class="ui-table-actions">
	          <div class="ui-table-actions-right">
		           <div class="ui-btn-group">
		             <@m.if_own_auth authCode="skipAddIconConfig">
		            	<a href="javascript:void(0)" class="ui-btn ui-btn-normal size-s" onclick="model_add('上传图标','650','250')">上传图标</a>
		            </@m.if_own_auth>          
		            <a href="javascript:location.replace(location.href);" class="ui-btn ui-btn-secondary size-s">刷新</a>
		            <@m.if_own_auth authCode="deleteIconConfig">
	           	    	<a href="javascript:void(0)" class="ui-btn ui-btn-danger size-s" onclick="datadel()">删除</a>
	            	</@m.if_own_auth>
		          </div>
	          </div>

    		 <div class="ui-table-actions-left">
	             <label>图标类型：</label>
	             <select class="ui-select" id="iconType"  style="width:180px">
	                 <option value="">请选择</option>
		             <#list iconTypeList as ty>
						  <option value="${ty.dictValue}">${ty.dictItem}</option>
					 </#list>
		         </select>	 	           
	             <button type="button" class="ui-btn size-s"  onclick="goSearch()" >查 询</button>        
	          </div>
	         
	        </div>
	        
	         <table id="iconConfig_table" class="ui-table ui-table-border-row ui-table-border-col ui-table-hover table_datatable" width="100%" fixtable>
	        </table>
	        
		</div>



		  <#include "../../common/script/main-js.ftl" >
		<@m.ajs_button operCode="deleteIconConfig"  funMethod="del_model(this,'{0}')" context="删除" varName="model_del" />
	    <script type="text/javascript" src="${request.contextPath}/plug-in/web/system/iconConfig/iconConfig-list.js"></script> 
		
</body>
  
  
  
</html>