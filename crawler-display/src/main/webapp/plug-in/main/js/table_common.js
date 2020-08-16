/**
 * 该文件为dataTable常用配置和公用方法、功能的实现
 * 1、DATA_TABLES为dataTable常用配置
 * 2、包含所有自定义配置的Table例如下：
 * <table class="ui-table ui-table-border-row ui-table-border-col table_datatable not-icheck not-iselect"  width="100%" fixtable data-mb="500" tool-layout="absolute" id="请输入ID"></table>
 * 其中：
 * （1）not-icheck类存在时不使用icheck渲染checkbox
 * （2）not-iselect类存在时不使用iselect渲染分页select
 * （3）fixtable属性存在时代表table使用自适应高度。实现方式为：从所有table的父元素中查询最进的[fixtableWrap]或.ui-page-container.ui-page-fixed或window作为“容器”，该"容器"应该具备固定高度的条件！！(在table高度超过容器高度时会根据高度计算，设置tableBody的最大高度，使用table内部滚动条。)
 * （4）data-mb属性在fixtable启用时生效，为高度控制时table距离“容器”底部的距离,默认为40
 * （5）tool-layout属性为底部分页/信息/页数工具条的布局方式，fixtable模式下默认为absolute,否则默认为static
 * （6）width属性和id属性建议加上
 * 3、initTableFold(el,openCall,closeCall)方法为折叠实现方法
 * 4、其他说明：
 * （1）$(window).reisze()可触发自适应高度的重新计算
 * （2）.table-check-num 会填充当前checkbox选中数量（有多个表格等复杂情况请加上data-for="表格ID"）
 * （3）表格外的.table-check-all也可以实现全选功能（有多个表格等复杂情况请加上data-for="表格ID"）
 */
var DATA_TABLES={
  DEFAULT_OPTION:{
    //默认配置参数，请参考DataTable官网
    bStateSave: true, //状态保存
    aLengthMenu: [10, 20, 40, 60], //更改显示记录数选项
    bLengthChange: true, // 每行显示记录数
    iDisplayLength: 20, //默认显示的记录数
    bInfo: true, //是否显示页脚信息，DataTables插件左下角显示记录数
    bPaginate: true, //是否显示（应用）分页器
    asStripeClasses: ["odd", "even"],//为奇偶行加上样式，兼容不支持CSS伪类的场合
    bFilter: false,   //禁用原生搜索
    bProcessing: false, //DataTables载入数据时，是否显示‘进度’提示
    oLanguage: { //国际化配置
      "sProcessing": "正在获取数据，请稍后...",
      "sLengthMenu": "显示 _MENU_ 条",
      "sZeroRecords": "没有您要搜索的内容",
      "sInfo": "显示 _START_ 到  _END_ 条 ，共 _TOTAL_ 条",
      "sInfoEmpty": "记录数为0",
      "sInfoFiltered": "(当前显示记录 _MAX_ 条)",
      "sInfoPostFix": "",
      "sSearch": "搜索",
      "sUrl": "",
      "oPaginate": {
        "sFirst": "首页",
        "sPrevious": "上一页",
        "sNext": "下一页",
        "sLast": "末页"
      }
    }
  },
  COLUMN:{
    //复用列
    CHECKBOX: { //第一列的复选框单元格
      sTitle:"<input type='checkbox' class='table-check-all'>",
      sClass: "text-c",
      bSortable  : false, // 不参与排序
      bSearchable: false,
      sWidth: "30px",
      mData: null,
      mRender: function (data, type, row, meta) {
        return '<input type="checkbox" class="table-check-row" value="'+(row.id||"")+'">';
      }
    },
    FOLD: { //折叠图标
      sTitle:"",
      sClass: "text-c",
      bSortable  : false, // 不参与排序
      bSearchable: false,
      sWidth: "1px",
      mData: null,
      mRender: function (data, type, row, meta) {
        return '<td class="text-c"><i class="icon-table-fold"></i></td>';
      }
    }
  }
};

