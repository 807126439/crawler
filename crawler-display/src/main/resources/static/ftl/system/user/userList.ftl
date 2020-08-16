<#include "../../common/tag/tags.ftl"/>

<!DOCTYPE html>

<html>
  <head>
    <base href="${basePath!}">
    
    <title>用户列表</title>
    
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="renderer" content="webkit|ie-stand">

	  <#include "../../common/script/main-css.ftl"/>

  </head>
  
  
  <body>
	
  <div class="ui-panel">
  
	
	      <div class="ui-panel-body">
	        <div class="ui-table-actions">
	          <div class="ui-table-actions-right">
		           <div class="ui-btn-group">
		            <@m.if_own_auth authCode="skipAddUser">
		            	<a href="javascript:void(0)" class="ui-btn ui-btn-normal size-s" onclick="member_add('添加用户','800','')">添加</a>
		            </@m.if_own_auth>
		            <a href="javascript:location.replace(location.href);" class="ui-btn ui-btn-secondary size-s">刷新</a>
		            <@m.if_own_auth authCode="deleteUser">
		           	    <a href="javascript:void(0)" class="ui-btn ui-btn-danger size-s" onclick="datadel()">删除</a>
		            </@m.if_own_auth>
		          </div>
	          </div>
	          
	          
	     	<div class="ui-table-actions-left">
	     	    <label>单位名称：</label>
	            <input style="width:220px" name="search" type="text" class="ui-input size-s" placeholder="单位名称" id="unitName">
	            <label>用户名：</label>
	            <input style="width:180px" name="search" type="text" class="ui-input size-s" placeholder="用户名" id="userName">
	            <label>姓名：</label>
	            <input type="text"  class="ui-input size-s" style="width:180px" placeholder="姓名" id="chineseName" >	 
	             <button type="button" class="ui-btn size-s"  onclick="goSearch()">查 询</button>        
	          </div>
	         
	        </div>
	        
	        <table id="user_table" class="ui-table ui-table-border-row ui-table-border-col ui-table-hover table_datatable" width="100%" fixtable>         
	        </table>
	        
	      </div>
	 

		
		<div style="display: none;" id="changge-pwd-div">
			<div class="pd-20">
	  			<form action="${request.contextPath}/userController/changePassword.do" method="post" class="form form-horizontal" id="form-change-password">
										
					<div class="row cl">
						<label class="form-label col-xs-4" style="text-align: right;"><span class="c-red">*</span>新密码：</label>
						<div class="formControls col-xs-4">
							<input type="password" class="input-text" autocomplete="off" placeholder="" name="pwd" id="new-password" datatype="*6-18" nullmsg="请输入新密码！" >
						</div>
						<div class="col-xs-4"></div>
					</div>
					
					<div class="row cl">
						<label class="form-label col-xs-4" style="text-align: right;"><span class="c-red">*</span>确认密码：</label>
						<div class="formControls col-xs-4">
							<input type="password" class="input-text" autocomplete="off" placeholder="" name="pwd2" id="new-password2" recheck="pwd" datatype="*6-18" errormsg="您两次输入的密码不一致！" nullmsg="请再次输入新密码！" >
						</div>
						<div class="col-xs-4"> </div>
					</div>
					
					<div class="row cl">
						<div class="col-xs-8 col-xs-offset-4">
							<input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;保存&nbsp;&nbsp;">
						</div>
					</div>
					<input type="hidden" id="changPwd-id"  name="uid" >
					
				</form>
			</div>
		   
		</div>	
			
			
	</div>
	
	
	<input type="hidden" id="unitId" value="${unitId!}">

  		<#include "../../common/script/main-js.ftl"/>
	
		
		<@m.ajs_button operCode="getUserDetail"  funMethod="member_edit('编辑','{0}','800','')" context="编辑" varName="user_edit" />
		<@m.ajs_button operCode="changePassword"  funMethod="change_password('{0}','{1}')" context="修改密码" varName="user_change_pwd" />
		<@m.ajs_button operCode="deleteUser"  funMethod="user_del(this,'{0}')" context="删除" varName="del_user" />
	
		
		<script type="text/javascript" src="${request.contextPath}/plug-in/web/system/user/user-list.js?3"></script> 
		
		
</body>
  
  
  
</html>
