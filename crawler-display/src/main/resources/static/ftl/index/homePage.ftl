<!DOCTYPE html>
<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=Edge">
  <meta name="renderer" content="webkit|ie-stand">
    <meta http-equiv="Access-Control-Allow-Origin" content="*">
  <title>福田区政府投资项目履约评价共享平台</title>
 
    <link rel="stylesheet" type="text/css" href="${request.contextPath}/plug-in/main/css/H-ui.reset.css">
    <link rel="stylesheet" type="text/css" href="${request.contextPath}/plug-in/main/css/common.css">
    <link rel="stylesheet" type="text/css" href="${request.contextPath}/plug-in/main/css/styles.css">
    <link rel="stylesheet" type="text/css" href="${request.contextPath}/plug-in/main/css/homepage.css">
  <style>
    .select-search-option .ui-input{height:45px;line-height:30px;}
  </style>
</head>

<body>
  <div class="ui-page-container">
  <div class="homepage-maincontainer cl">
    <div class="homepage-left-container">
    
       <!-- 综合检索 -->
      <div class="ui-panel">
        <div class="ui-panel-body" id="searchBody1">
            <div class="ui-searchbar-label" style="width:70px">
              <select id="searchOption" ext-class="select-search-option">
                <option value="1" selected="selected" >标题</option>
                <option value="2">内容</option>
                <option value="3">标题与内容</option>
              </select>
            </div>
            <div class="ui-searchbar size-l" style="margin-left: 76px;">
              <div class="ui-searchbar__bar">
                <span class="ui-searchbar-ipt-wr no-icon"><input id="searchKeyWord" type="text" class="ui-searchbar-ipt" placeholder="请输入搜索关键字" style="height: 45px"></span>
                <span class="ui-searchbar-btn-wr"><button class="ui-searchbar-btn ui-searchbar-btn-2" style="height: 45px" onclick="search()"><i class="icon_search"></i> 查 询</button></span>
              </div>
            </div>
        </div>
      </div> 
    <!-- 综合检索 -->

      <!-- 数据统计 -->
      <div class="ui-panel" style="background-color: rgba(255,255,255,0);">
        <div class="statistics-panel-container" id="esResult_list">


            <!-- 模板
            <div class="blogs" data-scroll-reveal="enter bottom over 1s" data-scroll-reveal-id="2" style="-webkit-transform: translatey(0);transform: translatey(0);opacity: 1;-webkit-transition: -webkit-transform 1s ease-in-out 0s,  opacity 1s ease-in-out 0s;transition: transform 1s ease-in-out 0s, opacity 1s ease-in-out 0s;-webkit-perspective: 1000;-webkit-backface-visibility: hidden;" data-scroll-reveal-initialized="true">
                <h3 class="blogtitle"><a href="/" target="_blank">帝国cms 首页或者列表页 实现图文不同样式调用方法</a></h3>
                <p class="blogtext">如图，要实现上图效果，我采用如下方法：1、首先在数据库模型，增加字段，分别是图片2，图片3。2、增加标签模板，用if，else if 来判断，输出。思路已打开，样式调用就可以多样化啦！...</p>
                <div class="bloginfo">
                    <ul>
                        <li class="author"><a href="/">杨青</a></li>
                        <li class="lmname"><a href="/">学无止境</a></li>
                        <li class="timer">2018-5-13</li>
                        <li class="view">4567已阅读</li>
                        <li class="like">9999</li>
                    </ul>
                </div>
            </div>
            -->

          <#--<div class="statistics-panel">-->
            <#--<div class="statistics-panel-header">-->
              <#--<span class="tt">各类型承包商平均履约分数</span>-->
<#--<!--               <div class="f-r" style="width: 80px">-->
                <#--<select class="ui-select size-mini" ext-class="size-mini">-->
                  <#--<option selected>2017年</option>-->
                <#--</select>-->
              <#--</div> &ndash;&gt;-->
            <#--</div>-->
            <#--<div class="statistics-panel-body" id="char1" style="height: 335px"></div>-->
          <#--</div>-->
          <#--<div class="statistics-panel">-->
            <#--<div class="statistics-panel-header">-->
              <#--<span class="tt">各类型承包商履约合格比例</span>-->