/**
 * 表格绘制后渲染表格其他内容
 */
function drawTable(e){
  var table=$(e&&e.target?e.target:".dataTables_scrollBody .dataTable").eq(0);
  if(table.length==0) table=$(".table_datatable.dataTable,.table_datatable,.dataTable").eq(0);
  if(table.length==0) return;
  var isFixtable=table.filter("[fixtable]").length>0

  if(!table[0].id) table[0].id="table"+parseInt(Math.random()*1000000);

  var $wrap=table.closest(".dataTables_wrapper")
  var $main=$wrap.find(".dataTables_scroll").eq(0)
  var $leftAndRight=$main.siblings(".DTFC_LeftWrapper,.DTFC_RightWrapper")
  var $left=$main.siblings(".DTFC_LeftWrapper")
  var $right=$main.siblings(".DTFC_RightWrapper")
  var $head=$main.find(".dataTables_scrollHead").eq(0);
  var $body=$main.find(".dataTables_scrollBody").eq(0);

  //回到顶部、解决ie8渲染卡顿的bug
  $body.scrollTop($body.scrollTop()==0?1:0)

  //icheck初始化
  var chkAll=table.find(".table-check-all").not(table.find("table .table-check-row"));
  $(".table-check-all").not("thead .table-check-all").filter(function () {
    return !$(this).data("for")
  }).data("for",table[0].id);
  chkAll=chkAll.add($(".table-check-all").filter(function () {
    return $(this).data("for")===table[0].id
  }));
  chkAll=chkAll.add($head.find(".table-check-all"));
  var chks=table.find('.table-check-row').not(table.find("table .table-check-row"));

  if(typeof $.fn.iCheck!=="undefined"&&!table.hasClass("not-icheck")){
    chkAll.filter(function () { return $(this).nextAll(".iCheck-helper").length==0 }).iCheck({
      //checkbox皮肤
      checkboxClass: 'icheckbox_flat-blue'
    })
    chks.filter(function () { return $(this).nextAll(".iCheck-helper").length==0 }).iCheck({
      //checkbox皮肤
      checkboxClass: 'icheckbox_flat-blue'
    })
  }

  // 左右有固定checkbox需要做处理
  if($leftAndRight.length>0){
    setTimeout(function () {
      var lrChks=$leftAndRight.find(".table-check-row");
      if(lrChks.siblings(".iCheck-helper").length>0){
        lrChks.siblings(".iCheck-helper").addClass("check-helper-row").off("click")
        lrChks.each(function () {
          $(this).siblings(".iCheck-helper").data("id",this.value)
        })
        lrChks.remove()
      }else{
        lrChks.removeClass("table-check-row").addClass("check-helper-row")
      }
      var lrChkAll=$leftAndRight.find(".table-check-all");
      if(lrChkAll.siblings(".iCheck-helper").length>0){
        lrChkAll.siblings(".iCheck-helper").addClass("check-helper-all")
        lrChkAll.remove()
      }else{
        lrChkAll.removeClass("table-check-all").addClass("check-helper-all")
      }
    })
  }

  //统计和判断是否已经全选
  var allChecked=true;
  if(chks.not(":checked").length>0)
    allChecked=false;
  chkAll.prop("checked",allChecked?"checked":'')
  chkAll.iCheck&&chks.iCheck('update');
  calcTableRowCheckNum(table)

  //固定表格
  isFixtable&&resizeTableHeightF(table)
}

