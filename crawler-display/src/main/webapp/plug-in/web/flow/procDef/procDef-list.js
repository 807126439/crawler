
 $(function(){
	 iSelect({elem:".ui-select.ui-hide",extendClass:'size-s'});//select皮肤

	 $("#procDef_table").on('draw.dt',drawTable).DataTable($.extend({},DATA_TABLES.DEFAULT_OPTION,{
       "sAjaxSource": path+"/procDefController/getPageData.do",
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
    			{ "sTitle": "序号","width":"50px","mDataProp":"sort" }, 
    			{ "sTitle": "流程码","width":"140px","mDataProp":"processCode" }, 
    			{ "sTitle": "流程名称","width":"","mDataProp":"processName" }, 
    			{ "sTitle": "描述","width":"","mDataProp":"description" }, 
    			{ "sTitle": "编号模板","width":"","mDataProp":"numbTemplate" }, 
    			{ "sTitle": "是否开启","width":"80px","mDataProp":"status",
                    "mRender": function (data, type, full) {
             		  if(data == true){
             		  	return " <span class=\"label label-success radius\">是</span>";
             		  }else{
             		  	return " <span class=\"label label-defaunt radius\">否</span>";
             		  }	

                  }
               
                },                
    			{ "sTitle": "修改者","width":"160px","mDataProp":"updateBy" }, 
    			{ "sTitle": "修改时间","width":"160px","mDataProp":"gmtModified" }, 
                {
                   "sTitle": "操作", 
                   "mDataProp":"id" , 
                   "width":"200px",                             
                   "bSortable": false,
                   "mRender": function (data, type, full) {                 	                                                  		 
                	    var html = "<div class=\"ui-btn-group\">";                              		
                  		if(typeof(model_edit)!= "undefined"){
                  			 if(model_edit.length>0){
                  			 	html+=model_edit.format(data);
                  			 }                            			
                  		}
                  		if(typeof(process_design)!= "undefined"){
                 			 if(process_design.length>0){
                 			 	html+=process_design.format(data);
                 			 }                            			
                 		}                		
                  		
                  		if(typeof(model_del)!= "undefined"){
                  			 if(model_del.length>0){
                  			 	html+=model_del.format(data);
                  			 }	                          			
                  		}
              	                             	                             	
                  	  return html+"</div>";
                   }
                }
           ],        
           "fnServerParams" : function (aoData) {
					aoData.push(
						{ "name": "procdefName", "value": $("#procdefName").val() },
						{ "name": "procdefCode", "value": $("#procdefCode").val()}
					);				
			 }
			
			
			
			
     }));

			
		//高级查询
	    $('#advancedSearch').on('click',function() {
	      layer.open({
	        type:1,
	        shade:0.3,
	        shadeClose:true,
	        area:"500px",
	        title:"高级查询",
	        content:$('.popup-search'),
	        skin:"layer-skin-default layer-skin-bodered",
	        btn:['查询'],
	        yes:function(index,overlay) {
	          //查询
	          layer.close(index)
	        }
	      })
	    })
			
		
		
	});
	
	
	
	

	
	function model_add(title,w,h){
		var url = path + "/procDefController/skipAddProcDef.do";
		layer_show(title,url,w,h);
	}

	
	function edit_model(title,id,w,h){
	     var url = path+"/procDefController/getDetail.do?id="+id;
		 layer_show(title,url,w,h);
	}
	
	function design_process(title,id,w,h){
	     var url = path+"/procNodeController/designProcess.do?procDefId="+id;
		 layer_show(title,url,w,h);
	}
	
	function del_model(obj,id){
		layer.confirm('确认要删除吗？',function(index){
		   sumbitDel(id);
		});
	}
	
	function datadel(){
	   var l = new Array();
	         
       $("#procDef_table .checkbox:checked").each(function() {		
		  l.push($(this).val());		
	   });
	   	 
	   if(l.length > 0){
		   	layer.confirm("确认要删除 "+l.length+" 条记录吗？",function(index){
		   		
		   		sumbitDel(l);
			});
	   }else{
	     layer.msg('无选中的项!',{icon: 0,time:1000});
	   }
	}
	
	function sumbitDel(ids){
		$.ajax({
			    url: path+"/procDefController/deleteProcDef.do",
			    traditional:true,
			    dataType:'json',  
			    data:{
			    	"ids":ids
			    },
			    type:"post",
			    cache : false,  
			    async : false,  
			    success:function(data){	
			    		if(data.status == "y" || data.status == "Y"){
			    			layer.msg(data.info,{icon: 1,time:1000});
			          		goSearch(false);	
			    		}else{
			    			layer.msg(data.info,{icon: 2,time:2500});
			    		}	    					         				           
			                		           
			       },  
			     error : function(error) {  
			            alert(error); 		            
			       } 
		  });
		
	
	}
	
	
	
	
 	function goSearch(signal){			   
		 $("#procDef_table").DataTable().draw(signal);					
	 }
	  
