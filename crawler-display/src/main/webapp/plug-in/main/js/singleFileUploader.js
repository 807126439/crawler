//单文件上传
function initSingleFileUploader(el,option) {
  var uploader = WebUploader.create($.extend({
    swf: 'libs/webuploader-0.1.5/Uploader.swf',
    server: '/',
    pick:{
      id:$(el).find(".picker"),
      multiple:false
    },
    accept:{
      extensions: '*',
      mimeTypes: "*"
    },
    fileNumLimit:1
  },option));

  $(el).find(".btn-upload").on("click",function () {
    if($(el).find(".btn-upload").hasClass("uploading")){
      $(el).find(".btn-upload").text($(el).find(".btn-upload").data("text"))
      $(el).find(".btn-upload").removeClass("uploading")
      uploader.stop(true)
    }else{
      $(el).find(".btn-upload").addClass("uploading")
      $(el).find(".btn-upload").data("text",$(el).find(".btn-upload").text())
      $(el).find(".btn-upload").text("取消上传")
      uploader.retry()
    }
  })

  uploader.on("beforeFileQueued",function(file) {
    //单文件上传
    uploader.reset();
    $(el).find(".file-input").find('.progress').fadeOut();
  })

  uploader.on("fileQueued",function(file) {
    $(el).find(".file-input-content").length==0&&$(el).find(".file-input").append("<div class='file-input-content'></div>");
    $(el).find(".file-input-content").text(file.name);
  })

  // 文件上传过程中创建进度条实时显示。
  uploader.on('uploadProgress', function(file, percentage) {
    var $percent = $(el).find(".file-input").find('.progress .progress-bar');

    // 避免重复创建
    if (!$percent.length) {
      $percent = $('<div class="progress active" style="margin-bottom: -7px;position: relative;top: -2px;">' +
          '<div class="progress-bar" role="progressbar" style="width: 0%">' +
          '</div>' +
          '</div>').appendTo($(el).find(".file-input")).find('.progress-bar');
    }

    $percent.parent().fadeIn();
    $percent.css('width', percentage * 100 + '%');
  });

  uploader.on('uploadComplete', function(file) {
    $(el).find(".file-input").find('.progress').fadeOut();
  });

  uploader.on('uploadFinished', function(file) {
    $(el).find(".btn-upload").removeClass("uploading")
    $(el).find(".btn-upload").text($(el).find(".btn-upload").data("text"))
  });

  //将服务器返回结果派送到success或error
 /* uploader.on("uploadAccept",function(object,ret) {
	 
    if(ret&&ret.status=="y") return true
    return false
  })*/

  uploader.on("uploadSuccess",function(file,reason) {
   // (layer.alert||alert)("上传成功")
  })

  uploader.addButton({
    id: $(el).find(".file-input"),
    innerHTML: false
  });

  uploader.on("uploadError",function(file,reason) {
   // (layer.alert||alert)("上传失败:"+reason)
	 // alert("上传失败:"+reason);
  })
  return uploader;
}