var resizeTableHeightFnCollection={};
function resizeTableHeightF(table){
  var id=table[0].id;
  if(!resizeTableHeightFnCollection[id]){
    resizeTableHeightFnCollection[id]=(function () {
      /**
       * 固定表格，重新计算高度的实现
       */
      var timeout;
      var resizeTableHeight=function() {
        if (timeout) {
          clearTimeout(timeout);
        }
        var f=function() {
          timeout=null;
          var $table = table;
          var $wrap=$table.closest(".dataTables_wrapper")
          var $main=$wrap.find(".dataTables_scroll").eq(0)
          var $left=$main.siblings(".DTFC_LeftWrapper")
          var $right=$main.siblings(".DTFC_RightWrapper")
          var $head=$main.find(".dataTables_scrollHead").eq(0);
          var $body=$main.find(".dataTables_scrollBody").eq(0);
          var bdmaxh=typeof tableBodyMaxH!=="undefined"?tableBodyMaxH:$table.data("bdmaxh");//当前body区域最高高度
          var $tableWrap = $table.closest('[fixtableWrap]'),$ct;
          if ($tableWrap.length === 0) $tableWrap = $table.closest('.ui-page-container.ui-page-fixed');
          if ($tableWrap.length === 0) $tableWrap = $(window);
          if ($tableWrap.length === 0) $tableWrap = $table.closest('.ui-page-container');
          if ($.isWindow($tableWrap[0])){
            $ct=$("body").addClass("ui-fixedtable-container")
          }else if($tableWrap.children('.ui-fixedtable-container').length === 0) {
            $tableWrap.wrapInner('<div class="ui-fixedtable-container"></div>')
            $tableWrap.hasClass('ui-page-container') && !$tableWrap.hasClass('ui-page-fixed') && $tableWrap.addClass('ui-page-fixed')
            $ct.children(".ui-fixedtable-container")
          }
          $(window).off('resize', resizeTableHeight)
          var currentHeight = $body.height();
          var mb=($table.data('mb'))||40;
          var spanY = $tableWrap.height() - $ct.height() - mb;
          var bdmaxh2=currentHeight + spanY - 1;
          if(!bdmaxh||Math.abs(bdmaxh-bdmaxh2)>1){
            $body.css({ 'max-height':  bdmaxh2 + 'px' });
            if($body.height()>bdmaxh2){
              bdmaxh2-=17;
              $body.css({ 'max-height': 'none' });
              $body.css({ 'max-height':  bdmaxh2 + 'px' });
            }
            if($wrap.children(".DTFC_ScrollWrapper").length>0){
              $wrap.children(".DTFC_ScrollWrapper").height("auto")
              $left.find('.DTFC_LeftBodyLiner').add($left.find(".DTFC_LeftBodyWrapper")).add($right.find(".DTFC_RightBodyWrapper")).add($right.find(".DTFC_RightBodyLiner")).css({ 'height': $body[0].clientHeight+ 'px' });
              $left.css({ 'height': $left.find(".DTFC_LeftHeadWrapper").height()+$body[0].clientHeight+ 'px' });
              $right.css({ 'height': $right.find(".DTFC_RightHeadWrapper").height()+$body[0].clientHeight+ 'px' });
              var scrollWidth=$body.width()-$body[0].clientWidth;
              if(scrollWidth){
                $right.css("right",scrollWidth+"px")
                $right.find(".DTFC_Blocker").show()
              }else{
                $right.find(".DTFC_Blocker").hide()
              }
            }
            $head.children(".dataTables_scrollHeadInner").css("padding-right",scrollWidth+"px")
          }
          $table.data("bdmaxh",bdmaxh2)
          $tableWrap,$ct,bdmaxh=bdmaxh2=currentHeight,mb,spanY=scrollWidth=null;
          if(typeof tableBodyMaxH!=="undefined") tableBodyMaxH=null;
          $(window).on('resize', resizeTableHeight)
          $table=$wrap=$main=$left=$right=$head=$body=bdmaxh=null
        }
        timeout=setTimeout(f,30);
      }
      return resizeTableHeight
    })()
  }
  resizeTableHeightFnCollection[id]()
}

