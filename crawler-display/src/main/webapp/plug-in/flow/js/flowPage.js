function createFlowChart(selector,flowdata,editable,onlyShow){
	var flowchart,
			initdata=JSON.parse(JSON.stringify(flowdata)),
			editable=typeof editable=='undefined'?true:editable;
      if (onlyShow) {editable=false;}
	if (!editable) {
		$(selector).addClass('can_not_edit')
	}else{
		$(selector).removeClass('can_not_edit')
	}

	flowchart=$.createGooFlow($(selector),{
    width:$(selector)[0].offsetWidth,
    height:$(selector)[0].offsetHeight,
    toolBtns:["start","end","node","empty"], //工具按钮
    haveHead:onlyShow?false:true,//有头部
    headLabel:true,//标题
    headBtns:editable===true?["new","save","undo","redo"]:false,//头部按钮
    haveTool:editable,//有工具栏
    haveGroup:true,//是否用分区工具
    useOperStack:true,
    size:4,//内部画布大小倍数
    nodeSize:[130]
  });

  flowchart.setNodeRemarks({
    cursor:"选择指针",
    direct:"结点连线",
    "direct-dashed":"虚线连线",
    "direct-noArrow":"直线",
    start:"开始节点",
    end:"结束节点",
    node:"普通结点",
    empty:"空结点",
    group:'分组'
  });

  //自定义节点渲染
  flowchart.customRenderDom=function(id,nodeData){
    var $content;
    if (!nodeData.title){
      $content=$('<div class="d-content"><div class="d-content-center"></div></div>');
      $content.children().text(nodeData.name);
    }else{
      var html=template('nodeTpl',nodeData);
      $content=$(html);
    }
    //绑定双击弹窗事件
    $content.on('dblclick',{node:id},editNodeFromData);
    return {
      extClass:[nodeData&&nodeData.state?('type-'+nodeData.state):''],//给节点添加自定义类名
      content:$content//自定义渲染的内容
    }
  };
  //节点添加到画布时触发的回调
  flowchart.afterAppend=function($node){
    calculateContent($node);//计算高度
    if($node.hasClass("GooFlow_item_start")){
    	$node.find(".d-content-center").text("开始");
    }
    console.log($node);
  }

  function editNodeFromData(e){
    //弹窗编辑
    var nodeId=e.data.node
    var nodeData=flowchart.$nodeData[nodeId];
    
    if(nodeData.type=="start"){
    	return;
    }
    
    var $form=$(template('formTpl',nodeData));
    $('#form_edit').remove();
    $form.appendTo($('body'));
    if (!editable) $form.find('input,textarea').attr('readonly','readonly')

    layer.open({
      type:1,
      title:editable?'编辑':'查看',
      area:'400px',
      skin: 'layui-layer-rim',
      shade: 0.2,
      shadeClose: true,
      content:$form,
      btn:editable?['确定','取消']:['关闭'],
      yes:function(index){
        if (!editable) {
          layer.close(index)
          return
        }
        //确定
        var newFormData={};//新表单值
        newFormData.title=$form.find('.form_edit-title').val()
        newFormData.limittime=$form.find('.form_edit-limittime').val()
        newFormData.dutyMans=$form.find('.form_edit-dutyMans').val()
        newFormData.dutyManIds=$form.find('.form_edit-dutyManIds').val()
        newFormData.dutyMans=$form.find('.form_edit-dutyMans').val()
        newFormData.subprocess=$form.find('.form_edit-subprocess').val()
        newFormData.subprocessId=$form.find('.form_edit-subprocessId').val()
        newFormData.requirement=$form.find('.form_edit-requirement').val() 
        //newFormData.procType=$form.find('.form_edit-procType').val()

        layer.close(index)

        //表单验证
        if (/^\s*$/.test(newFormData.title)) {
          layer.msg('标题不能为空')
          return
        }
             
        $.extend(nodeData,newFormData);//nodeData对象更新
        //更新节点内容
        var html=template('nodeTpl',nodeData);
        $content=$(html);
        $('#'+nodeId).find('.d-content').html($content.html())
        $('#'+nodeId).removeClass('type-1').removeClass('type-2').removeClass('type-3').removeClass('type-4').addClass('type-'+nodeData.state)
        calculateContent($('#'+nodeId));//计算内容高度
        flowchart.resizeNode(nodeId,$('#'+nodeId).width()+2,$('#'+nodeId).height()+2 );
      }
    })
  }

  //编辑模式时的初始化和绑定
  if (!onlyShow) {
      //进入或退出编辑模式
      var $eidtBtn=$("<a href='javascript:void(0)' class='GooFlow_head_btn'><i class='ico_eidt'></i></a>")
      $eidtBtn.click(function(){
        if (editable&&(JSON.stringify(flowchart.exportAlter().nodes)!=="{}"||JSON.stringify(flowchart.exportAlter().lines)!=="{}"||JSON.stringify(flowchart.exportAlter().areas)!=="{}"||JSON.stringify(flowchart.exportAlter().deletedItem)!=="{}")||flowchart.exportData().title!==initdata.title) {
          layer.confirm("流程图结构还未保存，是否保存？",{btn:['保存','不保存，退出编辑']},function(index){
            layer.close(index)
            flowchart.onBtnSaveClick(toggleEdit)
          },function(){
            toggleEdit()
          })
        }else toggleEdit()
        function toggleEdit(){
          flowchart.destroy()
          flowchart=null
          flowChart=createFlowChart(selector,initdata,!editable)
        }
      })
      flowchart.$head.append($eidtBtn);


      //点击插件的保存按钮时触发的回调
      flowchart.onBtnSaveClick=function(cb){
        //请求后台，保存流程图结构并把已删除节点的数据删去
        var index=layer.load(1,{ shade: [0.1,'#fff'] }) 
        var altData=flowchart.exportAlter(); //有变化的数据，用于ajax
        //模拟ajax
        setTimeout(function(){
          //所有节点或连线数据
          console.log(JSON.stringify(flowchart.exportData()))
          console.log(JSON.stringify(altData))//有变化的节点或连线数据
          //success后调用下面方法
          flowchart.saveDataState()
          var data=JSON.parse(JSON.stringify(flowchart.exportData()));
          initdata=data;
          cb&&cb();
          //complete后调用下面方法
          layer.close(index)
        },500)
      };


      flowchart.onNodeDblclick=function(id,e,This){
        //阻止默认的双击事件
        var nodeData=This.$nodeData[id];
        if (nodeData.type.indexOf(" round")!==-1) {
          return true;
        }
        if ($(e.target).closest('.d-content').length==0&&$(e.target).is('td.ct')){
          $(e.target).find('.d-content').trigger('dblclick')
        }
        return false;
      };

      flowchart.onBtnNewClick=function(){
        //新建按钮,提醒是否清空
        layer.confirm('是否要清空当前画布？',function(index){
          flowchart.clearData(true)
          layer.close(index)
        })
      };

      //显示或隐藏节点id
      var $showNodeId=$('<label class="GooFlow_head_btn label_show_node_id"><input type="checkbox" />显示节点id</label>')
      $showNodeId.on('change',function(){
        if ($(this).find('input').is(':checked'))
          $(selector).addClass('show_node_id')
        else
          $(selector).removeClass('show_node_id')
      })
      flowchart.$head.append($showNodeId);
  }

  flowchart.loadData(flowdata);

	return flowchart
}

