 var mtable;
  $(function() {
 	 	
   
     	mtable = $("#account-table").dataTable({
			    "sAjaxSource": path+"/userController/getPageData.do",
			    "sServerMethod":"post",
			    "bProcessing" : true, //DataTables载入数据时，是否显示‘进度’提示  
	            "bServerSide" : true, //是否启动服务器端数据导入  
	            "bStateSave" : true, //是否打开客户端状态记录功能,此功能在ajax刷新纪录的时候不会将个性化设定回复为初始化状态  	           
	            "aLengthMenu" : [10, 20, 40,60], //更改显示记录数选项  
	            "bLengthChange" : true,// 每行显示记录数 
	            "iDisplayLength" : 10, //默认显示的记录数  
	            "bAutoWidth" : false, //是否自适应宽度  
	            //"bScrollInfinite" : false, //是否启动初始化滚动条  
	            "bScrollCollapse" : true, //是否开启DataTables的高度自适应，当数据条数不够分页数据条数的时候，插件高度是否随数据条数而改变  
	            "bPaginate" : true, //是否显示（应用）分页器  
	            "bInfo" : true, //是否显示页脚信息，DataTables插件左下角显示记录数  
	            "sPaginationType" : "full_numbers", //详细分页组，可以支持直接跳转到某页  
	            "bSort" : true, //是否启动各个字段的排序功能  
	            "aaSorting" : [[0, "desc"]], //默认的排序方式，第2列，升序排列  
            	"bFilter" : false, //是否启动过滤、搜索功能
				"aoColumnDefs": [
				{
				 sDefaultContent: '',
				 aTargets: [ '_all' ]
				  }				
				],
			    "aoColumns": [			    			  
                                { "sTitle": "序号","mDataProp":"sort","width":"45px",
                            	  "mRender": function (data, type, full) {
   		                     		
                            		   return "<input type=\"checkbox\" name=\"ids\" value=\""+full.id+"\"><span>"+data+"</span>";
   		                     		  
   		  
   		                          }    
                               },                   
                               { "sTitle": "机构名称","mDataProp":"unit"},                         
                               { "sTitle": "机构性质","mDataProp":"unitNature"},                             
                               { "sTitle": "法人代表","mDataProp":"legalPerson"},
                               { "sTitle": "联系人","mDataProp":"linkPerson"},
                               { "sTitle": "联系电话","mDataProp":"phone"},
                               { "sTitle": "办公地址","mDataProp":"linkAddress","bSortable": false },                                                                                 
                               { "sTitle": "最后修改时间","mDataProp":"lastOperatorTime","width":"110px"},    
                               { "sTitle": "状态","mDataProp":"auditText",
                                   "mRender": function (data, type, full) {
                            		  if(full.auditStatus == 3){
                            		  	return "<span class=\"c-error\">"+data+"</span>";
                            		  }else  if(full.auditStatus  ==2){
                            		  	return "<span class=\"c-success\">"+data+"</span>";
                            		  }	else{
                            			  return "";
                            		  }
         
                                 }
                              
                               },
                               {
                                   "sTitle": "操作",
                                   "sClass": "th6",  
                                   "mDataProp":"id" ,  
                                   "width":"110px", 
                                   "bSortable": false,
                                   "mRender": function (data, type, full) {
                            			var html = "";                             		
	                              		if(typeof(view_account)!= "undefined"){
	                              			 if(view_account.length>0){
	                              			 	html+=view_account.format("重审中介机构备案申报信息",data,"重审");
	                              			 }                            			
	                              		}
	                              	
                              	                             	                             	
                                        return html;
                                   }
                               }
               ],
              "oLanguage": { //国际化配置  
                "sProcessing" : "正在获取数据，请稍后...",    
                "sLengthMenu" : "显示 _MENU_ 条",    
                "sZeroRecords" : "没有数据记录",    
                "sInfo" : "显示 _START_ 到  _END_ 条 ，共 _TOTAL_ 条",    
                "sInfoEmpty" : "记录数为0",    
                "sInfoFiltered" : "(当前显示记录 _MAX_ 条)",    
                "sInfoPostFix" : "",    
                "sSearch" : "搜索",    
                "sUrl" : "",    
                "oPaginate": {    
                    "sFirst" : "第一页",    
                    "sPrevious" : "上一页",    
                    "sNext" : "下一页",    
                    "sLast" : "最后一页"    
                }  
            },
            "fnServerParams" : function (aoData) {
					aoData.push(
					{ "name": "reqType", "value": $("#reqType").val() },	
					{ "name": "dataType", "value": $("#dataType").val()},
					{ "name": "unit", "value": $("#unit").val()}
					
					);					
					
					
					}
              
			
			});

     	
     	
   	  //table里批量选择的check方法  
      $('#checkboxAll').on('click', function() {
        if ($(this).is(':checked')) {
            $('table input[type="checkbox"]').iCheck('check');
          } else {
            $('table input[type="checkbox"]').iCheck('uncheck');
          }
        $('.checknum').text($('table input[type="checkbox"]:checked').length);
      });
      $('table').on('click','input[type="checkbox"]', function() {
        if (this.id === "checkboxAll") {
          
        } else {
          var ifCheckAll = ($('table input[type="checkbox"]').length === $('table input[type="checkbox"]:checked').length);
          if (ifCheckAll) {
            $('#checkboxAll').iCheck('check');
          } else {
            $('#checkboxAll').iCheck('uncheck');
          }
        }
        $('.checknum').text($('table input[type="checkbox"]:checked').length);
      });
   		
     	
     	
  });
  
  
  

  
  
  function goSearch(){	
		mtable.fnDraw();	
	}
  
  