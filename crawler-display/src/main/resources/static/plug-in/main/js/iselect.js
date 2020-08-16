/**
 * @name iselect2.0.4 （对应layui表单模块2.0.0）
 * @author 张子操
 * @namespace iSelect
 * @requires jquery
 * @vesion 2.0.4
 * @demo 初始化配置  iSelect(option) option见下方
 * @demo 初始化配置(方法2)  $('select').iSelect(option) option见下方
 * @demo 赋值方法  $('select').iSelect(value,eventtype) value为select的新值,eventtype为可选参数，默认设为0（或者false）,不会触发原生change事件和但会触发iChange事件，为1(或者true)时两个事件都会触发,为2(或者其他)时不触发任何事件
 * @demo 单个配置 不渲染  <select lay-ignore="on"></select>
 * @demo 单个配置 开启搜索  <select lay-search="on"></select>
 * @demo 单个配置 向上菜单  <select lay-up="on"></select>
 * @demo 单个配置 向下菜单  <select lay-down="on"></select>
 * @demo 单个配置 自动判断上下菜单  <select lay-dir-auto="on"></select>
 * @demo 单个配置 option菜单固定定位  <select lay-fixed="on"></select>
 * @demo 单个配置 添加自定义类名  <select ext-class="size-s select-color-primary"></select>
 * @event iChange  select.on('iChange',fun)自定义change事件（原生change事件需配置才禁用）
 */
