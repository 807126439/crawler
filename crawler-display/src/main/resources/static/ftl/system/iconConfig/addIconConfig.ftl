<#include "../../common/tag/tags.ftl"/>

<!DOCTYPE html>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>上传图标</title>
    
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta name="renderer" content="webkit|ie-stand">

	  <#include "../../common/script/main-css.ftl"/>

  </head>
  
  
   <body>  
 
          
    <div class="content-padding">
		<form>
			<table class="ui-table ui-table-border-row ui-table-border-col">
				<tr class="ui-table-condensed">
					<td>图标类型:</td>
					<td>
						<select class="ui-select" id="iconType"  style="width:180px">
				             <#list iconTypeList as ty >
								  <option value="${ty.dictValue}">${ty.dictItem}</option>
							 </#list>
				         </select>	
		            </td>
				</tr>	
				<tr class="ui-table-condensed">
					<td colspan="2"><p>注意事项：</p>
						<p>1、请选择图标类型  2、只能上传图片</p>
					</td>
				</tr>
			</table>

			<div class="ui-form-item ui-form-btns">
				<a href="javascript:void(0)" class="ui-btn size-s ui-btn-primary" id="uploadTempate" style="display:inline-block;">上传图标</a>
			</div>
		</form>
	</div>



	<#include "../../common/script/main-js.ftl" >
	<#include "../../common/script/file-js.ftl" >
	<script type="text/javascript">
	   	$(function(){   		
	   		initTemplateUploader();	   		
	   	});
	   	
	 	// 初始化模板上传组件
	   	function initTemplateUploader(callBack){
	   		    uploader = WebUploader.create({
	   		      resize: false, // 不压缩image
	   		      swf: path + "/plug-in/main/libs/webuploader-0.1.5/Uploader.swf",
	   		      server: path +"/iconConfigController/addIconConfig.do",
	   		      formData:{"iconType":$("#iconType").val()},
	   		      pick: "#uploadTempate",
	   		      auto:true,
	   		      accept:{
	   		        title:"Images",
	   		        extensions:"gif,jpg,jpeg,bmp,png",
	   		        mimeTypes:"image/*"
	   		      },
	   		      fileNumLimit:300,
	   		      fileSizeLimit: 50 * 1024 * 1024,
	   		      fileSingleSizeLimit: 10 * 1024 * 1024
	   		    });
	   		    
	   		    //上传loading
	   		    var uploadLay;
	   		    
	   		    uploader.on("startUpload",function(file,response) {
	   		      uploadLay=layer.msg("上传中...",{icon:16,shade:0.01});
	   		    });

	   		    //成功事件，针对一个文件
	   		    uploader.on('uploadSuccess', function(file,response) {
	   		    	if (response != null){
	   		    		if(response.status == "y" || response.status == "Y"){
	   		    			layer.msg("导入成功",{icon:1})
	   		    		}   		    		
	   		    	}
	   		    });
	   		    
	   		    // 所有文件上传成功后调用
	   		    uploader.on("uploadFinished",function(file,response) {
	   		    	layer.close(uploadLay);
	   		    	//清空队列
	   		        uploader.reset();
	   		    	
	   		        parent.goSearch(false);
	    	
	   		    });
	   	}

   	</script>
  </body>
  
  
</html>





