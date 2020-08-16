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
    
    <title>添加</title>
    
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta name="renderer" content="webkit|ie-stand">
	
	<%@include file="/page/common/script/main-css.jsp" %>

  </head>
  
  
   <body style="background: #fff">  
  
		<div class="ui-page-container ui-page-fixed">
		    <div class="ui-form">
			  <form action="<%=path %>/departmentController/addDepartment.do" method="post" class="form form-horizontal" id="form-model-add">
			    
			    <%@include file="/page/system/department/common/editItem.jsp" %>
			    
		 		 <div class="ui-form-item ui-form-btns">
		      	   <m:if_own_auth authCode="addDepartment">
		      	   	 <a href="javascript:void(0)" class="ui-btn ui-btn-secondary" onclick="sumbitForm('form-model-add')">保存</a>
		      	   </m:if_own_auth>      		       		
		      	</div>
		 	 		   
			  </form>
			        		  
		   </div>        
			  
		</div>
			
		<%@include file="/page/common/script/main-js.jsp" %>					
	    <script type="text/javascript" src="<%=path%>/plug-in/web/system/department/department-add.js"></script> 
		
		
  </body>
  
  
  
</html>