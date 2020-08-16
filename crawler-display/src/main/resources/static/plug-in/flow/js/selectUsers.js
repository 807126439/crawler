
var isGetUsers = false;
function checkTreeByProcessCode(labelInput,option,idsInput,code,localCall,localParams){
	
	var checkIds = '';
	if(!isGetUsers){			
		$.ajax({
		    url: path+"/procIdentitylinkController/getNodeAfterStartUsers.do",
		    traditional:true,
		    dataType:'json',  
		    data:{
		    	"processCode":code
		    },
		    type:"post",
		    cache : false,  
		    async : false,  
		    success:function(data){	
		    		if(data.status == "y" || data.status == "Y"){
		    			var userInfos = data.data;
		    			if(userInfos){
		    				var checkArray = [];
		    				for ( var i = 0; i < userInfos.length; i++) {
		    					checkArray.push(userInfos[i].id);
							}		    				
		    				
		    				$(idsInput).val(checkArray.join(','));
		    			}
		    			isGetUsers=true;
		    		}else{
		    			layer.msg(data.info,{icon: 2,time:2500});
		    			return;
		    		}	    					         				           
		                		           
		       },  
		     error : function(error) {  
		            alert(error); 		            
		       } 
		});
	}
	
	checkTree(labelInput,option,idsInput,localCall,localParams);
}


/**
 * 
 * @param labelInput 
 * @param option
 * @param idsInput
 * @param procNodeId
 * @param localCall
 * @param localParams
 */
function checkTreeByProcNodeId(labelInput,option,idsInput,tlNodeId,localCall,localParams){
	
	var checkIds = '';
	if(!isGetUsers){			
		$.ajax({
		    url: path+"/procIdentitylinkController/getUsersByNodeId.do",
		    traditional:true,
		    dataType:'json',  
		    data:{
		    	"procNodeId":tlNodeId
		    },
		    type:"post",
		    cache : false,  
		    async : false,  
		    success:function(data){	
		    		if(data.status == "y" || data.status == "Y"){
		    			var userInfos = data.data;
		    			if(userInfos){
		    				var checkArray = [];
		    				for ( var i = 0; i < userInfos.length; i++) {
		    					checkArray.push(userInfos[i].id);
							}		    				
		    				
		    				$(idsInput).val(checkArray.join(','));
		    			}
		    			isGetUsers=true;
		    		}else{
		    			layer.msg(data.info,{icon: 2,time:2500});
		    		}	    					         				           
		                		           
		       },  
		     error : function(error) {  
		            alert(error); 		            
		       } 
		});
	}
	
	checkTree(labelInput,option,idsInput,localCall,localParams);
}



/**
 * 
 * @param labelInput 输入框或按钮
 * @param option	 地址和弹出参数
 * @param idsInput   保存选择id的容器
 * @param localCall  确定后执行方法
 * @param localParams 确定后执行方法的参数
 */
function checkTree(labelInput,option,idsInput,localCall,localParams){
    var ids=$(idsInput).val();
    var url=option.url?option.url:path+"/procNodeController/checkTree.do";
    var content=url+'?call=checkCall&ids='+ids;
    var layerIndex;
    if (option.limit) {
      content+='&limit='+option.limit
    }

    window.checkCall=function(data){
      //选择部门后的回调方法
      if (!data.join) {
        $(labelInput).val(data.name)
        ids=data.id;
      }else{
        $(labelInput).val($.map(data,function(item){ return item.name }).join(','))
        ids=$.map(data,function(item){ return item.id }).join(',');
      }
      $(idsInput).val(ids);
      layer.close(layerIndex);
     
      if($(idsInput).val()){
    	var userIds =  $(idsInput).val();
    	if(userIds.split(',').length>0){
    		localParams.allotUserIds = userIds;
    		localCall(localParams);
    	}else{
    		
    	   layer.msg('请选择派送!',{icon: 0,time:1000});
    	}  
      }else{
    	  layer.msg('请选择派送!',{icon: 0,time:1000});
      }
      
    }
    
    $(labelInput).blur();
    layerIndex=layer.open({
      type:2,
      title:option.title||'选择派送',
      skin:'layer-skin-default',
      closeBtn:2,
      shadeClose:2,
      area:[option.w?(option.w+'px'):'400px',option.h?(option.h+'px'):'440px'],
      content:content,
      end:function() {
        window.checkCall=null;
      }
    })
  }