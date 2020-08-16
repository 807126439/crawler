<#include "../../common/tag/tags.ftl"/>

<!DOCTYPE html>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>手机号码验证</title>
    
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta name="renderer" content="webkit|ie-stand">
	
	  <#include "../../common/script/main-css.ftl"/>
	
	  <style type="text/css">
		  .btn_getcode{
		    float:  right;
		    margin-top: 2px;
			}
		  .btn_getcode~.ui-input-block{
		    margin-right: 150px;
			}
		  .btn_getcode .text2{display: none}
		  .btn_getcode.send-complete .text2{display: inline;}
		  .btn_getcode.send-complete .text1{display: none;}
		  </style>
			

  </head>
  
  
   <body style="background: #fff">  
  
		<div class="ui-page-container ui-page-fixed" style="margin: 10px auto;max-width: 650px">
		
		    <div class="ui-panel" >
			      <div class="ui-panel-header">手机号码验证   
			      		<div class="ui-panel-header-right">
							<!--  <a href="javascript:window.location.href=document.referrer"
								class="size-s ui-btn ui-btn-primary">返回</a>-->
						</div>
			      </div>
			      
		
		    <div class="ui-form">
			  <form action="${request.contextPath}/validationPhoneAndChangePwd.do" method="post" class="form form-horizontal" id="form-model-add">
			    
			   	 <div class="ui-form-item">
					  <label class="ui-form-label">手机号码：</label>
					  <div class="ui-input-block">    
					     <input type="text" class="ui-input"  id="phone" name="" value="${phone}" disabled="disabled" >
					  </div>	 
				</div>
				
				 <div class="ui-form-item">
						<button type="button" onclick="getCode(this)" class="btn btn-primary-outline radius btn_getcode"><span class="text1">发送验证码</span><span class="text2">已发送（<span id="second">300</span>s）</span></button>
					  <label class="ui-form-label">验证码：</label>
					  <div class="ui-input-block">    
					     <input type="text" class="ui-input"  id="" name="vcode" value="" datatype="n4-4" nullmsg="请输入验证码！" >
					  </div>	 
				</div>
				
				<div class="ui-form-item">
					  <label class="ui-form-label">新密码：</label>
					  <div class="ui-input-block">    
					     <input type="password" class="ui-input"   autocomplete="off" placeholder="" name="pwd" id="new-password" datatype="*6-18" nullmsg="请输入新密码！"  >
					  </div>	 
				</div>
				
				<div class="ui-form-item">
					  <label class="ui-form-label">确认密码：</label>
					  <div class="ui-input-block">    
					     <input type="password" class="ui-input"   autocomplete="off" placeholder="" name="pwd2" id="new-password2" recheck="pwd" datatype="*6-18" errormsg="您两次输入的密码不一致！" nullmsg="请再次输入新密码！"  >
					  </div>	 
				</div>
				
										    
		 		 <div class="ui-form-item ui-form-btns">
		      	   	 <a href="javascript:void(0)" class="ui-btn ui-btn-secondary" onclick="sumbitForm('form-model-add')">提交</a>  		       		
		      	</div>
		 	 		   
			  </form>
			        		  
		   </div>        
			 
			</div>  
		</div>
			
		<#include "../../common/script/main-js.ftl"/>
	    <script type="text/javascript" src="${request.contextPath}/plug-in/web/system/user/validation-account.js"></script> 
        <script type="text/javascript">
          
			  //发送短信码
			  function getCode(that) {
			  	if($(that).hasClass("disabled")) return
			  	$(that).blur()
			  	$(that).addClass("disabled")
			  	$(that).find(".text1").text("发送中");
			  	$.ajax({
			  		url:path+"/sendValidationPhoneCode.do",
			  		data:{"phone":$("#phone").val()},
			  		type:"post",
			    	cache : false,  
			  		success:function(data) {
	  			
			
			  			if(data&&data.status=="y"){
				  			var sc=300;
				  			$(that).addClass("send-complete")
				  			var itv=setInterval(function() {
				  				if(sc==0){
				  					sc=300;
				  					resetBtn()
				  					return clearInterval(itv);
				  				}
				  				$("#second").text(sc--);
				  			},1000)
			  			}else{
			  			
			  			
			    			layer.msg(data.info,{icon: 2,time:2500});
			    			
			  				resetBtn();
			  			}
			  		},
			  		// error:resetBtn
			  	})
			  	function resetBtn() {
			  		$(that).find(".text1").text("发送验证码");
						$(that).removeClass("send-complete disabled")
			  	}
			  }
			         
         </script>
		
  </body>
  
  
  
</html>