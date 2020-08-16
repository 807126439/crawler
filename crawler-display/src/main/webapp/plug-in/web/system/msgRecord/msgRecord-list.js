
 $(function(){


	 $("#msgRecord_table").on('draw.dt',drawTable).DataTable($.extend({},DATA_TABLES.DEFAULT_OPTION,{
       "sAjaxSource": path+"/msgRecordController/getPageData.do",
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
    			{ "sTitle": "序号","width":"5%","mDataProp":"sort" }, 
    			{ "sTitle": "发送内容","width":"35%","mDataProp":"content" }, 
    			{ "sTitle": "收信人","width":"30%","mDataProp":"receiver" }, 
    			{ "sTitle": "发送时间","width":"10%","mDataProp":"gmtCreate" }, 
    			{ "sTitle": "发送人","width":"10%","mDataProp":"sender" }, 
    			{ 
    				"sTitle": "状态","width":"10%","mDataProp":"status",
    				"mRender": function (data, type, full) {            		   
             		   if(data == 1){
             			   return "<span style='color:green'>等待回执</span>"; 
             		   }if(data == 2){
             			   return "<span style='color:red'>发送失败</span>"; 
             		   }if(data == 3){
             			   return "<span style='color:blue'>发送成功</span>"; 
             		   }
             	   }
    				
    			}, 
                {
                   "sTitle": "操作", 
                   "mDataProp":"id" , 
                   "width":"150px",                             
                   "bSortable": false,
                   "mRender": function (data, type, full) {                 	                                                  		 
                	    var html = "<div class=\"ui-btn-group\">";  
                	    var html = "<div class=\"ui-btn-group\">";                              		                              		
                  		if(typeof(model_send)!= "undefined"){
                  			 if(model_send.length>0){
                  			 	html+=model_send.format(data);
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
					 { "name": "content", "value": $("#content").val() },
					 { "name": "receiver", "value": $("#receiver").val() }					
				);				
			 }
			
			
			
			
     }));

		
	});
	
	
	
	function model_add(){
		 window.location.href = path+"/msgRecordController/skipAddMsgRecord.do";
	}


	function send_model(obj,id){
		var url = path+"/msgRecordController/skipReSendMsgRecord.do?id="+id
		layer_show("重发短信",url,"700","500",'');
	}

	
	function del_model(obj,id){
		layer.confirm('确认要删除吗？',function(index){
		   sumbitDel(id);
		});
	}
	
	function datadel(){
	   var l = new Array();
	         
       $("#msgRecord_table .checkbox:checked").each(function() {		
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
			    url: path+"/msgRecordController/deleteMsgRecord.do",
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
		 $("#msgRecord_table").DataTable().draw(signal);					
	 }
	  