<#--<!--               <div class="f-r" style="width: 80px">-->
                <#--<select class="ui-select size-mini" ext-class="size-mini">-->
                  <#--<option selected>2017年</option>-->
                <#--</select>-->
              <#--</div> &ndash;&gt;-->
            <#--</div>-->

            <#--<div class="statistics-panel-body" id="char2" style="height: 335px;margin-left:100px;">-->
            <#--</div>-->
          <#--</div>-->

        </div>
      </div>
      <!-- 数据统计 -->

    </div>

    <div class="homepage-right-container">

      <div class="ui-panel ui-panel_primary">
        <div class="ui-panel-header"><span class="tt"><i class="icon_mod icon_mod_edit"></i>最近创建</span></div>
        <div class="ui-panel-body">
          <div class="statistics-panel-body" style="overflow: auto">
              <table class="ui-table ui-table-border-row" id="newestTop20">
                <thead>
                <tr>
                  <td>序号</td>
                  <td>标题</td>
                  <td>出发时间</td>
                </tr>
                </thead>
                <tbody>
                </tbody>
              </table>
            </div>
        </div>
      </div>

      
      <div class="ui-panel ui-panel_primary">
        <div class="ui-panel-header"><span class="tt"><i class="icon_mod icon_mod_edit"></i>最热门</span></div>
        <div class="ui-panel-body">
           <div class="statistics-panel-body" style="overflow: auto">
              <table class="ui-table ui-table-border-row" id="hotestTop20">
                <thead>
                <tr>
                  <td>序号</td>
                  <td>标题</td>
                  <td>出发时间</td>
                </tr>
                </thead>
                <tbody>
                </tbody>
              </table>
            </div>
        </div>
      </div>

    </div>
  </div>
  </div>
  
  <!-- main -->
  <m:ajs_button operCode="transferProject"  funMethod="transfer_project('{0}','{1}')" context="移交" varName="project_transfer" />
  <m:ajs_button operCode="receiveProject"  funMethod="receive_project('{0}','{1}')" context="接收" varName="project_receive" />
  <#include "../common/script/main-js.ftl"/>
  <script type="text/javascript" src="${request.contextPath}/plug-in\h-ui\lib\scrollReveal.js"></script>
  <script type="text/javascript" src="${request.contextPath}/plug-in\h-ui\lib\hc-sticky.js"></script>
  <script src="https://cdn.bootcss.com/elasticsearch/14.1.0/elasticsearch.jquery.js"></script>
  <script type="text/javascript" src="${request.contextPath}/plug-in/web/index/homePage/initChar.js"></script>
  <script type="text/javascript" src="${request.contextPath}/plug-in/web/index/homePage/esSearch-init.js"></script>
  <script type="text/javascript">
  $(function() {
	    $('select').iSelect() 
	    var leftPanelWidth=($(window).height()-$(".homepage-left-container .ui-panel").eq(0).outerHeight()-194)/2;
		leftPanelWidth=leftPanelWidth<163?163:leftPanelWidth;
		$(".homepage-left-container .ui-itemlist,.homepage-left-container .statistics-panel-body").height(leftPanelWidth)
	    $(".homepage-right-container .statistics-panel-body").css('height',($(window).height()-136)/2+'px');

		//右侧跟随
      var Sticky = new hcSticky('.homepage-right-container', {
        stickTo: '.homepage-left-container',
        innerTop: 0,
        followScroll: false
      });

      //scroll
      // if (!(/msie [6|7|8|9]/i.test(navigator.userAgent))) {
      //     window.scrollReveal = new scrollReveal({reset: true});
      // };

      //header
      var new_scroll_position = 0;
      var last_scroll_position;
      var header = parent.document.getElementById("header");
      var main_container = parent.document.getElementsByClassName("main-container");

      window.addEventListener('scroll', function(e) {
          last_scroll_position = window.scrollY;

          if (new_scroll_position < last_scroll_position && last_scroll_position > 80) {
              header.classList.remove("slideDown");
              header.classList.add("slideUp");
              main_container[0].style.top ="0px";

          } else if (new_scroll_position > last_scroll_position) {
              header.classList.remove("slideUp");
              //header.classList.add("slideDown");
              main_container[0].style.top ="100px";
          }

          new_scroll_position = last_scroll_position;
      });

  });



  function search(){
    from_contex = 0;
     var keyWord = $("#searchKeyWord").val();
     var searchType =  $("#searchOption").val();
     $("#esResult_list").empty();
    searchEs(keyWord,searchType,0,10);

  }


  
   </script>

 
</body>

</html>