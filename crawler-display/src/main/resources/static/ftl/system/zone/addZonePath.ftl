<#include "../../common/tag/tags.ftl"/>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加路径</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	  <#include "../../common/script/base-css.ftl"/>

  </head>
  
  
  <body>
	<div class="pd-20">
	  <form action="${request.contextPath}/zonePathController/addZonePath.do" method="post" class="form form-horizontal" id="form-zone-path-add">
	    
		  <#include "./common/editItem.ftl" >
 
	    <div class="row cl">
	      <div class="col-xs-9 col-xs-offset-3">
	        <@m.b_button operCode="addZonePath" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;" />
	      </div>
	     
	    </div>
	  </form>
	        
	  
	</div>



	<#include "../../common/script/base-js.ftl" >
	    
	<script type="text/javascript" src="${request.contextPath}/plug-in/web/system/zone/zone-path-add.js"></script> 
		
		
		
</body>
  
  
  
</html>
