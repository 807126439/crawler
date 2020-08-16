$(function(){
	
	   iSelect({elem:".ui-select.ui-hide",searchabled:true});//select皮肤
	
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
				    	  window.location.href = path+"/index.do";
				      },500); 					
				}				
			}
		});
		
		
});