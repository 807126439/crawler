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
    
    <title>修改密码</title>
    
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="renderer" content="webkit|ie-stand">
	
	<%@include file="/page/common/script/main-css.jsp" %>

  </head>
  
  
  <body style="background: #fff">
  
		 <div class="ui-page-container ui-page-fixed">
		    <div class="ui-form">
	  			<form action="<%=path %>/userController/changePwd.do" method="post" class="form form-horizontal" id="form-change-password">
																
				  <div class="ui-form-item">
			        <label class="ui-form-label length-l"><em>*</em>旧密码：</label>
			        <div class="ui-input-block">
			       	  <input type="password" class="ui-input"  name="oldPwd" datatype="*6-18" nullmsg="请输入旧密码！" >			         
			        </div>			        
			      </div>
			      
			       <div class="ui-form-item">
			        <label class="ui-form-label length-l"><em>*</em>新密码：</label>
			        <div class="ui-input-block">
			          <input type="password" class="ui-input" autocomplete="off" placeholder="" name="pwd" id="new-password" datatype="*6-18" nullmsg="请输入新密码！" >	         
			        </div>			        
			      </div>
			      
				  <div class="ui-form-item">
			        <label class="ui-form-label length-l"><em>*</em>确认密码：</label>
			        <div class="ui-input-block">
			      	  <input type="password" class="ui-input" autocomplete="off" placeholder="" name="pwd2" id="new-password2" recheck="pwd" datatype="*6-18" errormsg="您两次输入的密码不一致！" nullmsg="请再次输入新密码！" >					       
			        </div>			        
			      </div>		
						
						
				  <div class="ui-form-item ui-form-btns">
		      	   <m:if_own_auth authCode="changePwd">
		      	   	 <a href="javascript:void(0)" class="ui-btn ui-btn-secondary" onclick="sumbitForm('form-change-password')">确定修改</a>
		      	   </m:if_own_auth>      		       		
		      	 </div>	
											    
					
				</form>
			</div>
		</div>	
			
			
		<%@include file="/page/common/script/base-js.jsp" %>
		<script type="text/javascript">
			$(function(){
				
				
				$("#form-change-password").Validform({
					tiptype:9,
					ajaxPost:true,//ajax方式提交表单数据
					beforeSubmit:function(curform){
					  
					     return true;
					   	
					},
					callback:function(data){
						if(data.status == "y" || data.status == "Y"){				
							 setTimeout(function(){
								var index = parent.layer.getFrameIndex(window.name);
									parent.layer.close(index);		      
						     },1000); 						
						}
						
					}
				});
			
				
			});
		
		</script>
		
</body>
  
  
  
</html>
