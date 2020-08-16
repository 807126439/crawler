<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="/page/common/tag/mytags.jsp" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改个人信息</title>
    
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="renderer" content="webkit|ie-stand">
	
	<%@include file="/page/common/script/main-css.jsp" %>

  </head>
  
  
  <body style="background: #fff">
  
  
  	 <div class="ui-page-container ui-page-fixed">
		    <div class="ui-form">
			  <form action="<%=path %>/userController/updateMyInfo.do" method="post" class="form form-horizontal" id="form-model-edit">
			    	
				<div class="ui-form">				
			      <div class="ui-form-item">
			        <label class="ui-form-label length-l">用户名：</label>
			        <div class="ui-input-block">
			          <span class="ui-input"  style="border: none;">${userItem.userName}</span>
			        </div>			        
			      </div>
			      
			     <!--  <div class="ui-form-item">
			        <label class="ui-form-label length-l">所属单位：</label>
			        <div class="ui-input-block">
			          <span class="ui-input"  style="border: none;">${userItem.unitName}</span>
			        </div>			        
			      </div> -->
			      			      			     
			      <div class="ui-form-item">
			        <label class="ui-form-label length-l"><em>*</em>姓名：</label>
			        <div class="ui-input-block">
			          <input type="text" class="ui-input"  placeholder="请输入姓名" name="chineseName" value="${userItem.chineseName}" datatype="*1-50" nullmsg="姓名不能为空">
			        </div>			        
			      </div>
			      
			      
			      <div class="ui-form-item">
			        <label class="ui-form-label length-l">手机号码：</label>
			        <div class="ui-input-block">
			          <input type="text" class="ui-input"  placeholder="请输入手机号码" value="${userItem.phone}"  name="phone"  datatype="m"  ignore="ignore">
			        </div>			        
			      </div>
			      		      
			      <div class="ui-form-item">
			        <label class="ui-form-label length-l">办公电话：</label>
			        <div class="ui-input-block">
			          <input type="text" class="ui-input"  placeholder="请输入办公电话" value="${userItem.officeTel}"  name="officeTel"  datatype="n1-50"  ignore="ignore">
			        </div>			        
			      </div>
			      
			      <div class="ui-form-item">
			        <label class="ui-form-label length-l">电子邮箱：</label>
			        <div class="ui-input-block">
			          <input type="text" class="ui-input" value="${userItem.email}" placeholder="@" name="email" id="email" datatype="e" ignore="ignore">
			        </div>			        
			      </div>
			      
					
	
	    
		 		 <div class="ui-form-item ui-form-btns">
		      	   <m:if_own_auth authCode="updateMyInfo">
		      	   	 <a href="javascript:void(0)" class="ui-btn ui-btn-secondary" onclick="sumbitForm('form-model-edit')">保存</a>
		      	   </m:if_own_auth>      		       		
		      	 </div>
		 	 		   
			  </form>
			        		  
		   </div>        
			  
		</div>
  
  		
		
	<%@include file="/page/common/script/main-js.jsp" %>
	
	<script type="text/javascript" src="<%=path%>/plug-in/web/system/user/my-edit.js"></script> 

		
		
		
		
</body>
  
  
</html>
