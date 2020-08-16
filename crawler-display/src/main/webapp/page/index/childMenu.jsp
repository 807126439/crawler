<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="/page/common/tag/mytags.jsp" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=Edge">
  <meta name="renderer" content="webkit|ie-stand">
  <title>深圳市城建档案管理平台</title>
 
  <link rel="stylesheet" type="text/css" href="<%=path%>/plug-in/main/css/H-ui.reset.css">
  <link rel="stylesheet" type="text/css" href="<%=path%>/plug-in/main/css/common.css">
  <link rel="stylesheet" type="text/css" href="<%=path%>/plug-in/main/css/styles.css">
 
</head>

<body>

	<div class="ui-panel is-fixed">
	    <div class="ui-panel-header">
	      <span class="tt color-primary">${menuName}</span>
	      <div class="ui-location">
	        <span class="ui-location-pre">当前位置：</span>
	        <ol class="ui-location-path">
	          <li><a href="<%=path%>/home.do">首页</a></li>
	          <li id="menuName">${menuName}</li>                  
	        </ol>
	      </div>
	    </div>
	    
	    
	    <div class="ui-panel-body">
	      <div class="panel-sidebar">
	        <ul class="panel-sidebar-menu">	        
	        <c:if test="${childMenuList!=null && fn:length(childMenuList)>0}">	        
	        	<c:forEach items="${childMenuList}" var="menu" varStatus="vs">	        	
	        		  <li>	        		  
	        		  	<c:if test="${not empty menu.resourecesUrl}">
	        		  		<a href="<%=path%>${menu.resourecesUrl}" target="panelframe" <c:if test="${vs.count == 1}">class='firstMenu'</c:if>><span>${menu.authText}</span></a>
	        		  	</c:if>
	        		    <c:if test="${empty menu.resourecesUrl}">	        		    
	        		  		<a href="javascript:;"><span>${menu.authText}</span><i class="panel-sidebar-menu__icon_fold"></i></a>
	        		  	</c:if>
			             <c:if test="${childMenuList!=null && fn:length(childMenuList)>0}">
	        				<ul>
					          <c:forEach items="${menu.childList}" var="childMenu" varStatus="cvs">
					        	   <li>
				                	 <a href="<%=path%>${childMenu.resourecesUrl}" target="panelframe" <c:if test="${cvs.count == 1}">class='firstMenu'</c:if>><span>${childMenu.authText}</span></a>
				              	   </li>
					          </c:forEach>
				        	</ul>
			        	 </c:if>
			          </li>
	        	</c:forEach>
	        </c:if>
	        </ul>  	        
	      </div>
	      <div class="panelframe-container">
	        <iframe src="" frameborder="0" name="panelframe" id="panelframe" width="100%" height="100%"></iframe>
	      </div>
	    </div>
	  </div>
 
  <%@include file="/page/common/script/main-js.jsp" %>
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