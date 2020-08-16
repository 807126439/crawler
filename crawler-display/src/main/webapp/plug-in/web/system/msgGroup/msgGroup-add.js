
function sumbitForm(){
	$('#press').attr('onclick','javascript:void();');//改变提交按钮上的文字并将按钮设置为不可点击
		$("#form-model-add").submit();//提交表单 
		//解锁按钮
		$('#press').attr('onclick','sumbitForm()');
		
	
}
$(function(){
	iSelect({elem:".ui-select.ui-hide"});//select皮肤
		$('.skin-minimal input').iCheck({
			checkboxClass: 'icheckbox-blue',
			radioClass: 'iradio-blue',
			increaseArea: '20%'
		});
		
		
		
		
		$("#form-model-add").Validform({
			tiptype:8,
			ajaxPost:true,//ajax方式提交表单数据
			beforeSubmit:function(curform){	
				  var valArr=[];
				  $('#selectedlist').find('li>a').each(function() {
				    valArr.push($(this).data('id'));
				  });
				  $("#pickUserIds").val(valArr);

				  if( $("#groupName").val() == "" || $("#groupName").val() == null){
					//解锁按钮
						$('#press').attr('onclick','sumbitForm()');
						layer.msg("名称不能为空",{icon: 2,time:2000}); 
					  
					  	
					  return false;
				  }
				  			  
					  if( $("#pickUserIds").val() == "" || $("#pickUserIds").val() == null){
						//解锁按钮
							$('#press').attr('onclick','sumbitForm()');
							layer.msg("请选择相关部门",{icon: 2,time:2000}); 
						  /*layer.open({
							  title: '提示'
							  ,content: '请选择相关部门'
							});  */   
							  
						  return false;
					  }
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
});























/*$(function(){
	
		$('.skin-minimal input').iCheck({
			checkboxClass: 'icheckbox-blue',
			radioClass: 'iradio-blue',
			increaseArea: '20%'
		});	
					
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
		
		
});*/