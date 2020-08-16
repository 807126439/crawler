var tempName = window.document.location.pathname;
var path = tempName.substring(0,tempName.substr(1).indexOf('/')+1);



$(function () {
  $(".fold-table-btn").click(function () {
    var opened=!$(this).hasClass("opened");
    $(this).parent().parent().find(".fold-table-btn,.fold-table-bd").removeClass("opened")
    if(opened){
      $(this).addClass("opened")
      $(this).parent().next(".fold-table-bd").addClass("opened")
    }else{
      $(this).removeClass("opened")
      $(this).parent().next(".fold-table-bd").removeClass("opened")
    }
  })
})

//标签页切换（类名切换）
//s1为tag父容器，active1当前tag的类名，s2为面板父容器(可选)，active2当前面板的类名
function tabPage2(s1,active1,s2,active2,call){
  if ($(s1).length===0) {
    return;
  }
  var $tabcontainer=$(s1);
  var $pagecontainer=$(s2);
  $tabcontainer.not(function(){ return $(this).children('.'+active1).length!==0 }).children(":first-child").addClass(active1);
  $pagecontainer.not(function(){ return $(this).children('.'+active2).length!==0 }).children(":first-child").addClass(active2);
  $tabcontainer.children().click(function(){
    if ($(this).hasClass(active1)) return;
    $(this).addClass(active1).siblings().removeClass(active1);
    $pagecontainer.children(":nth-child("+($(this).index()+1)+")").addClass(active2).siblings().removeClass(active2);
    call&&call($(this).index(),$(this))
  });
}

function tabPage(s1,active1,s2,active2,call){
	  if ($(s1).length===0) {
	    return;
	  }
	  var $tabcontainer=$(s1);
	  var $pagecontainer=$(s2);
	  $tabcontainer.not(function(){ return $(this).children('.'+active1).length!==0 }).children(":first-child").addClass(active1);
	  $pagecontainer.not(function(){ return $(this).children('.'+active2).length!==0 }).children(":first-child").addClass(active2);
	  $tabcontainer.children().click(function(){
		if(call){
		  var result =call&& call($(this).index());
		  if(result){
			    if($(this).hasClass(active1)) return;
			    $(this).addClass(active1).siblings().removeClass(active1);
			    $pagecontainer.children(":nth-child("+($(this).index()+1)+")").addClass(active2).siblings().removeClass(active2);
		  }			
		}else{
		  if($(this).hasClass(active1)) return;
		  $(this).addClass(active1).siblings().removeClass(active1);
		  $pagecontainer.children(":nth-child("+($(this).index()+1)+")").addClass(active2).siblings().removeClass(active2);
		}
	  
	  });
	}



/**
 * 弹窗选框
 * @param  {string|object} labelInput 显示值用的input选择器或对象
 * @param  {object} option     配置
 * @param  {string} option.url     弹窗目标地址
 * @param  {string} option.limit     最多选择的数量，默认为1(单选)。设为false为不限个数checkbox模式
 * @param  {string} option.target     弹窗目标窗口，默认当前窗口，设为parent为父窗口，top为顶层窗口
 * @param  {string} option.title     弹窗标题
 * @param  {string} option.w     弹窗宽
 * @param  {string} option.h     弹窗高
 * @param  {string} option.cb     选择后的回调函数
 * @param  {string|object} idsInput   存储选中id列表的input选择器或对象（id之间用,分割）
 */
function checkTree(labelInput,option,idsInput){
  var ids=$(idsInput).val();
  option=option||{};
  var url=option.url;
  var content=url+(url.indexOf('?')>-1?'&':'?')+'call=checkCall&ids='+ids;
  var layerIndex;
  if (typeof option.limit!=='undefined') {
    content+='&limit='+option.limit
  }
  var win=window;
  if (option.target=='parent') {
    win=parent;
  }else if (option.target=='top') {
    win=top;
  }

  win.checkCall=function(data){
    if (!data.join) {
      $(labelInput).val(data.name)
      ids=data.id;
    }else{
      $(labelInput).val($.map(data,function(item){ return item.name }).join(','))
      ids=$.map(data,function(item){ return item.id }).join(',');
    }
    var changed=ids+''!==$(idsInput).val();
    $(idsInput).val(ids);
    win.layer.close(layerIndex);
    if (changed) {
      $(idsInput).trigger('change')
      $(labelInput).trigger('change')
    }
    option.cb&&option.cb(data)
  }
  
  if(option.w){
	  w = (option.w).toString()
  }
  if(option.h){
	  h =  (option.h).toString()
  }
  
  
  $(labelInput).blur()
  layerIndex=win.layer.open({
    type:2,
    title:option.title||'请选择',
    skin:'layer-skin-bordered',
    closeBtn:1,
    shadeClose:2,
    area:[option.w?(w.indexOf("%") !=-1 ?w:w+'px'):'300px',option.h?(h.indexOf("%") !=-1?h:h+'px'):'500px'],
    content:content,
    end:function() {
      win.checkCall=null;
    }
  })
}

  /**
 * Validate插件的tiptype自定义类型
 * @param  {String} msg    提示信息
 * @param  {Object} o      {obj:*,type:*,curform:*}
 *                         obj指向的是当前验证的表单元素（或表单对象，验证全部验证通过，提交表单时o.obj为该表单对象）
 *                         type指示提示的状态，值为1、2、3、4， 1：正在检测/提交数据，2：通过验证，3：验证失败，4：提示ignore状态
 *                         curform为当前form对象
 * @param  {function} cssctl 内置的提示信息样式控制函数，该函数需传入两个参数：显示提示信息的对象和当前提示的状态（既形参o中的type）
 */
