 <div class="row cl">
   <label class="form-label col-xs-3"><span class="c-red">*</span>父节点：</label>
   <div class="formControls col-xs-6">
     <input type="text" class="input-text"  placeholder="父节点"  id="parName" value="${(authItem.parentName)!}" readonly="readonly">
     <input type="hidden" name="parentId" id="parId" value="${(authItem.parentId)!}" >

   </div>
   <div class="col-xs-3"><a href="javascript:;" onclick="setParNull()" >设置为空</a></div>
 </div> 



<div class="row cl">
      <label class="form-label col-xs-3"><span class="c-red">*</span>权限名：</label>
      <div class="formControls col-xs-6">
        <input type="text" class="input-text" value="${(authItem.authText)!}"  placeholder="" id="auth-name" name="authText" datatype="*2-50" nullmsg="权限名不能为空">
      </div>
      <div class="col-xs-3"> </div>
    </div>
    
    <div class="row cl">
      <label class="form-label col-xs-3"><span class="c-red">*</span>权限码：</label>
      <div class="formControls col-xs-6">
        <input type="text" class="input-text" value="${(authItem.authCode)!}"   placeholder="" id="auth-code" name="authCode" datatype="*2-50" nullmsg="权限码不能为空">
      </div>
      <div class="col-xs-3"> </div>
    </div>
    
    <div class="row cl">
      <label class="form-label col-xs-3"><span class="c-red">*</span>资源地址：</label>
      <div class="formControls col-xs-6">
        <input type="text" class="input-text" value="${(authItem.resourecesUrl)!}"  placeholder="" id="auth-url" name="resourecesUrl" datatype="*2-256"  ignore="ignore" >
      </div>
      <div class="col-xs-3"> </div>
    </div>
  
  <div class="row cl">
      <label class="form-label col-xs-3">开启控制：</label>
      <div class="formControls col-xs-6 skin-minimal">
         	
		<div class="check-box">
			<input type="checkbox" id="checkbox-1" value="1"  name="flag"  <#if authItem??>${(authItem.flag == 1)? string("checked","")}</#if> >
			<label for="checkbox-1">&nbsp;</label>
		</div>
	  
      
      </div>
      <div class="col-xs-3"> </div>
  	  </div>
    
    
 <div class="row cl">
      <label class="form-label col-xs-3"><span class="c-red">*</span>权限类型：</label>
      <div class="formControls col-xs-7 skin-minimal">
      	<#list typeDict as f >
      	    <div class="radio-box">
                <#if f_index==0 >
      	      		<input type="radio" id="authType-${f_index}" class="cl-type"  name="authType" value="${f.dictValue}" datatype="*" nullmsg="请选择权限类型！" <#if authItem??><#if (authItem.authType)!?string == (f.dictValue)>checked="checked"</#if></#if>>
      	      	<#else >
      	      		<input type="radio" id="authType-${f_index}" class="cl-type" name="authType" value="${f.dictValue}" <#if authItem??><#if (authItem.authType)!?string == (f.dictValue)>checked="checked"</#if></#if>>
                </#if>
	          <label for="authType-${f_index}">${f.dictItem}</label>
        	</div>
      			      	
      	</#list>
     
      </div>
      <div class="col-xs-2"> </div>
  	  </div>  

  
  	  <div class="row cl">
      <label class="form-label col-xs-3">打开方式：</label>
      <div class="formControls col-xs-6">
      	  		
	      <span class="select-box">
			<select class="select" name="openWay" id="openWay"  datatype="n" ignore="ignore">
				<option value=""></option>
				<#list  wayDicts as ty >
				  <option value="${ty.dictValue}" <#if authItem??>
                      <#if (authItem.openWay)!?string == (ty.dictValue)>selected="selected"</#if>
                      </#if> >${ty.dictItem}</option>
				</#list>
			</select>
		 </span>	             
      </div>
      <div class="col-xs-3"> </div>
  	  </div> 
  
    
    
     <div class="row cl">
      <label class="form-label col-xs-3">排序：</label>
      <div class="formControls col-xs-6">
        <input type="text" class="input-text" value="${(authItem.authOrder)!}"   id="auth-order" name="authOrder" datatype="n" ignore="ignore" >
      </div>
      <div class="col-xs-3"> </div>
    </div>  
    
    
    <div class="row cl">
      <label class="form-label col-xs-3">位置：</label>
      <div class="formControls col-xs-6">      	  		
	      <span class="select-box">
			<select class="select" name="position" id="position">
				<#list  positionDicts as ty >
				  <option value="${ty.dictValue}" <#if authItem??>
                      <#if (authItem.position)!?string == (ty.dictValue)>selected="selected"</#if>
                      </#if> >${ty.dictItem}</option>
				</#list>
			</select>
		 </span>	             
      </div>
      <div class="col-xs-3"> </div>
  	 </div>


 <div class="row cl">
     <label class="form-label col-xs-3">菜单图标：</label>
     <div class="formControls col-xs-9">
         <input type="hidden" id="menuIcon" name="menuIcon" value="${(authItem.menuIcon)!}">
         <i class="icon-show menuIcon" style="background-image: url(${(authItem.menuIcon)!})"></i>
         <a href="javascript:void(0)" class="ui-btn ui-btn-normal size-s" onclick="skipSelectIcon('menuIcon','${(authItem.menuIcon)!}')">选择图标</a>
     </div>
 </div>


 <div class="row cl">
     <label class="form-label col-xs-3">导航栏图标：</label>
     <div class="formControls col-xs-6">
         <input type="hidden" id="navBarIcon" name="navBarIcon" value="${(authItem.navBarIcon)!}">
     <i class="icon-show navBarIcon" style="background-image: url(${(authItem.navBarIcon)!})"></i>
     <a href="javascript:void(0)" class="ui-btn ui-btn-normal size-s" onclick="skipSelectIcon('navBarIcon','${(authItem.navBarIcon)!}')">选择图标</a>
 </div>
 </div>