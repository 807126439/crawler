<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%

if(!"GET".equals(request.getMethod())){
  throw new RuntimeException("ERROR METHOD");
}


String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  
    <script type="text/javascript" src="<%=path %>/plug-in/h-ui/lib/jquery/1.9.1/jquery.min.js"></script>
   
    <script type="text/javascript">
        $(document).ready(function(){
			window.parent.location.href="<%=path%>/";	
		
     
        });
   
   
   </script>
  </head>
  
  <body>
 
  </body>
</html>
