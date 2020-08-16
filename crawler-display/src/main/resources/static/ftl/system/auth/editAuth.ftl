<#include "../../common/tag/tags.ftl"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
  <head>
    <base href="${basePath!}">
    
    <title>修改权限</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	  <#include "../../common/script/base-css.ftl"/>
	<link href="${request.contextPath}/plug-in/h-ui/lib/zTree/v3/css/zTreeStyle/zzTree.css" type="text/css" rel="stylesheet">
	  <style type="text/css">
		  .icon-show{display: inline-block;width:30px;height:30px;vertical-align: top;background: no-repeat center #BBD2E9;cursor: pointer;}
	  </style>
  </head>
  
  
   <body class="pos-r">
  
	  	<div class="pos-a" style="width:300px;left:0;top:0; bottom:0; height:100%; border-right:1px solid #e5e5e5; ">
			<#include "./common/selectAuthTree.ftl"/>					
	 	</div>
	 	 
	   <div  style="margin-left:300px;">	 
		<div class="pd-20">
		  <form action="${request.contextPath}/authController/editAuth.do" method="post" class="form form-horizontal" id="form-auth-edit">

			  <#include "./common/edit-item.ftl"/>
		     <input type="hidden" name="id" value="${authItem.id}" />
		  
		    <div class="row cl">
		      <div class="col-xs-9 col-xs-offset-3">
		        <@m.b_button operCode="editAuth" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;" />
		      </div>
		    </div>
		  </form>
		  
		  
		</div>
	   </div>


	<#include "../../common/script/base-js.ftl"/>
	<script type='text/javascript'>
		var zNodes = ${authStructure!};
	</script>
	<script type="text/javascript" src="${request.contextPath}/plug-in/h-ui/lib/zTree/v3/js/jquery.ztree.all-3.5.min.js"></script> 	
	<script type="text/javascript" src="${request.contextPath}/plug-in/web/system/auth/common-item.js"></script>	
	<script type="text/javascript" src="${request.contextPath}/plug-in/web/system/auth/auth-edit.js"></script>
	<script type="text/javascript">
	  $(function(){
		  if(parAuthId){
		  	var treeObj = $.fn.zTree.getZTreeObj("tree");
			var node = treeObj.getNodeByParam("id",parAuthId);
			treeObj.selectNode(node,false);
		  }
	  	
	  
	  });
	
	</script>	
		
</body>
  
  
</html>
