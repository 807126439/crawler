<#assign security=JspTaglibs["http://www.springframework.org/security/tags"] />

<!DOCTYPE HTML>
<html>
	<head>
		<@security.csrfMetaTags />
		<meta charset="utf-8">
		<meta name="renderer" content="webkit|ie-comp|ie-stand">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta http-equiv="Cache-Control" content="no-siteapp">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
		
		<!--[if lt IE 9]>
		<script type="text/javascript" src="${request.contextPath}/plug-in/h-ui/lib/html5.js"></script>
		<script type="text/javascript" src="${request.contextPath}/plug-in/h-ui/lib/respond.min.js"></script>
		<script type="text/javascript" src="${request.contextPath}/plug-in/h-ui/lib/PIE_IE678.js"></script>
		<![endif]-->
		
		<link href="${request.contextPath}/plug-in/main/css/H-ui.reset.css" rel="stylesheet" type="text/css" />
		<link href="${request.contextPath}/plug-in/main/css/login.css" rel="stylesheet" type="text/css" />
			
		<title>綜合档案管理系统</title>
		<meta name="keywords" content="" />
		<meta name="description" content="" />
		
	</head>

	
	<body>

	 <div class="login-bg" style=" background-image: url(${request.contextPath}/plug-in/main/images/bg_1.jpg);">
		  <div class="login-bg-slider slider">
		    <ul class="slider-container">
		      <li data-bg="${request.contextPath}/plug-in/main/images/bg_1.jpg" style="display: block; background-image: url(${request.contextPath}/plug-in/main/images/bg_1.jpg);"></li>
		      <li data-bg="${request.contextPath}/plug-in/main/images/bg_2.jpg"></li>
		    </ul>
		    <ol class="slider-tag">
		      <li class="on"></li>
		      <li></li>
		    </ol>
		  </div>
		  <div class="login-body">
		    <div class="login-container">
		      <div class="login-form-container">
		        <div class="login-logowrap"><div class="login-logoblock" style="background-image: url(${request.contextPath}/plug-in/main/images/admin-login-title.png);"></div></div>
		        <div class="login-form-wrapper">
		          <form class="login-form"  name="login-form" action="${request.contextPath}/j_spring_security_check" method="post">
		            <div class="login-form-tt"><i class="icon-login-user"></i>用户登录</div>
		            <div class="login-form-iptgroups">
		              <div class="login-form-iptgroup">
		                <label class="login-form-label"><i class="icon_login_user"></i></label>
		                <span class="login-form-iptwrap"><input  id="user-name" type="text" name="j_username" placeholder="用户名" value="admin"  onfocus="hideError(1)"></span>
		              </div>
		              <div class="login-form-iptgroup">
		                <label class="login-form-label"><i class="icon_login_password"></i></label>
		                <span class="login-form-iptwrap"><input id="pass-word"  type="password" placeholder="密码" value="wanve123456" onfocus="hideError(2)" autocomplete="off"></span>
		              </div>
		              <div class="login-form-iptgroup">
		                <label class="login-form-label"><i class="icon_login_imgcode"></i></label>
		                <span class="login-form-iptwrap"><input id="captcha" name="j_captcha" class="ipt_imagecode" type="text" placeholder="验证码" onfocus="hideError(3)"></span>
		                <span class="login-form-imagecode"><img src="${request.contextPath}/Kaptcha.jpg" id="captchaImage"/></span>
		              </div> 
		            </div>
		            <div class="login-form-buttons">
		              <button class="btn_login" type="button"  onclick="checkVal()">登陆</button>
		            </div>
		            <div class="login-error">
		              <div class="login-error-exit" id="loginError1">用户不存在</div>
		              <div class="login-error-match" id="loginError2">密码错误</div>
		              <div class="login-error-code" id="loginError3">验证码错误</div>
		            </div>
		            <div class="login-message" style="display: none;">登录失败，用户名或者密码错误</div>
		            
		            <input type="hidden" name="${(_csrf.parameterName)!}" value="${(_csrf.token)!}"/>
		           <sec:csrfInput /> 
		           
		           
		            <input type="hidden" id="rememberMe"  name="rememberMe" value="1" >
		          </form>
		        </div>
		      </div>
		    </div>
		  </div>
		  <div class="login-footer">
		    版权所有：广东万维博通信息技术有限公司
		    <div class="login-footer-right">
		      <a href="#1"><i class="icon-dowload"></i>软件下载</a>
		      <a href="#2"><i class="icon-help"></i>系统帮助</a>
		    </div>
		  </div>
		</div>


	<script type="text/javascript" src="${request.contextPath}/plug-in/h-ui/lib/jquery/1.9.1/jquery.min.js"></script> 
	<script type="text/javascript" src="${request.contextPath}/plug-in/main/libs/jquery.SuperSlide.2.1.1.min.js"></script>
	<script type="text/javascript" src="${request.contextPath}/plug-in/h-ui/lib/layer/3.0.3/layer.js"></script> 
    <script type="text/javascript" src="${request.contextPath}/plug-in/main/js/jquery.md5.js"></script> 
				
	<script type="text/javascript">
			$(function(){
				    //判断浏览器和过旧版本
				    //browserTip();
		
			        document.getElementById("user-name").focus();



				   //slider初始化
				    $(".login-bg-slider").slide({
				      mainCell: ".slider-container",
				      titCell: ".slider-tag li",
				      autoPlay: true,
				      defaultPlay:false,
				      effect: "fold",
				      delayTime: 1000,
				      interTime:8000,
				      startFun:function( i, c, slider, titCell, mainCell, targetCell, prevCell, nextCell ) {
				        var $cell=slider.find('.slider-container>li').eq(i);
				        $cell.css('backgroundImage','url('+$cell.data('bg')+')');
				      }
				    });
				    preloadImage(0);

			
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
			    url: "${request.contextPath}/j_spring_security_check",
			    dataType:'json',  
			    data:{
			    	"j_username":username,
			    	"j_password":pwd,
			    	"j_captcha":captcha,
			    	"rememberMe":$("#rememberMe").val()
			    },
			    type:"post",
			    cache : false,  
			    async : false,  
			    success:function(data){	
			    		if(data.status == "y" || data.status == "Y"){			
							window.location.href = "${request.contextPath}"+"/index.do";   					
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
		
		
   //预加载图片
   function preloadImage(index) {
      var $cell=$('.slider-container>li').eq(index);
      if ($cell.length==0) return;
      setTimeout(function() {
        loadImage($cell.data('bg'));
        preloadImage(index+1);
      },1500);

      function loadImage(src, callback){
        var img = $('<img>').on('load', function(){
          callback&&callback.call(img);
        });
        img.attr('src',src);
      }
    }	
		
		
	  function clearError(){
		 hideError(1);
		 hideError(2);
		 hideError(3);
	  }		
		
  
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
	  
	  //判断浏览器类型、过旧，提醒替换
	  function browserTip() {
//	    Cookies.remove('browserTipDGSDAG');//测试用
	    if(Cookies.get('browserTipDGSDAG')=="ignore") return;//cookie判断不再提示
	    var info = new Browser();
	    var html='<div class="browser-tip-box"><div>尊敬的用户，欢迎您使用东莞市档案馆数字档案室管理系统！</div>';
	    if(info.browser=="IE"&&parseInt(info.version)<11){
	      html+='<div>检测到当前的IE浏览器内核版本过低，为了您更好的界面体验，</div><div>推荐您切换为<em>极速模式</em>，或者<em>升级IE浏览器</em>，<div>或使用以下浏览器：</div>'
	    }else if(info.browser!=="360EE"&&info.browser!=="Chrome"){
	      html+='<div>为了您更好的界面体验，推荐您使用以下浏览器：</div>'
	    }else{
	      return;
	    }
	    html+='<div class="browser-tip-box__browser"><img src="images/browser-360EE.png" alt=""><div class="text">360极速浏览器</div><a href="https://browser.360.cn/ee/">官方下载</a></div><div class="browser-tip-box__browser"><img src="images/browser-chrome.png" alt=""><div class="text">Chrome浏览器</div></div><div class="browser-tip-box__ft"><input type="checkbox" id="btb-c"><label for="btb-c">不再提示</label><a href="javascript:;" class="browser-tip-box__close">关 闭</a></div></div>';
	    var $box=$(html).appendTo("body");
	    var index=layer.open({
	      type:1,
	      content:$box,
	      title:"",
	      closeBtn:0,
	      area:"500px"
	    });
	    $box.on("click",".browser-tip-box__close",function () {
	      if($box.find("#btb-c").is(":checked")){
	        //不再提示设置cookie
	        Cookies.set('browserTipDGSDAG', 'ignore', { expires: 90 });
	      }
	      layer.close(index);
	    })
	  }
		
		
	</script>
	
	
	      
 
		
		
		
	</body>
</html>
