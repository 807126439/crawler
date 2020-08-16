<#include "../../common/tag/tags.ftl"/>

<!DOCTYPE html>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加</title>
    
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta name="renderer" content="webkit|ie-stand">

	  <#include "../../common/script/main-css.ftl"/>
	<link href="${request.contextPath}/plug-in/main/css/doublelistselect.css" rel="stylesheet" type="text/css"/>

  </head>
  
  
   <body style="background: #fff">  
  	<div class="sect">
  	<div class="bd clearfix">
		<div class="ui-page-container ui-page-fixed">
		    <div class="ui-form">
			  <form action="${request.contextPath}/msgGroupController/addMsgGroup.do" method="post" class="form form-horizontal" id="form-model-add">
			    
	     <div class="setting">   
	     
	     <div class="row cl">
	        <label for="name" class="form-label col-xs-3"><span class="c-red">*</span>名称：</label>
	        <div class="formControls col-xs-8"> 
	        	<input name="groupName" type="text" class="input-text"  id="groupName" datatype="*1-100"  placeholder="请输入名称">
			</div>
		</div>
		
		<div class="row cl">
	        <label for="public" class="form-label col-xs-3"><span class="c-red">*</span>类型：</label>        	
	       		 <div class="formControls col-xs-8"> 
	       		 	<div class="layui-input-inline" style="float: none;">
						<select class="ui-select ui-hide" name="groupType" id="groupType"  style="width:150px" nullmsg="请选择角色类型！">
							<option value="0">请选择类型</option>
							<#list  typeDicts as ty >
							 <option value="${ty.dictValue}">${ty.dictItem}</option>
							</#list>
						</select>
					</div>
				</div>
				<div class="col-xs-1"> </div>
		</div>
			
	        <p><label for=""></label></p>
	        
	        <div class="row cl">
	        	<p><label for="note" class="form-label col-xs-3">备 注：</label>
	       	 	<div class="formControls col-xs-8"> 
	        		<textarea  name="groupDesc" class="textarea" ignore="ignore" datatype="*1-255" id="groupDesc" onKeyUp="textarealength(this,255)"></textarea>
	        		<p class="textarea-numberbar"><em class="textarea-length">0</em>/255</p>
	        	</div>
	        
	        </div>
	        
	        
	        <input name="pickUserIds" id="pickUserIds" type="hidden">   
	        <div class="ui-form-item ui-form-btns">
		      	   <@m.if_own_auth authCode="addMsgGroup">
		      	   	 <a href="javascript:void(0)" class="ui-btn ui-btn-secondary" onclick="sumbitForm()" id="press">保存</a>
		      	   </@m.if_own_auth>      		       		
		      	</div>
	      </div>
		      	
		      	<div class="doublelist" >    
	        <div class="doublelist-inner clearfix" id="doublelist">
	          <div class="leftbox">
	            <div class="filtergroup">
	              <label>检索：</label>
	              <div><input type="text" class="input-text size-MINI" id="filter"></div>
	            </div>
	            <ul id="listgroup">
	            
	            </ul>
	          </div>
	          <div class="rightbox">
	            <div class="tt"><span>已选名单</span><span>(共<strong>0</strong>项)</span></div>
	            <ul id="selectedlist">
	            </ul>
	          </div>
	          <div class="selectcontrl">            
	            <a href="javascript:void(0)" class="moveToRight">&gt;</a>
	            <a href="javascript:void(0)" class="moveToLeft">&lt;</a>           
	            <a href="javascript:void(0)" class="moveAllToRight">&gt;&gt;</a>
	            <a href="javascript:void(0)" class="moveAllToLeft">&lt;&lt;</a>
	          </div>
	        </div>
	        
         </div>
		 	 		   
			  </form>
			        		  
		   </div>        
			  
		</div>
		</div>
		</div>
	<!--
	<#include "../../common/script/base-js.ftl" >
	-->
	<#include "../../common/script/main-js.ftl" >
		<script type="text/javascript" src="${request.contextPath}/plug-in/main/js/doublelistselect.js"></script>				
	    <script type="text/javascript" src="${request.contextPath}/plug-in/web/system/msgGroup/msgGroup-add.js"></script> 
		
		
  </body>
  
  
  
</html>