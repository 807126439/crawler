  $(function() {   
	     //加载内容
	     //initUnitAvgScoreStat();
	     //initUnitScoreTimeStat();
	     // initAvgScoreOfContractorTypeCode();
	     // initNumOfEngType();
	  	initNewestTop20();
	  	initHotestTop20();
	  searchEs(null,null);

      //全域变量
      var from_contex = 0;
      var size = 10;
      //加载中标记防止多次请求
      var loading_flag = false;
      //最新刷新时间
      var resent_refresh = new Date().getTime();

      //滚动事件触发
      window.onscroll = function() {
          if((getScrollTop() + getClientHeight()+50) > getScrollHeight()) {
              if(!loading_flag&&(new Date().getTime()>(resent_refresh+1000))){
                  loading_flag = true;
                  var keyWord = $("#searchKeyWord").val();
                  var searchType =  $("#searchOption").val();
                  from_contex+=size;
                  searchEs(keyWord,searchType,from_contex,10);
				  resent_refresh = new Date().getTime();
				  loading_flag = false;

              }
          }
      }

  })

	//加载最近创建的记录
  function initNewestTop20() {
	  $.ajax({
		  url: path+"/mafenController/newestTop20.do",
		  traditional:true,
		  dataType:'json',
		  data:{},
		  type:"post",
		  cache : false,
		  async : false,
		  success:function(data){
			  if(data.status == "y" || data.status == "Y"){
				  var html = '';
				  var list = data.data;
				  for (var i = 0; i < list.length; i++) {
					  var url = list[i].url;
					  var da = new Date(list[i].startdate)
					  html += "<tr><td>"+(i+1)+"</td><td><a href='"+url+"'>"+list[i].title+"</a></td><td>"+da.format("yyyy-MM-dd")+"</td></tr>";
				  }
				  $("#newestTop20 tbody").html(html);
			  }else{
				  layer.msg(data.info,{icon: 2,time:2500});
			  }
		  },
		  error : function(error) {
			  alert(error);
		  }
	  });
  }

  //加载最热门的记录
  function initHotestTop20() {
	  $.ajax({
		  url: path+"/mafenController/hotestTop20.do",
		  traditional:true,
		  dataType:'json',
		  data:{},
		  type:"post",
		  cache : false,
		  async : false,
		  success:function(data){
			  if(data.status == "y" || data.status == "Y"){
				  var html = '';
				  var list = data.data;
				  for (var i = 0; i < list.length; i++) {
					  var url = list[i].url;
					  var da = new Date(list[i].startdate)
					  html += "<tr><td>"+(i+1)+"</td><td><a href='"+url+"'>"+list[i].title+"</a></td><td>"+da.format("yyyy-MM-dd")+"</td></tr>";
				  }
				  $("#hotestTop20 tbody").html(html);
			  }else{
				  layer.msg(data.info,{icon: 2,time:2500});
			  }
		  },
		  error : function(error) {
			  alert(error);
		  }
	  });
  }

  function initSearch20() {
	  $.ajax({
		  url: path+"/mafenController/hotestTop20.do",
		  traditional:true,
		  dataType:'json',
		  data:{},
		  type:"post",
		  cache : false,
		  async : false,
		  success:function(data){
			  if(data.status == "y" || data.status == "Y"){
				  var html = '';
				  var list = data.data;
				  for (var i = 0; i < list.length; i++) {
					  var url = path + "/evaluateRecordController/statistic/viewPage.do?unitId=" + list[i].pageId;
					  html += "<tr><td>"+(i+1)+"</td><td><a href='"+url+"'>"+list[i].title+"</a></td><td>"+list[i].startdate+"</td></tr>";
				  }
				  $("#badTop20 tbody").html(html);
			  }else{
				  layer.msg(data.info,{icon: 2,time:2500});
			  }
		  },
		  error : function(error) {
			  alert(error);
		  }
	  });
  }



  //下拉刷新相关
  function getScrollTop() {
      var scrollTop = 0;
      if(document.documentElement && document.documentElement.scrollTop) {
          scrollTop = document.documentElement.scrollTop;
      } else if(document.body) {
          scrollTop = document.body.scrollTop;
      }
      return scrollTop;
  }

  //获取当前可视范围的高度
  function getClientHeight() {
      var clientHeight = 0;
      if(document.body.clientHeight && document.documentElement.clientHeight) {
          clientHeight = Math.min(document.body.clientHeight, document.documentElement.clientHeight);
      } else {
          clientHeight = Math.max(document.body.clientHeight, document.documentElement.clientHeight);
      }
      return clientHeight;
  }

  //获取文档完整的高度
  function getScrollHeight() {
      return Math.max(document.body.scrollHeight, document.documentElement.scrollHeight);
  }


    //承包商平均履约结果
  function initAvgScoreOfContractorTypeCode(){
  	  	$.ajax({
	    url: path+"/evaluateRecordController/statContractorTypeAvgScore.do",		
	    dataType:'json',  
	    data:{			    	
	    },
	    type:"post",
	    cache : false,  
	    async : true,  
	    success:function(res){	
	    		if(res.status == "y" || res.status == "Y"){
	    			var data = res.data;
	    			var dom = document.getElementById("char1");
					var myChart1 = echarts.init(dom);
				
					option = null;
										
					option = {
					    /*title: {
					        text: '',
					        subtext: ''
					    },*/
					    tooltip: {
					        trigger: 'axis',
					        axisPointer: {
					            type: 'shadow'
					        }
					    },					    
					    grid: {
					        left: '2%',
					        right: '4%',
					        bottom: '3%',
					        top:'20',
					        containLabel: true
					    },
					    xAxis: {
					        type: 'value',
					        boundaryGap: [0, 0.01]
					    },
					    yAxis: {
					        type: 'category',
					        data: data.typeNames,
					        axisLabel:{interval: 0}
					    },
					    series: [
					        {
					            name: '平均分',
					            type: 'bar',
					            data: data.avgScores,
					            itemStyle: {
					                normal: {
					                	label: {
											show: true, //开启显示
											position: 'right', //在上方显示
											textStyle: { //数值样式
												color: 'black',
												fontSize: 13
											}
										},
					                    color: function(params) {
					                        var colorList = [
					                          '#C1232B','#B5C334','#FCCE10','#E87C25','#27727B',
					                           '#FE8463','#9BCA63','#FAD860','#F3A43B','#60C0DD',
					                           '#D7504B','#C6E579','#F4E001','#F0805A','#26C0C0'
					                        ];
					                        return colorList[params.dataIndex]
					                    }
					                }
					            }
					        }
					    ]
					};
					if (option && typeof option === "object") {
					    myChart1.setOption(option, true);
					}
	    		}else{
	    			layer.msg(res.info,{icon: 2,time:2500});
	    		}           
	       },  
	     error : function(error) {  
	            alert(error); 		            
	       } 
  });
  }
  
  function showStat(type){
	  var exNum=0;
	  var failNum=0
	  if(type == '综合'){
		  exNum = totalArray[0];
		  failNum = totalArray[1];
	  }else{
			for(var i in excellentArray){
				if(excellentArray[i].name==type){
					exNum = excellentArray[i].value;
				}
			}
			for(var i in failArray){
				if(failArray[i].name==type){
					failNum = failArray[i].value;
				}
			}
	  }

	  
	  myChart2.setOption({
		  title: {
              text: type+"合格比例"
          },
		  series: [{
			  data:[
	                {value:exNum, name:'合格'},
	                {value:failNum, name:'不合格'}
	            ]
		  }]
	  })
	  
  }
  	//承包商合格不合格数量
    //承包商平均履约结果
  var excellentArray;
  var failArray;
  var totalArray;
  var myChart2;
  function initNumOfEngType(){
	  var all = new Array('合格','不合格');
  	  	$.ajax({
	    url: path+"/evaluateRecordController/getNumOfEngType.do",		
	    dataType:'json',  
	    data:{	
	    	"type":"all"
	    },
	    type:"post",
	    cache : false,  
	    async : true,  
	    success:function(res){	
	    		if(res.status == "y" || res.status == "Y"){
	    			var data = res.data;
	    			excellentArray = data.excellentArray;
	    			failArray = data.failArray;
	    			totalArray = data.totalArray;
	    			
	    			for(var i in data.excellentArray){
	    				all.push(data.excellentArray[i].name)
	    			}
	    			for(var i in data.failArray){
	    				all.push(data.failArray[i].name)
	    			}	
	    			
	    			var dom = document.getElementById("char2");
					myChart2 = echarts.init(dom);
				
					option = null;
					option = {
						title: {
			                text: '综合合格比例'
			            },
					    tooltip: {
					        trigger: 'item',
					        formatter: "{a} <br/>{b}: {c} ({d}%)"
					    },
					    series: [
					        {	
					        	name:'统计',
					            type:'pie',
					            radius:'90%',
					            selectedMode: 'single',
					            label: {
					                normal: {
					                    position: 'inner'
					                }
					            },
					            labelLine: {
					                normal: {
					                    show: false
					                }
					            },
					            data:[
					                {value:data.totalArray[0], name:'合格'},
					                {value:data.totalArray[1], name:'不合格'}
					            ],
					            itemStyle:{ 
							        normal:{ 
							           label:{ 
							        	   show: true, 
							        	   formatter: '{b}:{c}({d}%)' 
							           }, 
							           labelLine :{show:true} 
							        } 
							    }
					        }
					    ]
					};
					if (option && typeof option === "object") {
					    myChart2.setOption(option, true);
					}
	    		}else{
	    			layer.msg(res.info,{icon: 2,time:2500});
	    		}           
	       },  
	     error : function(error) {  
	            alert(error); 		            
	       } 
  });
  }
  
  //-------------------------------------------------------------后面两个不需要-----------------------------------
  function initUnitAvgScoreStat(){
	  	$.ajax({
		    url: path+"/evaluateRecordController/statUnitAvgScore.do",		
		    dataType:'json',  
		    data:{			    	
		    },
		    type:"post",
		    cache : false,  
		    async : true,  
		    success:function(res){	
		    		if(res.status == "y" || res.status == "Y"){
		    			var data = res.data;
		    			
		    			var dom = document.getElementById("char3");
						var myChart = echarts.init(dom);
					
						option = null;
											
						option = {
						    /*title: {
						        text: '',
						        subtext: ''
						    },*/
						    color: ['#54BC75', '#2f4554'],
						    tooltip: {
						        trigger: 'axis',
						        axisPointer: {
						            type: 'shadow'
						        }
						    },
						    
						    grid: {
						        left: '3%',
						        right: '4%',
						        bottom: '3%',
						        containLabel: true
						    },
						    xAxis: {
						        type: 'value',
						        boundaryGap: [0, 0.01]
						    },
						    yAxis: {
						        type: 'category',
						        data: data.unitNames
						    },
						    series: [
						        {
						            name: '平均分',
						            type: 'bar',
						            data: data.avgScores
						        }
						    ]
						};
						;
						if (option && typeof option === "object") {
						    myChart.setOption(option, true);
						}
		    			
		    			
		    			
		    		}else{
		    			layer.msg(res.info,{icon: 2,time:2500});
		    		}	    					         				           
		                		           
		       },  
		     error : function(error) {  
		            alert(error); 		            
		       } 
	  });
	  }
	  
	    function initUnitScoreTimeStat(){
	  	$.ajax({
		    url: path+"/evaluateRecordController/statUnitScoreTime.do",		
		    dataType:'json',  
		    data:{			    	
		    },
		    type:"post",
		    cache : false,  
		    async : true,  
		    success:function(res){	
		    		if(res.status == "y" || res.status == "Y"){
		    			var data = res.data;
		    			
		    			var dom = document.getElementById("char4");
						var myChart = echarts.init(dom);
					
						option = null;
											
						option = {
						    /*title: {
						        text: '',
						        subtext: ''
						    },*/
						    color: ['#54BC75', '#2f4554'],
						    tooltip: {
						        trigger: 'axis',
						        axisPointer: {
						            type: 'shadow'
						        }
						    },
						    
						    grid: {
						        left: '3%',
						        right: '4%',
						        bottom: '3%',
						        containLabel: true
						    },
						    xAxis: {
						        type: 'value',
						         //boundaryGap: [1, 2],
						        
						        minInterval:0 ,
						        scale:0
						    },
						    yAxis: {
						        type: 'category',
						        data: data.unitNames
						    },
						    series: [
						        {
						            name: '次数',
						            type: 'bar',
						            data: data.scoreTimes
						        }
						    ]
						};
						;
						if (option && typeof option === "object") {
						    myChart.setOption(option, true);
						}
		    			
		    			
		    			
		    		}else{
		    			layer.msg(res.info,{icon: 2,time:2500});
		    		}	    					         				           
		                		           
		       },  
		     error : function(error) {  
		            alert(error); 		            
		       } 
	  });
	  }