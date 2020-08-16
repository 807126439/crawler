
		$(function(){
			
			
			   $('#role_table').on('draw.dt',drawTable).DataTable($.extend({},DATA_TABLES.DEFAULT_OPTION,{
				   "sAjaxSource": path+"/roleController/getPageData.do",
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
			   			   {
			                    sTitle:"<input type='checkbox' class='table-check-all'>",
			                    sClass: "text-c",
			                    bSortable  : false, // 不参与排序
			                    bSearchable: false,
			                    sWidth: "30px",
			                    mDataProp:"id",
			                    mRender: function (data, type, row, meta) {  
			                    	
			                    	if(row.flag == 0){
			                    		 return "<input type=\"checkbox\" class=\"table-check-row checkbox\" value=\""+data+"\">";
			                    	}else{
			                    		return "";
			                    	}
			                      
			                    }
			                },
				   			{ "sTitle": "角色码", "sClass": "text-c","sWidth":"100px","mDataProp":"roleName" },                     
	                        { "sTitle": "角色名", "sClass": "text-c","sWidth":"100px","mDataProp":"roleText" },
	                        { "sTitle": "角色描述", "sClass": "text-c","sWidth":"200px","mDataProp":"roleMemo" },                      
	                        { "sTitle": "最后修改时间", "sClass": "text-c" ,"sWidth":"120px","mDataProp":"gmtModified"},                         
	                        {
	                            "sTitle": "操作",
	                            "sClass": "ext-c table-button-container", 
	                            "mDataProp":"id" , 
	                            "sWidth":"80px",                             
	                            "bSortable": false,
	                            "mRender": function (data, type, full) {
	                                                   		 
	                            	var html = "";                               		
	                           		if(typeof(edit_role)!= "undefined"){
	                           			 if(edit_role.length>0){
	                           			 	html+=edit_role.format(data);
	                           			 }                            			
	                           		}	
	                           		if(full.flag == 0){
	                           			if(typeof(del_role)!= "undefined"){
		                              			 if(del_role.length>0){
		                              			 	html+=del_role.format(data);
		                              			 }
		                              			
		                              		}
	                           		}
	                           		
	                       	                             	                             	
	                           		return html+"</div>";
	                            }
	                        }
			           ],
			         
			          "fnServerParams" : function (aoData) {
						aoData.push(
							{ "name": "roleName", "value": $("#ser_name").val() },
							{ "name": "roleText", "value": $("#ser_text").val() }
						);
						
						
						
						}
			     }));
			
	
			
		});
	
	
	/*角色-添加*/
	function role_add(title,url,w,h){
		layer_show(title,url,w,h);
	}

	/*角色-修改*/
	function role_edit(title,id,w,h){
	     var url = path+"/roleController/getDetail.do?rid="+id;
		 layer_show(title,url,w,h);
	}
	
	
	/*角色-删除*/
	function role_del(obj,id){
		layer.confirm('确认要删除吗？',function(index){
		   sumbitDel(id);
		});
	}
	
	function datadel(){
	   var l = new Array();
	         
       $("#role_table .checkbox:checked").each(function() {		
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
			    url: path+"/roleController/delRole.do",
			    traditional:true,
			    dataType:'json',  
			    data:{
			    	"rids":ids
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
		 $("#role_table").DataTable().draw(signal);					
	 }
	  