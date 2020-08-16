<#include "../../common/tag/tags.ftl"/>

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

	  <#include "../../common/script/main-css.ftl"/>
  </head>
  
  
  <body>	
  
		<table class="ui-table ui-table-border-row ui-table-border-col">		
			<#if iconMap?size gt 0 >
				<#list iconMap as key,value >
					<tr class="ui-table-condensed">
						<th class="td-label text-c">${key}</th>
						<td>
							<div class="iconlib" style="margin: 0">
						        <div class="iconlib-icons">
						          	<#list value as icon >
						          	 	<i class="iconlib-icon undeletable <#if selectedIconPath??><#if selectedIconPath == icon.fileViewPath >selected</#if></#if>"  data-icon="${icon.fileViewPath}" style="background-image: url(${icon.fileViewPath});"></i>
						          	</#list>
						        </div>
						      </div>							
			            </td>
					</tr>				
				</#list>
			</#if>
		</table>
		
		<div class="ui-form-item ui-form-btns">
			<a href="javascript:void(0)" class="ui-btn size-s ui-btn-primary" id="selectIcon" style="display:inline-block;">确定</a>
		</div>

	<input id="selectedIconPath" value="${selectedIconPath!}" type="hidden">
	<input id="iconType" value="${iconType!}" type="hidden">
	<#include "../../common/script/main-js.ftl" >
	<script type="text/javascript">
	//选中图标
    $(".iconlib").on("click",".iconlib-icon",function () {   	
      $(".ui-table").find("i.selected").removeClass("selected");  	
      $(this).addClass("selected");    
      $("#selectedIconPath").val($(this).data("icon"));	      
    })	
	
	 $("#selectIcon").click(function(){
		 var iconType = $("#iconType").val();
		 var selectedIconPath = $("#selectedIconPath").val();
		 if("menuIcon" == iconType){
			 parent.$("#menuIcon").val(selectedIconPath);			 
			 parent.$(".menuIcon").css("background-image","url("+selectedIconPath+")");			 
		 }
		 if("navBarIcon" == iconType){
			 parent.$("#navBarIcon").val(selectedIconPath);			 
			 parent.$(".navBarIcon").css("background-image","url("+selectedIconPath+")");		
		 }
		 var index = parent.layer.getFrameIndex(window.name);
	     parent.layer.close(index);
	 })	
	</script> 		
</body>
  
  
  
</html>