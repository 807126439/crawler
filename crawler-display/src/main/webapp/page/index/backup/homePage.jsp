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
 
</head>

<body>
  <div class="ui-page-container">
  <div class="homepage-maincontainer cl">
    <div class="homepage-left-container">
       <!-- 综合检索 -->
      <div class="ui-panel">
        <div class="ui-panel-header"><span class="tt"><!-- <i class="icon_mod icon_mod_search"></i> --></span></div>
        <div class="ui-panel-body" id="searchBody1">
          <form id="search-form" action="<%=path %>/search/fullTextSearch.do"  class="ui-searchbar-container" method="post">
            <label class="ui-searchbar-label"></label>
            <div class="ui-searchbar size-l" style="margin-left: 66px;">
              <div class="ui-searchbar__bar">
               <!--  <span class="ui-searchbar-ipt-wr no-icon"><input name="searchVal" id="searchVal" type="text" class="ui-searchbar-ipt" placeholder="请输入搜索关键字"></span>
                <span class="ui-searchbar-btn-wr"><button type="button" class="ui-searchbar-btn ui-searchbar-btn-2" onclick="submitSearch()"><i class="icon_search"></i> 查 询</button></span> -->
              </div>
             <!--  <span class="ui-searchbar-ext">
                  <input name="entityType" type="radio" value="project" id="project" checked="checked"><label for="project">项目</label>
                  <input name="entityType" type="radio" value="project_part" id="project_part"><label for="project_part">工程</label>
                </span> -->
            </div>
          </form>
        </div>
      </div> 


      <!-- 数据统计 -->
      <div class="ui-panel">
        <div class="ui-panel-header"><span class="tt"><i class="icon_mod icon_mod_statistics"></i>数据统计</span><!--<a href="#" class="ui-panel-more">更多</a>--></div>
        <div class="statistics-panel-container">
          <div class="statistics-panel">
            <div class="statistics-panel-header">
              <span class="tt">承包商单个项目履约结果</span>
              <div class="f-r" style="width: 80px">
                <select class="ui-select size-mini" ext-class="size-mini" id="char1_year">
                	<c:forEach begin="${nowYear-10}" end="${nowYear}" step="1" var="year">
                		<c:choose>
                			<c:when test="${nowYear == year}">
                				<option selected="selected">${year}</option>
                			</c:when>
                			<c:otherwise>
                				<option>${year}</option>
                			</c:otherwise>
                		</c:choose>
                	</c:forEach>
                </select>
              </div>
            </div>
            <div class="statistics-panel-body" id="char1"></div>
          </div>
          <div class="statistics-panel">
            <div class="statistics-panel-header">
              <span class="tt">承包商多个项目年度履约结果</span>
              <div class="f-r" style="width: 80px">
                <select class="ui-select size-mini" ext-class="size-mini" id="char2_year">
                  <c:forEach begin="${nowYear-10}" end="${nowYear}" step="1" var="year">
                		<c:choose>
                			<c:when test="${nowYear == year}">
                				<option selected="selected">${year}</option>
                			</c:when>
                			<c:otherwise>
                				<option>${year}</option>
                			</c:otherwise>
                		</c:choose>
                	</c:forEach>
                </select>
              </div>
            </div>
            <div class="statistics-panel-body" id="char2"></div>
          </div>
          <div class="statistics-panel">
            <div class="statistics-panel-header">
              <span class="tt">承包商单位平均履约结果</span>
              <div class="f-r" style="width: 80px">
             
              </div>
            </div>
            <div class="statistics-panel-body" id="char3" style="height: 100%"></div>
          </div>
          
          <div class="statistics-panel">
            <div class="statistics-panel-header">
              <span class="tt">承包商异议数结果</span>
              <div class="f-r" style="width: 80px">
                <select class="ui-select size-mini" ext-class="size-mini" id="char4_year">
                  <c:forEach begin="${nowYear-10}" end="${nowYear}" step="1" var="year">
                		<c:choose>
                			<c:when test="${nowYear == year}">
                				<option selected="selected">${year}</option>
                			</c:when>
                			<c:otherwise>
                				<option>${year}</option>
                			</c:otherwise>
                		</c:choose>
                	</c:forEach>
                </select>
              </div>
            </div>
            <div class="statistics-panel-body" id="char4"></div>
          </div>
        </div>
      </div>
      <!-- 数据统计 -->

    </div>
    <div class="homepage-right-container">
      <!-- 待办事项 -->
      <div class="ui-panel ui-panel_primary">
        <div class="ui-panel-header"><span class="tt"><i class="icon_mod icon_mod_edit"></i>待办事项</span></div>
        <div class="ui-panel-body">
        
          
          
            <div class="ui-tabpanels" style="height:300px;">        
            	<div class="ui-tabpanel">
            		<div class="ui-panel-body">
            		 	<table id="notTransfer_table" class="ui-table ui-table-border-row ui-table-border-col ui-table-hover table_datatable" width="100%">
            		 	</table>
            		</div>   
            	</div>
            	<div class="ui-tabpanel">
            		 <div class="ui-panel-body">
            		 	<table id="notReceive_table" class="ui-table ui-table-border-row ui-table-border-col ui-table-hover table_datatable" width="100%"></table>
            		</div>  
            	</div>
            </div>
        </div>
      </div>
      
      
       <div class="ui-panel ui-panel_primary" id="kfPanel">
        <div class="ui-panel-header"><span class="tt"><i class="icon_mod icon_mod_equalizer"></i></span></div>
        <div class="ui-panel-body" style="overflow: auto;height: 283px;">
        	 <div class="storehouse-blocks size-mini">
	            	 
        	 </div>
        </div>
      </div>
    
    </div>
  </div>
