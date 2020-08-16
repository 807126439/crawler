
		$(function(){
			
			 $('#zone_path_table').on('draw.dt',drawTable).DataTable($.extend({},DATA_TABLES.DEFAULT_OPTION,{
				   "sAjaxSource": path+"/zonePathController/getPageData.do",
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
				   			{ "sTitle": "说明", "width": "150px","bSortable": false,"mDataProp":"text" },                     
	                        { "sTitle": "路径", "width": "200px","bSortable": false,"mDataProp":"path" },
	                        { "sTitle": "优先级", "width": "80px","mDataProp":"priority" },
	                        { "sTitle": "类型", "width": "80px","mDataProp":"type" },
	                        { "sTitle": "虚拟目录", "width": "130px","bSortable": false,"mDataProp":"viewPath" },
	                        { "sTitle": "虚拟路径", "width": "200px","bSortable": false,"mDataProp":"virtualPath" },
	                        { "sTitle": "警告值", "width": "100px","mDataProp":"warmValue" },
	                        { "sTitle": "是否有效", "width": "80px","mDataProp":"isValid",
	                           "mRender": function (data, type, full) {
	                      		  if(data == 1){
	                      		  	return " <span class=\"label label-success radius\">是</span>";
	                      		  }else{
	                      		  	return " <span class=\"label label-defaunt radius\">否</span>";
	                      		  }	
	   
	                           }
	                         },                                                  
	                        {
	                            "sTitle": "操作",
	                            "sClass": "ext-c table-button-container", 
	                            "width": "100px",  
	                            "mDataProp":"id" ,                              
	                            "bSortable": false,
	                            "mRender": function (data, type, full) {
	                       
	                            	var html = "";                              		
	                           		if(typeof(edit_zone_path)!= "undefined"){
	                           			 if(edit_zone_path.length>0){
	                           			 	html+=edit_zone_path.format(data);
	                           			 }                            			
	                           		}
	                           		if(typeof(del_zone_path)!= "undefined"){
	                           			 if(del_zone_path.length>0){
	                           			 	html+=del_zone_path.format(data);
	                           			 }	                              			
	                           		}
	                       	                             	                             	
	                           		return html+"</div>";
	                            }
	                        }
			           ],
			         
			          "fnServerParams" : function (aoData) {
						 aoData.push();																		
						}
			     }));
			
	
			
		});
	
	

	function zone_path_add(title,url,w,h){
		layer_show(title,url,w,h);
	}
	
	
	function  zone_path_edit(title,id,w,h){
	     var url = path+"/zonePathController/getDetail.do?zid="+id;
		layer_show(title,url,w,h);
	}
	
	

	function  zone_path_del(obj,id){
		layer.confirm('确认要删除吗？',function(index){
		   sumbitDel(id);
		});
	}
	
	function datadel(){
	   var l = new Array();
	         
       $("#zone-path_table .checkbox:checked").each(function() {		
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
			    url: path+"/zonePathController/delZonePath.do",
			    traditional:true,
			    dataType:'json',  
			    data:{
			    	"zids":ids
			    },
			    type:"post",
			    cache : false,  
			    async : false,  
			    success:function(data){	
			    		if(data.status == "y" || data.status == "Y"){
			    			layer.msg(data.info,{icon: 1,time:1000});
			          		goSearch();	
			    		}else{
			    			layer.msg(data.info,{icon: 2,time:2500});
			    		}	    					         				           
			                		           
			       },  
			     error : function(error) {  
			            alert(error); 		            
			       } 
		  });
		
	
	}
	
	
	
	function data_create_dir(){
		   var l = new Array();
		         
	       $("#zone-path_table .checkbox:checked").each(function() {		
			  l.push($(this).val());		
		   });
		   	 
		   if(l.length > 0){
			   	layer.confirm("确认要生成 "+l.length+" 条记录的目录吗？",function(index){
			   		
			   		sumbitCreate(l);
				});
		   }else{
		     layer.msg('无选中的项!',{icon: 0,time:1000});
		   }
		}
		
		function sumbitCreate(ids){
			$.ajax({
				    url: path+"/zonePathController/createFileDirectory.do",
				    traditional:true,
				    dataType:'json',  
				    data:{
				    	"zids":ids
				    },
				    type:"post",
				    cache : false,  
				    async : false,  
				    success:function(data){	
				    		if(data.status == "y" || data.status == "Y"){
				    			layer.msg(data.info,{icon: 1,time:1000});
				          		goSearch();	
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
			$("#zone_path_table").DataTable().draw(signal);					
		}