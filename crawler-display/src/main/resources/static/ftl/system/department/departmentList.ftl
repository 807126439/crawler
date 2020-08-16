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
		             <@m.if_own_auth authCode="skipAddDepartment">
		            	<a href="javascript:void(0)" class="ui-btn ui-btn-normal size-s" onclick="model_add('添加部门','500','450')">添加</a>
		            </@m.if_own_auth>          
		            <a href="javascript:location.replace(location.href);" class="ui-btn ui-btn-secondary size-s">刷新</a>
		            <@m.if_own_auth authCode="deleteDepartment">
	           	    	<a href="javascript:void(0)" class="ui-btn ui-btn-danger size-s" onclick="datadel()">删除</a>
	            	</@m.if_own_auth>
		          </div>
	          </div>

    		 <div class="ui-table-actions-left">
    		    <label>部门编号：</label>
	            <input style="width:180px"  type="text" class="ui-input size-s" id="departNo">
	            <label>部门名称：</label>
	            <input style="width:180px"  type="text" class="ui-input size-s" id="departName">
	            <label>单位名称：</label>
	            <select class="ui-select" id="unitId"  style="width:180px">
	                 <option value="">请选择</option>
		             <#list unitList as ty  >
						  <option value="${ty.id}">${ty.unitName}</option>
					 </#list>
		         </select>	 
	            <button type="button" class="ui-btn size-s"  onclick="goSearch()" >查 询</button>        
	          </div>
	         
	        </div>
	        
	         <table id="department_table" class="ui-table ui-table-border-row ui-table-border-col ui-table-hover table_datatable" width="100%" fixtable>
	        </table>
	        
		</div>



		  <#include "../../common/script/main-js.ftl" >
	
		<@m.ajs_button operCode="getDepartmentDetail"  funMethod="edit_model('编辑部门','{0}','500','450')" context="编辑" varName="model_edit" />
		<@m.ajs_button operCode="deleteDepartment"  funMethod="del_model(this,'{0}')" context="删除" varName="model_del" />
			

	    <script type="text/javascript" src="${request.contextPath}/plug-in/web/system/department/department-list.js"></script> 
		
</body>
  
  
  
</html>