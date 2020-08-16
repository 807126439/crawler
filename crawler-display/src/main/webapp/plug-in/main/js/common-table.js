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
                "sPrevious": "上页",
                "sNext": "下页",
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
                    mDataProp:"id",
                    mRender: function (data, type, row, meta) {                   
                        return "<input type=\"checkbox\" class=\"table-check-row checkbox\" name=\"ids\"  value=\""+data+"\">";
                    }
                }
          }
      };




/**
 * 表格绘制后渲染表格其他内容
 */
function drawTable(){
  //回到顶部、解决ie8渲染卡顿的bug
  $('.dataTables_scrollBody').scrollTop($('.dataTables_scrollBody').scrollTop()==0?1:0)

  typeof iSelect!=="undefined"&&iSelect({
    //select皮肤
    "elem":".dataTables_length select",
    "direct":"up",
    "style":{"display":"inline-block","width":"60px"},
    "extendClass":"size-s"
  })

  //统计和判断是否已经全选
  if($(".table-check-row").not(":checked").length>0||$(".table-check-row").length==0){
    //非全选
    $(".table-check-all").prop('checked','');
  }else{
    //全选
    $(".table-check-all").prop('checked','checked');
  }
  calcTableRowCheckNum()

  //icheck初始化
  if(typeof $.fn.iCheck!=="undefined"&&$(".not-icheck").length==0){
    $('input').iCheck('destroy');
    $('.table-check-all,.table-check-row').filter(function () {
      return $(this).nextAll(".iCheck-helper").length==0
    }).iCheck({
      //checkbox皮肤
      checkboxClass: 'icheckbox_flat-blue'
    })
  }

  if($(".DTFC_LeftWrapper").length>0){
    setTimeout(function () {
      if(typeof $.fn.iCheck!=="undefined"&&$(".not-icheck").length==0){
        $(".DTFC_LeftWrapper .table-check-all,.DTFC_LeftWrapper .table-check-row").iCheck('destroy');
        $(".DTFC_LeftWrapper .table-check-all").next('.iCheck-helper').remove();
        $(".DTFC_LeftWrapper .table-check-all,.DTFC_LeftWrapper .table-check-row").parent('.icheckbox_flat-blue').removeClass('icheckbox_flat-blue').removeClass('checked');
        $(".table-check-row").not(".DTFC_LeftWrapper .table-check-row").parent('.checked').removeClass("checked");
        $(".table-check-row").not(".DTFC_LeftWrapper .table-check-row").prop('checked','');
        $('.DTFC_LeftWrapper .table-check-all,.DTFC_LeftWrapper .table-check-row').iCheck({
          //checkbox皮肤
          checkboxClass: 'icheckbox_flat-blue'
        })
      }else{
        $(".table-check-row").not(".DTFC_LeftWrapper .table-check-row").prop('checked','');
      }
      calcTableRowCheckNum()
    })
  }
  //table高度重新计算
  resizeTableHeight();
}

//全选实现，支持原生和icheck
$(function () {
  $("body").on("change ifClicked",".table-check-all",function (e) {
    var checked=$(this).is(":checked");
    checked=e.type=="change"?checked:!checked;
    if($(this).nextAll(".iCheck-helper").length>0){
      $('.table-check-row').filter(function () {
        return $('.DTFC_LeftWrapper').length>0?$(this).closest('.DTFC_LeftWrapper').length>0:true
      }).iCheck(checked?"check":'uncheck');
      $('.table-check-all').not(this)[checked?"not":"filter"](":checked").iCheck(checked?"check":'uncheck');
    }else{
      $(".table-check-row").filter(function () {
        return $('.DTFC_LeftWrapper').length>0?$(this).closest('.DTFC_LeftWrapper').length>0:true
      }).prop("checked",checked?"checked":"");
      $('.table-check-all').not(this)[checked?"not":"filter"](":checked").prop("checked",checked?"checked":"");
    }
    calcTableRowCheckNum()
  });
  $("body").on("change ifClicked",".table-check-row",function (e) {
    var checked=$(this).is(":checked");
    checked=e.type=="change"?checked:!checked;
    var checkAll=true;
    if(!checked||$(".table-check-row").filter(function () {
      return $('.DTFC_LeftWrapper').length>0?$(this).closest('.DTFC_LeftWrapper').length>0:true
    }).not(this).not(":checked").length>0)
      checkAll=false;
    if($(this).nextAll(".iCheck-helper").length>0){
      $('.table-check-all').iCheck(checkAll?"check":'uncheck');
    }else{
      $(".table-check-all").prop("checked",checkAll?"checked":"");
    }
    calcTableRowCheckNum()
  });
})
function calcTableRowCheckNum() {
  setTimeout(function () {
    $(".table-check-num").text($(".table-check-row:checked").length)
  })
}