$(function () {
  $("body").on("init.dt",function (e) {
    var table=$(e.target);
    var wrap=table.closest(".dataTables_wrapper");
    //dataTable初始化调用
    var notIcheck=table.hasClass("not-icheck")
    var notIselect=table.hasClass("not-iselect")
    var isFixtable=table.filter("[fixtable]").length>0
    var toolLayout=table.attr("tool-layout")||(isFixtable?"absolute":"static");//分页等工具布局方式，fixtable时默认绝对定位到底部，其他情况默认为静态

    if(!table[0].id) table[0].id="table"+parseInt(Math.random()*1000000);

    if($(".table-check-row").length>0){
      var chkAll=table.find(".table-check-all").not(table.find("table .table-check-row"));
      $(".table-check-all").not("thead .table-check-all").filter(function () {
        return !$(this).data("for")
      }).data("for",table[0].id);
      chkAll=chkAll.add($(".table-check-all").filter(function () {
        return $(this).data("for")==table[0].id
      }));
      chkAll=chkAll.add(table.parent().siblings(".dataTables_scrollHead").find(".table-check-all"));
      var chks=table.find('.table-check-row').not(table.find("table .table-check-row"));

      //全选实现，支持原生和icheck
      $("body").on("change.init ifChanged.init",function (e,str) {
        if(str=="end") return
        var lrCol=table.closest(".dataTables_wrapper").children(".DTFC_ScrollWrapper").children(".DTFC_LeftWrapper,.DTFC_RightWrapper");
        if($(e.target).is(chkAll)){
          //全选
          var checked=$(e.target).is(":checked");
          var uncheckChks=chks.filter(function () {
            return !$(this).is(":checked")
          })
          chks.prop("checked",checked?"checked":'')
          chks.iCheck&&chks.iCheck('update');
          if(checked){
            !notIcheck&&uncheckChks.trigger('ifChecked');
            uncheckChks.trigger(notIcheck?'change':'ifChanged',"end");
          }else{
            !notIcheck&&chks.not(uncheckChks).trigger('ifUnchecked');
            chks.not(uncheckChks).trigger(notIcheck?'change':'ifChanged',"end");
          }
          var c2=chkAll.not(e.target)[checked?"not":"filter"](":checked").prop("checked",checked?"checked":'')
          c2.iCheck&&c2.iCheck('update');
          if(lrCol.length>0){
            lrCol.find("input.check-helper-row,input.check-helper-all").prop("checked",checked?"checked":"")
            lrCol.find(".iCheck-helper.check-helper-row,.iCheck-helper.check-helper-all").parent()[checked?"addClass":"removeClass"]("checked")
          }
          calcTableRowCheckNum(table)
        }else if($(e.target).is(chks)){
          //选一项
          var checked=$(e.target).is(":checked");
          var allChecked=true;
          if(!checked||chks.not(":checked").length>0)
            allChecked=false;
          chkAll.prop("checked",allChecked?"checked":'')
          chkAll.iCheck&&chkAll.iCheck('update');
          if(lrCol.length>0){
            lrCol.find("input.check-helper-all").prop("checked",allChecked?"checked":"")
            lrCol.find(".iCheck-helper.check-helper-all").parent()[allChecked?"addClass":"removeClass"]("checked")
            lrCol.find("input.check-helper-row").filter(function(){ return $(this).data("id")==e.target.value}).prop("checked",checked?"checked":"")
            lrCol.find(".iCheck-helper.check-helper-row").filter(function(){ return $(this).data("id")==e.target.value}).parent()[checked?"addClass":"removeClass"]("checked")
          }
          calcTableRowCheckNum(table)
        }
      });
    }

    //分页长度处理
    var $len=table.closest(".dataTables_wrapper").children(".dataTables_length");
    if($len.length>0){
      $len.insertAfter($len.nextAll("table,.dataTables_scroll,.DTFC_ScrollWrapper").eq(0))
      if(!notIselect){
        typeof iSelect!=="undefined"&&iSelect({
          //select皮肤
          "elem":$len.find("select"),
          "direct":"up",
          "style":{"display":"inline-block","width":"60px"},
          "extendClass":"size-s"
        })
      }
    }

    //工具栏定位方式
    if(toolLayout=="absolute"||toolLayout=="fixed"){
      var $toolbar=$("<div class='dataTables_tools_absolute'></div>").appendTo(table.closest(".dataTables_wrapper"));
      $toolbar.append($len).append($toolbar.siblings(".dataTables_info")).append($toolbar.siblings(".dataTables_paginate"))
    }

    //左右固定区域有checkbox时
    if($(".table-check-row").length>0) {
      $("body").on(notIcheck ? "change.init" : "click.init", ".check-helper-row", function () {
        var id = $(this).is("input") ? $(this).val() : $(this).data("id")
        if ($(this).closest(".dataTables_wrapper").is(wrap)) {
          if (!notIcheck) {
            chks.filter(function () {
              return $(this).val() == id
            }).iCheck($(this).parent(".checked").length > 0 ? "uncheck" : "check")
          } else {
            chks.filter(function () {
              return $(this).val() == id
            }).prop("checked", $(this).is(":checked") ? "checked" : "").trigger("change")
          }

        }
      })
      $("body").on(notIcheck ? "change.init" : "click.init", ".check-helper-all", function () {
        var id = $(this).is("input") ? $(this).val() : $(this).data("id")
        if ($(this).closest(".dataTables_wrapper").is(wrap)) {
          if (!notIcheck) {
            chkAll.eq(0).iCheck($(this).parent(".checked").length > 0 ? "uncheck" : "check")
          } else {
            chkAll.eq(0).prop("checked", $(this).is(":checked") ? "checked" : "").trigger("change")
          }
        }
      })
    }
  })


  //销毁
  $("body").on("destroy.dt",function (e) {
    $("body").off("change.init ifChanged.init click.init");
    $("table[fixtable]").removeData("bdmaxh")
  });
})
function calcTableRowCheckNum(table) {
  if(!table&& $(".table-check-num").length>0)
    setTimeout(function () {
      $(".table-check-num").text($(".table-check-row:checked").length)
    })
  else if(table){
    var cnum=$(".table-check-num").filter(function () {
      return typeof $(this).data("for")=="undefined"||$(this).data("for")==table[0].id
    })
    if(cnum.length>0)
      setTimeout(function () {
        cnum.text(table.find(".table-check-row:checked").not(table.find("table .table-check-row")).length)
      })
  }
}

