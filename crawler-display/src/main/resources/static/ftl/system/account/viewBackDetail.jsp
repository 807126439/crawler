<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="/page/common/tag/mytags.jsp" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=Edge">
  <meta name="renderer" content="webkit|ie-stand">
  <title>个人信息</title>


  <%@include file="/page/common/script/main-css.jsp" %>  


  
</head>
  
 
 <body>
 	
	 <div class="main">
	    <div class="ipanel">
	    
	      <div class="bd">
	         <form id="form_audit_reply" class="form_regest" >
	         <table class="table-default type-2">
	         
           	
	            <tr class="odd">
	              <td>用户名</td>
	              <td colspan="3">${userItem.userName}</td>
	            </tr>
	            
	             <tr class="even">
	              <td>姓名</td>
	              <td colspan="3">${userItem.chineseName}</td>
	            </tr>
	             <tr class="odd">
	              <td>所属单位</td>
	              <td colspan="3">${userItem.unitIName}</td>
	            </tr>
	            	          
	            <tr class="even">
	              <td>职务</td>
	              <td colspan="3">${userItem.posName}</td>
	            </tr>
      
	            <tr class="odd">
	              <td>用户类型</td>
	              <td colspan="3">
	               <c:if test="${userItem.userType == 0}">管理员</c:if>
	               <c:if test="${userItem.userType == 11}">省局用户</c:if>
	               <c:if test="${userItem.userType == 12}">下属单位用户</c:if>
	              </td>
	            </tr>
	            
	             <tr class="odd">
	              <td>忘记密码提示问题</td>
	              <td colspan="3">${userItem.forgetPwdQt}</td>
	            </tr>
	             <tr class="even">
	              <td>忘记密码提示答案</td>
	              <td colspan="3">${userItem.forgetPwdAns}</td>
	            </tr>	        
	           
	          </table>
	  
	    	</form>

	        
	      </div>
	    </div>

    </div>
    
    

  
   

  

  
  <%@include file="/page/common/script/main-js.jsp" %>
  <c:if test="${userItem.userType == 2 || userItem.userType == 3}">
  	<%@include file="/page/common/script/file-js.jsp" %>  
   <script type="text/javascript" src="<%=path %>/plug-in/web/system/account/view-account-info.js"></script>
  </c:if>

    
  
  
</body>
 
 
 
</html>
