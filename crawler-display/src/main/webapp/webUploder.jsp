<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>上传照片</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<%@include file="/page/common/opertop.jsp" %>	
	<link href="<%=path %>/h-ui/lib/webuploader/0.1.5/webuploader.css" rel="stylesheet" type="text/css" />

  </head>
  
  
  <body>
	<div class="pd-20">
	  <form action="<%=path %>/wb/addAlbum.do" method="post" class="form form-horizontal" id="form-album-add">
	    <div class="row cl">
            <input id="key" value="${albumKey}" type="hidden"/>
			<label class="form-label col-1"></label>
			<div class="formControls col-10">
				<div class="uploader-list-container"> 
					<div class="queueList">
						<div id="dndArea" class="placeholder" style="min-height: 160px;">
							<div id="filePicker-2"></div>
							<p>或将照片拖到这里，单次最多可选300张</p>
						</div>
					</div>
					<div class="statusBar" style="display:none;">
						<div class="progress"> <span class="text">0%</span> <span class="percentage"></span> </div>
						<div class="info"></div>
						<div class="btns">
							<div id="filePicker2"></div>
							<div class="uploadBtn">开始上传</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	  </form>
	        
	  
	</div>
		

	<%@include file="/page/common/operbuttom.jsp" %>
	<script type="text/javascript" src="<%=path%>/h-ui/lib/webuploader/0.1.5/webuploader.min.js"></script> 
	<script type="text/javascript">
	var path="<%=path%>";
	
		
    // 当domReady的时候开始初始化
    $(function() {
    
   
    	
    	var $wrap = $('.uploader-list-container'),	
    	
   	
            // 图片容器
            $queue = $( '<ul class="filelist"></ul>' )
                .appendTo( $wrap.find( '.queueList' ) ),

            // 状态栏，包括进度和控制按钮
            $statusBar = $wrap.find( '.statusBar' ),

            // 文件总体选择信息。
            $info = $statusBar.find( '.info' ),

            // 上传按钮
            $upload = $wrap.find( '.uploadBtn' ),

            // 没选择文件之前的内容。
            $placeHolder = $wrap.find( '.placeholder' ),

            $progress = $statusBar.find( '.progress' ).hide(),

            // 添加的文件数量
            fileCount = 0,

            // 添加的文件总大小
            fileSize = 0,

            // 优化retina, 在retina下这个值是2
            ratio = window.devicePixelRatio || 1,

            // 缩略图大小
            thumbnailWidth = 110 * ratio,
            thumbnailHeight = 110 * ratio,

            // 可能有pedding, ready, uploading, confirm, done.
            state = 'pedding',

            // 所有文件的进度信息，key为file id
            percentages = {},
            // 判断浏览器是否支持图片的base64
            isSupportBase64 = ( function() {
                var data = new Image();
                var support = true;
                data.onload = data.onerror = function() {
                    if( this.width != 1 || this.height != 1 ) {
                        support = false;
                    }
                }
                data.src = "data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///ywAAAAAAQABAAACAUwAOw==";
                return support;
            } )(),

            // 检测是否已经安装flash，检测flash的版本
            flashVersion = ( function() {
                var version;

                try {
                    version = navigator.plugins[ 'Shockwave Flash' ];
                    version = version.description;
                } catch ( ex ) {
                    try {
                        version = new ActiveXObject('ShockwaveFlash.ShockwaveFlash')
                                .GetVariable('$version');
                    } catch ( ex2 ) {
                        version = '0.0';
                    }
                }
                version = version.match( /\d+/g );
                return parseFloat( version[ 0 ] + '.' + version[ 1 ], 10 );
            } )(),

            supportTransition = (function(){
                var s = document.createElement('p').style,
                    r = 'transition' in s ||
                            'WebkitTransition' in s ||
                            'MozTransition' in s ||
                            'msTransition' in s ||
                            'OTransition' in s;
                s = null;
                return r;
            })(),

            // WebUploader实例
            uploader;
	

        if ( !WebUploader.Uploader.support('flash') && WebUploader.browser.ie ) {

            // flash 安装了但是版本过低。
            if (flashVersion) {
                (function(container) {
                    window['expressinstallcallback'] = function( state ) {
                        switch(state) {
                            case 'Download.Cancelled':
                                alert('您取消了更新！')
                                break;

                            case 'Download.Failed':
                                alert('安装失败')
                                break;

                            default:
                                alert('安装已成功，请刷新！');
                                break;
                        }
                        delete window['expressinstallcallback'];
                    };

                    var swf = 'expressInstall.swf';
                    // insert flash object
                    var html = '<object type="application/' +
                            'x-shockwave-flash" data="' +  swf + '" ';

                    if (WebUploader.browser.ie) {
                        html += 'classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" ';
                    }

                    html += 'width="100%" height="100%" style="outline:0">'  +
                        '<param name="movie" value="' + swf + '" />' +
                        '<param name="wmode" value="transparent" />' +
                        '<param name="allowscriptaccess" value="always" />' +
                    '</object>';

                    container.html(html);

                })($wrap);

            // 压根就没有安转。
            } else {
                $wrap.html('<a href="http://www.adobe.com/go/getflashplayer" target="_blank" border="0"><img alt="get flash player" src="http://www.adobe.com/macromedia/style_guide/images/160x41_Get_Flash_Player.jpg" /></a>');
            }

            return;
        } else if (!WebUploader.Uploader.support()) {
            alert( 'Web Uploader 不支持您的浏览器！');
            return;
        }


	
		var GUID = WebUploader.Base.guid();//一个GUID
	    var temp ;
		
		/**
	     * method:before-send-file
	     * 在文件发送之前request，此时还没有分片（如果配置了分片的话），可以用来做文件整体md5验证。
	     * para:file: File对象
	     */
	    WebUploader.Uploader.register({
	        'before-send-file' : 'preupload'
	    }, {
	        preupload : function(file) {
	            $('#uploadBtn').attr("disabled",true);
	            var me = this, 
	            owner = this.owner, 
	            server = me.options.server, 
	            deferred = WebUploader.Deferred(), 
	            blob = file.source.getSource();
	
	
	
	            //var fileMd5 = file.wholeMd5;
	          
	            var $li = $('#' + file.id), 
	            $MD5Percent = $li.find('.progress  .progress-bar-info');
	            $li.find('span.state').text('计算MD5');
	     
	            owner.md5File( file )           
	            .progress(function(percentage) {   // 及时显示进度             
	                var percent = parseInt(percentage * 100 ) + '%';
	                $MD5Percent.css('width', percent);
	                $MD5Percent.html(percent);
	          
	            })               
	            .then(function(fileMd5) {   // 完成              
	    	            
	              
	                file.wholeMd5 = fileMd5;
	
	                $.ajax({
	                    cache : false,                  
	                    type : "post",
	                    dataType : "json",
	                    url : path + "/userController/checkSharedFile.do",
	                    data : {
	                        "md5Code" : fileMd5
	                    },
	                    success : function(result) {
		                        
	                            if (result.status == "y") {//文件存在
	                                
	                                //$MD5Percent.hide();
	                               /* var $li = $('#' + file.id), 
	                                $percent = $li.find('.progress  .progress-bar-success');
	                                $li.find('span.state').text('文件重复，已跳过');
	                                $percent.css('width', 100 + '%');*/
	                               // owner.skipFile(file);
	                               
	                                file.wholeMd5 = fileMd5;
	                                file.chunkMd5s = result.chunksMd5;  //如果后台已经有该文件的分片记录
	                                owner.options.formData.guid = result.guid;
	                                temp = result.guid;
	                            }else{//文件不存在
	                                 owner.options.formData.guid = GUID;
	                                 temp = GUID;
	                            }
	
	                            
	                            deferred.resolve(true);
	                    
	                    }
	                });
	            });
	
	            return deferred.promise();
	        }
	    });


		/**
	     * method:before-send
	     * 在分片发送之前request，可以用来做分片验证，如果此分片已经上传成功了，可返回一个rejected promise来跳过此分片上传
	     * para:block: 分片对象
	     */
	     WebUploader.Uploader.register({  
	        'before-send' : 'checkchunk'
	    }, {
	        checkchunk : function(block) {
	            var me = this; 
	            var owner = this.owner;
	            var deferred = $.Deferred();
	            var chunkFile = block.blob;
	            var file = block.file;
	            var chunk = block.chunk;
	            var chunks = block.chunks;
	            var start = block.start;
	            var end = block.end;
	            var total = block.total;
	
	            file.chunks = chunks;           
	
	
	           
	            if(chunks>1){ //文件大于chunksize 分片上传
	               /* owner.md5File(chunkFile)            
	                .progress(function(percentage) {
	                    //分片MD5计算可以不知道计算进度
	                })  
	                .then(function(chunkMd5) {  
	                    //owner.options.formData.chunkMd5 = chunkMd5;
	                    block.chunkMd5 = chunkMd5;
	                    var chunkMd5s = file.chunkMd5s;
	                    var exists = false;
	                    if (typeof(chunkMd5s) == "undefined") { 
	                        exists = false;
	                    }  else{
	                        exists = chunkMd5 == chunkMd5s[chunk]?true:false;                   
	                    }
	
	                    if (exists) {
	                        layer.msg("跳过！",{icon: 1,time:1000}); 
	                        deferred.reject();
	                    } else { 
	                     	owner.options.formData.blockMd5 = chunkMd5;                       
	                        deferred.resolve();
	                    }  
	
	                
	                });*/
	                
	         
	                    var chunkMd5s = file.chunkMd5s;
	                    var exists = false;
	                    if (typeof(chunkMd5s) == "undefined") { 
	                        exists = false;
	                    }  else{
	                        exists = chunk == chunkMd5s[chunk]?true:false;                   
	                    }
	
	                    if (exists) {
	                        layer.msg("跳过！",{icon: 1,time:1000}); 
	                        deferred.reject();
	                    } else { 
	                     	owner.options.formData.blockMd5 = "temp";                       
	                        deferred.resolve();
	                    }  
	
	
	            }else{//未分片文件上传
	                block.chunkMd5 = file.wholeMd5;
	                owner.options.formData.chunkMd5 = chunkMd5;
	                deferred.resolve();
	            }           
	
	
	            owner.options.formData.fileMd5 = file.wholeMd5;
	            return deferred.promise();
	        }
	    }); 




		/**
	     * method:after-send-file
	     * 在所有分片都上传完毕后，且没有错误后request，用来做分片验证，此时如果promise被reject，当前文件上传会触发错误。
	     * param :file: File对象
	     */
	    WebUploader.Uploader.register({
	        'after-send-file' : 'chunkUploadFinish'
	    }, {
	        chunkUploadFinish : function(file) {
	      
	    	
	            var deferred =  $.Deferred();
	            var fileMd5 = file.wholeMd5;            
	            var chunks = file.blocks.length;
	       
	            if(chunks > 1){//TODO 向server发送文件合并请求，根据结果决定文件上传成功与否
	
	                $('#' + file.id).find('span.state').text("合并文件...");
	                $.ajax({
	                    cache : false,      
	                    async:true,         
	                    type : "post",
	                    dataType : "json",
	                    url : path + "/userController/mergeFile.do",
	                    data : {
	                    	"guid": temp,
	                        "fileMd5" : fileMd5,
	                        "chunks":chunks,
	                        //isShared : $("#isShared").val(),
	                        //fileType : $("#fileType").val(),
	                        "fileName":file.name  
	                    },
	                    success : function(response) {
		                    if(response.status == "y" || response.status == "Y"){	
								layer.msg(response.info,{icon: 1,time:1000}); 
								$('#' + file.id).find('span.state').text("合并文件成功");
								deferred.resolve();					
							}else{
							   layer.msg(response.info,{icon: 2,time:2000}); 
							    $('#' + file.id).find('span.state').text("合并文件失败");
							    deferred.reject();
							}
	                                                 
	                    }
	                });         
	
	            }else{
	                deferred.resolve();
	            }        
	
	            return deferred.promise();
		
	
	        }
	    });






   	
   		
        // 实例化
        var uploader = WebUploader.create({
            pick: {
                id: '#filePicker-2',
                label: '点击选择图片'
            },
            formData: {
                "guid": GUID
            },
            dnd: '#dndArea',
            paste: '#uploader',
            swf: path+'/h-ui/lib/webuploader/0.1.5/Uploader.swf',    
            chunked: true,
            chunkSize: 3 * 1024  * 1024,
            server:path+'/userController/shradUpload.do',
            // runtimeOrder: 'flash',
 
           /*  accept: {
                 title: 'Images',
                 extensions: 'gif,jpg,jpeg,bmp,png',
               	 mimeTypes: 'image/*'
             },*/

            // 禁掉全局的拖拽功能。这样不会出现图片拖进页面的时候，把图片打开。
            disableGlobalDnd: true,
            fileNumLimit: 50,
            fileSizeLimit: 2000 * 1024 * 1024,    //总大小 200 M
            fileSingleSizeLimit: 2000 * 1024 * 1024    // 单个文件50 M
        });

		
	

        // 拖拽时不接受 js, txt 文件。
        uploader.on( 'dndAccept', function( items ) {
            var denied = false,
                len = items.length,
                i = 0,
                // 修改js类型
                unAllowed = 'text/plain;application/javascript ';

            for ( ; i < len; i++ ) {
                // 如果在列表里面
                if ( ~unAllowed.indexOf( items[ i ].type ) ) {
                    denied = true;
                    break;
                }
            }

            return !denied;
        });

        uploader.on('dialogOpen', function() {
            console.log('here');
        });

        // uploader.on('filesQueued', function() {
        //     uploader.sort(function( a, b ) {
        //         if ( a.name < b.name )
        //           return -1;
        //         if ( a.name > b.name )
        //           return 1;
        //         return 0;
        //     });
        // });

        // 添加“添加文件”的按钮，
        uploader.addButton({
            id: '#filePicker2',
            label: '继续添加'
        });





        uploader.on('ready', function() {
            window.uploader = uploader;
        });
		
        // 当有文件添加进来时执行，负责view的创建
        function addFile( file ) {
            var $li = $( '<li id="' + file.id + '">' +
                    '<p class="title">' + file.name + '</p>' +
                    '<p class="imgWrap"></p>'+
                    '<p class="progress"><span></span></p>' +
                    '</li>' ),

                $btns = $('<div class="file-panel">' +
                    '<span class="cancel">删除</span>' +
                    '<span class="rotateRight">向右旋转</span>' +
                    '<span class="rotateLeft">向左旋转</span></div>').appendTo( $li ),
                $prgress = $li.find('p.progress span'),
                $wrap = $li.find( 'p.imgWrap' ),
                $info = $('<p class="error"></p>'),

                showError = function( code ) {
                    switch( code ) {
                        case 'exceed_size':
                            text = '文件大小超出';
                            break;

                        case 'interrupt':
                            text = '上传暂停';
                            break;

                        default:
                            text = '上传失败，请重试';
                            break;
                    }

                    $info.text( text ).appendTo( $li );
                };

            if ( file.getStatus() === 'invalid' ) {
                showError( file.statusText );
            } else {
                // @todo lazyload
                $wrap.text( '预览中' );
                uploader.makeThumb( file, function( error, src ) {
                    var img;

                    if ( error ) {
                        $wrap.text( '不能预览' );
                        return;
                    }

                    if( isSupportBase64 ) {
                        img = $('<img src="'+src+'">');
                        $wrap.empty().append( img );
                    } else {
                        $.ajax('lib/webuploader/0.1.5/server/preview.php', {
                            method: 'POST',
                            data: src,
                            dataType:'json'
                        }).done(function( response ) {
                            if (response.result) {
                                img = $('<img src="'+response.result+'">');
                                $wrap.empty().append( img );
                            } else {
                                $wrap.text("预览出错");
                            }
                        });
                    }
                }, thumbnailWidth, thumbnailHeight );

                percentages[ file.id ] = [ file.size, 0 ];
                file.rotation = 0;
            }

            file.on('statuschange', function( cur, prev ) {
                if ( prev === 'progress' ) {
                    $prgress.hide().width(0);
                } else if ( prev === 'queued' ) {
                    $li.off( 'mouseenter mouseleave' );
                    $btns.remove();
                }

                // 成功
                if ( cur === 'error' || cur === 'invalid' ) {
                    console.log( file.statusText );
                    showError( file.statusText );
                    percentages[ file.id ][ 1 ] = 1;
                } else if ( cur === 'interrupt' ) {
                    showError( 'interrupt' );
                } else if ( cur === 'queued' ) {
                    percentages[ file.id ][ 1 ] = 0;
                } else if ( cur === 'progress' ) {
                    $info.remove();
                    $prgress.css('display', 'block');
                } else if ( cur === 'complete' ) {
                    $li.append( '<span class="success"></span>' );
                }

                $li.removeClass( 'state-' + prev ).addClass( 'state-' + cur );
            });

            $li.on( 'mouseenter', function() {
                $btns.stop().animate({height: 30});
            });

            $li.on( 'mouseleave', function() {
                $btns.stop().animate({height: 0});
            });

            $btns.on( 'click', 'span', function() {
                var index = $(this).index(),
                    deg;

                switch ( index ) {
                    case 0:
                        uploader.removeFile( file );
                        return;

                    case 1:
                        file.rotation += 90;
                        break;

                    case 2:
                        file.rotation -= 90;
                        break;
                }

                if ( supportTransition ) {
                    deg = 'rotate(' + file.rotation + 'deg)';
                    $wrap.css({
                        '-webkit-transform': deg,
                        '-mos-transform': deg,
                        '-o-transform': deg,
                        'transform': deg
                    });
                } else {
                    $wrap.css( 'filter', 'progid:DXImageTransform.Microsoft.BasicImage(rotation='+ (~~((file.rotation/90)%4 + 4)%4) +')');
                    // use jquery animate to rotation
                    // $({
                    //     rotation: rotation
                    // }).animate({
                    //     rotation: file.rotation
                    // }, {
                    //     easing: 'linear',
                    //     step: function( now ) {
                    //         now = now * Math.PI / 180;

                    //         var cos = Math.cos( now ),
                    //             sin = Math.sin( now );

                    //         $wrap.css( 'filter', "progid:DXImageTransform.Microsoft.Matrix(M11=" + cos + ",M12=" + (-sin) + ",M21=" + sin + ",M22=" + cos + ",SizingMethod='auto expand')");
                    //     }
                    // });
                }


            });

            $li.appendTo( $queue );
        }

        // 负责view的销毁
        function removeFile( file ) {
            var $li = $('#'+file.id);

            delete percentages[ file.id ];
            updateTotalProgress();
            $li.off().find('.file-panel').off().end().remove();
        }

        function updateTotalProgress() {
            var loaded = 0,
                total = 0,
                spans = $progress.children(),
                percent;

            $.each( percentages, function( k, v ) {
                total += v[ 0 ];
                loaded += v[ 0 ] * v[ 1 ];
            } );

            percent = total ? loaded / total : 0;


            spans.eq( 0 ).text( Math.round( percent * 100 ) + '%' );
            spans.eq( 1 ).css( 'width', Math.round( percent * 100 ) + '%' );
            updateStatus();
        }

        function updateStatus() {
            var text = '', stats;

            if ( state === 'ready' ) {
                text = '选中' + fileCount + '张图片，共' +
                        WebUploader.formatSize( fileSize ) + '。';
            } else if ( state === 'confirm' ) {
                stats = uploader.getStats();
                if ( stats.uploadFailNum ) {
                    text = '已成功上传' + stats.successNum+ '张照片至XX相册，'+
                        stats.uploadFailNum + '张照片上传失败，<a class="retry" href="#">重新上传</a>失败图片或<a class="ignore" href="#">忽略</a>'
                }

            } else {
                stats = uploader.getStats();
                text = '共' + fileCount + '张（' +
                        WebUploader.formatSize( fileSize )  +
                        '），已上传' + stats.successNum + '张';

                if ( stats.uploadFailNum ) {
                    text += '，失败' + stats.uploadFailNum + '张';
                }
            }

            $info.html( text );
        }

        function setState( val ) {
            var file, stats;

            if ( val === state ) {
                return;
            }

            $upload.removeClass( 'state-' + state );
            $upload.addClass( 'state-' + val );
            state = val;

            switch ( state ) {
                case 'pedding':
                    $placeHolder.removeClass( 'element-invisible' );
                    $queue.hide();
                    $statusBar.addClass( 'element-invisible' );
                    uploader.refresh();
                    break;

                case 'ready':
                    $placeHolder.addClass( 'element-invisible' );
                    $( '#filePicker2' ).removeClass( 'element-invisible');
                    $queue.show();
                    $statusBar.removeClass('element-invisible');
                    uploader.refresh();
                    break;

                case 'uploading':
                    $( '#filePicker2' ).addClass( 'element-invisible' );
                    $progress.show();
                    $upload.text( '暂停上传' );
                    break;

                case 'paused':
                    $progress.show();
                    $upload.text( '继续上传' );
                    break;

                case 'confirm':
                    $progress.hide();
                    $( '#filePicker2' ).removeClass( 'element-invisible' );
                    $upload.text( '开始上传' );

                    stats = uploader.getStats();
                    if ( stats.successNum && !stats.uploadFailNum ) {
                        setState( 'finish' );
                        return;
                    }
                    break;
                case 'finish':
                    stats = uploader.getStats();
                    if ( stats.successNum ) {
                       // alert( '上传成功' );
                    } else {
                        // 没有成功的图片，重设
                        state = 'done';
                        location.reload();
                    }
                    break;
            }

            updateStatus();
        }

        uploader.onUploadProgress = function( file, percentage ) {
            var $li = $('#'+file.id),
                $percent = $li.find('.progress span');

            $percent.css( 'width', percentage * 100 + '%' );
            percentages[ file.id ][ 1 ] = percentage;
            updateTotalProgress();
        };

        uploader.onFileQueued = function( file ) {
            fileCount++;
            fileSize += file.size;

            if ( fileCount === 1 ) {
                $placeHolder.addClass( 'element-invisible' );
                $statusBar.show();
            }

            addFile( file );
            setState( 'ready' );
            updateTotalProgress();
        };

        uploader.onFileDequeued = function( file ) {
            fileCount--;
            fileSize -= file.size;

            if ( !fileCount ) {
                setState( 'pedding' );
            }

            removeFile( file );
            updateTotalProgress();

        };

        uploader.on( 'all', function( type ) {
            var stats;
            switch( type ) {
                case 'uploadFinished':
                    setState( 'confirm' );
                    break;

                case 'startUpload':
                    setState( 'uploading' );
                    break;

                case 'stopUpload':
                    setState( 'paused' );
                    break;

            }
        });
        
        /*上传后服务器端返回的响应数据判断是否上传成功*/
    	uploader.on( 'uploadAccept', function( file, response ) {
			if(response.status == "y" || response.status == "Y"){	
				//layer.msg(response.info,{icon: 1,time:1000}); 
				 return true; 					
			}else{
			   layer.msg(response.info,{icon: 2,time:2000}); 
			    return false;
			}
	   
	      
	    
		});
        
        
        uploader.onError = function( code ) {
            alert( 'Eroor: ' + code );
        };

        $upload.on('click', function() {
            if ( $(this).hasClass( 'disabled' ) ) {
                return false;
            }

            if ( state === 'ready' ) {
                uploader.upload();
            } else if ( state === 'paused' ) {
                uploader.upload();
            } else if ( state === 'uploading' ) {
                uploader.stop();
            }
        });

        $info.on( 'click', '.retry', function() {
            uploader.retry();
        } );

        $info.on( 'click', '.ignore', function() {
            alert( 'todo' );
        } );

        $upload.addClass( 'state-' + state );
        updateTotalProgress();
        
    	
  		register();
        
    });
		
	
	
	
	
	
	</script> 
	

</body>
  
  
  
</html>
