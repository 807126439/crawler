<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="/page/common/tag/mytags.jsp" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=Edge">
  <meta name="renderer" content="webkit|ie-stand">
  <title>福田区政府投资项目履约评价共享平台</title>
 
  <link rel="stylesheet" type="text/css" href="<%=path%>/plug-in/main/css/H-ui.reset.css">
  <link rel="stylesheet" type="text/css" href="<%=path%>/plug-in/main/css/common.css">
  <link rel="stylesheet" type="text/css" href="<%=path%>/plug-in/main/css/styles.css">
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
                <option value="project" selected="selected">项目</option>
                <option value="projectPart">工程</option>
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
      <div class="ui-panel">
        <div class="ui-panel-header"><span class="tt"><i class="icon_mod icon_mod_statistics"></i>数据统计</span></div>
        <div class="statistics-panel-container">
          <div class="statistics-panel">
            <div class="statistics-panel-header">
              <span class="tt">各类型承包商平均履约分数</span>
<!--               <div class="f-r" style="width: 80px">
                <select class="ui-select size-mini" ext-class="size-mini">
                  <option selected>2017年</option>
                </select>
              </div> -->
            </div>
            <div class="statistics-panel-body" id="char1" style="height: 335px"></div>
          </div>
          <div class="statistics-panel">
            <div class="statistics-panel-header">
              <span class="tt">各类型承包商履约合格比例</span>
<!--               <div class="f-r" style="width: 80px">
                <select class="ui-select size-mini" ext-class="size-mini">
                  <option selected>2017年</option>
                </select>
              </div> -->
            </div>
             <div class="statistics-panel-body__btns">            
                <div class="statistics-panel-body__btn" onclick="showStat('综合')">综合</div>
                <c:forEach items="${allEngType }" var="eng" varStatus="vs">
                	<div class="statistics-panel-body__btn statistics-panel-body__btn_${vs.count}" onclick="showStat('${eng.typeName }')">${eng.typeName }</div>
                </c:forEach>
              </div>



            <div class="statistics-panel-body" id="char2" style="height: 335px;margin-left:100px;">
            </div>
          </div>
        </div>
      </div>
      <!-- 数据统计 -->

    </div>




    <div class="homepage-right-container">
      <!-- 承包商红榜 -->
      <div class="ui-panel ui-panel_primary">
        <div class="ui-panel-header"><span class="tt"><i class="icon_mod icon_mod_edit"></i>承包商红榜（本年度优秀承包商TOP50）</span></div>
        <div class="ui-panel-body">
          <div class="statistics-panel-body" style="overflow: auto">
              <table class="ui-table ui-table-border-row" id="bestTop20">
                <thead>
                <tr>
                  <td>序号</td>
                  <td>承包商</td>
                  <td>评分</td>
                </tr>
                </thead>
                <tbody>
                </tbody>
              </table>
            </div>
        </div>
      </div>
      <!-- 承包商红榜-->
      
      
       <!-- 承包商黑榜-->
      <div class="ui-panel ui-panel_primary">
        <div class="ui-panel-header"><span class="tt"><i class="icon_mod icon_mod_edit"></i>承包商黑榜（本年度不合格承包商TOP50）</span></div>
        <div class="ui-panel-body">
           <div class="statistics-panel-body" style="overflow: auto">
              <table class="ui-table ui-table-border-row" id="badTop20">
                <thead>
                <tr>
                  <td>序号</td>
                  <td>承包商</td>
                  <td>评分</td>
                </tr>
                </thead>
                <tbody>
                </tbody>
              </table>
            </div>
          
        </div>
      </div>
      <!--  承包商黑榜-->      
    </div>
  </div>
  </div>
  
  <!-- main -->
  <m:ajs_button operCode="transferProject"  funMethod="transfer_project('{0}','{1}')" context="移交" varName="project_transfer" />
  <m:ajs_button operCode="receiveProject"  funMethod="receive_project('{0}','{1}')" context="接收" varName="project_receive" />
  <%@include file="/page/common/script/main-js.jsp" %>
  <script type="text/javascript" src="<%=path%>/plug-in/h-ui/lib/echarts/3/echarts.min.js"></script>
   <script type="text/javascript" src="<%=path%>/plug-in/web/index/homePage/initChar.js"></script>
      
  <script type="text/javascript">
  $(function() {
	    $('select').iSelect() 
	    	  
	    var leftPanelWidth=($(window).height()-$(".homepage-left-container .ui-panel").eq(0).outerHeight()-194)/2;
		leftPanelWidth=leftPanelWidth<163?163:leftPanelWidth;
		$(".homepage-left-container .ui-itemlist,.homepage-left-container .statistics-panel-body").height(leftPanelWidth)

	    $(".homepage-right-container .statistics-panel-body").css('height',($(window).height()-136)/2+'px');
	    		   
	    
  });
	  
  function search(){
     var keyWord = $("#searchKeyWord").val();
     var searchType =  $("#searchOption").val()    
     window.location.href =  path + "/searchPage.do?keyWord="+keyWord+"&searchType="+searchType
  }

  function initBestTop20() {
		$.ajax({
			    url: path+"/evaluateRecordController/bestUnitTop20.do",
			    traditional:true,
			    dataType:'json',
			    data:{},
			    type:"post",
			    cache : false,
			    async : false,
			    success:function(data){
			    		if(data.status == "y" || data.status == "Y"){
			    			var html = '';
			    			var list = data.data;
			    			for (var i = 0; i < list.length; i++) {
			    				var url = path + "/evaluateRecordController/statistic/viewPage.do?unitId=" + list[i].unitId;
			    				html += "<tr><td>"+(i+1)+"</td><td><a href='"+url+"'>"+list[i].unitName+"</a></td><td>"+list[i].avgScore+"</td></tr>";
			    			}
			    			$("#bestTop20 tbody").html(html);
			    		}else{
			    			layer.msg(data.info,{icon: 2,time:2500});
			    		}
			       },
			     error : function(error) {
			            alert(error);
			       }
		  });
  }

  function initBadTop20() {
		$.ajax({
			    url: path+"/evaluateRecordController/badUnitTop20.do",
			    traditional:true,
			    dataType:'json',
			    data:{},
			    type:"post",
			    cache : false,
			    async : false,
			    success:function(data){
			    		if(data.status == "y" || data.status == "Y"){
			    			var html = '';
			    			var list = data.data;
			    			for (var i = 0; i < list.length; i++) {
			    				var url = path + "/evaluateRecordController/statistic/viewPage.do?unitId=" + list[i].unitId;
			    				html += "<tr><td>"+(i+1)+"</td><td><a href='"+url+"'>"+list[i].unitName+"</a></td><td>"+list[i].avgScore+"</td></tr>";
			    			}
			    			$("#badTop20 tbody").html(html);
			    		}else{
			    			layer.msg(data.info,{icon: 2,time:2500});
			    		}
			       },
			     error : function(error) {
			            alert(error);
			       }
		  });
  }

  
   </script>

 
</body>

</html>