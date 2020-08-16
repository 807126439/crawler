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
 	
	<%@include file="/page/common/script/main-css.jsp" %>

  </head>
  
  
  <body>
		
	 <div class="ui-panel">
	 <%@include file="/page/common/nav/navLine.jsp"%>
	  <div class="ui-panel-body">
	
	    <ul class="ui-navtag ui-navtag_secondary">
	      <li class="active">项目查询</li>
	      <li>施工许可工程查询</li>
	      <li>合同工程查询</li>
	      <li>案卷查询</li>
	      <li>卷内查询</li>
	    </ul>
	    <div class="ui-tabpanels search-form-panel" style="margin-bottom: 10px;padding-bottom: 0px;">
	      <div class="ui-tabpanel current">
	        <form class="ui-table-actions">
	          <div class="ui-table-actions-left">
	            <label>项目名称：</label>
	            <span><input id="proName" name="proName" type="text" class="ui-input size-s"></span>
	            	
	            <label>单位工程名称：</label>
	            <span><input id="proPartName" name="proPartName" type="text" class="ui-input size-s"></span>		            	
	            	
	            	 
	            <label>档号：</label>
	            <span><input id="dno" name="dno" type="text" class="ui-input size-s"></span>	 
	            	 
	            <label style="margin-left:10px;">建设单位：</label>
	            <span><input id="buildUnit" name="buildUnit" type="text" class="ui-input size-s"></span>
	            
	            <label style="margin-left:10px;">设计单位：</label>
	            <span><input id="designUnit" name="designUnit"  type="text" class="ui-input size-s"></span>
	            
	            <label style="margin-left:10px;">勘察单位：</label>
	            <span><input id="survetUnit" name="survetUnit" type="text" class="ui-input size-s"></span>
	            	           
	            <label style="margin-left:10px;">立项批准文号：</label>
	            <span><input id="approvalNo" name="approvalNo" type="text" class="ui-input size-s"></span>
	            
	            <label style="margin-left:10px;">规划许可证号：</label>
	            <span><input id="planPermNo" name="planPermNo" type="text" class="ui-input size-s"></span>
	            
	             <label style="margin-left:10px;">用地规划许可证号：</label>
	            <span><input id="landPlanPermNo" name="landPlanPermNo" type="text" class="ui-input size-s"></span>
	            
	            
	            <button type="button" class="ui-btn size-s btn_search">查 询</button>
	          </div>
	        </form>
	      </div>
	      <div class="ui-tabpanel">
	        <form class="ui-table-actions">
	          <div class="ui-table-actions-left">
	            <label>工程序号：</label>
	            <span><input id="partGcid" name="partGcid" type="text" class="ui-input size-s"></span>
	          
	          
	            <label>施工许可工程名称：</label>
	            <span><input id="sgProName" name="sgProName" type="text" class="ui-input size-s"></span>
	            	           
	            <label style="margin-left:10px;">设计单位：</label>
	            <span><input id="sgDesignUnit" name="sgDesignUnit"   type="text" class="ui-input size-s"></span>
	            
	            <label style="margin-left:10px;">施工单位：</label>
	            <span><input id="sgConstructUnit" name="sgConstructUnit"  type="text" class="ui-input size-s"></span>
	            
	            <label style="margin-left:10px;">监理单位：</label>
	            <span><input id="sgCheckUnit" name="sgCheckUnit"  type="text" class="ui-input size-s"></span>
	            
	            <button type="button" class="ui-btn size-s btn_search">查 询</button>
	          </div>
	        </form>
	      </div>
	       <div class="ui-tabpanel">
	        <form class="ui-table-actions">
	          <div class="ui-table-actions-left">
	            <label>合同工程名称：</label>
	            <span><input id="htProName" name="htProName" type="text" class="ui-input size-s"></span>
	            	            	           
	            <label style="margin-left:10px;">设计单位：</label>
	            <span><input id="htDesignUnit" name="htDesignUnit"   type="text" class="ui-input size-s"></span>
	            
	            <label style="margin-left:10px;">施工单位：</label>
	            <span><input id="htConstructUnit" name="htConstructUnit"  type="text" class="ui-input size-s"></span>
	            
	            <label style="margin-left:10px;">监理单位：</label>
	            <span><input id="htCheckUnit" name="htCheckUnit"  type="text" class="ui-input size-s"></span>
	            
	            <button type="button" class="ui-btn size-s btn_search">查 询</button>
	          </div>
	        </form>
	      </div>
	      <div class="ui-tabpanel">
	        <form class="ui-table-actions">
	          <div class="ui-table-actions-left">
	            <label>档号：</label>
	            <span><input id="paDno" name="paDno" type="text" class="ui-input size-s"></span>
	            <label style="margin-left:10px;">项目名称：</label>
	            <span><input id="paProName" name="paProName" type="text" class="ui-input size-s"></span>
	            <label style="margin-left:10px;">案卷题名：</label>
	            <span><input id="paTitle" name="paTitle" type="text" class="ui-input size-s"></span>
	            <label style="margin-left:10px;">存放位置：</label>
	            <span><input id="paLocation" name="paLocation"type="text" class="ui-input size-s"></span>	      
	            <button type="button" class="ui-btn size-s btn_search">查 询</button>
	          </div>
	        </form>
	      </div>
	      <div class="ui-tabpanel">
	        <form class="ui-table-actions">
	          <div class="ui-table-actions-left">
	            <label>档号：</label>
	            <span><input id="fiDno" name="fiDno" type="text" class="ui-input size-s"></span>
	            <label style="margin-left:10px;">项目名称：</label>
	            <span><input id="fiProName" name="fiProName" type="text" class="ui-input size-s"></span>
	            <label style="margin-left:10px;">文件题名：</label>
	            <span><input id="fiFileTitle" name="fiFileTitle"  type="text" class="ui-input size-s"></span>
	          
	            <button type="button" class="ui-btn size-s btn_search">查 询</button>
	          </div>
	        </form>
	      </div>
	    </div>
	    <table class="ui-table ui-table-border-row ui-table-border-col ui-table-hover table_datatable" fixtable width="100%" id="dataTable" style="display: none">
	    </table>
	  </div>
	</div>

	<m:ajs_button operCode="getProjectInfoDetail"  funMethod="view_project_model('查看项目详情','','','{0}')" context="查看" varName="project_model_view" />
	<m:ajs_button operCode="getProjectPartInfoDetail"  funMethod="view_part_model('查看施工许可证详情','','','{0}')" context="查看" varName="part_model_view" />
	<m:ajs_button operCode="getProjectContractInfoDetail"  funMethod="view_contract_model('查看合同工程详情','','','{0}')" context="查看" varName="contract_model_view" />	
	<m:ajs_button operCode="viewProjectArchivesDetail"  funMethod="view_archiver_model('查看案卷详情','','','{0}')" context="查看" varName="archiver_model_view" />	
	<m:ajs_button operCode="viewProjectArchFileInfoDetail"  funMethod="view_fileInfo_model('查看卷内详情','','','{0}')" context="查看" varName="fileInfo_model_view" />	
		
	<%@include file="/page/common/script/main-js.jsp" %>
	
	<script type="text/javascript">
	  var currTable;
	  var currtab = -1;
	  $(function() {
	    tabPage2(".ui-navtag","active",".ui-tabpanels","current",function(index,obj){
	     if(currTable){
	        currTable.destroy();//摧毁当前表格
	        $("#dataTable").empty()
	        currTable = null;
	      }else{
	        $("#dataTable").show();
	      }

	
	    });
	
	    $("#dataTable").on('draw.dt', drawTable)
	
	    //查询
	    $("body").on("click",".btn_search",function () {
	    	          
	      var $form = $(this).closest("form");
	      var formData = $form.serializeArray();
  
    	  var hasText = false; 
	      $.each(formData, function(i, field){

	         if(field.value && field.value.length>0){
	           hasText=true;
	         }
	     });
	      
	      if(!hasText){
	           layer.msg('请至少输入一个查询条件',{icon: 0,time:1000});
	           return;
	      }
	    
	      if(!currTable){
	        $("#dataTable").show();	
	      }
	
	      var index=$("form.ui-table-actions").index($form);
	      
	      if(currtab == index){
	        goSearch(true,index);
	      }else{
	         window["initTable"+(index+1)]();
	      }
	     currtab =index;
	     
	    })
	
	  });
	
	
	 function goSearch(signal,index){	
 	    if(currTable){
 	    	currTable.draw(signal);	
 	    }else{
 	    	window["initTable"+(index+1)]();
 	    }		   
					
	 }
	
	 //项目查询
  function initTable1(searchData) {
    currTable = $("#dataTable").DataTable($.extend({}, DATA_TABLES.DEFAULT_OPTION, {
      "sAjaxSource": path+"/projectInfoController/getPageData.do",
       "sServerMethod": "post",
       "bServerSide": true, //是否启动服务器端数据导入        
       aaSorting: [
         //默认第几个排序
         [0, "desc"]
       ], 
      sScrollY: true,
      sScrollX: true,
      bScrollCollapse: true,
      sPaginationType: "input",
     "aoColumns": [
    			{ "sTitle": "序号","width":"45px","mDataProp":"sort" }, 
    			{ "sTitle": "档号","width":"150px","mDataProp":"dno" },
    			{ "sTitle": "项目名称","width":"200px","mDataProp":"proName" },
    			{ "sTitle": "建设单位","width":"150px","mDataProp":"buildUnit" }, 
    			{ "sTitle": "创建时间","width":"150px","mDataProp":"gmtCreate" },   	
                {
                   "sTitle": "操作", 
                   "mDataProp":"id" , 
                   "width":"60px",                             
                   "bSortable": false,
                   "sClass": "ext-c table-button-container",
                   "mRender": function (data, type, full) {                 	                                                  		 
                	    var html = ""; 
                	    if(typeof(project_model_view)!= "undefined"){
                 			 if(project_model_view.length>0){
                 			 	html+=project_model_view.format(data);
                 			 }                            			
                 		}
                  	
           	                             	                             	
                  	  return html;
                   }
                }
           ],        
           "fnServerParams" : function (aoData) {
					aoData.push(
					{ "name": "proName", "value": $("#proName").val() },
					{ "name": "partName", "value": $("#proPartName").val() },
					{ "name": "dno", "value": $("#dno").val() },
					{ "name": "buildUnit", "value": $("#buildUnit").val() },
					{ "name": "designUnit", "value": $("#designUnit").val() },
					{ "name": "survetUnit", "value": $("#survetUnit").val() },
					{ "name": "approvalNo", "value": $("#approvalNo").val() },
					{ "name": "landPlanPermNo", "value": $("#landPlanPermNo").val() },
					{ "name": "planPermNo", "value": $("#planPermNo").val() },
					{ "name": "dataType", "value": "recved" }
					);				
			 }
    }));
  }

  //施工许可证信息查询
  function initTable2(searchData) {
    currTable = $("#dataTable").DataTable($.extend({}, DATA_TABLES.DEFAULT_OPTION, {
      "sAjaxSource": path+"/projectPartInfoController/getPageData.do",
       "sServerMethod": "post",
       "bServerSide": true, //是否启动服务器端数据导入        
       aaSorting: [
         //默认第几个排序
         [1, "desc"]
       ], 
       sScrollY:true,
	   sScrollX:true,
	   bScrollCollapse:true,
	   sPaginationType: "input",
       "aoColumns": [
    			{ "sTitle": "序号","width":"45px","mDataProp":"sort" }, 
    			//{ "sTitle": "档号","width":"150px","mDataProp":"dno" },
    			{ "sTitle": "项目名称","width":"200px","mDataProp":"mainProName" },
    			{ "sTitle": "工程序号","width":"100px","mDataProp":"gcid" },   			   			
    			{ "sTitle": "施工许可工程名","width":"200px","mDataProp":"proName" }, 
    			{ "sTitle": "施工许可文件号","width":"200px","mDataProp":"sgxkNo" }, 
    			{ "sTitle": "创建时间","width":"150px","mDataProp":"gmtCreate" }, 
                {
                   "sTitle": "操作", 
                   "mDataProp":"id" , 
                   "sClass": "ext-c table-button-container",
                   "width":"60px",                             
                   "bSortable": false,
                   "mRender": function (data, type, full) {                 	                                                  		 
                	    var html = "";                             		
                  		if(typeof(part_model_view)!= "undefined"){
                  			 if(part_model_view.length>0){
                  			 	html+=part_model_view.format(data);
                  			 }                            			
                  		}	                              		
                  	                	                             	
                  	  return html;
                   }
                }
           ],        
           "fnServerParams" : function (aoData) {
					aoData.push(
				    { "name": "proName", "value": $("#sgProName").val() },
				    { "name": "gcid", "value": $("#partGcid").val() },
				    { "name": "dno", "value": $("#sgDno").val() },
					{ "name": "constructUnit", "value": $("#sgConstructUnit").val() },
					{ "name": "designUnit", "value": $("#sgDesignUnit").val() },
					{ "name": "checkUnit", "value": $("#sgCheckUnit").val() },
					{ "name": "dataType", "value": "recved" }
					
					);				
			 }
			
    }));
  }


  function initTable3() {
    currTable = $("#dataTable").DataTable($.extend({}, DATA_TABLES.DEFAULT_OPTION, {
       "sAjaxSource": path+"/projectContractInfoController/getPageData.do",
       "sServerMethod": "post",
       "bServerSide": true, //是否启动服务器端数据导入        
       aaSorting: [
         //默认第几个排序
         [0, "desc"]
       ], 
       sScrollY:true,
	   sScrollX:true,
	   bScrollCollapse:true,
	   sPaginationType: "input",
       "aoColumns": [
    			{ "sTitle": "序号","width":"45px","mDataProp":"sort" }, 
    		    { "sTitle": "项目名称","width":"200px","mDataProp":"mainProName" },
    			{ "sTitle": "施工许可工程名","width":"200px","mDataProp":"partName" }, 
    			{ "sTitle": "合同工程名称","width":"200px","mDataProp":"proName" }, 
    			{ "sTitle": "设计单位","width":"150px","mDataProp":"designUnit" }, 
    			{ "sTitle": "施工单位","width":"150px","mDataProp":"constructUnit" }, 
    			{ "sTitle": "监理单位","width":"150px","mDataProp":"checkUnit" }, 
    			/*{ "sTitle": "startTime","width":"","mDataProp":"startTime" }, 
    			{ "sTitle": "endTime","width":"","mDataProp":"endTime" }, */
    			{ "sTitle": "创建时间","width":"150px","mDataProp":"gmtCreate" }, 
                {
                   "sTitle": "操作", 
                   "mDataProp":"id" , 
                   "width":"120px", 
                   "sClass": "ext-c table-button-container",                            
                   "bSortable": false,
                   "mRender": function (data, type, full) {                 	                                                  		 
                	    var html = "";                             		
                  		if(typeof(contract_model_view)!= "undefined"){
                  			 if(contract_model_view.length>0){
                  			 	html+=contract_model_view.format(data);
                  			 }                            			
                  		}	                              		
                  		                  	                             	
                  	  return html;
                   }
                }
           ],        
           "fnServerParams" : function (aoData) {
					aoData.push(
					{ "name": "proName", "value": $("#htProName").val() },
					{ "name": "constructUnit", "value": $("#htConstructUnit").val() },
					{ "name": "designUnit", "value": $("#htDesignUnit").val() },
					{ "name": "checkUnit", "value": $("#htCheckUnit").val() },
					{ "name": "dataType", "value": "recved" }
					
					);				
			 }
    }));
  }


  //案卷查询
  function initTable4(searchData) {
	  currTable = $("#dataTable").DataTable($.extend({}, DATA_TABLES.DEFAULT_OPTION, {
	      //自定义配置，扩展配置
	      "sAjaxSource": path+"/projectArchivesController/getPageData.do",
	      "sServerMethod": "post",
	      "bServerSide": true, //是否启动服务器端数据导入
	      aaSorting: [
	         //默认第几个排序
	         [0, "desc"]
	       ], 
	      sScrollY: true,
	      sScrollX: true,
	      bScrollCollapse: true,
	      sPaginationType: "input",
	      "aoColumns":[
	   		{ "sTitle": "序号","width":"45px","mDataProp":"id",
	   		  "mRender": function (data, type, full) {                 	                                                  		 
             	   
               	  return full.sort;
                }	   		
	   		
	   		 },
	        { "sTitle": "档号","width":"110px","mDataProp":"dno" }, 
	        { "sTitle": "项目名称","width":"150px","mDataProp":"proName",bSortable  : false },
	        { "sTitle": "案卷题名","width":"150px","mDataProp":"title",bSortable  : false }, 
	        { "sTitle": "存放位置","width":"180px","mDataProp":"location",bSortable  : false },
	        { "sTitle": "卷内页数","width":"120px","mDataProp":"pageQt",bSortable  : false }, 
	        {
                "sTitle": "操作", 
                "mDataProp":"id" , 
                "width":"100px",                             
                "bSortable": false,
                "sClass": "ext-c table-button-container",
                "mRender": function (data, type, full) {                 	                                                  		 
             	    var html = "";                             		
             	    if(typeof(archiver_model_view)!= "undefined"){
              			 if(archiver_model_view.length>0){
              			 	html+=archiver_model_view.format(data);
              			 }                            			
              		}
               	  return html;
                }
             }
	      ],
	      "fnServerParams" : function (aoData) {
				aoData.push(
				{ "name": "proName", "value": $("#paProName").val() },
				{ "name": "title", "value": $("#paTitle").val() },
				{ "name": "dno", "value": $("#paDno").val() },
				{ "name": "location", "value": $("#paLocation").val() },
				{ "name": "pageQt", "value": $("#paPageQt").val() },
				{ "name": "dataType", "value": "recved" }
				);				
		 }
	    }));
  }

  //文件查询
  function initTable5(searchData) {
	  currTable = $("#dataTable").DataTable($.extend({}, DATA_TABLES.DEFAULT_OPTION, {
	      //自定义配置，扩展配置
	      "sAjaxSource": path+"/projectArchFileInfoController/getPageData.do",
	      "sServerMethod": "post",
	      "bServerSide": true, //是否启动服务器端数据导入
	      aaSorting: [
	         //默认第几个排序
	         [0, "desc"]
	       ], 
	      sScrollY: true,
	      sScrollX: true,
	      bScrollCollapse: true,
	      sPaginationType: "input",
	      "aoColumns":[
	   		{ "sTitle": "序号","width":"45px","mDataProp":"sort" },
	   		{ "sTitle": "档号","width":"110px","mDataProp":"dno" }, 
	   		{ "sTitle": "项目名称","width":"150px","mDataProp":"proName",bSortable  : false },
			{ "sTitle": "文件题名","width":"150px","mDataProp":"fileTitle",bSortable  : false }, 
			{ "sTitle": "责任者","width":"130px","mDataProp":"author",bSortable  : false }, 
			{ "sTitle": "页数","width":"120px","mDataProp":"pageNo",bSortable  : false }, 
	        {
                "sTitle": "操作", 
                "mDataProp":"id" , 
                "width":"100px",                             
                "bSortable": false,
                "sClass": "ext-c table-button-container",
                "mRender": function (data, type, full) {                 	                                                  		 
             	    var html = "";                             		
             	    if(typeof(fileInfo_model_view)!= "undefined"){
              			 if(fileInfo_model_view.length>0){
              			 	html+=fileInfo_model_view.format(data);
              			 }                            			
              		}
               	  return html;
                }
             }
	      ],
	      "fnServerParams" : function (aoData) {
				aoData.push(
				{ "name": "dno", "value": $("#fiDno").val() },
				{ "name": "proName", "value": $("#fiProName").val() },
				{ "name": "fileTitle", "value": $("#fiFileTitle").val() },
				{ "name": "author", "value": $("#fiAuthor").val() },
				{ "name": "pageNo", "value": $("#fiPageNo").val() },
				{ "name": "dataType", "value": "recved" }
				);				
		 }
	    }));
  }
  
  
  function view_project_model(title,w,h,id){
  	  var url = path+"/projectInfoController/projectInfoBridge.do?mode=view&open=layer&proId="+id;
	  layer_full(title,url,w,h);
  }	
 	
  function view_part_model(title,w,h,id){
  	  var url = path+"/projectPartInfoController/projectPartInfoBridge.do?partId="+id+"&mode=view";
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
	  var url = path+"/projectArchFileInfoController/viewDetail.do?id="+id +"&op='recved'";
	  layer_full(title,url,w,h);
  }
	</script>
			

		
</body>
  
  
  
</html>