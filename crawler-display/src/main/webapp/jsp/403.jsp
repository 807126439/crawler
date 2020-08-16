<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isErrorPage="true"%>

<%

if(!"GET".equals(request.getMethod())){
  throw new RuntimeException("ERROR METHOD");
}


String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

  
%>

<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
	
		<!--[if lt IE 9]>
	<script type="text/javascript" src="<%=path %>/plug-in/h-ui/lib/html5.js"></script>
	<script type="text/javascript" src="<%=path %>/plug-in/h-ui/lib/respond.min.js"></script>
	<script type="text/javascript" src="<%=path %>/plug-in/h-ui/lib/PIE-2.0beta1/PIE_IE678.js"></script>
	<![endif]-->
	
	<link href="<%=path %>/plug-in/h-ui/lib/Hui-iconfont/1.0.7/iconfont.css" rel="stylesheet" type="text/css"/>
	<link href="<%=path %>/plug-in/h-ui/static/h-ui/css/H-ui.min.css" rel="stylesheet" type="text/css"/>
	
	<!--[if IE 6]>
	<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
	<script>DD_belatedPNG.fix('*');</script>
	<![endif]-->
	<title>500页面</title>

</head>
<body>

	<section class="page-404 minWP text-c">
	  <p class="error-title" onclick="getContextPath()" ><i class="Hui-iconfont va-m" style="font-size:80px">&#xe656;</i><span class="va-m"> 403</span></p>
	  <p class="error-description">无法访问此页面！
	  
	  </p>
	  	</section>


	<script type="text/javascript">
		
	function getContextPath() {
	  var contextPath = document.location.pathname;	
	  var index =contextPath.substr(1).indexOf("/");
	  contextPath = contextPath.substr(0,index+1);
	
	   window.top.location.href = contextPath+"/index.do";
	} 
	
	</script>

</body>
</html>