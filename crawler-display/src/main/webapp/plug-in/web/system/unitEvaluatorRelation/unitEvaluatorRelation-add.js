$(function(){
	
		 $('.skin-minimal input').iCheck({
	      checkboxClass: 'icheckbox_square-blue',
	      radioClass: 'iradio_square-blue'
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
		
		
});