</div>
  <!-- main -->
  <m:ajs_button operCode="transferProject"  funMethod="transfer_project('{0}','{1}')" context="移交" varName="project_transfer" />
  <m:ajs_button operCode="receiveProject"  funMethod="receive_project('{0}','{1}')" context="接收" varName="project_receive" />
  <%@include file="/page/common/script/main-js.jsp" %>

   <script type="text/javascript" src="<%=path%>/plug-in/h-ui/lib/echarts/3/echarts.min.js"></script>
      
  <script type="text/javascript">
  $(function() {
	    //高度计算
	    initHeight();
	    $(window).resize(initHeight);
	    function initHeight() {
	      var diff=$(window).height()-754;
	      diff=diff<0?0:diff;
	      diff=diff>100?100:diff;
	      $(".statistics-panel-body").height(210+diff/2);
	      $("#kfPanel .ui-panel-body").height(283+diff);
	    }
	
	    $(".ui-navtag").each(function(){
	    	tabPage(this,"active",$(this).next(".ui-tabpanels"),"current")
	    })
	    
	    
	/*     $(".storehouse-room").click(function () {
	    	window.location.href = path + "/storageShelfController/viewStorageFrameTree.do?defaultRowId="+$(this).attr("data-id")
	    })
	     */
	     initUnitAvgScoreStat()
  });
	  
  function submitSearch(){
     var searchVal = $("#searchVal").val();
     if(searchVal){
       $("#search-form").submit();
     }else{
     	layer.msg('请输入搜索关键字',{icon: 0,time:1000});
     }	   	     
  }
  
  function initUnitAvgScoreStat(){
  	$.ajax({
	    url: path+"/evaluateRecordController/statUnitAvgScore.do",		
	    dataType:'json',  
	    data:{			    	
	    },
	    type:"post",
	    cache : false,  
	    async : true,  
	    success:function(res){	
	    		if(res.status == "y" || res.status == "Y"){
	    			var data = res.data;
	    			
	    			var dom = document.getElementById("char3");
					var myChart = echarts.init(dom);
				
					option = null;
										
					option = {
					    /*title: {
					        text: '',
					        subtext: ''
					    },*/
					    tooltip: {
					        trigger: 'axis',
					        axisPointer: {
					            type: 'shadow'
					        }
					    },
					    
					    grid: {
					        left: '3%',
					        right: '4%',
					        bottom: '3%',
					        containLabel: true
					    },
					    xAxis: {
					        type: 'value',
					        boundaryGap: [0, 0.01]
					    },
					    yAxis: {
					        type: 'category',
					        data: data.unitNames
					    },
					    series: [
					        {
					            name: '平均分',
					            type: 'bar',
					            data: data.avgScores
					        }
					    ]
					};
					;
					if (option && typeof option === "object") {
					    myChart.setOption(option, true);
					}
	    			
	    			
	    			
	    		}else{
	    			layer.msg(res.info,{icon: 2,time:2500});
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