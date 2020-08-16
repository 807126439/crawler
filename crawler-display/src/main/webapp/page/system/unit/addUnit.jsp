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
    
    <title></title>
    
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta name="renderer" content="webkit|ie-stand">	
	
	<%@include file="/page/common/script/main-css.jsp" %>

  </head>
  
  
  <body style="background: #fff">  
  
	<div class="ui-page-container">
	    <div class="ui-form">
		  <form action="<%=path %>/unitController/addUnit.do" method="post" class="form form-horizontal" id="form-model-add">
		    
		    <%@include file="/page/system/unit/common/editItem.jsp" %>
		    	
		    <input type="hidden" name="unitFlag" value="${model.unitFlag}"/>		      
	      	<div class="ui-form-item ui-form-btns">
	      	   <m:if_own_auth authCode="addUnit">
	      	   	 <a href="javascript:void(0)" class="ui-btn ui-btn-secondary" onclick="sumbitForm('form-model-add')">保存</a>
	      	   </m:if_own_auth>      		       		
	      	</div>
	 		   
		  </form>
		
		</div>        
		  
	</div>
			
			
	 <%@include file="/page/common/script/main-js.jsp" %>					
	 <script type="text/javascript" src="<%=path%>/plug-in/web/system/unit/unit-add.js"></script> 
	
		
  </body>
  
  
  
</html>