/**
 * 初始化可折叠表格
 * @param el 表格选择器
 * @param openCall 展开回调
 * @param closeCall 关闭回调
 */
function initTableFold(el,openCall,closeCall) {
  $(el).on("click",".icon-table-fold",function () {
    if($(this).hasClass("opened")){
      //关闭
      $(this).removeClass("opened").closest("tr").next(".row-fold").removeClass("opened")
      closeCall&&closeCall($(this).closest("tr"),$(this).closest("tr").next(".row-fold"));
    }else{
      //展开
      if($(this).closest("tr").next(".row-fold").length==0){
        $(this).closest("tr").after("<tr class='row-fold'></tr>")
        $(this).closest("tr").after("<tr class='row-fold'><td><i class='icon-table-inner'></i></td><td colspan='"+$(this).closest("tr").children("td:visible,th:visible").length+"'></td></tr>")
      }
      $(this).addClass("opened").closest("tr").next(".row-fold").addClass("opened")
      openCall&&openCall($(this).closest("tr"),$(this).closest("tr").next(".row-fold"));
    }
  })
  $(el).on("click",".row-fold>td:first-child",function () {
    //关闭
    $(this).closest("tr").removeClass("opened").prev("tr").find(".icon-table-fold").removeClass("opened")
    closeCall&&closeCall($(this).closest("tr").prev("tr"),$(this).closest("tr"));
  })
}


