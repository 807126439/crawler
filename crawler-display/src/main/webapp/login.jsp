<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%

if(!"GET".equals(request.getMethod())){
  throw new RuntimeException("ERROR METHOD");
}

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>

<!DOCTYPE HTML>
<html>
	<head>
		<meta name="renderer" content="webkit|ie-comp|ie-stand" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
		<meta http-equiv="Cache-Control" content="no-siteapp" />
		
		<!--[if lt IE 9]>
		<script type="text/javascript" src="<%=path%>/plug-in/h-ui/lib/html5.js"></script>
		<script type="text/javascript" src="<%=path%>/plug-in/h-ui/lib/respond.min.js"></script>
		<script type="text/javascript" src="<%=path%>/plug-in/h-ui/lib/PIE_IE678.js"></script>
		<![endif]-->
		
		<link href="<%=path%>/plug-in/main/css/H-ui.reset.css" rel="stylesheet" type="text/css" />
		<link href="<%=path%>/plug-in/main/css/login.css" rel="stylesheet" type="text/css" />
			
		<title>福田区政府投资项目履约评价共享平台</title>
		<meta name="keywords" content="" />
		<meta name="description" content="" />
		
	</head>

	
	<body>
	
	
  <div class="login-container">
    <div class="login-header">
      <div class="login-header-inner">
        <div class="login-logowrap"><div class="login-logoblock" style="background-image: url(<%=path %>/plug-in/main/images/admin-login-title.png);"></div></div>
      </div>
    </div>
    <div class="login-body">
      <div class="login-body-inner">
        <div class="login-form-wrapper">
          <form class="login-form" action="<%=path %>/j_spring_security_check" method="post">
            <div class="login-form-tt">系统登陆</div>
            <div class="login-form-iptgroups">
              <div class="login-form-iptgroup">
                <label class="login-form-label"><i class="icon_login_user"></i>用户名</label>
                <input id="user-name" type="text" name="j_username" placeholder="用户名" value="admin" onfocus="hideError(1)">
              </div>
              <div class="login-form-iptgroup">
                <label class="login-form-label"><i class="icon_login_password"></i>密码</label>
                <input id="pass-word"  type="password" placeholder="密码" value="123456" onfocus="hideError(1)" autocomplete="off">
                <input id="j_password" name="j_password" type="hidden" value="">
              </div>
              <div class="login-form-iptgroup">
              <span class="login-form-imagecode"><img src="<%=path %>/kaptcha" id="captchaImage"/></span>
              <span class="ipt_imagecode-wrap"><input id="captcha" name="j_captcha" class="ipt_imagecode" type="text" value="" placeholder="验证码" onfocus="hideError(2)"></span>
              </div>
            </div>
            <div class="login-form-misc">
              <input type="checkbox" id="rememberMe"  name="rememberMe" value="1" checked="checked"><label for="rememberMe">记住密码</label>
              <!-- <input type="checkbox" id="keepPassword"><label for="keepPassword">自动登陆</label>
              <a href="#">忘记密码？</a> -->
            </div>
            <div class="login-form-buttons">
              <a href="javascript:;" class="btn_login" onclick="checkVal()">登录 </a>
            </div>
            <div class="login-error">
              <div class="login-error-exit" id="loginError1">用户不存在</div>
              <div class="login-error-match" id="loginError2">密码错误</div>
              <div class="login-error-code" id="loginError3">验证码错误</div>
            </div>
            <div class="login-message" style="display: none">登录失败，用户名或者密码错误</div>
          </form>
        </div>
      </div>
    </div>
    <div class="login-footer">
      <div class="login-footer-inner">
       		 万维博通信息科技有限公司©2017-2018, All Rights Reserved 粤ICP备10217776号-5
      </div>
    </div>
  </div>
	
	

	
	
	<script type="text/javascript" src="<%=path %>/plug-in/h-ui/lib/jquery/1.9.1/jquery.min.js"></script> 
	<script type="text/javascript" src="<%=path%>/plug-in/h-ui/lib/layer/3.0.3/layer.js"></script> 
    <script type="text/javascript" src="<%=path%>/plug-in/main/js/jquery.md5.js"></script> 			
	<script type="text/javascript">
	   $(function(){
	    	document.getElementById("user-name").focus();
	
			var $captchaImage = $("#captchaImage");
			// 刷新验证码
			$captchaImage.click(function() {
				var timestamp = (new Date()).valueOf();
				var imageSrc = $captchaImage.attr("src");
				if (imageSrc.indexOf("?") >= 0) {
					imageSrc = imageSrc.substring(0, imageSrc.indexOf("?"));
				}
				imageSrc = imageSrc + "?timestamp=" + timestamp;
				$captchaImage.attr("src", imageSrc);
			}); 
			
			
			$(document).keydown(function(event){
				if(event.keyCode==13){
					checkVal();
				}
			}); 
	
		});
		
		
		
		function checkVal(){
		  var username = $("#user-name").val();
		  if(username == "undefined" || username == null || username == ""){
		    layer.msg('请输入账号或手机号码！');
		  	return false;
		  }
		  var pwd = $("#pass-word").val();
		  if(pwd == "undefined" || pwd == null || pwd == ""){
		    layer.msg('请输入密码！');
		  	return false;
		  }
		  var captcha =  $("#captcha").val();
		  if(captcha == "undefined" || captcha == null || captcha == ""){
		  	layer.msg('请输入验证码！');
		  	return false;
		  }
		  		  
		  pwd = $.md5(pwd);
				  
		  clearError();
		  
		   $.ajax({
			    url: "<%=path %>/j_spring_security_check",
			    dataType:'json',  
			    data:{
			    	"j_username":username,
			    	"j_password":pwd,
			    	"j_captcha":captcha,
			    	"rememberMe":$("#rememberMe").is(':checked')?1:0
			    },
			    type:"post",
			    cache : false,  
			    async : false,  
			    success:function(data){	
			    		if(data.status == "y" || data.status == "Y"){			
							window.location.href = "<%=path %>"+"/index.do";   					
						}else{
							$("#captchaImage").trigger("click");
							$("#captcha").val("");
						
							var errMsg =  data.info;
					  		var errArray = errMsg.split(",");
					  	
					  		if(errArray.length>1){
					  		   var type = 1;
					  		   if(errArray[0] == "4001"){
					  		   	type = 1;
					  		   }else if(errArray[0] == "4002"){
					  		   	type = 2;
					  		   }else if(errArray[0] == "4006"){
					  		   	type = 3;				  		 
					  		   }
					  		   showError(type,errArray[1]);	  		   
					  		   
					  		}else{
					  			showError(1,errMsg);
					  		}
						}	    					         				           
			                		           
			     },  
			     error : function(error) {  
			            alert(error); 		            
			     } 
			});	
		  
		  
		  
		}
		
		
