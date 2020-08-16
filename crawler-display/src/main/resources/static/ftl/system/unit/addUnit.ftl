<#include "../../common/tag/tags.ftl"/>

<!DOCTYPE html>

<html>
  <head>
    <base href="${basePath!}">
    
    <title></title>
    
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta name="renderer" content="webkit|ie-stand">	
	
	  <#include "../../common/script/main-css.ftl"/>
  </head>
  
  
  <body style="background: #fff">  
  
	<div class="ui-page-container">
	    <div class="ui-form">
		  <form action="${request.contextPath}/unitController/addUnit.do" method="post" class="form form-horizontal" id="form-model-add">
		    
			  <#include "./common/editItem.ftl" >
		    <input type="hidden" name="unitFlag" value="${(model.unitFlag)!}"/>
	      	<div class="ui-form-item ui-form-btns">
	      	   <@m.if_own_auth authCode="addUnit">
	      	   	 <a href="javascript:void(0)" class="ui-btn ui-btn-secondary" onclick="sumbitForm('form-model-add')">保存</a>
	      	   </@m.if_own_auth>      		       		
	      	</div>
	 		   
		  </form>
		
		</div>        
		  
	</div>
			
			
	<#include "../../common/script/main-js.ftl" >
	 <script type="text/javascript" src="${request.contextPath}/plug-in/web/system/unit/unit-add.js"></script> 
	
		
  </body>
  
  
  
</html>