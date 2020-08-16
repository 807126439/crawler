<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="/page/common/tag/mytags.jsp"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>

<html>
<head>
<base href="<%=basePath%>">

<title>编辑</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="renderer" content="webkit|ie-stand">

<%@include file="/page/common/script/main-css.jsp"%>

</head>


<body style="background: #fff">

  <button type="button" onclick="printFile()" >打印</button>


		<div id="printFileArea" class="mt-10">
		 <img alt=" " src="<%=path%>/plug-in/main/images/1.tif">
		
		
		</div>
 
		
	

	<%@include file="/page/common/script/main-js.jsp"%>

	<script type="text/javascript" src="<%=path%>/plug-in/h-ui/lib/jquery.PrintArea/jquery.PrintArea.js"></script>
	<script type="text/javascript">
		
		
		//打印
		function printFile(){
			$("#printFileArea").printArea();
		}
	
		
	</script>

</body>



</html>