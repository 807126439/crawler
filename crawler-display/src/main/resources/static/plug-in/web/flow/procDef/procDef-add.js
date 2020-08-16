$(function(){
	
		iSelect({elem:".ui-select.ui-hide"});
	
		 $('input').iCheck({
		      //radio皮肤
		      radioClass: 'iradio_flat-blue',
		      checkboxClass: 'icheckbox_flat-blue'
		    })
					
		$("#form-model-add").Validform({
			tiptype:myTiptype,
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