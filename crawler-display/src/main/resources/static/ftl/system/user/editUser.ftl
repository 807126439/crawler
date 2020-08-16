<#include "../../common/tag/tags.ftl"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
  <head>
    <base href="${basePath!}">
    
    <title>修改用户信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	  <#include "../../common/script/base-css.ftl"/>

  </head>
  
  
  <body>
	<div class="pd-20">
	  <form action="${request.contextPath}/userController/editUser.do" method="post" class="form form-horizontal" id="form-user-edit">
		  <#include "./common/edit-item.ftl" >
     	    
	    	<input type="hidden" name="id" value="${userItem.id}" >
	  	 
	  </form>
	  
	  
	</div>



	<#include "../../common/script/base-js.ftl" >
	<script type="text/javascript" src="${request.contextPath}/plug-in/main/js/public.js"></script> 
	<script type="text/javascript" src="${request.contextPath}/plug-in/web/system/user/user-edit.js"></script> 
	<script type="text/javascript" src="${request.contextPath}/plug-in/web/system/user/role-for-user.js"></script> 
		
		
		
		
</body>
  
  
</html>
