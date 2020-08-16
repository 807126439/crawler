/**
 * checktree
 * @param  {string} elem   容器
 * @param  {array} zNodes 数据json
 * @param  {object} option 配置
 * @param  {string} option.limit=1 最多选择多少个,默认为1,单选。设为false为不限个数checkbox模式
 * @param  {string} option.name=name json数据叶子节点的标题属性名
 * @param  {string} option.children=children json数据子节点数组的属性名
 * @param  {string} option.parentName=name json数据父亲节点的标题属性名
 * @param  {Boolean} option.autoExpand=false 是否默认展开所有节点,当singlePath为true时只展开第一个父节点
 * @param  {Boolean} option.singlePath=false 是否只能有一条展开路径
 * @param  {Boolean} option.type=1 默认为垂直的tree，2时为水平显示的双盒模式
 * @param  {Object} option.searchable=true 是否启用查询
 * @param  {Object} option.simpleData={enable:false} ztree的简单数据模式
 * @param  {Boolean} option.simpleData.enable=false 是否启用
 * @param  {string} option.simpleData.idKey=id id键名
 * @param  {string} option.simpleData.pIdKey=pId 父id属性的键名
 * @param  {string} option.simpleData.rootPId=null 根节点id
 * @param  {string} option.pNodeCheckable=false 父节点是否可选（单选模式下生效）
 * @param  {string} option.skin=0 菜单树皮肤，设为1可使用原皮肤(需引入ztree插件样式表),2为原皮肤字体放大版
 * @version 1.1
 */
