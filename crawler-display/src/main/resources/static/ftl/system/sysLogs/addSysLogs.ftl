<#include "../../common/tag/tags.ftl"/>

<!DOCTYPE html>

<html>
  <head>
    <base href="${basePath!}">
    
    <title></title>
    
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta name="renderer" content="webkit|ie-stand">
	<meta http-equiv="keywords" content="">
	<meta http-equiv="description" content="">

	  <#include "../../common/script/base-css.ftl"/>
  </head>
  
  
  <body>
  
		<div class="pd-20">
		  <form action="${request.contextPath}/sysLogsController/addSysLogs.do" method="post" class="form form-horizontal" id="form-model-add">
		    
			  <#include "./common/editItem.ftl" >
	 
		    <div class="row cl">
		      <div class="col-xs-9 col-xs-offset-3">
		        <@m.b_button operCode="addSysLogs" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;" />
		      </div>
		     
		    </div>
		  </form>
		        
		  
		</div>
			
		<#include "../../common/script/base-js.ftl" >
				
	    <script type="text/javascript" src="${request.contextPath}/plug-in/web/system/sysLogs/sysLogs-add.js"></script> 
		
		
  </body>
  
  
  
</html>