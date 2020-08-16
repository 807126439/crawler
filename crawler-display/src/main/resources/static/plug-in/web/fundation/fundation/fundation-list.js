
 $(function(){


	 $("#fundation_table").on('draw.dt',drawTable).DataTable($.extend({},DATA_TABLES.DEFAULT_OPTION,{
       "sAjaxSource": path+"/fundationController/getPageData.do",
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
   			   	{ "sTitle": "编号","width":"","mDataProp":"id" },
   			   	{ "sTitle": "基金号","width":"","mDataProp":"code" },
   			   	{ "sTitle": "基金名称","width":"","mDataProp":"fundationName" },
   			   	{ "sTitle": "爬取状态","width":"","mDataProp":"crawlStatus" },
                {
                   "sTitle": "操作", 
                   "mDataProp":"id" , 
                   "width":"200px",
                   "bSortable": false,
                   "mRender": function (data, type, full) {                 	                                                  		 
                	    var html = "";
					   if(typeof(crawl_fundation)!= "undefined"){
						   if(crawl_fundation.length>0){
							   html+=crawl_fundation.format(full.code);
						   }
					   }
					   if(typeof(check_fundation)!= "undefined"){
						   if(check_fundation.length>0){
							   html+=check_fundation.format(data);
						   }
					   }
					   if(typeof(edit_fundation)!= "undefined"){
                  			 if(edit_fundation.length>0){
                  			 	html+=edit_fundation.format(data);
                  			 }                            			
                  		}	                              		
                  		if(typeof(del_fundation)!= "undefined"){
                  			 if(del_fundation.length>0){
                  			 	html+=del_fundation.format(data);
                  			 }	                          			
                  		}
              	                             	                             	
                  	  return html;
                   }
                }
           ],        
           "fnServerParams" : function (aoData) {
					aoData.push(
					{ "name": "field_1", "value": $("#field_1").val() }
					
					);				
			 }
			
			
			
			
     }));

		
	});


 //爬取数据
 function fundation_crawl(title,code,w,h){
	 var url = "http://localhost/crawler/startFundationCrawl?code="+code;
	 $.ajax({
		 url: url,
		 type:"get",
		 cache : false,
		 async : false,
		 success:function(data){
			 if(data.status == "y" || data.status == "Y"){
				 layer.msg(data.info,{icon: 1,time:1000});
			 }else{
				 layer.msg(data.info,{icon: 2,time:2500});
			 }

		 },
		 error : function(error) {
			 alert(error);
		 }
	 });
 }

	
	function model_add(title,w,h){
		var url = path + "/fundationController/skipAddFundation.do";
		layer_show(title,url,w,h);
	}

 	//查看分析数据
	 function fundation_check(title,id,w,h){
		 var url = path+"/fundationController/checkFundation.do?id="+id;
		 layer_full(title,url,w,h);
	 }

	
	function fundation_edit(title,id,w,h){
	     var url = path+"/fundationController/getDetail.do?id="+id;
		 layer_show(title,url,w,h);
	}

	function fundation_del(obj,id){
		layer.confirm('确认要删除吗？',function(index){
		   sumbitDel(id);
		});
	}
	
	function datadel(){
	   var l = new Array();
	         
       $("#fundation_table .checkbox:checked").each(function() {		
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
			    url: path+"/fundationController/deleteFundation.do",
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
	
	function search(w,h) {
	    layer.open({
	      type:1,
	      shade:0.3,
	      shadeClose:true,
	      area: [w+'px', h +'px'],
	      title:"查询",
	      content:$('.popup-search'),
	      skin:"layer-skin-default layer-skin-bodered",
	      btn:['查询','关闭'],
	      yes:function(index,overlay) {
	        //查询
	    	 goSearch(true);
	         layer.close(index);
	      }
	    });
	  }
	
	
 	function goSearch(signal){			   
		 $("#fundation_table").DataTable().draw(signal);					
	 }
	  
