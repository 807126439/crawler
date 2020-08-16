//返回一个uploader对象(webuploader)。
//参数一：可选，uploader容器的选择器或jq对象，缺省值为#uploader。
//参数二:可选，创建webuploader的扩展参数
//参数二:可选，其他显示参数，按钮等
function createSimpleUploader(elem,option,displayOption) {
  var $wrap = $('#uploader');
  if (typeof elem === "string") {
    $wrap=$(elem);
  }else if (elem instanceof jQuery) {
    $wrap=elem;
  }if (typeof elem==='object'&&!option) {
    option=elem;
  }

  var $list = $wrap.find('.thelist'),
    $btn = $wrap.find('.ctlBtn'),
    $picker = $wrap.find('.picker'),
    state = 'pending',
    uploader,
    defaultOption={
      resize: false, // 不压缩image
      swf: path + '/plug-in/main/libs/h-ui/2.2.1/lib/webuploader-0.1.5/Uploader.swf',
      server: '/',
      auto:true,
      // 选择文件的按钮。可选。
      // 内部根据当前运行是创建，可能是input元素，也可能是flash.
      pick: $picker
    },
    displayOption=$.extend({},{
      preview:true,//默认true显示查看按钮，false为隐藏,若为函数，点击可触发
      download:true,//默认true显示下载按钮，false为隐藏,若为函数，点击可触发
      del:true//默认true显示删除按钮，false为隐藏,若为函数，点击可触发
    },displayOption);

  uploader = WebUploader.create($.extend({},defaultOption,option));

  // 当有文件添加进来的时候
  uploader.on('beforeFileQueued', function(file) {
    var rs = true;
    $list.find('.file-item-name').each(function() {
      if (file.name === $(this).text()) {
        rs = false;
        layer.msg('已有同名的上传文件');
        return;
      }
    });
    return rs;
  });

  // 当有文件添加进来的时候
  uploader.on('fileQueued', function(file) {
    var $item=$('<div class="file-item '+ file.id+'" >\
                  <img class="file-item-icon" src="'+path+'/plug-in/main/images/fileicon/icon_large_'+matchType(file.ext)+'.png">\
                  <a href="javascript:void(0)" class="file-item-right remove"><i class="icon_close"></i></a>\
                  <div class="file-item-name">' + file.name + '(<span class="state">等待上传...</span>)</div>\
                  <div class="file-item-size">' + formatSize(file.size)+ '</div>\
                  <div class="file-item-contrls">\
                  	<a href="javascript:void(0)" class="del"><i class="icon_close"></i></a>\
                  </div>\
                </div>');
    $item.find('.remove').click(function() {
      removeFile(file);
    });
    /** 按钮的显示和绑定 */
    //删除
    //自定义的删除方法
    if (!displayOption.del)
      $item.find('.del').hide()
    else if (typeof displayOption.del==='function'){
      $item.find('.del').on('click',function(){
    	     	  
    	  displayOption.del(this,file);
    	//removeFile();
      });
    }
      
      //默认删除缓存的方法
//    $item.find('.del').click(function() {
//      delTempFile((option&&option.formData&&option.formData.ucode?option.formData.ucode:''),this,function() {
//        removeFile(file)
//      });
//    });
    
    
    //查看
    if (!displayOption.preview)
      $item.find('.preview').hide()
    else if (typeof displayOption.preview==='function')
      $item.find('.preview').on('click',displayOption.preview)
    //下载
    if (!displayOption.download)
      $item.find('.download').hide()
    else if (typeof displayOption.download==='function')
      $item.find('.download').on('click',displayOption.download)

    $item.appendTo($list)
  });

  // 文件上传过程中创建进度条实时显示。
  uploader.on('uploadProgress', function(file, percentage) {
    var $li = $wrap.find('.' + file.id),
      $percent = $li.find('.progress .progress-bar');

    // 避免重复创建
    if (!$percent.length) {
      $percent = $('<div class="progress active">' +
        '<div class="progress-bar" role="progressbar" style="width: 0%">' +
        '</div>' +
        '</div>').appendTo($li).find('.progress-bar');
    }

    $li.find('.state').text('上传中');

    $percent.parent().fadeIn();
    $percent.css('width', percentage * 100 + '%');
  });


  uploader.on('uploadError', function(file) {
    $wrap.find('.' + file.id).find('.state').text('上传出错');
    if ($wrap.find('.' + file.id).find('.retry').length === 0&&$btn.length!==0) {
      var $retry = $('<a href="javascript:void(0)" class="retry">重新上传</a>');
      $wrap.find('.' + file.id).find('.state').after($retry);
      //重新上传失败的文件
      $retry.on('click', function() {
        $(this).unbind().remove();
        uploader.retry(file);
      })
    }
  });

  uploader.on('uploadComplete', function(file) {
    $wrap.find('.' + file.id).find('.progress').fadeOut();
  });

  uploader.on('all', function(type) {
    if (type === 'startUpload') {
      state = 'uploading';
    } else if (type === 'stopUpload') {
      state = 'paused';
    } else if (type === 'uploadFinished') {
      state = 'done';
    }
    $wrap.data('state',state);

    if (state === 'uploading') {
      $btn.text('暂停上传');
    } else {
      $btn.text('开始上传');
    }
  });

  $btn.on('click', function() {
    if (state === 'uploading') {
      uploader.stop();
    } else {
      uploader.upload();
    }
  });

  uploader.onError = function(code) {
    var txt = '';
    switch (code) {
      case 'F_EXCEED_SIZE':
        txt = '文件太小超过限制';
        break;

      case 'Q_EXCEED_SIZE_LIMIT':
        txt = '总太小超过限制';
        break;

      case 'F_DUPLICATE':
        txt = '已有同名的上传文件';
        break;

      case 'Q_EXCEED_NUM_LIMIT':
        txt = '数量超出限制';
        break;

      case 'Q_TYPE_DENIED':
        txt = '不支持的文件类型';
        break;
        
      default:
        txt = code;
    }
    layer.msg(txt);
  };



  //判断成功或失败
  uploader.on('uploadAccept', function(object,ret) {
    //如果服务器接收成功
    if (ret&&(ret.status == "y" || ret.status == "Y"))
      return true;
    else return false
  });

  //已经成功上传文件的处理
  uploader.on('uploadSuccess', function(file,response) {
    $wrap.find('.' + file.id).addClass('uploaded').find('.state').text("上传成功");
    if (response&&response.data)
      $wrap.find('.' + file.id).data('id',response.data);
      $wrap.find('.' + file.id).attr('fileid',response.data);
  });

  function removeFile(file) {
	$wrap.find('.'+file.id).remove();
    uploader.removeFile(file); 
  }

  function formatSize(size) {
    //文件大小格式化
    size=parseInt(size)
    if (size<=1024) {return size+'B'}
    else if (size<=1048576) {return Math.ceil(size*100/1024)/100+'KB'}
    else {return Math.ceil(size*100/1048576)/100+'MB'}
  }

  return uploader;
}


