
 $(function(){
	 iSelect({elem:".ui-select.ui-hide"});//select皮肤

	 $("#msgGroup_table").on('draw.dt',drawTable).DataTable($.extend({},DATA_TABLES.DEFAULT_OPTION,{
       "sAjaxSource": path+"/msgGroupController/getPageData.do",
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
    			{ "sTitle": "序号", "sClass": "text-c","width":"80px","mDataProp":"sort" }, 
    			{ "sTitle": "组名称", "sClass": "text-c","width":"200px","mDataProp":"groupName" }, 
    			{ "sTitle": "组描述", "sClass": "text-c","width":"300px","mDataProp":"groupDesc" }, 
    			{ "sTitle": "类型", "sClass": "text-c","width":"150px","mDataProp":"groupType",
    				"mRender":function (data, type, full) {
    			 	    if(data == 1){
    				 	      return "业务主管部门";							 	    
    				 	    }if(data == 2){
    				 	    	return "建设单位";
    				 	    }						 	  
    				 	  } 
    			},
                {
                   "sTitle": "操作", 
                   "sClass": "text-c", 
                   "mDataProp":"id" , 
                   "width":"120px",                             
                   "bSortable": false,
                   "mRender": function (data, type, full) {                 	                                                  		 
                	    var html = "<div class=\"ui-btn-group\">";                              		
                  		if(typeof(model_edit)!= "undefined"){
                  			 if(model_edit.length>0){
                  			 	html+=model_edit.format(data);
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
					{ "name": "groupType", "value": $("#groupType").val() },
					{ "name": "groupName", "value": $("#groupName").val() }
					
					);				
			 }
			
			
			
			
     }));

		
	});
	
	
	
	

	
	function model_add(title,w,h){
		var url = path + "/msgGroupController/skipAddMsgGroup.do";
		layer_show(title,url,w,h);
	}

	
	function edit_model(title,id,w,h){
	     var url = path+"/msgGroupController/getDetail.do?id="+id;
	     
		 layer_show(title,url,w,h);
	}
	
	
	function del_model(obj,id){
		layer.confirm('确认要删除吗？',function(index){
		   sumbitDel(id);
		});
	}
	
	function datadel(){
	   var l = new Array();
	         
       $("#msgGroup_table .checkbox:checked").each(function() {		
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
			    url: path+"/msgGroupController/deleteMsgGroup.do",
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
		 $("#msgGroup_table").DataTable().draw(signal);					
	 }
	  
