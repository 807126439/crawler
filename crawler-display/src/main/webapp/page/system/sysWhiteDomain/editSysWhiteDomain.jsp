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
    
    <title>编辑</title>
    
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta name="renderer" content="webkit|ie-stand">
		
	<%@include file="/page/common/script/main-css.jsp" %>

  </head>
  
  
  <body style="background: #fff">  
  
	<div class="ui-page-container ui-page-fixed">
	    <div class="ui-form">
		  <form action="<%=path %>/sysWhiteDomainController/editSysWhiteDomain.do" method="post" class="form form-horizontal" id="form-model-edit">		    
		    <%@include file="/page/system/sysWhiteDomain/common/editItem.jsp" %>
		    
	 		<input type="hidden" name="id" value="${model.id}"/>
	 		
	 		
	 		<div class="ui-form-item ui-form-btns">
	      	   <m:if_own_auth authCode="editSysWhiteDomain">
	      	   	 <a href="javascript:void(0)" class="ui-btn ui-btn-secondary" onclick="sumbitForm('form-model-edit')">保存</a>
	      	   </m:if_own_auth>      		       		
	      	</div>	    
		    
		  </form>
			        
		</div>        
			  
	  </div>
			
	  <%@include file="/page/common/script/main-js.jsp" %>					
	  <script type="text/javascript" src="<%=path%>/plug-in/web/system/sysWhiteDomain/sysWhiteDomain-edit.js"></script> 
		
		
  </body>
  
  
  
</html>