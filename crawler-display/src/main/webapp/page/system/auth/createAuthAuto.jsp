<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="/page/common/tag/mytags.jsp" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

String nodes = (String )request.getAttribute("authStructure");
out.print("<script type='text/javascript'> var zNodes = "+nodes+";</script>");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>生成权限</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<%@include file="/page/common/script/base-css.jsp" %>
	<link href="<%=path %>/plug-in/h-ui/lib/zTree/v3/css/zTreeStyle/zzTree.css" type="text/css" rel="stylesheet">
	

  </head>
  
  
  <body class="pos-r">
  
  	 <div class="pos-a" style="width:300px;left:0;top:0; bottom:0; height:100%; border-right:1px solid #e5e5e5; ">
		 <%@include file="/page/system/auth/common/selectAuthTree.jsp" %>				
 	 </div>
  
  
	<div style="margin-left:300px;">
	   <div class="pd-20">
         <form action="<%=path %>/authController/createAuthAuto.do" method="post" class="form form-horizontal" id="form-auth-createAuto">
				   	
			<div class="row cl">
			   <label class="form-label col-xs-3"><span class="c-red">*</span>父节点：</label>
			   <div class="formControls col-xs-6">
			     <input type="text" class="input-text"  placeholder="父节点"  id="parName"  readonly="readonly">	  
			     <input type="hidden" name="parentId" id="parId" >			
			   </div>
			 </div> 
						
			
			<div class="row cl">
		      <label class="form-label col-xs-3"><span class="c-red">*</span>类名(注意大写)：</label>
		      <div class="formControls col-xs-6">
		        <input type="text" class="input-text"  name="className" datatype="*2-50" nullmsg="请填写类名">
		      </div>
		      <div class="col-xs-3"> </div>
			</div>
			    
			    <div class="row cl">
			      <label class="form-label col-xs-3"><span class="c-red">*</span>类中文名：</label>
			      <div class="formControls col-xs-6">
			        <input type="text" class="input-text"  name="chineseName" datatype="*2-35" nullmsg="请填写权限名">
			      </div>
			      <div class="col-xs-3"> </div>
			    </div>
	
				 <div class="row cl">
			      <div class="col-xs-9 col-xs-offset-3">
			        <m:b_button operCode="addAuth" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;" />
			      </div>
			    </div>
			    
			    
			   <div class="row cl">
			   	<span style="color:red;">
			   		 一键生成7个基本权限,例:<br>				
					   类名 = "User"  类中文名 = "用户"<br>										  
					 manageUser:用户管理 (用户管理的父权限为左边所选节点)<br>
					  下面6个权限的父权限均为【用户管理】<br>
					 skipAddUser:跳转添加用户<br>
					 addUser:添加用户<br>
					 skipEditUser:跳转编辑用户<br>
					 editUser:编辑用户<br>
					 deleteUser:删除用户<br>
					 queryPageUser:分页查询用户<br>
					 </span>
			   </div>
			    

			    
			    
			    
			    
			  </form>
			        			  
			</div>  
  	 
  	 </div>

		
		

	
	<%@include file="/page/common/script/base-js.jsp" %>
		
	<script type="text/javascript" src="<%=path %>/plug-in/h-ui/lib/zTree/v3/js/jquery.ztree.all-3.5.min.js"></script> 	
	<script type="text/javascript" src="<%=path %>/plug-in/web/system/auth/common-item.js"></script>
	<script type="text/javascript" src="<%=path %>/plug-in/web/system/auth/auth-createAuto.js"></script>	
	
		
</body>
  
  
  
</html>
