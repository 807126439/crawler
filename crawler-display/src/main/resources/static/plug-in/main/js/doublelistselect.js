 var userIds = $("#pickUserIds").val();
 var groupType = $("#groupStyle").val();
 
$(function(){
	
	
	if (!Array.prototype.indexOf)
	  {
	    Array.prototype.indexOf = function(elt /*, from*/)
	    {
	      var len = this.length >>> 0;
	      var from = Number(arguments[1]) || 0;
	      from = (from < 0)
	           ? Math.ceil(from)
	           : Math.floor(from);
	      if (from < 0)
	        from += len;
	      for (; from < len; from++)
	      {
	        if (from in this &&
	            this[from] === elt)
	          return from;
	      }
	      return -1;
	    };
	  }
	
	

  var $lists=$('#listgroup,#selectedlist');
  var $listgroup=$('#listgroup');
  var $selectedlist=$('#selectedlist');
  var $moveToLeft=$('.moveToLeft');
  var $moveToRight=$('.moveToRight');
  var $moveAllToLeft=$('.moveAllToLeft');
  var $moveAllToRight=$('.moveAllToRight');
  var $filter=$('#filter');
  var $group=$('#groupType');

  
  
  
  
  
  loadData();


  $lists.on('click','li>a',function(e) {
    var bSHIFT = e.shiftKey;
    var bCTRL = e.ctrlKey;
    var $items=$(this).parentsUntil($lists.parent()).find('li>a').parent();
    var $selected=$items.filter('.selected');
    var $current=$(this).closest('li');
    if (bSHIFT) {
      if ($selected.length!==0) {
        var firstIndex=$items.index($selected.first());
        var lastIndex=$items.index($selected.last());
        var currentIndex=$items.index($current);
        if (currentIndex>=firstIndex) {
          $items.removeClass('selected');
          $items.slice(firstIndex,currentIndex+1).filter(":visible").addClass('selected');
        }else{
          $items.removeClass('selected');
          $items.slice(currentIndex,lastIndex+1).filter(":visible").addClass('selected');
        }
      }else{
        $current.toggleClass('selected');
      }
    }else if (bCTRL) {
      $current.toggleClass('selected');
    }else{
      $current.toggleClass('selected');
      $selected.not($current).removeClass('selected');
    }
  });
  $moveToRight.on('click',moveToRight);
  $moveToLeft.on('click',moveToLeft);
  $moveAllToRight.on('click',function() {
    $listgroup.find('li>a').parent().filter(':visible').addClass('selected');
    moveToRight();
  });
  $moveAllToLeft.on('click',function() {
    $selectedlist.find('li>a').parent().filter(':visible').addClass('selected');
    moveToLeft();
  });
  
  
  /*选择类型*/
  $group.on('change',function() {
	  
    var groupName=$(this).val();
    var $items=$listgroup.find('li>a').parent();
    $items.removeClass('selected').addClass('disabled-group');
    if(groupName == 0){
    	//$listgroup.find('.flag'+1).removeClass('disabled-group');
    	//$listgroup.find('.flag'+2).removeClass('disabled-group');
    }else{
    	$listgroup.find('.flag'+groupName).removeClass('disabled-group');
    }
    
    
    
  });
  
  
  
  $filter.on('keyup',function() {
    var keyword=$(this).val();
    var $items=$listgroup.find('li>a').parent();
    $items.removeClass('selected').each(function() {
      if( $(this).find('a').text().indexOf(keyword)===-1 ){
    	  
        $(this).addClass('disabled-notkey');
      }else{
        $(this).removeClass('disabled-notkey');
      }
    });
  });
  
  $('#press').on('click',function() {
    getValue();
  });
  
  function closeOverlay() {
    layer.close(index);
  }
  $("#groupType").change(function(){
		
		var typeId= $("#groupType").val();			
		if(typeId == 1){			
		}else{
		}
	})

  //初始化数据
  function loadData() {
	  
	  
	  $.ajax({
		  url:path+"/msgGroupController/getUnitData.do",
		  type:'post',
		  dataType:'json',
		  success:function(data){
			    $lists.html('');
		        $(data.items).each(function() {
		        	var groupIds = this.groupId;
		        	if(userIds!="" && userIds !=null){		        		
		        		var ids = userIds.split(",");
		                	  var flag = false;		        			  
		        			  for ( var i = 0; i < ids.length; i++) {				        			
				        			if(ids[i] == this.id){
				        				flag = true;
				        			}				        												
		        			  }
		        			  if(flag){
			        				 $listgroup.append($('<li class="selected" ><a href="javascript:void(0)" class="item-'+this.id+'" data-id="'+this.id+'">'+this.groupName+'</a></li>'));
 		          			  }else{
 		          				  
 		          				  if(groupIds == null || groupIds == ""){
 		          					  if(groupType == this.unitFlag){
 		          						$listgroup.append($('<li class="flag'+this.unitFlag+'"><a href="javascript:void(0)" class="item-'+this.id+'" data-id="'+this.id+'">'+this.groupName+'</a></li>'));
 		          					  }
 		          					
 		          				  }
			        		    }
		                   
	        		    moveToRight();
		        	}else{
		        		/*左边数据展示*/
		        		if(groupIds == null || groupIds == ""){
				           $listgroup.append($('<li class="flag'+this.unitFlag+'"><a href="javascript:void(0)" class="item-'+this.id+'" data-id="'+this.id+'">'+this.groupName+'</a></li>'));
		        		
		        		} 
		        		var $items=$listgroup.find('li>a').parent();
		        	    $items.removeClass('selected').addClass('disabled-group');
		        	}
		        });
		  }
	  });
  
  }
  function moveToRight() {
    var $selected=$listgroup.find('.selected').filter(":visible");
    $selectedlist.find('.selected').removeClass('selected');
    $selected.clone().appendTo($selectedlist).addClass('selected');
    $selected.removeClass('selected').addClass('disabled-item');
    countNum();
  }

  function moveToLeft() {
    var $selected=$selectedlist.find('.selected');
    $listgroup.find('.selected').removeClass('selected');
    $selected.each(function() {
      var $target=$listgroup.find('.item-'+$(this).find('a').data('id')).closest('li').removeClass('disabled-item');
      if ($target.is(':visible')) {
        $target.addClass('selected');
      }
    });
    $selected.remove();
    countNum();
  }


  function countNum() {
    $('.rightbox .tt strong').text($selectedlist.find('li').length);
  }
});

function getValue() {
  var valArr=[];
  $('#selectedlist').find('li>a').each(function() {
    valArr.push($(this).data('id'));
  });
  
  
  $("#pickUserIds").val(valArr);
  
 
}