//根据后缀名匹配文件图标
function matchType(ext) {
  switch (ext) {
    case 'png':
    case 'gif':
    case 'jpg':
    case 'jpeg':
    case 'bmp':
      return 'img';
    case 'doc':
    case 'docx':
    case 'wps':
      return 'doc';
    case 'ppt':
    case 'pptx':
    case 'dps':
      return 'ppt';
    case 'xls':
    case 'xlsx':
    case 'et':
      return 'xls';
    case 'pdf':
      return 'pdf';
    case 'txt':
      return 'txt';
    case 'rar':
    case 'zip':
      return 'rar';
    case '3gp':
    case 'mp4':
    case 'avi':
    case 'mpv2':
    case 'mpg':
    case 'mpe':
    case 'mpeg':
    case 'rmvb':
    case 'rm':
    case 'asf':
    case 'divx':
    case 'wmv':
    case 'mkv':
    case 'vob':
    case 'flv':
    case 'ogm':
    case 'qt':
      return 'video';
    default:
      return 'other';
  }
}

//删除已上传的临时文件
function delTempFile(ucode,a,successFun){
  var key = $(a).closest(".file-item").data("id");
    var data={
       'ucode':ucode,
         'kw':key
      };
    $.ajax({
        type: "POST",
        url: path+"/file/delete.do",
        data: data,
        async: false,
        error: function(request) {
          layer.msg("删除失败");
        },
        success: function(data) {
          if(data.status == "y" || data.status == "Y"){
            layer.msg(data.info,{icon: 1,time:2500});
            $(a).closest(".file-item").remove();
            typeof successFun==='function'&&successFun()
          }else{
            layer.msg(data.info,{icon: 2,time:2500});
          }
        }
      });
}