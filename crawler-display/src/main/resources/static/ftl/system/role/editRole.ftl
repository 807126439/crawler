<#include "../../common/tag/tags.ftl"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
  <head>
    <base href="${basePath!}">
    
    <title>修改角色</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	  <#include "../../common/script/base-css.ftl"/>
	<link href="${request.contextPath}/plug-in/h-ui/lib/zTree/v3/css/zTreeStyle/zzTree.css" type="text/css" rel="stylesheet">
	
  </head>
  
  
  <body  class="pos-r">
  
  <div class="pos-a" style="width:480px;left:0;top:0; bottom:0; height:100%; border-right:1px solid #e5e5e5;">
		<div class="pd-20">
			  <form action="${request.contextPath}/roleController/editRole.do" method="post" class="form form-horizontal" id="form-role-edit">

				  <#include "./common/edit-item.ftl"/>
			    
				  <input type="hidden" name="id" value="${(roleItem.id)!}">
			  </form>			        
			  
		</div>  
				
  </div>

  <#include "./common/wholeAuthTree.ftl"/>

  <#include "../../common/script/base-js.ftl"/>

  <script type='text/javascript'>
	  var zNodes = ${nodes!};
  </script>

	<script type="text/javascript" src="${request.contextPath}/plug-in/h-ui/lib/zTree/v3/js/jquery.ztree.all-3.5.min.js"></script> 	      
	<script type="text/javascript" src="${request.contextPath}/plug-in/web/system/role/common-edit.js"></script>  
	<script type="text/javascript" src="${request.contextPath}/plug-in/web/system/role/role-edit.js"></script>
  	
		
		
</body>
  
  
  
</html>