function clearError(){
	 hideError(1);
	 hideError(2);
	 hideError(3);
	}		
		
  //showError(1);
 //showError(2);
 
 
  function showError(type,msg){
		    var errorEl=document.getElementById('loginError'+(type||1));
		    if (!errorEl) return;
		    if (msg) errorEl.innerText=msg;
		    if (errorEl.classList)
		      errorEl.classList.add('showerror');
		    else
		      errorEl.className += ' ' + 'showerror';
		  }
		
	  function hideError(type){
	    var errorEl=document.getElementById('loginError'+(type||1));
	    if (!errorEl||errorEl.className.search('showerror')===-1) return;
	    if (errorEl.classList)
	      errorEl.classList.remove('showerror');
	    else
	      errorEl.className=errorEl.className.replace(new RegExp('(^|\\b)' + 'showerror'.split(' ').join('|') + '(\\b|$)', 'gi'), ' ');
	  } 

  
  /* function showError(type,msg){
    var errorEl=document.getElementById('loginError'+(type||1));
    errorEl.innerHTML=msg; 
    if (!errorEl) return;
    if (errorEl.classList)
      errorEl.classList.add('showerror');
    else
      errorEl.className += ' ' + 'showerror';
  }

  function hideError(type){
    var errorEl=document.getElementById('loginError'+(type||1));
    if (!errorEl||errorEl.className.search('showerror')===-1) return;
    if (typeof errorEl.style.animationName!=='undefined'||typeof errorEl.style.animation!=='undefined'||typeof errorEl.style.WebkitAnimation!=='undefined'||typeof errorEl.style.MozAnimation!=='undefined'||typeof errorEl.style.OAnimation!=='undefined'||typeof errorEl.style.MsAnimation!=='undefined') {
      //支持动画
      errorEl.removeEventListener("webkitAnimationEnd", animationEnd);
      errorEl.removeEventListener("animationend", animationEnd);
      errorEl.addEventListener("webkitAnimationEnd", animationEnd);
      errorEl.addEventListener("animationend", animationEnd);
      if (errorEl.classList)
        errorEl.classList.add('hiddingerror');
      else
        errorEl.className += ' ' + 'hiddingerror';
    }else{
      //不支持动画
      if (errorEl.classList)
        errorEl.classList.remove('showerror');
      else
        errorEl.className=errorEl.className.replace(new RegExp('(^|\\b)' + 'showerror'.split(' ').join('|') + '(\\b|$)', 'gi'), ' ');
    }

    function animationEnd(){
      errorEl.removeEventListener("webkitAnimationEnd", animationEnd);
      errorEl.removeEventListener("animationend", animationEnd);
      if (errorEl.classList){
        errorEl.classList.remove('showerror');
        errorEl.classList.remove('hiddingerror');
      }
      else{
        errorEl.className=errorEl.className.replace(new RegExp('(^|\\b)' + 'showerror'.split(' ').join('|') + '(\\b|$)', 'gi'), ' ');
        errorEl.className=errorEl.className.replace(new RegExp('(^|\\b)' + 'hiddingerror'.split(' ').join('|') + '(\\b|$)', 'gi'), ' ');
      }
    }
}	 */
	
		
	</script>
	
	<c:if test="${!empty sessionScope.SPRING_SECURITY_LAST_EXCEPTION.message}">
	  	<script type="text/javascript">
	  		var errMsg =  '${sessionScope.SPRING_SECURITY_LAST_EXCEPTION.message}';
	  		var errArray = errMsg.split(",");
	  		if(errArray.length>1){
	  		   var type = 1;
	  		   if(errArray[0] == "4006"){
	  		   	type = 2;
	  		   }
	  		   showError(type,errArray[1]);	  		   
	  		   
	  		}else{
	  			showError(1,errMsg);
	  		}
	  		
	  		
	 	</script>
	      
    </c:if>	
		
		
		
	</body>
</html>
