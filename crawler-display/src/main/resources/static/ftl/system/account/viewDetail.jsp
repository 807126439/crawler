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
  <title>个人注册信息</title>


  <%@include file="/page/common/script/main-css.jsp" %>  
  <%@include file="/page/common/script/file-css.jsp" %> 
 
 
 


  
</head>
  
 
 <body>
   <c:if test="${isShowView eq true}">
  	<%@include file="/page/common/nav/navLine.jsp" %> 
	</c:if>
	
	 <div class="main">
	    <div class="ipanel">
	    
	      <div class="bd">
	         <form id="form_audit_reply" class="form_regest" >
	         <table class="table-default type-2">
	           <!-- 个人用户 -->
	           <c:if test="${userItem.userType == 1}">
	           	   <%@include file="/page/system/account/common/person-item.jsp" %>  	      	
	           </c:if>
	            <!-- 单位用户 -->
	           	<c:if test="${userItem.userType == 2}">
	           		<%@include file="/page/system/account/common/unit-item.jsp" %>   	           	
	           	</c:if>
	           	<!-- 中介机构用户 -->
	           	<c:if test="${userItem.userType == 3}">
	           		<%@include file="/page/system/account/common/org-item.jsp" %>           	
	           	</c:if>
	           	
	           	
	           	
	            <tr class="even">
	              <td>用户名</td>
	              <td colspan="3">${userItem.userName}</td>
	            </tr>
	            
	             <tr class="odd">
	              <td>忘记密码提示问题</td>
	              <td colspan="3">${userItem.forgetPwdQt}</td>
	            </tr>
	             <tr class="even">
	              <td>忘记密码提示答案</td>
	              <td colspan="3">${userItem.forgetPwdAns}</td>
	            </tr>
	            	          
	             <tr class="odd">
	              <td>提交时间</td>
	              <td><fmt:formatDate value="${userItem.createTime}" pattern="yyyy-MM-dd"/></td>
	              <td>最后修改时间</td>
	              <td><fmt:formatDate value="${userItem.lastOperatorTime}" pattern="yyyy-MM-dd"/></td>
	            </tr>
	            
	            <c:if test="${userItem.userType == 2 || userItem.userType == 3}">
	               <tr class="even">
	               	<td colspan="4" class="text-c">附件列表</td>
	               </tr>
	               <tr class="odd">
		               <td colspan="4">
		                  <%@include file="/page/common/file-manage/file-manage-item.jsp" %>	
		               </td>	                               	                
	               </tr> 	            	
	            </c:if>
	            
	            <tr class="even">
	              <td>审核意见</td>
	              <td colspan="3">${userItem.auditIdea}</td>
	            </tr>
	            <tr class="odd">
	              <td>审核人</td>
	              <td>${userItem.auditPersonName}</td>
	              <td>审核时间</td>
	              <td><fmt:formatDate value="${userItem.auditTime}" pattern="yyyy-MM-dd"/></td>
	            </tr>
	            <tr class="even">
	              <td>审核状态</td>
	              <td colspan="3">     
	                <span class="c-success">${userItem.auditText}</span>	                     
	                 
	              </td>
	            </tr>
	            
	           <c:if test="${!empty ownRoles}">
	           <tr class="odd">
	              <td>用户角色</td>
	              <td>${ownRoles}</td>
	              <td colspan="2"></td>
	            </tr>
	            </c:if>
	           
	          </table>
	  
	      	  <input type="hidden"  id="uid" name="uid" value="${userItem.id}" >
	    	</form>

	        
	      </div>
	    </div>

    </div>
    
    

  
   

  

  
  <%@include file="/page/common/script/main-js.jsp" %>
  <c:if test="${userItem.userType == 2 || userItem.userType == 3}">
  	<%@include file="/page/common/script/file-js.jsp" %>  
  	<c:choose>
  	 <c:when test="${isMy eq true}">
  	 	<script type="text/javascript" src="<%=path %>/plug-in/web/system/account/view-my-account-info.js"></script>
  	 </c:when>
  	 <c:otherwise>
  	   <script type="text/javascript" src="<%=path %>/plug-in/web/system/account/view-account-info.js"></script>
  	 </c:otherwise>
  	</c:choose>
  
  </c:if>

    
  
  
</body>
 
 
 
</html>