/**
 * 固定表格，重新计算高度
 */
var timeout,tableBodyMaxH=0;
function resizeTableHeight() {
  if (timeout) {
    clearTimeout(timeout);
  }
  var f=function() {
    timeout=null;
    var $table = $('table[fixtable]');
    if ($table.length !== 0) {
      var $tableWrap = $table.closest('[fixtableWrap]');
      if ($tableWrap.length === 0) $tableWrap = $table.closest('.ui-page-container.ui-page-fixed');
      if ($tableWrap.length === 0) $tableWrap = $(window);
      if ($tableWrap.length === 0) $tableWrap = $table.closest('.ui-page-container');
      if ($.isWindow($tableWrap[0])){
        $("body").addClass("ui-fixedtable-container")
      }else if($tableWrap.children('.ui-fixedtable-container').length === 0) {
        $tableWrap.wrapInner('<div class="ui-fixedtable-container"></div>')
        $tableWrap.hasClass('ui-page-container') && !$tableWrap.hasClass('ui-page-fixed') && $tableWrap.addClass('ui-page-fixed')
      }
      $(window).off('resize', resizeTableHeight)
      var currentHeight = $('.dataTables_scrollBody').height();
      var mb=($table.data('mb'))||37;
      var spanY = $tableWrap.height() - $('.ui-fixedtable-container').height() - mb;
      var tableBodyMaxH2=currentHeight + spanY - 1;
      if(!tableBodyMaxH||Math.abs(tableBodyMaxH-tableBodyMaxH2)>1){
        $('.dataTables_scrollBody').css({ 'max-height':  tableBodyMaxH2 + 'px' });
        if($('.dataTables_scrollBody').height()>tableBodyMaxH2){
          tableBodyMaxH2-=17;
          $('.dataTables_scrollBody').css({ 'max-height': 'none' });
          $('.dataTables_scrollBody').css({ 'max-height':  tableBodyMaxH2 + 'px' });
        }
        $(".DTFC_ScrollWrapper").height("auto")
        $('.DTFC_LeftBodyLiner,.DTFC_RightBodyLiner,.DTFC_LeftBodyWrapper,.DTFC_RightBodyWrapper').css({ 'height': $('.dataTables_scrollBody')[0].clientHeight+ 'px' });
        var scrollWidth=$(".dataTables_scrollBody").width()-$(".dataTables_scrollBody")[0].clientWidth;
        if(scrollWidth){
          $(".DTFC_RightWrapper").css("right",scrollWidth+"px")
          $(".DTFC_RightWrapper .DTFC_Blocker").show()
        }else{
          $(".DTFC_RightWrapper .DTFC_Blocker").hide()
        }
        $(".dataTables_scrollHeadInner").css("padding-right",scrollWidth+"px")
       /* $.fn.dataTable
        .tables( { visible: true, api: true } )
        .columns.adjust();*/
      }
      tableBodyMaxH=tableBodyMaxH2;
      $(window).on('resize', resizeTableHeight)
    }
  }
  timeout=setTimeout(f,30);
}

