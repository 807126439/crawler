
$(function(){
	
	
	 $('#log_table').on('draw.dt',drawTable).DataTable($.extend({},DATA_TABLES.DEFAULT_OPTION,{
		   "sAjaxSource": path+"/loginLogController/getPageData.do",
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
		   			{ "sTitle": "ID", "sClass": "center","mDataProp":"id" },
                    { "sTitle": "用户名", "sClass": "center","mDataProp":"userName" },                     
                    { "sTitle": "IP地址", "sClass": "center","mDataProp":"convertIP" },
                    { "sTitle": "登录时间", "sClass": "center","mDataProp":"gmtCreate" },
                    { "sTitle": "细节描述", "sClass": "center","mDataProp":"logDetails" },                            
                    { "sTitle": "最后修改时间", "sClass": "center" ,"mDataProp":"gmtModified"},                         
                    {
                        "sTitle": "操作",
                        "sClass": "ext-c table-button-container", 
                        "mDataProp":"id" ,                              
                        "bSortable": false,
                        "mRender": function (data, type, full) {
                        	var html = "";                                		
                       		if(typeof(del_log)!= "undefined"){
                       			 if(del_log.length>0){
                       			 	html+=del_log.format(data);
                       			 }                            			
                       		}
                       		                             	                             	                             	
                       		return html+"</div>";
                        }
                    }
	           ],
	         
	          "fnServerParams" : function (aoData) {
				aoData.push(
					{ "name": "startTime", "value": $("#datemin").val() },
					{ "name": "endTime", "value": $("#datemax").val() },	
					{ "name": "userName", "value": $("#log-user").val() }	
					);
					
					
					
					}
		     }));
	 

});
		
		
			
	
	
	

	
	
	/*角色-删除*/
	function log_del(obj,id){
		layer.confirm('确认要删除吗？',function(index){
		   sumbitDel(id);
		});
	}
	
	function datadel(){
	   var l = new Array();
	         
       $("#log_table .checkbox:checked").each(function() {		
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
			    url: path+"/loginLogController/delLoginLog.do",
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
		$("#log_table").DataTable().draw(signal);					
	}
	
