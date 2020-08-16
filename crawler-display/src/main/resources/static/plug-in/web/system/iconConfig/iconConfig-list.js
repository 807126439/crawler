
 $(function(){


	 $("#iconConfig_table").on('draw.dt',drawTable).DataTable($.extend({},DATA_TABLES.DEFAULT_OPTION,{
       "sAjaxSource": path+"/iconConfigController/getPageData.do",
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
   			    { "sTitle": "图标类型","width":"100px","mDataProp":"iconTypeName" }, 
    			{ "sTitle": "图标名称","width":"200px","mDataProp":"fileName" }, 
    			{ "sTitle": "图标","width":"300px","mDataProp":"fileViewPath" ,
    				"mRender": function (data, type, full) {                 	                                                  		 
                	    var html = "";                	                                  		
                  		if(data!=null && data!=""){
                  			
                  			if(full.iconType == 1){
                  				html = "<img style='background:#1c5e4e' src='"+data+"'/>"
                  			}else{
                  				html = "<img src='"+data+"'/>"
                  			}
                  			
                  			
                  		}             	                             	                             	
                  	  return html;
                   }
    			}, 
    			{ "sTitle": "上传时间","width":"120px","mDataProp":"gmtCreate"}, 
                {
                   "sTitle": "操作", 
                   "mDataProp":"id" , 
                   "width":"100px",                             
                   "bSortable": false,
                   "sClass": "ext-c table-button-container",
                   "mRender": function (data, type, full) {                 	                                                  		 
                	    var html = ""; 
                	                                  		
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
						{ "name": "iconType", "value": $("#iconType").val()}					
					);				
			 }
			
			
			
			
     }));

		
	});
	
	
	
	

	
	function model_add(title,w,h){
		var url = path + "/iconConfigController/skipAddIconConfig.do";
		layer_show(title,url,w,h,"");
	}

	

	
	function del_model(obj,id){
		layer.confirm('确认要删除吗？',function(index){
		   sumbitDel(id);
		});
	}
	
	function datadel(){
	   var l = new Array();
	         
       $("#iconConfig_table .checkbox:checked").each(function() {		
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
			    url: path+"/iconConfigController/deleteIconConfig.do",
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
			    error: function(error) {  
			       alert(error); 		            
			    } 
		  });
			
	}
	
	
	
	
 	function goSearch(signal){			   
		 $("#iconConfig_table").DataTable().draw(signal);					
	 }
	  
