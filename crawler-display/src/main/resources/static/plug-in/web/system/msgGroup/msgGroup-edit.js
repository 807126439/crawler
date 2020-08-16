
$(function(){
	iSelect({elem:".ui-select.ui-hide"});//select皮肤
	textarealength(".textarea", 500);
		$('.skin-minimal input').iCheck({
			checkboxClass: 'icheckbox-blue',
			radioClass: 'iradio-blue',
			increaseArea: '20%'
		});
		
		$("#form-model-edit").Validform({
			tiptype:8,
			ajaxPost:true,//ajax方式提交表单数据
			beforeSubmit:function(curform){		
				
				 var valArr=[];
				  $('#selectedlist').find('li>a').each(function() {
				    valArr.push($(this).data('id'));
				  });
				  $("#pickUserIds").val(valArr);
				  if( $("#groupName").val() == "" || $("#groupName").val() == null){
					  
					  layer.msg("名称不能为空",{icon: 2,time:2000});
						  
					  return false;
				  }
				  if( $("#pickUserIds").val() == "" || $("#pickUserIds").val() == null){
					  
					  layer.msg("请选择相关部门",{icon: 2,time:2000});
						  
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









