<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@include file="/page/common/tag/mytags.jsp" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>权限列表</title>
    
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="renderer" content="webkit|ie-stand">
		
	<%@include file="/page/common/script/main-css.jsp" %>
		
  
 </head>

<body>
 
  
  <div class="ui-panel">

      <div class="ui-panel-body">
	        <div class="ui-table-actions">
	          <div class="ui-table-actions-right">
		           <div class="ui-btn-group">
			            <m:if_own_auth authCode="skipAddAuth">
			            	<a href="javascript:void(0)" class="ui-btn size-s ui-btn-normal" onclick="auth_add('添加权限节点','<%=path%>/authController/skipAddAuth.do','850','510')">添加</a>
			             	<a href="javascript:void(0)" class="ui-btn size-s ui-btn-primary" onclick="auth_add('一键生成','<%=path%>/authController/skipCreateAuthAuto.do','850','510')">一键生成</a>
			          
			            </m:if_own_auth>         
			            <a href="javascript:location.replace(location.href);" class="ui-btn size-s ui-btn-secondary">刷新</a>
			            <m:if_own_auth authCode="delAuth">
			           	    <a href="javascript:void(0)" class="ui-btn size-s ui-btn-danger" onclick="datadel()">删除</a>
			            </m:if_own_auth> 
           		  </div>
	          </div>
          
          <div class="ui-table-actions-left">
        	 <span><input type="text" class="ui-input size-s" name="search" placeholder="权限名称" id="ser_name"></span>
        	 <span><input type="text" class="ui-input size-s"  placeholder="权限码" id="ser_code"></span>
        	 <span><input type="text" class="ui-input size-s"  placeholder="父节点名称" id="ser_par_name"></span>
        	 
        	 <div class="ui-input-inline" style="float: none;width: 120px">
	            <select class="ui-select ui-hide size-s" id="auth-type" >
	              <option value="">权限类型</option>
          		  <c:forEach items="${typeDict}" var="t">
					<option value="${t.dictValue}" >${t.dictItem}</option>
				  </c:forEach>		          
	            </select>
	        </div> 
	        <a href="javascript:void(0)" class="ui-btn size-s" onclick="goSearch()"><i class="icon_search" ></i>查询</a>                 
          </div>

        </div>
        
        <table id="auth_table" class="ui-table ui-table-border-row ui-table-border-col ui-table-hover table_datatable" fixtable width="100%">         
        </table>
        
      </div>
   </div>
      

  <%@include file="/page/common/script/main-js.jsp" %>
  
  <m:ajs_button operCode="getAuthDetail"  funMethod="auth_edit('编辑','{0}','850','510')" context="编辑" varName="edit_auth" />
  <m:ajs_button operCode="delAuth" funMethod="auth_del(this,'{0}')" context="删除" varName="del_auth"/>	
   
  <script type="text/javascript" src="<%=path%>/plug-in/web/system/auth/auth-list.js"></script>

</body>

</html>