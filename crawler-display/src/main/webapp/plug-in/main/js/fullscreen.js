(function () {
  var fullScreenApi = {
        supportsFullScreen : false,
        isFullScreen : function () {
          return false;
        },
        requestFullScreen : function () {},
        cancelFullScreen : function () {},
        toggleFullScreen : function (el) {
          this.isFullScreen()?this.cancelFullScreen(el):this.requestFullScreen(el)
        },
        fullScreenEventName : '',
        requestFullScreenName : '',
        cancelFullScreenName : '',
        prefix : ''
      },
      browserPrefixes = 'webkit moz o ms khtml'.split(' ');

  // check for native support
  if (typeof document.cancelFullScreen != 'undefined') {
    fullScreenApi.supportsFullScreen = true;
    fullScreenApi.cancelFullScreenName = "cancelFullScreen";
  } else if (typeof document.exitFullscreen != 'undefined') {
    fullScreenApi.supportsFullScreen = true;
    fullScreenApi.cancelFullScreenName = "exitFullscreen";
  }  else if (typeof document.msExitFullscreen != 'undefined') {
    fullScreenApi.supportsFullScreen = true;
    fullScreenApi.cancelFullScreenName = "msExitFullscreen";
    fullScreenApi.prefix = "ms";
  } else {
    // check for fullscreen support by vendor prefix
    for (var i = 0, il = browserPrefixes.length; i < il; i++) {
      fullScreenApi.prefix = browserPrefixes[i];

      if (typeof document[fullScreenApi.prefix + 'CancelFullScreen'] != 'undefined') {
        fullScreenApi.supportsFullScreen = true;
        fullScreenApi.cancelFullScreenName = fullScreenApi.prefix + 'CancelFullScreen';
        break;
      }
    }
  }

  // update methods to do something useful
  if (fullScreenApi.supportsFullScreen) {
    fullScreenApi.fullScreenEventName = fullScreenApi.prefix + 'fullscreenchange';

    fullScreenApi.isFullScreen = function () {
      var isfull;
      switch (this.prefix) {
        case '':
          isfull=document.fullScreen;
          break;
        case 'webkit':
          isfull=document.webkitIsFullScreen;
          break;
        default:
          isfull=document[this.prefix + 'FullScreen'];
      }
      if(typeof isfull=="undefined")
        isfull=!!(document.msFullscreenElement||document.fullscreenElement)
      return isfull
    }
    fullScreenApi.requestFullScreen = function (el) {
      if(!el) el=document.documentElement;
      if(true||this.prefix=="moz"||this.prefix=="ms"){
        //firefox的iframe要允许全屏
        $(el).attr("allowfullscreen","true")
        el.allowfullscreen="true"
        if(typeof frameElement!=="undefined"&&typeof frames!=="undefined"){
          var win=window;
          var frameEle=win.frameElement
          while (!!frameEle){
            $(frameEle).attr("allowfullscreen","true");
            frameEle.allowfullscreen="true"
            win=win.parent;
            frameEle=win.frameElement;
          }
        }
      }
      if(el.requestFullscreen){
        return el.requestFullscreen()
      }else if(el.msRequestFullscreen){
        return el.msRequestFullscreen()
      }else{
        return (this.prefix === '') ? el.requestFullScreen() : el[this.prefix + 'RequestFullScreen']();
      }
    }
    fullScreenApi.cancelFullScreen = function (el) {
      return  document[this.cancelFullScreenName]();
    }
  }else{
    //结合样式实现全屏
    var full=function(el){
      $(el).addClass("fullscreen-fixed")
      $("body").append('<div class="fullscreen-fixed-holder"></div>')
      $("body").on("keydown.fullscreen",function (e) {
        if(e.keyCode=="27"&&!$(e.target).is("input,textarea,select")){
          //监听esc退出
          var topH=$(top.window).height();
          unfull(el)
          setTimeout(function () {
            var topH=$(top.window).height();
            if(screen.height<=topH+30){
              iefull()
            }
          },400)
        }
      })
      fullScreenApi.isFullScreen=function () {
        return true;
      }
      if(typeof frameElement!=="undefined"&&typeof frames!=="undefined"){
        var win=window;
        var frameEle=win.frameElement
        while (!!frameEle){
          $(frameEle).addClass("fullscreen-fixed");
          win=win.parent;
          frameEle=win.frameElement;
        }
      }
    }
    var unfull=function(el){
      $(el).removeClass("fullscreen-fixed")
      $("body").find('.fullscreen-fixed-holder').remove()
      $("body").off("keydown.fullscreen")
      fullScreenApi.isFullScreen=function () {
        return false;
      }
      if(typeof frameElement!=="undefined"&&typeof frames!=="undefined"){
        var win=window;
        var frameEle=win.frameElement
        while (!!frameEle){
          $(frameEle).removeClass("fullscreen-fixed");
          win=win.parent;
          frameEle=win.frameElement;
        }
      }
    }
    //ie低版本的全屏，退出全屏都这个方法
    var iefull=function(){
      var wscript;
      try {
        var el = document.documentElement;
        if(typeof window.ActiveXObject != "undefined") {
          //这的方法 模拟f11键，使浏览器全屏
          wscript = new ActiveXObject("WScript.Shell");
          if(wscript != null) {
            wscript.SendKeys("{F11}");
          }
        }
      }catch (e) { }
    }
    fullScreenApi.requestFullScreen = function (el) {
      if(!el) el=document.documentElement;
      full(el)
      iefull()
    }
    fullScreenApi.cancelFullScreen = function (el) {
      if(!el) el=document.documentElement;
      unfull(el)
      iefull()
    }
  }

  // jQuery plugin
  if (typeof jQuery != 'undefined') {
    jQuery.fn.requestFullScreen = function () {
      return this.each(function () {
          fullScreenApi.requestFullScreen(this);
      });
    };
    jQuery.fn.toggleFullScreen = function () {
      return this.each(function () {
          fullScreenApi.toggleFullScreen(this);
      });
    };
    jQuery.fn.cancelFullScreen = function () {
      return this.each(function () {
          fullScreenApi.cancelFullScreen(this);
      });
    };
  }

  // export api
  window.fullScreenApi = fullScreenApi;
})();