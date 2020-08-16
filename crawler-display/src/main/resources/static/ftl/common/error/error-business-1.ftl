<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>错误</title>
    
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	  <#include "../common/script/error-css.ftl"/>

  </head>
  
  <body>

  <article class="page-404 minWP text-c">
	  <p class="error-title"><i class="Hui-iconfont va-m">&#xe688;</i>
		  <span class="va-m" style="font-size: 40px">业务错误</span>
	  </p>
	  <p class="error-description" style="color: #F7B824;font-size: 18px">${exceptionMessage!}</p>
	  <p class="error-info">您可以：
		  <a href="javascript:;" onclick="history.go(-1)" class="c-primary">&lt; 返回上一页</a>
		  <span class="ml-20">|</span>
		  <a href="${request.contextPath}" class="c-primary ml-20" onclick="getContextPath()">去首页 &gt;</a>
	  </p>
  </article>


</body>
</html>
