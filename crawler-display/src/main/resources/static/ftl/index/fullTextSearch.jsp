<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="/page/common/tag/mytags.jsp" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>

<html>
 <head>
    <base href="<%=basePath%>">
    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
  	<meta name="renderer" content="webkit|ie-stand">
 	<meta http-equiv="Pragma" content="no-cache">
 	<meta http-equiv="Cache-Control" content="no-cache">
  	<meta http-equiv="Expires" content="0">
  	
  	<title></title>
 	
	 
  <link rel="stylesheet" type="text/css" href="<%=path%>/plug-in/main/css/H-ui.reset.css">
  <link rel="stylesheet" type="text/css" href="<%=path%>/plug-in/main/css/common.css">
  <link rel="stylesheet" type="text/css" href="<%=path%>/plug-in/main/css/styles.css">
	
	<style type="text/css">
	 em{font-size: 14px;color:#c00; }
	 
	
	 
	</style>

</head>
  
  
 <body style="background-color: #fff">
  
  <div class="ui-panel is-fixed">  
  
     <div class="ui-panel-header">
	    <span class="tt color-primary">综合检索</span>
	    <div class="ui-location">
	      <span class="ui-location-pre">当前位置：</span>
	      <ol class="ui-location-path">
	          <li><a href="<%=path%>/home.do">首页</a></li>
	          <li>综合检索</li>
	      </ol>
	    </div>
	  </div>


	
 <div class="ui-panel-body ui-page-container " style="padding:10px 10px 0 10px;top:48px">

 <!--  <form  class="ui-searchbar ui-searchbar-skin-primary size-s form_search"  method="post">
    <div class="ui-searchbar__bar" style="width:800px">
      <span class="ui-searchbar-ipt-wr"><input name="keyWord" id="searchVal" class="ui-searchbar-ipt" placeholder="请输入搜索关键字" type="text"></span>
      <span class="ui-searchbar-btn-wr"><button type="button" class="ui-searchbar-btn" onclick="goSearch(1,true)">查 询</button></span>    
    </div>
  </form> -->
  
    <form id="search-form" action="<%=path %>/search/fullTextSearch.do"  class="ui-searchbar-container" method="post">
           <label class="ui-searchbar-label">关键字：</label>
           <div class="ui-searchbar size-l" style="margin-left: 66px;">
             <div class="ui-searchbar__bar">
               <span class="ui-searchbar-ipt-wr no-icon"><input name="keyWord" id="searchVal" value="${searchVal}" type="text" class="ui-searchbar-ipt" placeholder="请输入搜索关键字"></span>
               <span class="ui-searchbar-btn-wr"><button type="button" class="ui-searchbar-btn ui-searchbar-btn-2" onclick="goSearch(1,true)"><i class="icon_search"></i> 查 询</button></span>
             </div>
             <span class="ui-searchbar-ext">
                 <input name="entityType" type="radio" value="project" id="project" ${entityType eq 'project'?'checked="checked"':'' }><label for="project">项目</label>
                 <input name="entityType" type="radio" value="project_part" id="project_part" ${entityType eq 'project_part'?'checked="checked"':'' }><label for="project_part">工程</label>
                 <input name="entityType" type="radio" value="project_contract" id="project_contract" ${entityType eq 'project_contract'?'checked="checked"':'' }><label for="project_contract">合同工程</label>
                 <input name="entityType" type="radio" value="project_archives" id="project_archives ${entityType eq 'project_archives'?'checked="checked"':'' }"><label for="project_archives">案卷</label>
                 <input name="entityType" type="radio" value="project_arch_file_info" id="project_arch_file_info" ${entityType eq 'project_arch_file_info'?'checked="checked"':'' }><label for="project_arch_file_info">卷内文件</label>
               </span>
           </div>
         </form>
  <div class="itemnums">为您检索到相关结果约<strong id="iTotalDisplayRecords">0</strong>条</div>
  <ul class="ui-itemlist type-4 result_list" id="results"> 
   
  
  </ul>
  <div class="searchresult_ft">
    <div class="pagesize">
      显示条数：
      <span style="display: inline-block;width:100px;vertical-align:middle">
        <select id="pageSize" class="ui-select ui-hide" lay-up ext-class="size-s">
          <option value="10">10条/页</option>
          <option value="20">20条/页</option>
          <option value="40">40条/页</option>
        </select>
      </span>
    </div>
    <div id="laypage1" class="laypage1"></div>
  </div>
</div>
	
 
 </div>
 

 <script type="text/html" id="resultTpl">
 {{each list as a}}
   <li class="itemlist-item" onclick="viewDetail('{{a.entityId}}')">
      <div class="item-c">
        <a href="javascript:void(0)">{{a.highContent}}</a>
      </div>
      <div>
        <div class="item-info">标题：{{a.title}}</div>
      </div>     
    </li>
  {{/each}}
</script>
	
 
			
<%@include file="/page/common/script/main-js.jsp" %>
<script type="text/javascript" src="<%=path%>/plug-in/main/libs/art-template.js"></script>
<script type="text/javascript" src="<%=path%>/plug-in/main/libs/laypage/laypage.js"></script>
<script type="text/javascript">


  template.defaults.escape=false;

  $(function () {
    $(".ui-select.ui-hide").iSelect();

    resizeHeight();
    $(window).resize(resizeHeight)
    function resizeHeight() {
      //固定高度计算
      $("#results").height($(".ui-page-container").height()-$(".form_search").height()-$(".itemnums").height()-$(".searchresult_ft").height()-20);
    }

   goSearch(1,true);


  });
  
  
  
  function goSearch(curr,init){
  
    var searchVal = $("#searchVal").val();
     if(searchVal){
 		curr = curr||1;
	  	$.ajax({
		    url: path+"/search/getFullTextSearchData.do",			   
		    dataType:'json',  
		    data:{
		    	"entityType":$("input[name=entityType]:checked").val(),
		    	"searchVal":$("#searchVal").val(),
		    	"pageSize":$("#pageSize").val(),
		    	"currentPage":curr
		    },
		    type:"post",
		    cache : false,  
		    async : false,  
		    success:function(res){	
		    
		      var html = template('resultTpl', {list: res.aaData});   				                     
			  $("#results").html(html);
		      $("#iTotalDisplayRecords").text(res.iTotalDisplayRecords);		    
		    
		      if(init){
		      
		      	laypage({
				      cont: 'laypage1',
				      pages: res.totalPage,
				      groups: 10, //连续显示分页数
				      curr: 1, //当前页
				      first: false,
				      last: false,
				      skin: "#008ee9",
				      prev: "上一页",
				      next: "下一页",
				      skin: '#20a583',
				      jump:function(obj, first) {
				        if (!first) {goSearch(obj.curr,false)}
				      }
				    });
		      }
		    	 
		    		    		    					         				           
		                		           
		     },  
		     error : function(error) {  
		            alert(error); 		            
		     } 
	  });
	  
	}else{
     	layer.msg('请输入关键字',{icon: 0,time:1000});
    }
  }
  
  
  
  function viewDetail(id){
	var type = $("input[name=entityType]:checked").val();
  	if(type == "project"){
  		view_project_model("查看项目详情","","",id);
  		
  	}else if(type == "project_part"){
  		view_part_model("查看施工许可证详情","","",id);
  		
  	}else if(type == "project_contract"){
  		view_contract_model("查看合同工程详情","","",id);
  		
  	}else if(type == "project_archives"){
  		view_archiver_model("查看案卷详情","","",id);
  		
  	}else if(type == "project_arch_file_info"){
  		view_fileInfo_model("查看卷内详情","","",id);
  		
  	}
  
  }  
  
  
  function view_project_model(title,w,h,id){
  	  var url = path+"/projectInfoController/projectInfoBridge.do?mode=view&open=layer&&proId="+id;
	  layer_full(title,url,w,h);
  }	
 	
  function view_part_model(title,w,h,id){
  	  var url = path+"/projectPartInfoController/getDetail.do?id="+id;
	  layer_full(title,url,w,h);
  }		
 	
   function view_contract_model(title,w,h,id){
  	  var url = path+"/projectContractInfoController/getDetail.do?id="+id;
	  layer_full(title,url,w,h);
  }		
 	
   function view_archiver_model(title,w,h,id){
	  var url = path+"/projectArchivesController/viewDetail.do?id="+id;
	  layer_full(title,url,w,h);
  }		
	
   function view_fileInfo_model(title,w,h,id){
	  var url = path+"/projectArchFileInfoController/viewDetail.do?id="+id +"&op='search'";
	  layer_full(title,url,w,h);
  }
  
  
</script>
		
</body>
  
  
  
</html>