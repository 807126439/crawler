<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
  		<meta name="renderer" content="webkit|ie-stand">
		<meta http-equiv="Cache-Control" content="no-siteapp" />
		<LINK rel="Bookmark" href="/favicon.ico" >
		<LINK rel="Shortcut Icon" href="/favicon.ico" />
		
	  <link rel="stylesheet" type="text/css" href="<%=path%>/plug-in/main/css/H-ui.reset.css">
	  <link rel="stylesheet" type="text/css" href="<%=path%>/plug-in/main/css/common.css">
	  <link rel="stylesheet" type="text/css" href="<%=path%>/plug-in/main/css/styles.css">
	  <link rel="stylesheet" type="text/css" href="<%=path%>/plug-in/main/css/index.css">
		
		<!--[if lt IE 9]>
		<script type="text/javascript" src="<%=path%>/plug-in/h-ui/lib/html5.js"></script>
		<script type="text/javascript" src="<%=path%>/plug-in/h-ui/lib/respond.min.js"></script>
		<script type="text/javascript" src="<%=path%>/plug-in/h-ui/lib/PIE_IE678.js"></script>
		<![endif]-->
		
		<title>福田区政府投资项目履约评价共享平台</title>
		<meta name="keywords" content="">
		<meta name="description" content="">
		
	</head>
	
	<body>
	
	  <div class="header">
	   	<div class="header-title" style="background-image:url(<%=path%>/plug-in/main/images/header-title.png)"></div>
	   	
	    <%
		String menu = (String) session.getAttribute("menu");
		out.print(menu);
		%>

	  </div>		  
	  
	  
	  <div class="main-container">
		  <div class="welcome-bar">
		    <div class="welcome-bar__left">当前用户：<sec:authentication property="principal.unitName"/>，<sec:authentication property="principal.chineseName"/>（<sec:authentication property="principal.username"/>）
		      <div class="header-buttons-btn-wrap"><i class="icon-tri"></i>
		        <div class="header-menu-wrap">
		          <div class="header-menu">
		           <m:if_own_auth authCode="updateMyInfo"><a href="javascript:viewPerInfo()">个人信息</a></m:if_own_auth>
		           <m:if_own_auth authCode="changePwd"><a href="javascript:changePwd()">修改密码</a></m:if_own_auth>
		            <a href="javascript:logout()">退出登录</a>
		          </div>
		        </div>
		      </div>
		    </div>
		  </div>
		  <div class="show_iframe">
		    <iframe id="mainframe" name="mainframe" scrolling="yes" frameborder="0" src="<%=path%>/home.do"></iframe>
		  </div>
	 </div>
	 <input id="nowMenu" type="hidden">
	  
	  
	  
	<script type="text/javascript" src="<%=path%>/plug-in/main/libs/jquery/1.11.3/jquery.min.js"></script>
	<script type="text/javascript" src="<%=path%>/plug-in/h-ui/lib/layer/2.4/layer.js"></script>
	<script type="text/javascript" src="<%=path%>/plug-in/main/libs/jquery.nicescroll.min.js"></script>
	<script type="text/javascript" src="<%=path%>/plug-in/web/common/js/public.js"></script> 
	
	
	
	<script type="text/javascript">
	  $(function() {		  
		//显示隐藏右侧更多菜单
	    var t1;
	    $('#moreNav').hover(function() {
	      if(t1) clearTimeout(t1);
	      $('.header-more-nav-bar').addClass('showed')
	    },function() {
	      t1=setTimeout(function () {
	        $('.header-more-nav-bar').removeClass('showed')
	      },150)
	    })
	    
	    
	  //屏幕过窄时将外部菜单放入内部
	    resizeHandleMenu()
	    $(window).resize(resizeHandleMenu)
	    var time1;
	    function resizeHandleMenu(){
	      if(time1) clearTimeout(time1)
	      time1=setTimeout(handleFun,100)
	      function handleFun() {
	        time1=null;
	        var diff=$(".header").width()-$(".header-nav").width()-700;
	        if(diff<0){
	          var num=Math.ceil(Math.abs(diff)/$(".header-nav__item").outerWidth());
	          $(".header-nav__item").slice(-num-1,-1).removeClass("header-nav__item").addClass("header-more-nav__item from-top").prependTo(".header-more-nav")
	        }else if(diff>0){
	          var num=parseInt(Math.abs(diff)/$(".header-nav__item").outerWidth());
	          $(".header-more-nav__item.from-top").slice(0,num).removeClass("header-more-nav__item from-top").addClass("header-nav__item").insertBefore("#moreNav")
	        }
	      }
	    }

		  
	  })
	  
		  
	  function viewPerInfo(){  
	    layer_show("个人信息",path+"/userController/loadMyDetail.do",600,470);  
	  }
	  
	  
	  function changePwd(){
	    layer_show("设置密码",path+"/userController/goChangePwd.do",600,280);
	  }
	  </script>
	  
	</body>
</html>
