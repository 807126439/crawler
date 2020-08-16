<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="/page/common/tag/mytags.jsp" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
    
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta name="renderer" content="webkit|ie-stand">	
	
	<%@include file="/page/common/script/main-css.jsp" %>

  </head>
  
  
  <body style="background: #fff">  
  
	<div class="ui-page-container">
	    <div class="ui-form">
		  <form action="<%=path %>/unitController/addUnit.do" method="post" class="form form-horizontal" id="form-model-add">
		    
		     <div class="ui-form-item">
			   <label class="ui-form-label length-ll"><em>*</em>单位名称：</label>
			   <div class="ui-input-block">
			     <input type="text" class="ui-input" name="unitName"  value="${model.unitName}"  datatype="*" nullmsg="单位名称不能为空" placeholder="请输入单位名称">
			   </div>
			 </div>
 
			 <div class="ui-form-item">
			   <label class="ui-form-label length-ll"><em>*</em>组织机构代码：</label>
			   <div class="ui-input-block ">   
			        <input type="text" class="ui-input" id="organizationCode" name="organizationCode"  value="${model.organizationCode}"  placeholder="请输入承包商类型代码">
			   </div>
			 </div>

		    		      
	      	<div class="ui-form-item ui-form-btns">
	      	   <m:if_own_auth authCode="addUnit">
	      	   	 <a href="javascript:void(0)" class="ui-btn ui-btn-secondary" onclick="sumbitForm('form-model-add')">保存</a>
	      	   </m:if_own_auth>      		       		
	      	</div>
	 		   
		  </form>
		
		</div>        
		  
	</div>
			
			
	 <%@include file="/page/common/script/main-js.jsp" %>					
	 <script type="text/javascript">		
		$(function(){
		
						
			$("#form-model-add").Validform({
				tiptype:9,
				ajaxPost:true,
				beforeSubmit:function(curform){
					return true;			  	 			  	
				},
			
				callback:function(data){				
					if(data.status == "y" || data.status == "Y"){			
					      setTimeout(function(){
							var index = parent.layer.getFrameIndex(window.name);
							parent.layer.close(index);							      					      
					      },500); 					
					}				
				}
			});
			
			
	   });	
	 </script> 
  </body>
  
  
  
</html>