<!DOCTYPE HTML>
<html>
<head>
	<meta charset="utf-8">
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta http-equiv="Cache-Control" content="no-siteapp" />

	<#include "../common/script/error-css.ftl"/>

	<title>500页面</title>

</head>
<body>

	<section class="page-404 minWP text-c">
	  <p class="error-title" onclick="getContextPath()" ><i class="Hui-iconfont va-m" style="font-size:80px">&#xe656;</i><span class="va-m"> 500</span></p>
	  <p class="error-description">不好意思，内部服务器错误 ,正在抢修中~~~
	  
	  </p>
	  <p class="error-info">您可以：<a href="javascript:;" onclick="history.go(-1)"  class="c-primary">&lt; 返回上一页</a><span class="ml-20">|</span><a href="javascript:;" target="_top"  onclick="getContextPath()" class="c-primary ml-20">去首页 &gt;</a></p>
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