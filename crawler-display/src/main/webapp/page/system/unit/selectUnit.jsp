<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="/page/common/tag/mytags.jsp" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
    
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="renderer" content="webkit|ie-stand">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="0">
	
	 <link href="<%=path%>/plug-in/main/css/H-ui.reset.css" rel="stylesheet" type="text/css" />
     <link href="<%=path%>/plug-in/main/css/checktree.css" rel="stylesheet" type="text/css" />
     
     
 

  </head>
  
  
   <body>  
   
    <div class="checktree"></div>
    <input type="hidden" id="type" value="${type}">
   
	<%@include file="/page/common/script/main-js.jsp"%>
 	<script type="text/javascript" src="<%=path%>/plug-in/main/libs/zTree/js/jquery.ztree.core.min.js"></script>
  	<script type="text/javascript" src="<%=path%>/plug-in/main/libs/zTree/js/jquery.ztree.excheck.min.js"></script>
  	<script type="text/javascript" src="<%=path%>/plug-in/main/js/checktree.js"></script>
 	<script type="text/javascript">

 	 $(function() {
 	    var checkData=[];
 	    var limit=GetQuery('limit'); //最多选择的数量
 	    var call=GetQuery('call'); //回调
 	    var idsString=GetQuery('ids'); //已选中数据id
 	    var idArr=idsString!=''?idsString.split(','):[]; //已选中数据id数组
 	    if (!call) return;

 	    var name='name';

 	    $.ajax({
 	      url:path+'/unitController/getUnitTreeData.do',
 	      datatype:"json",
		  type:"post",
 	      data:{
 	      	"type":$("#type").val()
 	      },
 	      success:function(data){
 	 
 	        //默认已选中的
 	        checkDataById(data)
 	       
 	        //初始化
 	        initCheckTree('.checktree',data,{
 	          limit:limit,//最多选择多少个,默认为1,单选。设为false为不限个数checkbox模式
 	          name:name,//json数据节点的标题属性名
 	          autoExpand:true,//是否默认展开节点
 	          singlePath:true//只能有一条展开路径
 	          ,simpleData:{enable:true}
 	        })
 	      }
 	    })
 	    
 	    //默认已选中的
 	    function checkDataById(data) {
 	        for (var i = 0; i < data.length; i++) {
 	          if (data[i].children) {
 	            checkDataById(data[i].children);
 	          }
 	          if (typeof data[i].id!=="undefined"&&indexOf(idArr,data[i].id+'')!=-1) {
 	            data[i].checked=true;
 	            checkData.push($.extend({},data[i]));
 	          } 
 	        }
 	    }

 	    //监听check
 	    $('.checktree').on('checktree.change',function(e,data) {
 	      checkData=data.checkData;
 	    })

 	    //确定
 	    $('.checktree').on('click','#sure',function() {
 	      var data=[];
 	      //name替换
 	      $.each(checkData,function(i,item) {
 	        var o=$.extend({},item)
 	        o.name=o[name]
 	        data.push(o)
 	      })

 	      if (data.length==1) 
 	        data=data[0]
 	       
 	         
 	      parent[call]&&parent[call](data)
 	    })

 	    //获取查询参数的值
 	    function GetQuery(key) { 
 	      var search = location.search.slice(1); //得到get方式提交的查询字符串 
 	      var arr = search.split("&"); 
 	      for (var i = 0; i < arr.length; i++) { 
 	        var ar = arr[i].split("="); 
 	        if (ar[0] == key) { 
 	        return ar[1]; 
 	        } 
 	      } 
 	      return null;
 	    } 
 	    function indexOf(arr,elt) {
 	      var len = arr.length >>> 0;
 	          var i =  0;
 	          for (; i < len; i++) {
 	            if (i in arr && arr[i] === elt)
 	              return i;
 	          }
 	          return -1;
 	    }
 	  })
  </script>	
		
  </body>
  
  
  
</html>