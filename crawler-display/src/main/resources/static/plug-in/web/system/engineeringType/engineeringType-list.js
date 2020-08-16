
 $(function(){


	 $("#engineeringType_table").on('draw.dt',drawTable).DataTable($.extend({},DATA_TABLES.DEFAULT_OPTION,{
       "sAjaxSource": path+"/engineeringTypeController/getPageData.do",
       "sServerMethod": "post",
       "bServerSide": true, //是否启动服务器端数据导入        
       aaSorting: [
         //默认第几个排序
         [1, "asc"]
       ], 
       sScrollY:true,
	   sScrollX:true,
	   bScrollCollapse:true,
       "aoColumns": [
   			   DATA_TABLES.COLUMN.CHECKBOX,
    			{ "sTitle": "排序号","width":"80px","mDataProp":"sortNo" }, 
    			{ "sTitle": "工程类型名称","width":"450px","mDataProp":"typeName" }, 
    			{ "sTitle": "工程类型代码","width":"450px","mDataProp":"typeCode" }, 
                {
                   "sTitle": "操作", 
                   "mDataProp":"id" , 
                   "width":"100px",                             
                   "bSortable": false,
                   "sClass": "ext-c table-button-container",
                   "mRender": function (data, type, full) {                 	                                                  		 
                	    var html = "";                             		
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
              	                             	                             	
                  	  return html;
                   }
                }
           ],        
           "fnServerParams" : function (aoData) {
					aoData.push(
					{ "name": "typeName", "value": $("#typeName").val() },
					{ "name": "typeCode", "value": $("#typeCode").val() }
					
					);				
			 }
			
			
			
			
     }));

		
	});
	
	
	
	

	
	function model_add(title,w,h){
		var url = path + "/engineeringTypeController/skipAddEngineeringType.do";
		layer_show(title,url,w,h);
	}

	
	function edit_model(title,id,w,h){
	     var url = path+"/engineeringTypeController/getDetail.do?id="+id;
		 layer_show(title,url,w,h);
	}
	
	
	function del_model(obj,id){
		layer.confirm('确认要删除吗？',function(index){
		   sumbitDel(id);
		});
	}
	
	function datadel(){
	   var l = new Array();
	         
       $("#engineeringType_table .checkbox:checked").each(function() {		
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
			    url: path+"/engineeringTypeController/deleteEngineeringType.do",
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
		 $("#engineeringType_table").DataTable().draw(signal);					
	 }
	  
