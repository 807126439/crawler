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
	  <div class="ui-panel">
 
	      <div class="ui-panel-body">
	        <div class="ui-table-actions">
	          <div class="ui-table-actions-right">
		           <div class="ui-btn-group">
		             <m:if_own_auth authCode="skipAddUnit">
		            	<a href="javascript:void(0)" class="ui-btn ui-btn-normal size-s" onclick="model_add('添加单位','650','600')">添加</a>
		            </m:if_own_auth>          
		            <a href="javascript:location.replace(location.href);" class="ui-btn ui-btn-secondary size-s">刷新</a>
		            <m:if_own_auth authCode="deleteUnit">
	           	    	<a href="javascript:void(0)" class="ui-btn ui-btn-danger size-s" onclick="datadel()">删除</a>
	            	</m:if_own_auth>
		          </div>
	          </div>

    		 <div class="ui-table-actions-left">
	             <label>单位名称：</label>
	             <input style="width:180px" type="text" class="ui-input size-s" placeholder="" id="unitName">
	             <label>组织机构代码：</label>
	             <input style="width:180px" type="text" class="ui-input size-s" placeholder="" id="organizationCode">	    	           
	             <button type="button" class="ui-btn size-s"  onclick="goSearch()" >查 询</button>        
	          </div>
	         
	        </div>
	        
	         <table id="unit_table" class="ui-table ui-table-border-row ui-table-border-col ui-table-hover table_datatable" width="100%" fixtable>
	        </table>
	        
		</div>


		
		<%@include file="/page/common/script/main-js.jsp" %>
		<m:ajs_button operCode="setEvaluator"  funMethod="set_evaluator('设置评价人员','{0}','500','500')" context="设置评价人员" varName="evaluator_set" />
	    <m:ajs_button operCode="getUnitDetail"  funMethod="edit_model('编辑单位','{0}','650','600')" context="编辑" varName="model_edit" />
		<m:ajs_button operCode="deleteUnit"  funMethod="del_model(this,'{0}')" context="删除" varName="model_del" />
	    <script type="text/javascript" src="<%=path%>/plug-in/web/system/unit/unit-list.js"></script> 
		
</body>
  
  
  
</html>