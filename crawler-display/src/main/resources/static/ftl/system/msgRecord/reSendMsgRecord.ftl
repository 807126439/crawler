<#include "../../common/tag/tags.ftl"/>

<!DOCTYPE html>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加</title>
    
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta name="renderer" content="webkit|ie-stand">

	  <#include "../../common/script/main-css.ftl"/>
  </head>
  
  
   <body style="background: #fff">  
  
		<div class="ui-page-container ui-page-fixed">
			<div class="ui-panel" style="position: absolute;top: 0;left:0;right: 0;botto@m. 0">
		    <div class="ui-form">
			  <form action="${request.contextPath}/msgRecordController/reSendMsgRecord.do" method="post" class="form form-horizontal" id="form-model-add">
			    <input name="id" value="${(model.id)!}" readonly="readonly" type="hidden">
			   	<div class="ui-form-item">
					<label class="ui-form-label">收件人：</label>
					<div class="ui-input-block">
						<textarea type="text" rows="4"  class=ui-textarea readonly="readonly">${(model.receiver)!}</textarea>
					</div>
				</div>

				<div class="ui-form-item">
					<label class="ui-form-label"><em>*</em>信息内容：</label>
					<div class="ui-input-block">
						<textarea type="text" rows="9" class="ui-textarea" name="newContent"  datatype="*" nullmsg="请填写短信内容">${(model.content)!}</textarea>
					</div>
				</div>
			   			    
		 		 <div class="ui-form-item ui-form-btns">
		      	   <@m.if_own_auth authCode="addMsgRecord">
		      	   	 <a href="javascript:void(0)" class="ui-btn ui-btn-secondary" onclick="sumbitForm('form-model-add')">确定</a>
		      	   </@m.if_own_auth>      		       		
		      	</div>

			  </form>
			        		  
		   </div>        
			  
		</div>
		</div>


		<#include "../../common/script/main-js.ftl"/>
   	    <script type="text/javascript">
   	    $(function(){
   	    	$("#form-model-add").Validform({
   				tiptype:9,
   				ajaxPost:true,
   				beforeSubmit:function(curform){
   					return true;			  	 			  	
   				},
   			
   				callback:function(data){				
   					if(data.status == "y" || data.status == "Y"){			
   					      setTimeout(function(){
   					      	parent.goSearch();
   							var index = parent.layer.getFrameIndex(window.name);
   							parent.layer.close(index);
   							      					      
   					      },500); 					
   					}				
   				}
   			});
		})
   	    
	  
	  </script>	
  </body>
</html>