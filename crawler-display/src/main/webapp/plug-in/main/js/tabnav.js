$(function(){
	var num=0,oUl=$("#min_title_list"),hide_nav=$("#Hui-tabNav");

	/*选项卡导航*/
	$(".sidebar-menu").on("click",".sidebar-menu-item>a",function(){
		Hui_admin_tab(this);
	});	
	$(".header-buttons").on("click","a",function(){
		Hui_admin_tab(this);
	});
	//右键菜单设置
  setClickMenu({
  elem:'.Hui-tabNav ul', //点击触发的目标选择器
  menu:'<li onclick="closethistab(event)">关闭标签页</li><li onclick="closeothertab(event)">关闭其他标签页</li><li onclick="closerighttab(event)">关闭右侧标签页</li>' //菜单对象
  });

	/*获取顶部选项卡总长度*/
	function tabNavallwidth(){
		var taballwidth=0,
			$tabNav = hide_nav.find(".acrossTab"),
			$tabNavWp = hide_nav.find(".Hui-tabNav-wp"),
			$tabNavitem = hide_nav.find(".acrossTab li"),
			$tabNavmore =hide_nav.find(".Hui-tabNav-more");
		if (!$tabNav[0]){return}
		$tabNavitem.each(function(index, element) {
	        taballwidth+=Number(parseFloat($(this).width()+60))
	    });
		$tabNav.width(taballwidth+25);
		var w = $tabNavWp.width();
		if(taballwidth+25>w){
			$tabNavmore.show()}
		else{
			$tabNavmore.hide();
			$tabNav.css({left:0})
		}
	}


	
	$(document).on("click","#min_title_list li",function(){
		var bStopIndex=$(this).index();
		var iframe_box=$("#iframe_box");
		$("#min_title_list li").removeClass("active").eq(bStopIndex).addClass("active");
		iframe_box.find(".show_iframe").hide().eq(bStopIndex).show();
	});
	$(document).on("click","#min_title_list li i",function(){
		var aCloseIndex=$(this).parents("li").index();
		$(this).parent().remove();
		$('#iframe_box').find('.show_iframe').eq(aCloseIndex).remove();	
		num==0?num=0:num--;
		tabNavallwidth();
	});
	$(document).on("dblclick","#min_title_list li",function(){
		var aCloseIndex=$(this).index();
		var iframe_box=$("#iframe_box");
		if(aCloseIndex>0){
			$(this).remove();
			$('#iframe_box').find('.show_iframe').eq(aCloseIndex).remove();	
			num==0?num=0:num--;
			$("#min_title_list li").removeClass("active").eq(aCloseIndex-1).addClass("active");
			iframe_box.find(".show_iframe").hide().eq(aCloseIndex-1).show();
			tabNavallwidth();
		}else{
			return false;
		}
	});
	tabNavallwidth();
	
	$('#js-tabNav-next').click(function(){
		num==oUl.find('li').length-1?num=oUl.find('li').length-1:num++;
		toNavPos();
	});
	$('#js-tabNav-prev').click(function(){
		num==0?num=0:num--;
		toNavPos();
	});
	
	function toNavPos(){
		oUl.stop().animate({'left':-num*100},100);
	}

	
	//菜单控件
	function setClickMenu(obj){
	  var elem=obj.elem;
	  var menu=obj.menu;
	  //右键菜单显示
	  $(elem).mouseup(function(event){
	    if (event.which!==3) return;
	    var targ=event.target;
	    var $this=$(targ).closest('li');
	    if ($this.length===0) return;
	    $(document).bind("contextmenu",function(){return false;});
	    if($('.tabmenu').length===0)
	      $('<ul class="tabmenu" data-tag="'+$this.index()+'">'+menu+'</ul>').appendTo($('body')); 
	    $('.tabmenu').css({top:event.clientY,left:event.clientX});
	    if ($this.find('i').length===0) {//首页不可关
	      $('.tabmenu li').eq(0).addClass('notused');
	    }
	    $('body').off('mousedown',hideClickMenu).on('mousedown',hideClickMenu);
	    if (event.stopPropagation)
	        event.stopPropagation();
	    event.cancelBubble = true;
	   if (event.preventDefault)
	        event.preventDefault();
	    event.returnValue = false;
	  });
	}
}); 

	function openTab(menuId,direct,rename) {
		var obj;
		if (menuId&&$(menuId).length!==0) {
			obj=$(menuId).children('a:first');
		}else{
			obj=$('<a data-href="'+direct+'" data-title="'+rename+'"></a>');
		}
			Hui_admin_tab(obj,direct,rename);
	}

	function Hui_admin_tab(obj,direct,rename){
		if($(obj).attr("data-href")){
			var way=$(obj).attr("data-way");
			if(way && way == 2){
				return;
			}
			
			var bStop=false;
			var bStopIndex=0;
			var _href=$(obj).attr("data-href");
			var _titleName=$(obj).data("title");
			var _status=$(obj).data("status");
			var topWindow=$(window.parent.document);
			var show_navLi=topWindow.find("#min_title_list li");
			
		
			//加入标题  @author zjr
			var topTitle = $(obj).parents(".sub-ul").prev("a").find("i").attr("title");
			if (_href.indexOf("?") >= 0) {
				_href+= "&title=" + encodeURI(encodeURI(_titleName));
			}else{
				_href+= "?title=" + encodeURI(encodeURI(_titleName));
			}
			
			if(topTitle){
				_href+= "&top=" + encodeURI(encodeURI(topTitle));
			}
			if(_status){
				_href+= "&status=" + _status;
			}
			
			show_navLi.each(function() {
				if($(this).find('span').attr("data-href")==_href){
					bStop=true;
					bStopIndex=show_navLi.index($(this));
					return false;
				}
			});
			if(!bStop){
				creatIframe(_href,_titleName,direct,rename);
				min_titleList();
			}
			else{
				var $curr=show_navLi.removeClass("active").eq(bStopIndex).addClass("active");
				if (rename) $curr.find('span').text(rename);
				var iframe_box=topWindow.find("#iframe_box");
				iframe_box.find(".show_iframe").hide().eq(bStopIndex).show().find("iframe").attr("src",direct||_href);
			}
		}

	}
	function min_titleList(){
		var topWindow=$(window.parent.document);
		var show_nav=topWindow.find("#min_title_list");
		var aLi=show_nav.find("li");
	};
	function creatIframe(href,titleName,direct,rename){
		var topWindow=$(window.parent.document);
		var show_nav=topWindow.find('#min_title_list');
		show_nav.find('li').removeClass("active");
		var iframe_box=topWindow.find('#iframe_box');
		show_nav.append('<li class="active"><span data-href="'+href+'">'+(rename||titleName)+'</span><i></i><em></em></li>');
		var taballwidth=0,
			$tabNav = topWindow.find(".acrossTab"),
			$tabNavWp = topWindow.find(".Hui-tabNav-wp"),
			$tabNavitem = topWindow.find(".acrossTab li"),
			$tabNavmore =topWindow.find(".Hui-tabNav-more");
		if (!$tabNav[0]){return}
		$tabNavitem.each(function(index, element) {
	        taballwidth+=Number(parseFloat($(this).width()+60))
	    });
		$tabNav.width(taballwidth+25);
		var w = $tabNavWp.width();
		if(taballwidth+25>w){
			$tabNavmore.show()}
		else{
			$tabNavmore.hide();
			$tabNav.css({left:0})
		}
		var iframeBox=iframe_box.find('.show_iframe');
		iframeBox.hide();
		iframe_box.append('<div class="show_iframe"><div class="loading"></div><iframe frameborder="0" src='+(direct||href)+'></iframe></div>');
		var showBox=iframe_box.find('.show_iframe:visible');
		showBox.find('iframe').load(function(){
			showBox.find('.loading').hide();
		});
	}
	function removeIframe(){
		var topWindow = $(window.parent.document);
		var iframe = topWindow.find('#iframe_box .show_iframe');
		var tab = topWindow.find(".acrossTab li");
		var showTab = topWindow.find(".acrossTab li.active");
		var showBox=topWindow.find('.show_iframe:visible');
		var i = showTab.index();
		tab.eq(i-1).addClass("active");
		iframe.eq(i-1).show();
		tab.eq(i).remove();
		iframe.eq(i).remove();
	}