function myTiptype(msg,o,cssctl){
  if(o.obj.is("input,select,textarea")){//验证表单元素时o.obj为该表单元素，全部验证通过提交表单时o.obj为该表单对象;
    if (!o.obj.is('input[type="radio"]')&&!o.obj.is('input[type="checkbox"]')) {
       var $wrapper=o.obj.parent();
        if($wrapper[0].tagName==="TD"){
          $wrapper=$('<div class="iptwrap"></div>').append(o.obj).appendTo($wrapper);
        }
        if ($wrapper.width()>300) {
          //input末尾显示错误信息
          $wrapper.find('.Validform_checktip').remove();
          var h=$wrapper.height()<34?($wrapper.height()-2):32
          h=h<20?20:h;
          var infoObj=$('<div class="Validform_checktip" style="position:absolute;right:1px;top:1px;line-height:'+h+'px;color:#dc3a3a;z-index: 1;background:#fff4f4"></div>');
          var removeFun=function(){ infoObj.remove();}
          infoObj.off('click').on('click',function(){
            o.obj.focus(); 
            removeFun()
          })
          var blurRemoveFun=function(){
            setTimeout(function(){
              if (!o.obj.hasClass('Validform_error')) {
                o.obj.off('blur',blurRemoveFun)
                removeFun()
              }
            },10)
          }
          o.obj.off('blur',blurRemoveFun).on('blur',blurRemoveFun)
          var objtip=infoObj.text(msg);
          if ($wrapper.css('position')!=='absolute'&&$wrapper.css('position')!=='fixed')
            $wrapper.css('position','relative');
          if(o.type==3){
            if(infoObj.is(":visible")){return;}
             $wrapper.prepend(infoObj)
          }
        }else{
          //滑动显示错误信息
          if ($wrapper.find('.info').length===0) {
            if ($wrapper.offset().top<42) {
              var infoObj=$('<div class="info" style="position:absolute;top:100%;display:none;border:1px solid #999;padding:0 12px;background:#F9F9F9;z-index:9999;white-space:nowrap;margin-top:8px;"><span class="Validform_checktip" style="display:block;line-height:26px;height:26px;"></span><span style="position:absolute;bottom:100%;right:30px;height:0;width:0;border-left: 2px solid transparent;border-right: 10px solid transparent;border-bottom:8px solid #999;"></span><span style="position:absolute;bottom:100%;right:30px;height:0;width:0;border-left: 2px solid transparent;border-right: 10px solid transparent;border-bottom:8px solid #F9F9F9;margin-bottom:-1px;"></span></div>');
            }else{
              var infoObj=$('<div class="info" style="position:absolute;bottom:100%;display:none;border:1px solid #999;padding:0 12px;background:#F9F9F9;z-index:9999;white-space:nowrap;margin-bottom:8px;"><span class="Validform_checktip" style="display:block;line-height:26px;height:26px;"></span><span style="position:absolute;top:100%;right:30px;height:0;width:0;border-left: 2px solid transparent;border-right: 10px solid transparent;border-top:8px solid #999;"></span><span style="position:absolute;top:100%;right:30px;height:0;width:0;border-left: 2px solid transparent;border-right: 10px solid transparent;border-top:8px solid #F9F9F9;margin-top:-1px;"></span></div>');
            }
            $wrapper.prepend(infoObj);
          }else{
            var infoObj=$wrapper.find('.info');
          }
          var objtip=infoObj.find(".Validform_checktip");
          if ($wrapper.css('position')!=='absolute') {
            $wrapper.css('position','relative');
          }
          cssctl(objtip,o.type);
          objtip.text(msg);
          
          if(o.type==2){
            infoObj.animate({'right':'80px','opacity':'0.2'},600,function() {$(this).hide()});
          }else if(o.type==4){
            infoObj.hide();
          }else{
            if(infoObj.is(":visible")){return;}
             infoObj.css({'right':'80px','opacity':'0.2'}).show().animate({'right':'4px','opacity':'1'},600);
          }
        }
    }else if(o.obj.is('input[type="radio"]')){
      if (o.type==3) {
        layer.tips('至少选择一项',o.obj,{ tips: 3})
      }
    }else if(o.obj.is('input[type="checkbox"]')){
      if (o.type==3) {
        layer.tips(msg,o.obj,{ tips: 3})
      }
    } 
  }else{
    if(o.type==1){
      layer.msg(msg,{icon:16,time:8000})
    }else if(o.type==2){
      layer.msg(msg,{icon:1,time:1600})
    }else if(o.type==3){
      layer.msg(msg,{icon:2,time:1600})
    }
  }
}
//checkbox和radio的验证,配合needMin和needMax属性使用
if ($.Datatype) {
  $.Tipmsg.r="通过信息验证！";
  $.Tipmsg.c="正在检测信息…";
  $.Datatype.need=function(gets,obj,curform,regxp){
    var min=obj.attr('needMin')||0;
    var max=obj.attr('needMax')||100;
    var arr=gets.replace(/,$/,'').split(',');
    if (gets=='') {arr.shift();}
    if (arr.length<min)
      return  "请至少选择"+min+"项！"
    if (arr.length>max)
      return  "最多选择"+max+"项！"
    return true
  }
}