(function(root,factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD. Register as anonymous module.
    define(['jquery'], factory);
  } else if (typeof exports === 'object') {
    // Node/CommonJS.
    module.exports = factory(require('jquery'));
  } else {
    // Browser globals.
    root.iSelect = factory(root.jQuery);
  }
})(this,function(jquery){
  var $ = jquery;
  var iSelect = function(option){
    //默认配置
    var option=$.extend({},{
      "elem":"ui-form", //要渲染的select元素的选择器
      "tips":'请选择', //没有默认选项时的placeholder
      "class":'ui-form-select', //新选择框容器类名
      "title":'ui-select-title', 
      "noneClass":'ui-select-none', 
      "disabledClass":'ui-disabled', 
      "activeClass":'ui-this', //当前选项类名
      "hideClass":'ui-hide',
      "direct":"auto", //菜单方向
      "style":null, //object 新select样式
      "extendClass":null, //新选择框容器额外添加类名
      "searchabled":false, //是否可以搜索
      "nativeChange":true, //是否触发原生change事件
      "fixed":false //定位是否使用固定定位
    },option);

    var ELEM = option.elem, TIPS = option.tips, CLASS =option["class"], TITLE = option.title
    ,NONE =  option.noneClass, THIS =  option.activeClass, HIDE =  option.hideClass, DISABLED = option.disabledClass, initValue = '', thatInput
    
    ,selects = $(ELEM).is("select")?$(ELEM).filter('select'):$(ELEM).find('select'), hide = function(e, clear){
      if((!$(e.target).parent().hasClass(TITLE)&&!$(e.target).is('select')) || clear){
        $('.'+CLASS).removeClass(CLASS+'ed');
        if (supportPlaceholder&&thatInput&&thatInput.val()==='') {
          thatInput.val('');
        }else
          thatInput && thatInput.val(initValue);
      }
      thatInput = null;
    }
    
    ,events = function(reElem, disabled, isSearch){
      var select = $(this)
      ,title = reElem.find('.' + TITLE)
      ,input = title.find('input')
      ,dl = reElem.find('dl')
      ,dds = dl.children('dd')
      ,dir = select.data('dir')
      ,fixed = typeof $(this).attr('lay-fixed')==="string"?true:option.fixed
      ,bodyDlwr;
      
      
      if(disabled) return;

      //计算固定定位的位置
      var calcPosition=function() {
        var top = reElem.offset().top + reElem.outerHeight() + 5 - $(window).scrollTop()
        ,left = reElem.offset().left - $(window).scrollLeft()
        ,dlHeight = dl.outerHeight()
        ,dlWidth = title.width()
        ,isUp=dir==='up'||dir==='auto'&&(top + dlHeight > $(window).height() && top >= dlHeight);
        if (fixed) {
          bodyDlwr=$('<div class="ui-form-select ui-form-selected"></div>').append(dl).appendTo('body');
          if (isUp) {
            dl.css({position:'fixed',top:(top-dlHeight-reElem.outerHeight()-4)+'px',bottom:'auto',width:dlWidth+'px',left:left+'px',minWidth: 'auto'});
          }else{
            dl.css({position:'fixed',top:(top-1)+'px',bottom:'auto',width:dlWidth+'px',left:left+'px',minWidth: 'auto'});
          }
        }

        //上下定位识别
        if (isUp) {
          dl.removeClass('ui-anim-upbit').addClass('ui-options-up ui-anim-downbit');
        }else{
          dl.removeClass('ui-options-up ui-anim-downbit').addClass('ui-anim-upbit');
        }
      }
      
      //展开下拉
      var showDown = function(){
        reElem.addClass(CLASS+'ed');
        dds.removeClass(HIDE);
        calcPosition();
        //监听点击关闭下拉
        $(document).on('click', hideDown);
      }, hideDown = function(){console.log(1)
        dl.removeClass('ui-anim-upbit ui-options-up ui-anim-downbit');
        reElem.removeClass(CLASS+'ed');
        if(bodyDlwr){
          bodyDlwr.children('dl').appendTo(reElem)
          bodyDlwr.remove();
          bodyDlwr=null;
        }
        input.blur();
        select.blur();
        $(document).off('click', hideDown)
        
        notOption(input.val(), function(none){
          if(none&&input.val()!==''){
              initValue = dl.find('.'+THIS).html();
              input && input.val(initValue);
          }
        });
      };
      
      //点击标题区域
      title.on('click', function(e){
        reElem.hasClass(CLASS+'ed') ? (
          hideDown()
        ) : (
          hide(e, true), 
          showDown()
        );
        dl.find('.'+NONE).remove();
        e.stopPropagation()
      }); 
      
      //点击箭头获取焦点
      title.find('.ui-edge').on('click', function(){
        input.focus();
      });
       
      
      //键盘事件
      input.on('keyup', function(e){
        var keyCode = e.keyCode;
        //Tab键
        if(keyCode === 9){
          showDown();
        }
      }).on('keydown', function(e){
        var keyCode = e.keyCode;
        //Tab键
        if(keyCode === 9){
          hideDown();
        } else if(keyCode === 13){ //回车键
          e.preventDefault();
        }
      })
      
      //检测值是否不属于select项
      var notOption = function(value, callback, origin){
        var num = 0;
        $.each(dds, function(){
          var othis = $(this)
          ,text = othis.text()
          ,not = text.indexOf(value) === -1;
          if(value === '' || (origin === 'blur') ? value !== text : not) num++;
          origin === 'keyup' && othis[not ? 'addClass' : 'removeClass'](HIDE);
        });
        var none = num === dds.length;
        return callback(none), none;
      };
      
      //搜索匹配
      var search = function(e){
        var value = $(this).val(), keyCode = e.keyCode;
        
        if(keyCode === 9 || keyCode === 13 
          || keyCode === 37 || keyCode === 38 
          || keyCode === 39 || keyCode === 40
        ){
          return false;
        }
        
        notOption(value, function(none){
          if(none){
            dl.find('.'+NONE)[0] || dl.append('<p class="'+ NONE +'" style="text-align:center">无匹配项</p>');
          } else {
            dl.find('.'+NONE).remove();
          }
        }, 'keyup');
        
        if(value === ''){
          dl.find('.'+NONE).remove();
        }
      };
      if(isSearch){
        input.on('keyup', search).on('blur', function(e){
          thatInput = input;
          initValue = dl.find('.'+THIS).html();
          setTimeout(function(){
            notOption(input.val(), function(none){
              if(none && !initValue){
                input.val('');
              }
            }, 'blur');
          }, 200);
        });
      }

      //选择
      dds.on('click', function(e,eventtype){
        var othis = $(this), 
            value = othis.data('value'),
            text=othis.text(),
            oldVal=select.val();

        if(othis.hasClass(DISABLED)) return false;
        if (value==='') text='';
        select.val(value).removeClass('ui-form-danger').removeClass('Validform_error'), input.val(text);
        othis.addClass(THIS).siblings().removeClass(THIS);
        hideDown();

        if (oldVal+''!==value+''){
          setTimeout(function(){
            if ((option.nativeChange&&typeof eventtype=='undefined')||(typeof eventtype!='undefined'&&eventtype==1)) 
              select.trigger('change');//原生change
            if (typeof eventtype=='undefined'||eventtype==0||eventtype==1)
              select.trigger('iChange');
          },0)
        } 
        
        return false;
      });
      
      reElem.find('dl>dt').on('click', function(e){
        return false;
      });
    }
    
    var supportPlaceholder='placeholder' in document.createElement('input');
    selects.each(function(index, select){
      var othis = $(this), 
          hasRender = othis.next('.'+CLASS), 
          disabled = this.disabled,
          value = $(select).val();
          selected = select.selectedIndex>-1?$(select).find('option').eq(select.selectedIndex):$('<div></div>'); //获取当前选中项


      if (typeof othis.attr('lay-ignore') === 'string') { return; }
      var isSearch = typeof othis.attr('lay-search') === 'string'||option.searchabled;
      var direct = typeof othis.attr('lay-up') === 'string'?"up":'';
      direct = typeof othis.attr('lay-down') === 'string'?"down":direct;
      direct = typeof othis.attr('lay-dir-auto') === 'string'?"auto":direct;
      direct=direct||option.direct;
      othis.data('dir',direct);
      var extendClass=option.extendClass||''+' '+(othis.attr('ext-class')||'')

      if (this.options.length>0) {
        var emptyOption=othis.find('option').filter(function() {
          return $(this).val()==='';
        });
        var pholder=emptyOption.length>0?emptyOption[0].innerHTML:this.options[0].innerHTML;
      }else{
        var pholder = TIPS;
      }

      //select和iselect的配对关系
      if (!window.iSelectKey)
        window.iSelectKey=1;
      else iSelectKey++;
      othis.data('ikey',iSelectKey)

      //替代元素
      var reElem = $(['<div class="ui-unselect '+ CLASS + (disabled ? ' ui-select-disabled' : '') +(extendClass?' '+extendClass:'')+' iSelect--'+iSelectKey+'">'
        ,'<div class="'+ TITLE +'"><input type="text" placeholder="'+pholder+'" value="'+ (value ? selected.html() : (supportPlaceholder?'':selected.html())) +'" '+ (isSearch ? '' : 'readonly  UNSELECTABLE="on"') +' class="ui-unselect ui-input'+ (disabled ? (' '+DISABLED) : '') +'">'
        ,'<i class="ui-edge"></i></div>'
        ,'<dl class="ui-anim ' + (othis.find('optgroup')[0] ? ' ui-select-group' : '') +'">'+ function(options){
          var arr = [];
          $.each(options, function(index, item){
            if(item.tagName.toLowerCase() === 'optgroup'){
              arr.push('<dt>'+ item.label +'</dt>'); 
            } else {
              arr.push('<dd data-value="'+ $(item).val() +'" class="'+ (value === $(item).val() ?  THIS : '') + (item.disabled ? (' '+DISABLED) : '') +' '+($(item).val()===''?'ui-option-tip':'')+'">'+ item.innerHTML +'</dd>');
            }
          });
          return arr.join('');
        }(othis.find('*')) +'</dl>'
      ,'</div>'].join(''));
      
      hasRender[0]&&hasRender.remove(); //如果已经渲染，则Rerender

      othis.after(reElem);
      events.call(this, reElem, disabled, isSearch);
      othis.addClass('ui-hide')
      option.style&&reElem.css(option.style)
    });
  };

  if ($&&$.fn&&!$.fn.iSelect) {
      $.fn.iSelect=function(param,eventtype) {
        if (typeof param=='object'||typeof param=='undefined') {
          //初始化select
          iSelect($.extend({},param,{
            elem:this
          }))
        }else{
          //给select赋值
          $(this).each(function() {
            var ikey=$(this).data('ikey');
            if (ikey) {
              var dds=$('.iSelect--'+ikey).find('dd');
              var j=-1;
              for (var i = 0; i < dds.length; i++) {
                if (dds.eq(i).data('value')+''===param+'') {
                  j=i;
                  break;
                }
              }
              if (j!=-1) {
                eventtype=eventtype?eventtype:0;
                dds.eq(j).trigger('click',[eventtype])
              }
            }else{
              $(this).val(param);
            }
          })
        }
      }
  }
  return iSelect;
});

 
