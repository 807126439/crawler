function initAddressBook(elem,zNodes,onChange) {
  var $el=$(elem).find('.addressbook-tree')
  var zTreeObj;
  // zTree 的参数配置，深入使用请参考 API 文档（setting 配置详解）
  var setting = {
    check:{
      autoCheckTrigger : false,
      chkboxType : {"Y": "ps", "N": "ps"},
      chkStyle : "checkbox",
      enable : true,
      nocheckInherit : false,
      chkDisabledInherit : false,
      radioType : "level"
    },
    callback: {
      onClick:function(event,treeId,treeNode) {
        if (!treeNode.isParent)
          zTreeObj.checkNode(treeNode, !treeNode.getCheckStatus().checked, true, true);
        else
          zTreeObj.expandNode(treeNode,undefined, true, true, true)
      },
      onCheck:function(event,treeId,treeNode) {
        //更新全选状态
        var nodes=zTreeObj.getNodes();
        for (var i = nodes.length - 1; i >= 0; i--) {
          if (!nodes[i].getCheckStatus().checked||nodes[i].getCheckStatus().half) {
            updateCheckState(false)
            return
          } 
        }
        updateCheckState(true);//全选时
      }
    },
    view:{
      showLine: false,
      showIcon: false,
      addDiyDom:function addDiyDom(treeId, treeNode) {
        //自定义dom
        if (!treeNode.children){
           $("#" + treeNode.tId).addClass('not-parent')
        }else{
           $("#" + treeNode.tId).addClass('is-parent')
        }
        var aObj = $("#" + treeNode.tId + "_a");
        if (aObj.find('.num').length==0&&treeNode.children){
          var num = $("<span class='ext'></span>").text('('+treeNode.children.length+')')
          aObj.append(num);
        }
        if (aObj.find('.phone').length==0&&treeNode.phone){
          var phone = $("<span class='ext'></span>").text('('+treeNode.phone+')')
          aObj.append(phone);
        }
      }
    }
  }
 
	$.each(zNodes,function(i,item){
		item.open=true;
    })
	
  zTreeObj = $.fn.zTree.init($el, setting, zNodes);
  //zTreeObj.expandAll(true);

  //全选
  $(elem).find('.addressbook-check_all').on('click',function() {
    var allChecked=$(this).hasClass('inverse')
    zTreeObj.checkAllNodes(!allChecked)
    updateCheckState(!allChecked)
  })
  //展开
  $(elem).find('.addressbook-expand_all').on('click',function() {
    var expanded=!$(this).hasClass('inverse')
    zTreeObj.expandAll(!expanded)
    updateExpandState(!expanded)
  })

  $(elem).find('.addressbook-search-input').on('keyup',function() {
    var key=$(this).val();
    var rsNodes=zTreeObj.getNodesByFilter(function(node) {
    	
    	if((node.name).search(key)>-1 || (node.phone).search(key)>-1){
    		return node;
    	}
    	
      
    });
    $(elem).find('.addressbook-tree li').addClass('hide')
    for (var i = 0; i < rsNodes.length; i++) {
      $("#" + rsNodes[i].tId).removeClass('hide')
      $("#" + rsNodes[i].tId).closest('.is-parent').removeClass('hide')
    }
  })

  //更新全选状态
  function updateCheckState(allChecked) {
    if(allChecked){
      $(elem).find('.addressbook-check_all').addClass('inverse').text('[取消]')
    }else{
      $(elem).find('.addressbook-check_all').removeClass('inverse').text('[全选]')
    }
    onChange&&onChange(zTreeObj.getCheckedNodes(true))
  }
  //更新展开状态
  function updateExpandState(expanded) {
    if(expanded){
      $(elem).find('.addressbook-expand_all').removeClass('inverse').text('[收起]')
    }else{
      $(elem).find('.addressbook-expand_all').addClass('inverse').text('[展开]')
    }

  }
 
  return zTreeObj
}