//右键菜单隐藏
function hideClickMenu(e){
	if (typeof e!=='undefined') {
	  var targ = e.target;
	  if ($(targ).closest('.tabmenu').length!==0){
			return;
	  }
	}
  $('.tabmenu').remove();
  $(document).unbind("contextmenu");
  $('body').off('mousedown',hideClickMenu);
}
//关闭当前标签页
	function closethistab(event){
	  var event = event || window.event;
	  var targ = event.srcElement ? event.srcElement : event.target;
	  var tarindex=parseInt($(targ).closest('.tabmenu').data('tag'));
	  $('.Hui-tabNav ul li').eq(tarindex).find('i').trigger('click');
	  hideClickMenu();
	}//关闭当前标签页
	function closeothertab(event){
	  var event = event || window.event;
	  var targ = event.srcElement ? event.srcElement : event.target;
	  var tarindex=parseInt($(targ).closest('.tabmenu').data('tag'));
	  $('.Hui-tabNav ul li').not($('.Hui-tabNav ul li').eq(0)).not($('.Hui-tabNav ul li').eq(tarindex)).find('i').trigger('click');
	  hideClickMenu();
	}//关闭当前标签页
	function closerighttab(event){
	  var event = event || window.event;
	  var targ = event.srcElement ? event.srcElement : event.target;
	  var tarindex=parseInt($(targ).closest('.tabmenu').data('tag'));
	  $('.Hui-tabNav ul li').not(function(index){return index>tarindex?false:true;}).find('i').trigger('click');
	  hideClickMenu();
	}