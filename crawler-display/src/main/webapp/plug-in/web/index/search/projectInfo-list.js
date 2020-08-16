
 $(function(){
	 
	

	 $("#projectInfo_table").on('draw.dt',drawTable).DataTable($.extend({},DATA_TABLES.DEFAULT_OPTION,{
       "sAjaxSource": path+"/projectInfoController/getPageData.do",
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
    			{ "sTitle": "项目编码","width":"120px","mDataProp":"buildNo" }, 
    			{ "sTitle": "项目名称","width":"370px","mDataProp":"proName" },
    			{ "sTitle": "投资总额(万元)","width":"110px","mDataProp":"investAmount" }, 
    			{ "sTitle": "建设单位","width":"160px","mDataProp":"buildUnitName" },
    			{ "sTitle": "代建单位","width":"160px","mDataProp":"agentUnitName" },
			    { "sTitle": "登记日期","width":"100px","mDataProp":"registerTime" },		
                {
                   "sTitle": "操作", 
                   "mDataProp":"id" , 
                   "width":"100px",                             
                   "bSortable": false,
                   "sClass": "ext-c table-button-container",
                   "mRender": function (data, type, full) {                 	                                                  		 
                	    var html = ""; 
                	    if(typeof(model_check)!= "undefined"){
                 			 if(model_check.length>0){
                 			 	html+=model_check.format(data);
                 			 }                            			
                 		}	
                  		if(typeof(part_skip)!= "undefined"){
                 			 if(part_skip.length>0){
                 			 	html+=part_skip.format(data);
                 			 }	                          			
                 		}
                  		
                  	  return html;
                   }
                }
           ],        
           "fnServerParams" : function (aoData) {
					aoData.push(
					{ "name": "buildUnitId", "value": $("#buildUnitId").val() },
					{ "name": "agentUnitId", "value": $("#agentUnitId").val() },
					{ "name": "proName", "value": $("#proName").val() },
					{ "name": "proName", "value": $("#proName").val() },
					{ "name": "buildNo", "value": $("#buildNo").val() }
					
					
					);				
			 }
			
			
			
			
     }));

	 
	 $("#proSrc").on("change",function(){
		 $("#projectInfo_table").DataTable().draw(signal);			
	 });
	 
		
	});

	
	


	function check_model(title,id,w,h){
	     var url = path+"/projectInfoController/skipCheckProjectInfo.do?id="+id;
	     layer.open({
		     type:2,
		     shade:0.3,
		     shadeClose:true,
		     area:["55%","70%"],
		     title:'查看项目详情',
		     content:url,
		     skin:"layer-skin-default"
		   });
	}	
	
	
	
	//工程信息
	function skip_part(title,id){
       var url = path+"/index/viewProjectPart.do?proId="+id;
       window.location.href=url;
	}
	

	
	
 	function goSearch(signal){			   
		 $("#projectInfo_table").DataTable().draw(signal);					
	 }
	  