/*Form*/
//表单序列化为对象
if (typeof($) !== 'undefined' && typeof($.fn.serializeObject) === 'undefined') {
  $.fn.serializeObject = function() {
    var o = {};
    var a = this.serializeArray();
    $.each(a, function() {
      if (o[this.name] !== undefined) {
        if (!o[this.name].push) {
          o[this.name] = [o[this.name]];
        }
        o[this.name].push(this.value || '');
      } else {
        o[this.name] = this.value || '';
      }
    });
    return o;
  };
}
/*Form*/

/*Date*/
//日期格式化，参数如：YYYY-MM-DD hh:mm:ss
if (!Date.prototype.format) {
  Date.prototype.format = function(formatStr) {
    var str = formatStr;
    var Week = ['日', '一', '二', '三', '四', '五', '六'];

    str = str.replace(/yyyy|YYYY/, this.getFullYear());
    str = str.replace(/yy|YY/, (this.getYear() % 100) > 9 ? (this.getYear() % 100).toString() : '0' + (this.getYear() % 100));

    str = str.replace(/MM/, this.getMonth() + 1 > 9 ? (this.getMonth() + 1).toString() : '0' + (this.getMonth() + 1));
    str = str.replace(/M/g, this.getMonth() + 1);

    str = str.replace(/w|W/g, Week[this.getDay()]);

    str = str.replace(/dd|DD/, this.getDate() > 9 ? this.getDate().toString() : '0' + this.getDate());
    str = str.replace(/d|D/g, this.getDate());

    str = str.replace(/hh|HH/, this.getHours() > 9 ? this.getHours().toString() : '0' + this.getHours());
    str = str.replace(/h|H/g, this.getHours());
    str = str.replace(/mm/, this.getMinutes() > 9 ? this.getMinutes().toString() : '0' + this.getMinutes());
    str = str.replace(/m/g, this.getMinutes());

    str = str.replace(/ss|SS/, this.getSeconds() > 9 ? this.getSeconds().toString() : '0' + this.getSeconds());
    str = str.replace(/s|S/g, this.getSeconds());

    return str;
  }
}
/*Date*/


//自适应和居中layer,父页面调用
function iframeAutoHeight(layero, index) {
  if(navigator.appName == "Microsoft Internet Explorer"&&parseInt(navigator.appVersion.split(";")[1].replace(/[ ]/g, "").replace("MSIE",""))<9){
    var $iframe=layero.find('iframe');
    var win=window.frames["layui-layer-iframe"+index];
    var doc=win.$(win.document).find("body");
    layer.style(index,{height:layero.height()+doc.height()-$iframe.height()+"px"});
  }else{
    layer.iframeAuto(index);
  }
  if (layero.outerHeight()>=$(window).height()) layer.style(index,{height:$(window).height()-10+"px"});
  layer.style(index,{top:($(window).height()-layero.outerHeight())/2+"px"});
}


//设置弹窗宽度,子页面调用
function setIframeWidth(width) {
  var index=parent.layer.getFrameIndex(window.name);
  var layero=parent.$("#layui-layer"+index);
  var winWidth=parent.$(parent).width();
  parent.layer.style(index,{width:(width>winWidth?winWidth-10:width)+"px"});
  parent.layer.style(index,{left:(winWidth-layero.outerWidth())/2+"px"});
}