function initCheckTree(elem,zNodes,option){
  $(elem).append('<div class="checktree-header">\
                    <a href="javascript:;" class="checktree-check_all" style="display: none">[全选]</a>\
                    <a href="javascript:;" class="checktree-expand_all" style="display: none">[展开]</a>\
                    <div class="checktree-header-right">\
                      <a href="javascript:;" id="sure">确定</a>\
                    </div>\
                  </div>'+
                  ((typeof option.searchable=="undefined"||option.searchable)?'\
                  <div class="checktree-search">\
                    <i class="checktree-search-icon"></i>\
                    <input type="text" class="checktree-search-input" placeholder="检索">\
                  </div>':'')+
                  '<div class="checktree-content">\
                    <ul class="checktree-tree ztree" id="checktreeTree'+(!option.skin||option.skin=="0"?"":option.skin)+'">\
                    </ul>\
                  </div>')
  option=$.extend({
    simpleData:{enable:false}
  },option)
  var limit=1; //最多选择的数量
  if (option.limit==false||option.limit=='false')
      limit=100000;
  else if (!option.limit)
    limit=1;
  else if (!isNaN(parseInt(option.limit)))
    limit=parseInt(option.limit)

  if (option.type==2) {
    $('.checktree').addClass('checktree-skin-doublebox')
    option.autoExpand=true;
    option.singlePath=true;
  }

  //多选时pNodeCheckable必须为false
  if (limit!=1&&option.pNodeCheckable) {
    option.pNodeCheckable=false;
  }

  var key_name=option.name||'name'
  var key_children=option.children||'children'
  var key_parentName=option.parentName||'name'
  
  var $el=$(elem).find('.checktree-tree')
  var zTreeObj;
  var curExpandNode = null;//当前展开路径

  // zTree 的参数配置，深入使用请参考 API 文档（setting 配置详解）
  var setting = {
    data:{
      simpleData: option.simpleData,
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
        else{
          zTreeObj.expandNode(treeNode,undefined, false, true, true)
        }
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
          if (treeNode.isParent&&!option.pNodeCheckable)
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
      },
      beforeCollapse:function(treeId, treeNode) {
        if (option.type==2&&$('#'+treeNode.tId).children('ul').hasClass('last-ul')) {
          if (treeNode.open) return false;
        }
      },
      beforeExpand:function(treeId, treeNode) {
        if (!treeNode[key_children]||treeNode[key_children].length==0) {return false;}
        //路径单选
        if (option.singlePath)
          singlePath(treeNode)
      },
      onExpand:function(event, treeId, treeNode) {
        if (option.type==2&&$('#'+treeNode.tId).children('ul').hasClass('last-ul')) {
          $('#'+treeNode.tId).parent().find('.open').removeClass('open')
          $('#'+treeNode.tId).addClass('open');
          $('#'+treeNode.tId).children('ul').scrollTop(0);
        }
        curExpandNode = treeNode;
      }
    },
    view:{
      showLine: option.skin==1||option.skin==2?true:false,
      showIcon: false,
      expandSpeed:option.type==2?'':'fast',
      addDiyDom:function(treeId, treeNode) {
        //自定义dom
        if (!treeNode.isParent){
           $("#" + treeNode.tId).addClass('not-parent')
           $("#" + treeNode.tId).parent('ul').addClass('last-ul')
        }else{
           $("#" + treeNode.tId).addClass('is-parent')
        }
        var aObj = $("#" + treeNode.tId + "_a");
        if (aObj.find('.num').length==0&&treeNode.isParent){
          var num = $("<span class='ext'></span>").text('（'+getChildNodeNum(treeNode)+'）')
          aObj.append(num);
        }
      }
    }
  }

  //源数据处理
  var ids=[];
  function transformData(arr){
    //保存源数据
    $.each(arr,function(i,item){
      if (item[key_children]||item.isParent) {
        if (item[key_children]){
          transformData(item[key_children]);
        }
        if (!item[key_name]&&item[key_children]) {
          item[key_name]=item[key_parentName]
        }
        item.isParent=true;
        if (item.halfCheck) {
          delete item.halfCheck
        }
      }
      if (item.checked&&(option.pNodeCheckable||!item.isParent)) {
        ids.push(item[option.simpleData.idKey||'id'])
      }
      delete item.checked
      delete item.halfCheck
      if (option.pNodeCheckable||!item.isParent) {
        item.originData=$.extend({},item)
      }
    })
  }

  transformData(zNodes);
  zTreeObj = $.fn.zTree.init($el, setting, zNodes);

  //默认选中
  $.each(ids,function(i,item) {
    var node=zTreeObj.getNodesByParam(option.simpleData.idKey||'id',item);
    zTreeObj.checkNode(node[0],true,true,true)
  })

  if (limit==100000) {
    $('.checktree-check_all').show();
    //全选操作
    $(elem).find('.checktree-check_all').on('click',function() {
      var allChecked=$(this).hasClass('inverse')
      zTreeObj.checkAllNodes(!allChecked)
      updateCheckState(!allChecked)
    })
  }
  if ($('.is-parent').length>0&&(!option||!option.singlePath)) {
    $('.checktree-expand_all').show();
    //展开操作
    $(elem).find('.checktree-expand_all').on('click',function() {
      var expanded=$(this).hasClass('inverse')
      zTreeObj.expandAll(!expanded)
      updateExpandState(!expanded)
    })
  }

  if (option.autoExpand) {
    //默认展开
    if (option.singlePath) {
      var nodes=zTreeObj.getNodes();
      var firstP,firstN;
      firstN=zTreeObj.getNodesByFilter(function(node) {
          return node.isParent!==true&&node.checked==true
      },true);
      if (!firstN) {
        firstN=zTreeObj.getNodesByFilter(function(node) {
            return node.isParent!==true
        },true);
      }
      if (firstN) firstP=firstN.getParentNode();
      if (!firstP) {
        firstP=$(nodes).filter(function(i,item) {
          return item.isParent==true&&(item.checked==true||item.halfCheck==true||item.check_Child_State>=1)
        }).get(0);
      }
      if (!firstP) {
        firstP=$(nodes).filter(function(i,item) {
          return item.isParent==true
        }).get(0)
      }
      if (firstP)
        zTreeObj.expandNode(firstP,true,true,true,true);//展开第一个节点
    }else
      $('.checktree-expand_all').trigger('click');//展开全部
  }

  //筛选
  $(elem).find('.checktree-search-input').on('keyup',function(e) {
    if (e.keyCode==9) {return}
    var key=$(this).val();

    if (key.search(/^\s*$/)==-1){
      zTreeObj.expandAll(false);
    }
    else{
      $(elem).find('.checktree-tree li').removeClass('hide')
      $(elem).find('.checktree-tree li ul').removeClass('show')
      return;
    }
    $(elem).find('.checktree-tree li').addClass('hide')
    $(elem).find('.checktree-tree li ul').addClass('show')

    var rsNodes=zTreeObj.getNodesByFilter(function(node) {
      return (node[key_name]||'').search(key)>-1
    });
    for (var i = 0; i < rsNodes.length; i++) {
      $("#" + rsNodes[i].tId).removeClass('hide')
      $("#" + rsNodes[i].tId).parents('li').removeClass('hide')
      
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
    var childNodes=node[key_children]||[];
    for (var i = 0; i < childNodes.length; i++){
      if(!childNodes[i].isParent)
        num++
      else
        num+=getChildNodeNum(childNodes[i])
    }
    return num
  }

  //路径单选
  

  function singlePath(treeNode) {
    var pNode = curExpandNode ? curExpandNode.getParentNode():null;
    var treeNodeP = treeNode.parentTId ? treeNode.getParentNode():null;
    for(var i=0, l=!treeNodeP ? 0:treeNodeP[key_children].length; i<l; i++ ) {
      //收起目标的兄弟节点
      if (treeNode !== treeNodeP[key_children][i]) {
        zTreeObj.expandNode(treeNodeP[key_children][i], false);
      }
    }
    while (pNode) {
      if (pNode === treeNode) {
        break;
      }
      pNode = pNode.getParentNode();
    }
    if (!pNode) {
        if (treeNode === curExpandNode) return;
              if (!curExpandNode) {
                  tmpRoot = treeNode;
                  while (tmpRoot) {
                      tmpTId = tmpRoot.tId;
                      tmpRoot = tmpRoot.getParentNode();
                  }
                  rootNodes = zTreeObj.getNodes();
                  for (i=0, j=rootNodes.length; i<j; i++) {
                      n = rootNodes[i];
                      if (n.tId != tmpTId) {
                          zTreeObj.expandNode(n, false);
                      }
                  }
              } else if (curExpandNode && curExpandNode.open) {
          if (treeNode.parentTId === curExpandNode.parentTId) {
            zTreeObj.expandNode(curExpandNode, false);
          } else {
            var newParents = [];
            while (treeNode) {
              treeNode = treeNode.getParentNode();
              if (treeNode === curExpandNode) {
                newParents = null;
                break;
              } else if (treeNode) {
                newParents.push(treeNode);
              }
            }
            if (newParents!=null) {
              var oldNode = curExpandNode;
              var oldParents = [];
              while (oldNode) {
                oldNode = oldNode.getParentNode();
                if (oldNode) {
                  oldParents.push(oldNode);
                }
              }
              if (newParents.length>0) {
                zTreeObj.expandNode(oldParents[Math.abs(oldParents.length-newParents.length)-1], false);
              } else {
                zTreeObj.expandNode(oldParents[oldParents.length-1], false);
              }
            }
          }
        }
        curExpandNode = treeNode;
    }
  }
  return zTreeObj;
}