//计算内容高度,为兼容ie8模拟纵向的flex布局
function calculateContent($el){
  var $center=$el.find('.d-content-center,.ico')
  var $top=$el.find('.d-content-top')
  var $bottom=$el.find('.d-content-bottom')
  if ($top.height()>0) {
    $top.css('border-width','1px')
    $center.css('padding-top',$top.height()+7+'px')
  }else{
    $top.css('border-width','0')
    $center.css('padding-top','7px')
  }
  if ($bottom.height()>0) {
    $bottom.css('border-width','1px')
    $center.css('padding-bottom',$bottom.height()+7+'px')
  }else{
    $bottom.css('border-width','0')
    $center.css('padding-bottom','7px')
  }
}


//选择负责人
window.selectDutyMan=function(labelInput,option,idsInput){
	var ids=$(idsInput).val();
    var content=path+'/userController/skipSelectUser.do?call=setDutyMan&ids='+ids+'unitId='+$("#unitId").val();
    var layerIndex;
    if (option&&typeof option.limit!=='undefined') {
      content+='&limit='+option.limit
    }

  window.setDutyMan=function(data){
    //选择负责人后的回调方法
	  if (!data.join) {
          $(labelInput).val(data.chineseName)
          ids=data.id;
        }else{
          var arr=[];
          $(labelInput).val($.map(data,function(item){ 
        	 if($.inArray(item.chineseName, arr)>=0){
        		 return;
        	 }else{
        		 arr.push(item.chineseName);
        		 return item.chineseName 
        	 }
        	 
          }).join(','))
          ids=$.map(data,function(item){
        	  if($.inArray(item.id, arr)>=0){
         		 return;
         	 }else{
         		 arr.push(item.id);
         		 return item.id 
         	 }
          }).join(',');
        }
        $(idsInput).val(ids)
        layer.close(layerIndex)
      }
      
      $(labelInput).blur()
      layerIndex=layer.open({
        type:2,
        title:'请选择负责人',
        skin:'layer-skin-default',
        closeBtn:2,
        shadeClose:2,
        area:['400px','500px'],
        content:content,
        end:function() {
          window.setPeople=null;
        }
      })
    }


//选择子流程
window.selectSubprocess=function(that,option){
  var content='checkSubprocess.html?call=setSubprocess&url=/api/getSubprocess';
  var layerIndex;
  if (option&&option.limit) {
    content+='&limit='+option.limit
  }

  window.setSubprocess=function(data){
    //选择部门后的回调方法
    if (!data.join) {
      $(that).val(data.name)
      $(that).prev().val(data.id)
    }else{
      $(that).val($.map(data,function(item){ return item.name }).join(','))
      $(that).prev().val($.map(data,function(item){ return item.id }).join(','))
    }
    layer.close(layerIndex)
  }
  
  $(that).blur()
  layerIndex=layer.open({
    type:2,
    title:'请选择子流程',
    skin:'layui-layer-molv',
    closeBtn:2,
    shadeClose:2,
    area:['300px','500px'],
    content:content
  })
}
