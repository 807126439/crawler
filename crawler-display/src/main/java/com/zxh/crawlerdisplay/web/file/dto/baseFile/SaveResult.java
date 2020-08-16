package com.zxh.crawlerdisplay.web.file.dto.baseFile;


public class SaveResult {
	private Long id;		  	  //保存后文件id	
	private String viewPattern;   	  //小缩略图
	private String viewBigPattern;    //大缩略图	
	private Short fileKind;		   //文件类型	
	private String downLoadPath;   //下载路径
	private String viewPath;	   //预览路径	
	
	private String fileType;		//文件种类
	private String fileName;		//文件名称
	private String fileSize;  //文件大小

	
	public SaveResult(Long id){
		this.id = id;
	}
	
	public SaveResult(Long id, String viewPattern, String viewBigPattern,
			Short fileKind, String downLoadPath, String viewPath) {
		super();
		this.id = id;
		this.viewPattern = viewPattern;
		this.viewBigPattern = viewBigPattern;
		this.fileKind = fileKind;
		this.downLoadPath = downLoadPath;
		this.viewPath = viewPath;
	}

	
	public SaveResult(Long id, String viewPattern, String viewBigPattern,
			Short fileKind, String downLoadPath, String viewPath,
			String fileType, String fileName,String fileSize) {
		super();
		this.id = id;
		this.viewPattern = viewPattern;
		this.viewBigPattern = viewBigPattern;
		this.fileKind = fileKind;
		this.downLoadPath = downLoadPath;
		this.viewPath = viewPath;
		this.fileType = fileType;
		this.fileName = fileName;
		this.fileSize = fileSize;
	}

	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getViewPattern() {
		return viewPattern;
	}


	public void setViewPattern(String viewPattern) {
		this.viewPattern = viewPattern;
	}


	public String getViewBigPattern() {
		return viewBigPattern;
	}


	public void setViewBigPattern(String viewBigPattern) {
		this.viewBigPattern = viewBigPattern;
	}


	public Short getFileKind() {
		return fileKind;
	}


	public void setFileKind(Short fileKind) {
		this.fileKind = fileKind;
	}


	public String getDownLoadPath() {
		return downLoadPath;
	}


	public void setDownLoadPath(String downLoadPath) {
		this.downLoadPath = downLoadPath;
	}


	public String getViewPath() {
		return viewPath;
	}
	

	public String getFileType() {
		return fileType;
	}

	public void setFileType(String fileType) {
		this.fileType = fileType;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFileSize() {
		return fileSize;
	}

	public void setFileSize(String fileSize) {
		this.fileSize = fileSize;
	}
	
	
	
	



	
	
	
}
