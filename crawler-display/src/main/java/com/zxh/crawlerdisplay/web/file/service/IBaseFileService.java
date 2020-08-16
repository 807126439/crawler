package com.zxh.crawlerdisplay.web.file.service;

import com.zxh.crawlerdisplay.core.common.dto.DownLoadDTO;
import com.zxh.crawlerdisplay.web.file.dto.baseFile.PreviewImageDTO;
import com.zxh.crawlerdisplay.web.file.dto.baseFile.SaveResult;
import com.zxh.crawlerdisplay.web.file.entity.ZonePath;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import java.io.File;
import java.util.List;
import java.util.Map;

public interface IBaseFileService {

	SaveResult addBaseFile(CommonsMultipartFile uploadFile, String zoneType);

	SaveResult addBaseFile(MultipartFile uploadFile, String zoneType);

	SaveResult addBaseFile(File uploadFile, String ContentType, String zoneType);

	SaveResult addEmptyBaseFile(String zoneType, String fileName, String contentType);

	void deleteBaseFile(Object array);

	void realDeteleFile(Long id);

	String getDownLoadFilePath(Long id);

	String getBigPatternViewPath(Long id);

	String getFileViewPath(Long id);

	DownLoadDTO getDownLoadInfoById(Long baseFileId);

	String saveByCache(String uuid, String type, CommonsMultipartFile uploadFile);

	void saveByCache(String uuid, String type, Long baseFileId);

	Map<String, List<SaveResult>> getTempCacheVal(String uuid);

	void removeTempCacheObj(String uuid);

	String getVirtualSavePath(ZonePath zp, String fileType);

	void saveTransformImgFile(Long mainId, Long zonePathId, String fileName, String savePath, Long length, String fileType, String userName);

	List<PreviewImageDTO> viewFileByImgs(Long baseFileId);

	List<PreviewImageDTO> getPreviewImageByBaseFileId(Long baseFileId);

	DownLoadDTO getViewFileInfo(Long baseFileId);

	void updateConvertImgsById(Long baseFileId, String userName);

	void deleteInnerCache(String uuid, String key);

	void monitorCache();

	String getUploadToken();

	String getUploadCode();

	boolean checkTokenIsCorrect(String code);

	String getFileText(String uuid, String key);

	DownLoadDTO downloadTempFile(String tempLocation, String type);

	String saveByCacheAndReturnViewPattern(String ucode, String modelType, CommonsMultipartFile file, String fileType);

	String getTempFileWholePath(String fileType);

}
