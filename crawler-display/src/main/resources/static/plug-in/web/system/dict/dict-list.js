
		$(function(){
			

			   $('#dict_table').on('draw.dt',drawTable).DataTable($.extend({},DATA_TABLES.DEFAULT_OPTION,{
				   "sAjaxSource": path+"/dictController/getPageData.do",
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
				   			 { "sTitle": "字典类别", "sClass": "center","mDataProp":"dictType" },                     
	                         { "sTitle": "字典条目", "sClass": "center","mDataProp":"dictItem" },
	                         { "sTitle": "字典值", "sClass": "center","mDataProp":"dictValue" },
	                         { "sTitle": "是否有效", "sClass": "td-status","mDataProp":"dictFlag",
	                            "mRender": function (data, type, full) {
	                       		  if(data == 1){
	                       		  	return " <span class=\"label label-success radius\">是</span>";
	                       		  }else{
	                       		  	return " <span class=\"label label-defaunt radius\">否</span>";
	                       		  }	
	    
	                            }
	                          },                            
	                         { "sTitle": "最后修改时间", "sClass": "center" ,"mDataProp":"gmtModified"},                         
	                         {
	                             "sTitle": "操作",
	                             "sClass": "ext-c table-button-container", 
	                             "width": "150px",  
	                             "mDataProp":"id" ,                              
	                             "bSortable": false,
	                             "mRender": function (data, type, full) {
	                        
	                            	 var html = "";                               		
	                            		if(typeof(edit_dict)!= "undefined"){
	                            			 if(edit_dict.length>0){
	                            			 	html+=edit_dict.format(data);
	                            			 }                            			
	                            		}
	                            		if(typeof(del_dict)!= "undefined"){
	                            			 if(del_dict.length>0){
	                            			 	html+=del_dict.format(data);
	                            			 }	                              			
	                            		}
	                        	                             	                             	
	                            		return html+"</div>";
	                             }
	                         }
			           ],
			         
			          "fnServerParams" : function (aoData) {
						aoData.push(
							{ "name": "dictType", "value": $("#dictType").val() },
							{ "name": "dictItem", "value": $("#dictItem").val() }	
								
						);
						
						
						
						}
			     }));
			
		
			
	});
	
	
	/*字典-添加*/
	function dict_add(title,w,h){
		var url = path + "/dictController/skipAddDict.do?dictType="+$("#dictType").val()+"&model="+$("#dict-model").val();
		layer_show(title,url,w,h);
	}
	
	/*字典-修改*/
	function dict_edit(title,id,w,h){
	     var url = path+"/dictController/getDetail.do?did="+id+"&model="+$("#dict-model").val();;
		layer_show(title,url,w,h);
	}
	
	
	/*字典-删除*/
	function dict_del(obj,id){
		layer.confirm('确认要删除吗？',function(index){
		   sumbitDel(id);
		});
	}
	
	function datadel(){
	   var l = new Array();
	         
       $("#dict_table .checkbox:checked").each(function() {		
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
			    url: path+"/dictController/delDict.do",
			    traditional:true,
			    dataType:'json',  
			    data:{
			    	"dids":ids
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
		$("#dict_table").DataTable().draw(signal);					
	}