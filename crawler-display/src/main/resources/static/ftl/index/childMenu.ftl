<#include "../common/tag/tags.ftl"/>

<!DOCTYPE html>
<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=Edge">
  <meta name="renderer" content="webkit|ie-stand">
  <title>深圳市城建档案管理平台</title>
 
  <link rel="stylesheet" type="text/css" href="${request.contextPath}/plug-in/main/css/H-ui.reset.css">
  <link rel="stylesheet" type="text/css" href="${request.contextPath}/plug-in/main/css/common.css">
  <link rel="stylesheet" type="text/css" href="${request.contextPath}/plug-in/main/css/styles.css">
 
</head>

<body>

	<div class="ui-panel is-fixed">
	   	<div class="ui-panel-header">
			<span class="tt color-primary">${menuName}</span>
			<div class="ui-location">
				<span class="ui-location-pre">当前位置：</span>
				<ol class="ui-location-path">
					<li><a href="${request.contextPath}/home.do">首页</a></li>
					<li id="menuName">${menuName}</li>
				</ol>
			</div>
		</div>


		<div class="ui-panel-body">
	      <div class="panel-sidebar">
	        <ul class="panel-sidebar-menu">	        
	        <#if childMenuList?? && (childMenuList?size>0) >
	        	<#list childMenuList as menu >
	        		  <li>
						  <#if menu.resourecesUrl??>
							  <a href="${request.contextPath}${menu.resourecesUrl}" target="panelframe" <#if menu_index == 0>class='firstMenu'</#if>><span>${menu.authText}</span></a>
						  <#else>
							  <a href="javascript:;"><span>${menu.authText}</span><i class="panel-sidebar-menu__icon_fold"></i></a>
						  </#if>
						  <#if menu.childList?? && (menu.childList?size>0) >
							<ul>
							  <#list menu.childList as childMenu>
								   <li>
									 <a href="${request.contextPath}${childMenu.resourecesUrl}" target="panelframe" <#if childMenu_index==0>class='firstMenu'</#if>><span>${childMenu.authText}</span></a>
								   </li>
							  </#list>
							</ul>
						 </#if>
			          </li>
	        	</#list>
	        </#if>
	        </ul>  	        
	      </div>
	      <div class="panelframe-container">
	        <iframe src="" frameborder="0" name="panelframe" id="panelframe" width="100%" height="100%"></iframe>
	      </div>
	    </div>
	  </div>
 
	<#include "../common/script/main-js.ftl"/>
  <script type="text/javascript">
     $(function(){
    	 
      //点击菜单树时
      $("body").on("click",".panel-sidebar-menu a",function (e) {
        if($(e.target).is(".panel-sidebar-menu__icon_fold")){
          e.preventDefault();
          $(this).parent().toggleClass("opened")
        }else{
           if($(this).next("ul").length>0){
             $(this).parent().toggleClass("opened")
           }
           if($(this).attr("href").indexOf("javascript")!=0){
        	   
        	   $("#nowMenu").remove();       	   
        	   var liStr = "<li id='nowMenu'>"+$(this).text()+ "</li>" ;       	   
        	   $("#menuName").after(liStr)      	   
        	   
            $(".panel-sidebar-menu .active").removeClass("active")
            $(this).parent("li").addClass("active")
           }

        }
      })
      

      $(".firstMenu").parents("li").addClass("opened")
      $(".firstMenu").click()  
      var url =  $(".firstMenu").attr("href");
      $("#panelframe").attr("src",url)

      
    });
  </script>

 
</body>

</html>