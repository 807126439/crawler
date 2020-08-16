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
	  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	  <meta http-equiv="X-UA-Compatible" content="IE=Edge">
	  <meta name="renderer" content="webkit|ie-stand">
	  <title>用户列表</title>
	  <%@include file="/page/common/script/main-css.jsp" %>
	  
	
	
	
	</head>

  
  <body>
 	<%@include file="/page/common/nav/navLine.jsp" %>
 
  <div class="main">
    <div class="ipanel">
      <div class="hd"><span class="tt">${TITLE}</span></div>
      
       <c:if test="${reqType =='rdCheck' && dataType != 'org'}">
        <div class="l btntoolbar pd-10">
			<span class="tabbtns">		 		
			  	<a href="javascript:;" class="btn_blue ${dataType == 'unit'?'selected':''}"  data-val="unit">单位注册</a>
			  	<a href="javascript:;" class="btn_blue ${dataType == 'person'?'selected':''}" data-val="person">个人注册</a>		 			
			</span>	       
	    </div>
	    </c:if>
	    <c:if test="${reqType =='hasCheck' && dataType != 'org'}">
	     <div class="l btntoolbar pd-10">
			<span class="tabbtns">		 		
			  	<a href="javascript:;" class="btn_blue ${dataType == 'unit'?'selected':''}"  data-val="unit">单位</a>
			  	<a href="javascript:;" class="btn_blue ${dataType == 'person'?'selected':''}" data-val="person">个人</a>		 			
			</span>	       
	    </div>
	    </c:if>
      
      <div class="bd">
        <div class="t_searchbar">   
            <c:if test="${dataType == 'person'}">
            	<div class="group"><label>姓名</label><input type="text" id="chineseName" class="input-text" style="width:180px"></div>
            </c:if>  
            <c:if test="${dataType == 'unit'}">                                                    
           	  <div class="group"><label>单位名称</label><input type="text" id="unit" class="input-text" style="width:180px"></div>
            </c:if>  
            <c:if test="${dataType == 'org'}">                                                    
           	  <div class="group"><label>机构名称</label><input type="text" id="unit" class="input-text" style="width:180px"></div>
            </c:if> 
            <a href="javascript:void(0)" class="btn btn-primary" onclick="goSearch()">查 询</a>
            <a href="javascript:location.replace(location.href);" class="btn btn-warning">刷 新</a>
        </div>
                   
        <form id="export-form" action="<%=path %>/userController/exportAccountExcel.do" method="post">  
	        <div class="t_ctrlbar">
	          <c:if test="${reqType == 'hasCheck'}">
	        	  <span><input type="checkbox" id="checkboxAll"></span>
		          <label for="checkboxAll">全选</label>
		          <div>有<span class="checknum">0</span>项被选中</div>
		          <div class="btns">
		            <a href="javascript:void(0)" class="btn btn-primary size-S" onclick="exportData('selected')">导出所选</a>
		            <a href="javascript:void(0)" class="btn btn-primary size-S"  onclick="exportData('all')">导出全部</a>
		          </div>
	           </c:if>
	        </div>

  	 	
	        <table id="account-table" class="table-default table-hover table-sort">                  
	        </table>
	        
	        
	        <input type="hidden" name="dataType" value="${dataType}">
  	 		<input type="hidden" id="exportType" name="exportType" value="">
	     </form>     
	        
        <input type="hidden" id="dataType" value="${dataType}">
        <input type="hidden" id="reqType" value="${reqType}">        
        <input type="hidden" id="TOP_TITLE" value="${TOP_TITLE}">
        <input type="hidden" id="TITLE" value="${TITLE}">
        
      </div>
    </div>
  </div>


  
  




   <m:ajs_button operCode="goAuditAccount"  funMethod="account_view('{0}','{1}')" context="{2}" varName="view_account" />
   <%@include file="/page/common/script/main-js.jsp" %>
   <c:if test="${dataType =='person' && reqType =='rdCheck'}">
   	 <script type="text/javascript" src="<%=path%>/plug-in/web/system/account/person-rd-list.js"></script> 
   </c:if>
   <c:if test="${dataType =='unit' && reqType =='rdCheck' }">
   	 <script type="text/javascript" src="<%=path%>/plug-in/web/system/account/unit-rd-list.js"></script> 
   </c:if>
    <c:if test="${dataType =='org' && reqType =='rdCheck' }">
   	 <script type="text/javascript" src="<%=path%>/plug-in/web/system/account/org-rd-list.js"></script> 
   </c:if>
   
   <c:if test="${dataType =='person' && reqType =='hasCheck'}">
   	 <script type="text/javascript" src="<%=path%>/plug-in/web/system/account/person-has-list.js"></script> 
   </c:if>
   <c:if test="${dataType =='unit' && reqType =='hasCheck' }">   
   	 <script type="text/javascript" src="<%=path%>/plug-in/web/system/account/unit-has-list.js"></script> 
   </c:if>
    <c:if test="${dataType =='org' && reqType =='hasCheck' }">
   	 <script type="text/javascript" src="<%=path%>/plug-in/web/system/account/org-has-list.js"></script> 
   </c:if>
  
 
   
  <script type="text/javascript">
     $(function() {
     	tabbtns('.tabbtns'); 
     
     });
  
  
    function account_view(title,id){  	
  	     var url = path+"/userController/goAuditAccount.do?uid="+id+"&dataType="+$("#dataType").val();
	     layer_show_end(title,url,800,"",false,goSearch);
  	
    }
  
  
  function tabbtns(selector){
	  var $btns=$(selector).children('a');
	  $btns.on('click',function() {
	    $(this).addClass('selected').siblings().removeClass('selected');
	    
	    var dt = $(this).attr("data-val"); 
	    window.location.href = window.location.pathname+"?dataType="+dt+"&reqType="+$("#reqType").val()+
	    "&top="+encodeURI(encodeURI($("#TOP_TITLE").val())) +"&title="+encodeURI(encodeURI($("#TITLE").val())); 	    
	  
	    
	  });
	 } 
  
  
  function exportData(ty){
     $("#exportType").val(ty);	
     if("all"==ty){      		     
  		 sumbitForm("export-form");	
  		 
     }else if("selected"==ty){
     
     	var l = new Array();         
        $("#account-table input[type='checkbox']:checked").each(function() {		
		    l.push($(this).val());	
		   
	    });
	    
	    if(l.length > 0){
	    	sumbitForm("export-form");	    
		   				   					
	    }else{
	      layer.msg('无选中的项!',{icon: 0,time:1000});
	    }
	   	    	
     }

  }
  
  
  </script>
</body>
  
  
  
</html>
