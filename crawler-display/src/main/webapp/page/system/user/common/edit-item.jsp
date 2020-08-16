<%@ page language="java" pageEncoding="utf-8"%>

	     	
	    <div class="row cl">
			<label class="form-label col-xs-3"><span class="c-red">*</span>所属单位：</label>
			<div class="formControls col-xs-6">
			 			  
			  <c:choose>
			   <c:when test="${!empty unitId || operation eq 'edit'}">
			     <input type="text"  class="input-text"  value="${unitName}" disabled="disabled">	
			     <input type="hidden"  name="unitId" id="unitId" value="${unitId}">
			   </c:when>
			   <c:otherwise>
			     <input type="text" datatype="*" nullmsg="请选择单位" class="input-text" placeholder="请选择单位" value="${userItem.unitName}" onclick="checkTree(this,{url:'<%=path %>/unitController/skipUnitTree.do',title:'请选择单位',w:300,h:'85%',limit:1},'#unitId')">
		       	 <input type="hidden"  name="unitId" id="unitId" value="${userItem.unitId}">      
			   </c:otherwise>
			  </c:choose>
			  
				 
			</div>
		</div>	 	
	     	
	     	
	    <div class="row cl">
	      <label class="form-label col-xs-3"><span class="c-red">*</span>用户名：</label>
	      <div class="formControls col-xs-6">
	        <input type="text" class="input-text" value="${userItem.userName}"  placeholder="" id="user-name" name="userName" datatype="*2-16" nullmsg="用户名不能为空">
	      </div>
	   	<div class="col-xs-3"> </div>
	    </div>
	    	   
	    <div class="row cl">
	      <label class="form-label col-xs-3">中文名：</label>
	      <div class="formControls col-xs-6">
	        <input type="text" class="input-text"  value="${userItem.chineseName}" id="chineseName" name="chineseName" datatype="*2-16" ignore="ignore">
	      </div>
	      <div class="col-xs-3"> </div>
	    </div>
	    
	    
      
	    
	    <c:if test="${operation eq 'add'}">
	    <div class="row cl">
	      <label class="form-label col-xs-3"><span class="c-red">*</span>密码：</label>
	      <div class="formControls col-xs-6">
	        <input type="password" class="input-text"  placeholder="" id="user-pwd" name="pwd" datatype="*6-16" nullmsg="密码不能为空">
	      </div>
	      <div class="col-xs-3"> </div>
	    </div>
	    <div class="row cl">
			<label class="form-label col-xs-3"><span class="c-red">*</span>确认密码：</label>
			<div class="formControls col-xs-6">
				<input type="password" class="input-text" autocomplete="off" placeholder="" name="pwd2" id="new-password2" recheck="pwd" datatype="*6-18" errormsg="您两次输入的密码不一致！" nullmsg="请再次输入新密码！" >
			</div>
			<div class="col-xs-3"> </div>
		</div>  
		</c:if>  
		
		
		

	    
	    <div class="row cl">
	      <label class="form-label col-xs-3"><span class="c-red">*</span>手机号码：</label>
	      <div class="formControls col-xs-6">
	        <input type="text" class="input-text" value="${userItem.phone}"   name="phone" id="phone" datatype="m"   nullmsg="请输入手机号码！"   />
	      </div>
		 <div class="col-xs-3"> </div>
	    </div>
	    
	    
	    <div class="row cl">
	      <label class="form-label col-xs-3">办公电话：</label>
	      <div class="formControls col-xs-6">
	        <input type="text" class="input-text" value="${userItem.officeTel}"   name="officeTel" id="officeTel" datatype="n1-20"  ignore="ignore"   />
	      </div>
		 <div class="col-xs-3"> </div>
	    </div>
	    
	    
	    <div class="row cl">
	      <label class="form-label col-xs-3"><span class="c-red">*</span>选择角色：</label>
	      <div class="formControls col-xs-6"  >
	        <input type="text" class="input-text" id="selected-roles"  datatype="*"  value="${ownRoles}" nullmsg="请选择角色！"  readonly="readonly" 
	       <c:if test="${empty unitId}">
	        onclick="choiceRoles()"
	        </c:if>
	        />	     	     	
	     	<%@include file="/page/system/user/common/roleList.jsp" %>
	      </div>
		 <div class="col-xs-3"> </div>
	    </div>
	    
	    
	
    
	     <div class="row cl">
	      <label class="form-label col-xs-3">邮箱：</label>
	      <div class="formControls col-xs-6">
	        <input type="text" class="input-text" value="${userItem.email}" placeholder="@" name="email" id="email" datatype="e" ignore="ignore">
	      </div>
	      <div class="col-xs-3"> </div>
	    </div>
	        
		<div class="row cl">
			<label class="form-label col-xs-3">备注：</label>
			<div class="formControls col-xs-6 ">
				<textarea name="memo" cols="" rows="" class="textarea" datatype="*2-255"  ignore="ignore"  onKeyUp="textarealength(this,100)">${userItem.memo}</textarea>
				<p class="textarea-numberbar"><em class="textarea-length">0</em>/255</p>
			</div>
			<div class="col-xs-3"> </div>
		</div>
		

		
		<c:if test="${operation eq 'edit'}">
		<div class="row cl">	       			
			<label class="form-label col-xs-3">是否可用：</label>
			<div class="formControls col-xs-1 skin-minimal">
				<div class="check-box">
					<input type="checkbox" id="checkbox-1" value="true"  name="enabled"  ${userItem.enabled == true? 'checked="checked"':''}>
					<label for="checkbox-1">&nbsp;</label>
				</div>
			</div>
			<div class="col-xs-8"> </div>
		</div> 
		</c:if>
	
	  
	    <div class="row cl">
	      <div class="col-xs-9 col-xs-offset-3">
	         <m:b_button operCode="addUser,editUser" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;" />
	      </div>
	    </div>