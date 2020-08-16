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
    <title>发送短信</title>   
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta name="renderer" content="webkit|ie-stand">	
	<%@include file="/page/common/script/main-css.jsp" %>
	<link href="<%=path%>/plug-in/main/css/wxPlatform.css" rel="stylesheet" type="text/css">

  </head>
  
  <body> 
	
	<div class="ui-page-container ui-page-fixed">
      <div class="ui-panel" style="margin-right:270px">
       <div class="ui-panel-header">发送短信        
	    	<div class="ui-panel-header-right"><a href="javascript:history.go(-1)" class="size-s ui-btn ui-btn-primary">返回</a></div>
	    </div>
          <form class="form_sms ui-form">
              <div class="ui-form-item">
                <label class="ui-form-label length-l">收件人：</label>
                <div class="ui-input-block">
                  <input type="hidden" name="recipients" id="recipients">
                  <ul class="recipientslist"><li class="tip">请在右侧通讯录选择</li></ul>
                </div>
              </div>
              <div class="ui-form-item">
                <label class="ui-form-label length-l">手机号码：</label>
                <div class="ui-input-block">
                  <textarea class="ui-textarea" id="handWritePhone" style="height:60px" placeholder="多个电话号码请用英文逗号隔开"></textarea>
                </div>
              </div>
              
              <div class="ui-form-item">
                <label class="ui-form-label length-l">信息内容：</label>
                <div class="ui-input-block">
                  <textarea class="ui-textarea" name="content" id="content" style="height:150px"></textarea>
                </div>
              </div>
              <div class="ui-form-btns">
                <a class="ui-btn" href="javascript:;" id="send" title="发送">发送</a>
                
              </div>
          </form>
      </div>
      <div class="addressbook">
        <div class="addressbook-header">
            <div class="addressbook-header-title">通讯录</div>
            <div class="addressbook-header-right">
              <a href="javascript:;" class="addressbook-check_all">[全选]</a>
              <a href="javascript:;" class="addressbook-expand_all">[收起]</a>
            </div>
        </div>
        <div class="addressbook-search">
          <i class="addressbook-search-icon"></i>
          <input type="text" class="addressbook-search-input" placeholder="查找联系人/手机号码">
        </div>
        <div class="addressbook-content">
          <ul class="addressbook-tree ztree" id="addressbookTree">
          </ul>
        </div>
      </div>
  </div>
  

				
	<%@include file="/page/common/script/main-js.jsp" %>		
    <script type="text/javascript" src="<%=path%>/plug-in/h-ui/lib/zTree/v3/js/jquery.ztree.core.min.js"></script>                             
    <script type="text/javascript" src="<%=path%>/plug-in/h-ui/lib/zTree/v3/js/jquery.ztree.excheck.min.js"></script>
    <script type="text/javascript" src="<%=path%>/plug-in/main/js/addressBook.js"></script>
	
		
	<script type="text/javascript">
	  $(function() {
		  
		    var checkedIds=[];//选中用户id
		    var weiXinCodeList=[];//选中用户的微信号
		    var phoneList=[];//选中用户的微信号
		    var nameList=[];
		    var zTreeObj;

		    // zTree 的数据属性，深入使用请参考 API 文档（zTreeNode 节点数据详解）
		    var zNodes;
		    getTreeData();


		    $('.recipientslist').on('click','li',function() {
		      var id=$(this).data('id');
		      if (!id) return;
		      var node=zTreeObj.getNodesByParam('id',id)[0];
		      zTreeObj.checkNode(node,false,true,true)
		    })

		    $('#send').click(function() {
		     // 发送
		     // var phoneList=$('textarea[name="phone"]').val().split(';');//用户填写的手机号
		    //  $('textarea[name="content"]').val('选中用户id：'+checkedIds+'。选中用户微信号：'+weiXinCodeList)
		    
		        
			     $.ajax({
			    	  url: path+"/msgRecordController/addMsgRecord.do", 
					  type:"post",
					  beforeSend: function(){
						   					  
						  var handWritePhone = $("#handWritePhone").val();	
						  
						  if(phoneList.length <= 0 && handWritePhone ==""){							  
							  layer.msg("请选择/填写手机号码",{icon: 2,time:1000});
								 return false;					  
						  }
						  
						  if($("#content").val() == "" || $("#content").val() == null){
							  layer.msg("请填写发送内容",{icon: 2,time:1000});
							  return false;
						  }
					  },
					  data:{
						  type:2,
						  receiver:nameList.toString(),
						  phone:phoneList.join(","),
						  handWritePhone:$("#handWritePhone").val(),
						  content:$("#content").val()
					  },					 
					  error: function(request) {
				            alert("Connection error");
				      },
				      success: function(data) {
			        	 layer.msg(data.info,{icon: 1,time:600});
			        	 setTimeout(function(){
							  parent.$("#msgRecordManage").trigger("click"); 									      					      
					      },600); 
				      }
			    	  
			      }) 
		    })
		    
			  function getTreeData(){
				  
				  $.ajax({
					  url: path+"/msgRecordController/getMsgTreeData.do",
					    dataType:'json',  
					    type:"post",
					    success:function(data){		    					         				           
					    	zNodes = data;	 
					    	
						     zTreeObj=initAddressBook('.addressbook',zNodes,function(checkedNodes) {
						      //checked列表发生变化时触发
						      weiXinCodeList=[],phoneList=[],checkedIds=[],nameList=[];
						      if (checkedNodes.length==0) 
						        $('.recipientslist').append($('<li class="tip checked-mark">请在右侧通讯录选择</li>'))
						      else
						        $('.recipientslist .tip').remove();
						      for (var i = 0; i < checkedNodes.length; i++) {
						        if (checkedNodes[i].isParent) continue;
						        
						        if(checkedNodes[i].phone!=null && checkedNodes[i].phone!=""){
						        	
						        	 checkedIds.push(checkedNodes[i].id)
								        //weiXinCodeList.push(checkedNodes[i].weixinCode)
								        phoneList.push(checkedNodes[i].phone)
								        nameList.push(checkedNodes[i].name+"("+checkedNodes[i].phone+")")
						        }
						          
					        
						        if (checkedNodes[i].id) {
						          if ($('#recipient_'+checkedNodes[i].id).length==0) {
						        	  
						            var $li=$('<li class=""></li>')
						            $li.text(checkedNodes[i].name)
						            $li.data('id',checkedNodes[i].id)
						            $li[0].id='recipient_'+checkedNodes[i].id;
						        	
						            $('.recipientslist').append($li)
						          }
						          //标记选中元素用于删除未选中的元素
						          $('#recipient_'+checkedNodes[i].id).addClass('checked-mark')
						        }
						      }
						      //删除未选中的元素
						      $('.recipientslist>li').not('.checked-mark').remove();
						      $('.recipientslist>li').removeClass('checked-mark');
						    })
					   }
					  				  
				  })
			  
		     }
		  })
		  
		  
		  
    </script>												 
</body>
    
</html>