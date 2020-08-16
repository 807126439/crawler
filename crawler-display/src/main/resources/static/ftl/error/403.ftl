<!DOCTYPE HTML>
<html>
<head>
	<meta charset="utf-8">
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta http-equiv="Cache-Control" content="no-siteapp" />

	<#include "../common/script/error-css.ftl"/>

	<title>403页面</title>

</head>
<body>

	<section class="page-404 minWP text-c">
		<p class="error-title"><i class="Hui-iconfont va-m" style="font-size:80px">&#xe656;</i><span class="va-m">错误</span></p>
		<p class="error-description">不好意思，您无权访问页面</p>
		<p class="error-info">您可以：<a href="javascript:;" onclick="history.go(-1)" class="c-primary">&lt; 返回上一页</a><span class="ml-20">|</span><a href="${request.contextPath}" target="_top" class="c-primary ml-20">去首页 &gt;</a></p>
	</section>



</body>
</html>