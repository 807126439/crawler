
 $(function(){


	 $("#projectPartInfo_table").on('draw.dt',drawTable).DataTable($.extend({},DATA_TABLES.DEFAULT_OPTION,{
       "sAjaxSource": path+"/index/getProjectPartPageData.do",
       "sServerMethod": "post",
       "bServerSide": true, //是否启动服务器端数据导入        
       aaSorting: [
         //默认第几个排序
         [1, "desc"]
       ], 
       sScrollY:true,
	   sScrollX:true,
	   bScrollCollapse:true,
       "aoColumns": [
   			   DATA_TABLES.COLUMN.CHECKBOX,
   			    { "sTitle": "工程编号","width":"200px","mDataProp":"partNo" }, 
    			{ "sTitle": "工程名称","width":"350px","mDataProp":"partName" }, 
    			{ "sTitle": "工程类型","width":"100px","mDataProp":"engTypeName" }, 
     			{ "sTitle": "工程金额(万元)","width":"120px","mDataProp":"partAmount" }, 
    			{ "sTitle": "承包商","width":"200px","mDataProp":"contractorUnitName" }, 
    			{ "sTitle": "登记时间","width":"120px","mDataProp":"registerTime"}
//                {
//                   "sTitle": "操作", 
//                   "mDataProp":"id" , 
//                   "width":"120px",                             
//                   "bSortable": false,
//                   "sClass": "ext-c table-button-container",
//                   "mRender": function (data, type, full) {                 	                                                  		 
//                	    var html = "";
////                	    if(typeof(evaluateRecord_view)!= "undefined"){
////                  			 if(evaluateRecord_view.length>0){
////                  			 	html+=evaluateRecord_view.format(full.id);
////                  			 }                            			
////                     	}
////                	    
////    	    
////                  		   
////
////                  		// 住建局查看履约评价
////                  		if(typeof(adminEvaluateRecord_view)!= "undefined"){
////                 			 if(adminEvaluateRecord_view.length>0){
////                 			 	html+=adminEvaluateRecord_view.format(data);
////                 			 }	                          			
////                 		}
////
////                  		// 建设单位查看履约评价
////                  		if(typeof(buildUnitEvaluateRecord_view)!= "undefined"){
////                 			 if(buildUnitEvaluateRecord_view.length>0){
////                 			 	html+=buildUnitEvaluateRecord_view.format(data);
////                 			 }	                          			
////                 		}
////                  		// 代建单位查看履约评价
////                  		if(typeof(agentUnitEvaluateRecord_view)!= "undefined"){
////                 			 if(agentUnitEvaluateRecord_view.length>0){
////                 			 	html+=agentUnitEvaluateRecord_view.format(data);
////                 			 }	                          			
////                 		}
//              	                             	                             	
//                  	  return html;
//                   }
//                }
           ],        
           "fnServerParams" : function (aoData) {
					aoData.push(
					{ "name": "partName", "value": $("#partName").val() },
					{ "name": "proId", "value": $("#proId").val() },
					{ "name": "buildUnitId", "value": $("#buildUnitId").val() },
					{ "name": "agentUnitId", "value": $("#agentUnitId").val() } 
					
					);				
			 }
			
			
			
			
     }));

		
	});


	
	// 住建局查看履约评价
	function adminView_EvaluateRecord(partId){
		var url = path + "/evaluateRecordController/admin/viewPage.do?partId="+partId;
		window.location.href = url;
	}
	// 建设单位查看履约评价
	function buildUnitView_EvaluateRecord(partId){
		var url = path + "/evaluateRecordController/buildUnit/viewPage.do?partId="+partId;
		window.location.href = url;
	}
	// 代建单位查看履约评价
	function agentUnitview_EvaluateRecord(partId){
		var url = path + "/evaluateRecordController/agentUnit/viewPage.do?partId="+partId;
		window.location.href = url;
	}
	
	

	
 	function goSearch(signal){			   
		 $("#projectPartInfo_table").DataTable().draw(signal);					
	 }
	  
