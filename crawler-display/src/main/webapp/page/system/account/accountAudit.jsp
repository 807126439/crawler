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
    
	  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	  <meta http-equiv="X-UA-Compatible" content="IE=Edge">
	  <meta name="renderer" content="webkit|ie-stand">
	  <title>用户详情</title>
	 
	  <%@include file="/page/common/script/main-css.jsp" %>
	  <%@include file="/page/common/script/file-css.jsp" %> 	
		
  </head>
  
  
  <body>
	 <div class="main">
	    <div class="ipanel">
	    
	      <div class="bd">
	        <form id="account-audit-form" action="<%=path%>/userController/aduitAccount.do">
	          <table class="table-default type-2">
	           	<c:if test="${userItem.userType == 1}">
	           	 <%@include file="/page/system/account/common/person-item.jsp" %>
	           	</c:if>
	           	<c:if test="${userItem.userType == 2}">
	           	 <%@include file="/page/system/account/common/unit-item.jsp" %>
	           	</c:if>
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
	              <td colspan="3"><textarea class="textarea" name="auditIdea"  datatype="*2-1000"  nullmsg="审核意见不能为空">${userItem.auditIdea}</textarea></td>
	            </tr>
	            <tr class="odd">
	              <td>审核人</td>
	              <td>${auditor}</td>
	              <td>审核时间</td>
	              <td><input type="text" name="auditTime" value="<fmt:formatDate value="${auditTime}" pattern="yyyy-MM-dd"/>" 
	              class="input-text radius Wdate" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})"  datatype="*"  nullmsg="审核时间不能为空"  readonly="readonly"></td>
	            </tr>
	            
	          
	           
	          </table>
	      
	      	  <input type="hidden" id="auditType" name="auditType" >
	      	  <input type="hidden" id="uid"  name="uid" value="${userItem.id}" >
	          <div class="btngroup">
	          	<a href="javascript:void(0)" class="btn btn-primary radius" onclick="sumbitAudit('pass')">通过</a>
	            <a href="javascript:void(0)" class="btn btn-primary radius" onclick="sumbitAudit('fail')">不通过</a>
	          </div>
	          
	        </form>
	        
	      </div>
	    </div>
	  </div>
		
	
	
	 <%@include file="/page/common/script/main-js.jsp" %>
	 <%@include file="/page/common/script/file-js.jsp" %>
	
	<script type="text/javascript" src="<%=path %>/plug-in/web/system/account/account-audit.js"></script>
	
		
</body>
  
  
  
</html>