function logout(){	   
	
	layer.confirm("您确定要退出系统吗?",function(index){
		window.parent.location.href = path+"/j_spring_security_logout";	
	});
}
  
  

/*绑定表单*/
function bindForm(formId,action,t,end){
   if(action){
	 $("#"+formId).attr("action",action);
   }
   
	
   $("#"+formId).Validform({
		tiptype:t,
		ajaxPost:true,//ajax方式提交表单数据		
		callback:function(data){
			if(data.status == "y" || data.status == "Y"){				
			      setTimeout(function(){
				    $("#Validform_msg").hide();			 
					layer.closeAll('page');
					end();     					      
			      },1000); 					
			}
			
		}
	}); 

}


function sumbitForm(formId){
	$("#"+formId).submit();
}



/*textarea 字数限制*/
function textarealength(obj,maxlength){
	var v = $(obj).val();
	var l = v.length;
	if( l > maxlength){
		v = v.substring(0,maxlength);
		$(obj).val(v);
	}
	$(obj).parent().find(".textarea-length").text(v.length);
}


/*弹出层*/
/*
	参数解释：
	title	标题
	url		请求的url
	id		需要操作的数据id
	w		弹出层宽度（缺省调默认值）
	h		弹出层高度（缺省调默认值）
*/
function layer_show(title,url,w,h,maxmin){
	if (title == null || title == '') {
		title=false;
	};
	if (url == null || url == '') {
		url="404.html";
	};
	if (w == null || w == '') {
		w=($(window).width() - 50);
	};
	if (h == null || h == '') {
		h=($(window).height() - 50);
	};
	layer.open({
		skin:'layer-skin-default',
		type: 2,
		area: [w+'px', h +'px'],
		fix: false, //不固定
		maxmin: maxmin,
		shade:0.4,
		title: title,
		content: url
	});
}

function layer_show_iframeAuto(title,url,w,h,maxmin){
	if (title == null || title == '') {
		title=false;
	};
	if (url == null || url == '') {
		url="404.html";
	};
	if (w == null || w == '') {
		w=($(window).width() - 50);
	};
	if (h == null || h == '') {
		h=($(window).height() - 50);
	};
	layer.open({
		skin:'layer-skin-default',
		type: 2,
		area: [w+'px', h +'px'],
		fix: false, //不固定
		maxmin: maxmin,
		shade:0.4,
		title: title,
		content: url,
		success: iframeAutoHeight
	});
}


function layer_full(title,url,w,h,maxmin){
	if (title == null || title == '') {
		title=false;
	};
	if (url == null || url == '') {
		url="404.html";
	};
	if (w == null || w == '') {
		w=800;
	};
	if (h == null || h == '') {
		h=($(window).height() - 50);
	};
	 
	var index = layer.open({
		skin:'layer-skin-default',
		type: 2,
		area: [w+'px', h +'px'],
		fix: false, //不固定
		maxmin: maxmin,
		shade:0.4,
		title: title,
		content: url
	});
	layer.full(index);
	
}


function layer_full_end(title,url,w,h,maxmin,endCallBack){
	if (title == null || title == '') {
		title=false;
	};
	if (url == null || url == '') {
		url="404.html";
	};
	if (w == null || w == '') {
		w=800;
	};
	if (h == null || h == '') {
		h=($(window).height() - 50);
	};
	
	var index = layer.open({
		skin:'layer-skin-default',
		type: 2,
		area: [w+'px', h +'px'],
		fix: false, //不固定
		maxmin: maxmin,
		shade:0.4,
		title: title,
		content: url,
 		end: function(){ 
 			endCallBack&&endCallBack();
		}
	});
	layer.full(index);
	
}


function layer_show_end(title,url,w,h,maxmin,endCallBack){
 	if (title == null || title == '') {
 		title=false;
 	};
 	if (url == null || url == '') {
 		url="404.html";
 	};
 	if (w == null || w == '') {
 		 w = ($(window).width() - 50);
 	};
 	if (h == null || h == '') {
 		h=($(window).height() - 50);
 	};
 	 
 	layer.open({
 		skin:'layer-skin-default',
 		type: 2,
 		area: [w+'px', h +'px'],
 		fix: false, //不固定
 		maxmin: false,
 		shade:0.4,
 		title: title,
 		content: url,
 		end: function(){ 	
 			endCallBack&&endCallBack();
 		
 		
		}
 	});
 
 	
 }



/*关闭弹出框口*/
function layer_close(){
	var index = parent.layer.getFrameIndex(window.name);
	parent.layer.close(index);
}


function open_window(url){
	var h = $(window).height() - 50, w=$(window).width() - 100;
	return window.open(url,"_blank","height:"+h+"px,width:"+w+"px,scrollbars=yes,resizable=yes");
	
}
