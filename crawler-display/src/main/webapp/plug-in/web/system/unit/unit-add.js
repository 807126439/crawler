$(function(){
	
//	    var unitType = $("#unitType").val();		
//		if(unitType == "contractor"){
//			$("#organizationCodeDiv").show()
//			//$("#contractorTypeCodeDiv").show()
//		}else{
//			$("#organizationCodeDiv").hide()
//			//$("#contractorTypeCodeDiv").hide()
//		}
	
	
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
		
		
//		$("#unitType").on("change",function(){		
//			var nowUnitType = $("#unitType").val();
//			if(nowUnitType == "contractor"){
//				$("#organizationCodeDiv").show()
//				//$("#contractorTypeCodeDiv").show()			
//				$("#organizationCode").attr("datatype","*");
//				$("#organizationCode").attr("nullmsg","请填写组织机构代码");					
//			}else{
//				$("#organizationCodeDiv").hide()
//				//$("#contractorTypeCodeDiv").hide()			
//				$("#organizationCode").removeAttr("datatype");
//				$("#organizationCode").removeAttr("nullmsg");
//			}
//		})
//		
		
});