/**
 * checktree
 * @param  {string} elem   容器
 * @param  {array} zNodes 数据json
 * @param  {object} option 配置
 * @param  {string} option.limit=1 最多选择多少个,默认为1,单选。设为false为不限个数checkbox模式
 * @param  {string} option.name=name json数据节点的标题属性名
 * @param  {string} option.children=children json数据子节点数组的属性名
 * @param  {string} option.parentName=name json数据父亲节点的标题属性名
 */
function initCheckTree(elem,zNodes,option){
  $(elem).append('<div class="checktree-header">\
                    <a href="javascript:;" class="checktree-check_all" style="display: none">[全选]</a>\
                    <a href="javascript:;" class="checktree-expand_all" style="display: none">[展开]</a>\
                    <div class="checktree-header-right">\
                      <a href="javascript:;" id="sure">确定</a>\
                    </div>\
                  </div>\
                  <div class="checktree-search">\
                    <i class="checktree-search-icon"></i>\
                    <input type="text" class="checktree-search-input" placeholder="检索">\
                  </div>\
                  <div class="checktree-content">\
                    <ul class="checktree-tree ztree" id="checktreeTree">\
                    </ul>\
                  </div>')

  var limit=1; //最多选择的数量
  if (option&&(option.limit==false||option.limit=='false'))
      limit=100000;
  else if (!option||!option.limit)
    limit=1;
  else if (option&&!isNaN(parseInt(option.limit)))
    limit=parseInt(option.limit)

  if (limit==100000) {
    $('.checktree-check_all').show()
  }

  var key_name=option&&option.name||'name'
  var key_children=option&&option.children||'children'
  var key_parentName=option&&option.parentName||'name'
  
  var $el=$(elem).find('.checktree-tree')
  var zTreeObj;
  // zTree 的参数配置，深入使用请参考 API 文档（setting 配置详解）
  var setting = {
    data:{
      key:{
        name:key_name,
        children:key_children,
      }
    },
    check:{
      autoCheckTrigger : false,
      chkboxType : {"Y": "ps", "N": "ps"},
      chkStyle : limit==1?'radio':"checkbox",
      enable : true,
      nocheckInherit : false,
      chkDisabledInherit : false,
      radioType : "all"
    },
    callback: {
      onClick:function(event,treeId,treeNode) {
        if (!treeNode.isParent)
          zTreeObj.checkNode(treeNode, !treeNode.getCheckStatus().checked, true, true);
        else
          zTreeObj.expandNode(treeNode,undefined, false, true, true)
      },
      beforeCheck:function(treeId, treeNode) {
        if (treeNode.getCheckStatus().checked) return
        var nodes=zTreeObj.getCheckedNodes(true)
        var checkNum=0;
        for (var i = 0; i < nodes.length; i++)
          if(!nodes[i].isParent)
            checkNum++
        if (limit==1) {
          //单选
          if (typeof treeNode[key_children]!='undefined')
            return false
        }else{
          //多选
          var num;
          if (treeNode.isParent)
            num=getChildNodeNum(treeNode)+checkNum
          else
            num=1+checkNum
          if (num>limit) {
            layer.msg('最多选择'+limit+'项',{time: 1200})
            return false
          }
        }
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
      addDiyDom:function(treeId, treeNode) {
        //自定义dom
        if (!treeNode[key_children]){
           $("#" + treeNode.tId).addClass('not-parent')
        }else{
           $("#" + treeNode.tId).addClass('is-parent')
           $('.checktree-expand_all').show()
        }
        var aObj = $("#" + treeNode.tId + "_a");
        if (aObj.find('.num').length==0&&treeNode[key_children]){
          var num = $("<span class='ext'></span>").text('('+getChildNodeNum(treeNode)+')')
          aObj.append(num);
        }
      }
    }
  }

  //源数据处理
  function transformData(arr){
    //保存源数据
    $.each(arr,function(i,item){
      if (item[key_children]) {
        transformData(item[key_children])
        if (!item[key_name]) {
          item[key_name]=item[key_parentName]
        }
        return
      }
      item.originData=$.extend({},item)
    })
  }

  transformData(zNodes)
  zTreeObj = $.fn.zTree.init($el, setting, zNodes);
  
  //全选
  $(elem).find('.checktree-check_all').on('click',function() {
    var allChecked=$(this).hasClass('inverse')
    zTreeObj.checkAllNodes(!allChecked)
    updateCheckState(!allChecked)
  })
  //展开
  $(elem).find('.checktree-expand_all').on('click',function() {
    var expanded=$(this).hasClass('inverse')
    zTreeObj.expandAll(!expanded)
    updateExpandState(!expanded)
  })

  //筛选
  $(elem).find('.checktree-search-input').on('keyup',function() {
    var key=$(this).val();
    var rsNodes=zTreeObj.getNodesByFilter(function(node) {
      return (node[key_name]||'').search(key)>-1
    });
    if (key.search(/^\s*$/)==-1)
      zTreeObj.expandAll(true);
    $(elem).find('.checktree-tree li').addClass('hide')
    for (var i = 0; i < rsNodes.length; i++) {
      $("#" + rsNodes[i].tId).removeClass('hide')
      $("#" + rsNodes[i].tId).parents().filter('.is-parent').removeClass('hide')
      function expandParentNode(node){
        var pId=node.parentTId
        if (pId) {
          var pNode=zTreeObj.getNodeByTId(pId)
          zTreeObj.expandNode(pNode,true)
          expandParentNode(pNode)
        }
      }
    }
  })

  //更新全选状态
  function updateCheckState(allChecked) {
    if(allChecked){
      $(elem).find('.checktree-check_all').addClass('inverse').text('[取消]')
    }else{
      $(elem).find('.checktree-check_all').removeClass('inverse').text('[全选]')
    }
    var data=[];
    $.each(zTreeObj.getCheckedNodes(true),function(i,item){ 
      if (item.originData)
        data.push($.extend({},item.originData))
    });
    $(elem).trigger('checktree.change',{checkData:data})
  }
  //更新展开状态
  function updateExpandState(expanded) {
    if(expanded){
      $(elem).find('.checktree-expand_all').addClass('inverse').text('[收起]')
    }else{
      $(elem).find('.checktree-expand_all').removeClass('inverse').text('[展开]')
    }

  }

  //获取某个节点的所有子节点个数
  function getChildNodeNum(node){
    var num=0;
    var childNodes=node[key_children];
    for (var i = 0; i < childNodes.length; i++){
      if(!childNodes[i].isParent)
        num++
      else
        num+=getChildNodeNum(childNodes[i])
    }
    return num
  }
}