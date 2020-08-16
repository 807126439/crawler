package com.zxh.crawlerdisplay.web.file.service.impl;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGEncodeParam;
import com.sun.image.codec.jpeg.JPEGImageEncoder;
import com.sun.pdfview.PDFFile;
import com.sun.pdfview.PDFPage;
import com.zxh.crawlerdisplay.core.common.dto.DownLoadDTO;
import com.zxh.crawlerdisplay.core.common.exception.BusinessException;
import com.zxh.crawlerdisplay.core.common.service.BaseService;
import com.zxh.crawlerdisplay.core.common.utils.Assert;
import com.zxh.crawlerdisplay.core.utils.DateUtil;
import com.zxh.crawlerdisplay.core.utils.SizeCalculation;
import com.zxh.crawlerdisplay.core.utils.UUIDGenerator;
import com.zxh.crawlerdisplay.core.utils.file.FileMd5;
import com.zxh.crawlerdisplay.core.utils.file.FileOperation;
import com.zxh.crawlerdisplay.core.utils.img.PdfToJpgUtils;
import com.zxh.crawlerdisplay.core.utils.pdf.PdfToSwfUtils;
import com.zxh.crawlerdisplay.web.file.dao.IBaseFileDao;
import com.zxh.crawlerdisplay.web.file.dao.IZonePathDao;
import com.zxh.crawlerdisplay.web.file.dto.baseFile.PreviewImageDTO;
import com.zxh.crawlerdisplay.web.file.dto.baseFile.SaveResult;
import com.zxh.crawlerdisplay.web.file.entity.BaseFile;
import com.zxh.crawlerdisplay.web.file.entity.ZonePath;
import com.zxh.crawlerdisplay.web.file.service.IBaseFileService;
import com.zxh.crawlerdisplay.web.file.service.IZonePathService;
import com.zxh.crawlerdisplay.web.file.util.PathGenerator;
import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.annotation.Resource;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.*;
import java.util.Map.Entry;
import java.util.concurrent.ConcurrentHashMap;

@Service("baseFileService")
@Transactional
public class BaseFileServiceImpl extends BaseService implements IBaseFileService {
	@Resource
	private IBaseFileDao baseFileDao;
	@Resource
	private IZonePathDao zonePathDao;
	@Resource
	private IZonePathService zonePathService;

	/**
	 * 保存上传的文件
	 * 
	 * @param uploadFile
	 * @return
	 * @throws IOException
	 */
	@Override
	public SaveResult addBaseFile(CommonsMultipartFile uploadFile, String zoneType) {
		Assert.hasText(zoneType, "zoneType could not be null or empty");
		Assert.notNull(uploadFile, "uploadFile could not be null ");

		ZonePath zp = this.zonePathService.getUseableZone(zoneType);

		// 路径生成器
		PathGenerator pg = new PathGenerator(zp.obtainDownLoadPath(), uploadFile.getOriginalFilename());

		String fullPath = pg.getFullPath();
		pg.generatePattern(uploadFile, zp.obtainVirtualPath());

		BaseFile baseFile = new BaseFile(uploadFile.getOriginalFilename(), pg.getPattern(), pg.getBigPattern(), uploadFile.getContentType(), getCurrIdentity(),
				pg.getFileKind(), SizeCalculation.getDataSize(uploadFile.getSize()), pg.getFileType(), uploadFile.getSize(), FileMd5.fileMD5(uploadFile),
				pg.getRealFileName(), pg.getSavePath(), pg.getTransferPath(), zp.getId(), pg.getTurnStatus());

		this.baseFileDao.insert(baseFile);

		File saveFile = new File(fullPath);

		try {
			uploadFile.transferTo(saveFile);

		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
			if (logger.isErrorEnabled()) {
				logger.error(e.getMessage());
			}
			throw new BusinessException("upload Failed!");
		}

		if (pg.isCopySource()) {
			if (pg.getFileKind() == BaseFile.FILE_KIND_VIDEO) {
				FileOperation.copyFile(saveFile.getPath(), zp.obtainVirtualPath() + pg.getTransferPath());
			} else if (pg.getFileKind() == BaseFile.FILE_KIND_PICTURE) {
				FileOperation.copyFile(saveFile.getPath(), zp.obtainVirtualPath() + pg.getPattern());
			}
		}

		return new SaveResult(baseFile.getId(), zp.obtainViewHead() + baseFile.getPattern(), zp.obtainViewHead() + baseFile.getBigPattern(),
				baseFile.getFileKind(), fullPath, zp.obtainViewHead() + baseFile.getTransferPath(), baseFile.getFileType(), baseFile.getFileName(),
				baseFile.getFileSize());

	}

	/**
	 * 保存上传的文件
	 *
	 * @param uploadFile
	 * @return
	 * @throws IOException
	 */
	@Override
	public SaveResult addBaseFile(MultipartFile uploadFile, String zoneType) {
		Assert.hasText(zoneType, "zoneType could not be null or empty");
		Assert.notNull(uploadFile, "uploadFile could not be null ");

		ZonePath zp = this.zonePathService.getUseableZone(zoneType);

		// 路径生成器
		PathGenerator pg = new PathGenerator(zp.obtainDownLoadPath(), uploadFile.getOriginalFilename());

		String fullPath = pg.getFullPath();
		pg.generatePattern(uploadFile, zp.obtainVirtualPath());

		BaseFile baseFile = new BaseFile(uploadFile.getOriginalFilename(), pg.getPattern(), pg.getBigPattern(), uploadFile.getContentType(), getCurrIdentity(),
				pg.getFileKind(), SizeCalculation.getDataSize(uploadFile.getSize()), pg.getFileType(), uploadFile.getSize(), FileMd5.fileMD5(uploadFile),
				pg.getRealFileName(), pg.getSavePath(), pg.getTransferPath(), zp.getId(), pg.getTurnStatus());

		this.baseFileDao.insert(baseFile);

		File saveFile = new File(fullPath);

		try {
			uploadFile.transferTo(saveFile);

		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
			if (logger.isErrorEnabled()) {
				logger.error(e.getMessage());
			}
			throw new BusinessException("upload Failed!");
		}

		if (pg.isCopySource()) {
			if (pg.getFileKind() == BaseFile.FILE_KIND_VIDEO) {
				FileOperation.copyFile(saveFile.getPath(), zp.obtainVirtualPath() + pg.getTransferPath());
			} else if (pg.getFileKind() == BaseFile.FILE_KIND_PICTURE) {
				FileOperation.copyFile(saveFile.getPath(), zp.obtainVirtualPath() + pg.getPattern());
			}
		}

		return new SaveResult(baseFile.getId(), zp.obtainViewHead() + baseFile.getPattern(), zp.obtainViewHead() + baseFile.getBigPattern(),
				baseFile.getFileKind(), fullPath, zp.obtainViewHead() + baseFile.getTransferPath(), baseFile.getFileType(), baseFile.getFileName(),
				baseFile.getFileSize());

	}

	@Override
	public SaveResult addBaseFile(File uploadFile, String ContentType, String zoneType) {
		Assert.hasText(zoneType, "zoneType could not be null or empty");
		Assert.notNull(uploadFile, "uploadFile could not be null ");

		ZonePath zp = this.zonePathService.getUseableZone(zoneType);

		// 路径生成器
		PathGenerator pg = new PathGenerator(zp.obtainDownLoadPath(), uploadFile.getName());

		String fullPath = pg.getFullPath();
		pg.generatePattern(uploadFile, zp.obtainVirtualPath());

		BaseFile baseFile = new BaseFile(uploadFile.getName(), pg.getPattern(), pg.getBigPattern(), ContentType, getCurrIdentity(), pg.getFileKind(),
				SizeCalculation.getDataSize(uploadFile.length()), pg.getFileType(), uploadFile.length(), FileMd5.fileMD5(uploadFile), pg.getRealFileName(),
				pg.getSavePath(), pg.getTransferPath(), zp.getId(), pg.getTurnStatus());

		this.baseFileDao.insert(baseFile);

		File saveFile = new File(fullPath);

		try {
			FileUtils.copyFile(uploadFile, saveFile);

		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
			if (logger.isErrorEnabled()) {
				logger.error(e.getMessage());
			}
			throw new BusinessException("upload Failed!");
		}

		if (pg.isCopySource()) {
			if (pg.getFileKind() == BaseFile.FILE_KIND_VIDEO || pg.getFileKind() == BaseFile.FILE_KIND_OFFICE) {
				FileOperation.copyFile(saveFile.getPath(), zp.obtainVirtualPath() + pg.getTransferPath());
			} else if (pg.getFileKind() == BaseFile.FILE_KIND_PICTURE) {
				FileOperation.copyFile(saveFile.getPath(), zp.obtainVirtualPath() + pg.getPattern());
			}
		}

		return new SaveResult(baseFile.getId(), zp.obtainViewHead() + baseFile.getPattern(), zp.obtainViewHead() + baseFile.getBigPattern(),
				baseFile.getFileKind(), fullPath, zp.obtainViewHead() + baseFile.getTransferPath(), baseFile.getFileType(), baseFile.getFileName(),
				baseFile.getFileSize());

	}

	/**
	 * 添加空文件（无实际物理文件）
	 * 
	 * @param zoneType
	 * @param fileName
	 * @param contentType
	 * @return
	 */
	@Override
	public SaveResult addEmptyBaseFile(String zoneType, String fileName, String contentType) {
		Assert.hasText(zoneType, "zoneType could not be null or empty");

		ZonePath zp = this.zonePathService.getUseableZone(zoneType);

		// 路径生成
		PathGenerator pg = new PathGenerator(zp.obtainDownLoadPath(), fileName);

		String fullPath = pg.getFullPath();
		pg.generatePattern(zp.obtainVirtualPath());

		BaseFile baseFile = new BaseFile(fileName, pg.getPattern(), null, contentType, getNowUser().getUsername(), pg.getFileKind(), "0", pg.getFileType(), 0l,
				null, pg.getRealFileName(), pg.getSavePath(), pg.getTransferPath(), zp.getId(), pg.getTurnStatus());

		this.baseFileDao.insert(baseFile);

		return new SaveResult(baseFile.getId(), zp.obtainViewHead() + baseFile.getPattern(), zp.obtainViewHead() + baseFile.getBigPattern(),
				baseFile.getFileKind(), zp.obtainDownLoadPath() + baseFile.getSavePath(), zp.obtainViewHead() + baseFile.getTransferPath(),
				baseFile.getFileType(), baseFile.getFileName(), baseFile.getFileSize());

	}

	/**
	 * 删除文件
	 * 
	 */
	@Override
	public void deleteBaseFile(Object obj) {
		if (obj == null) {
			return;
		}
		List<Long> ids = null;
		if (obj.getClass().isArray()) {
			ids = Arrays.asList((Long[]) obj);

		} else {
			if (obj instanceof List) {
				ids = (List<Long>) obj;
			} else if (obj instanceof Long) {
				ids = new ArrayList<Long>(1);
				ids.add(Long.parseLong(String.valueOf(obj)));
			}
		}

		if (ids != null && !ids.isEmpty()) {
			// this.baseFileDao.updateStatusByIds(BaseFile.STATUS_DEL, ids);
			for (Long id : ids) {
				realDeteleFile(id);
			}
		}
	}

	/**
	 * 彻底删除文件
	 * 
	 * @param id
	 */
	@Override
	public void realDeteleFile(Long id) {
		Assert.notNull(id, "file id must not be null!");

		BaseFile delItem = this.baseFileDao.getById(id);

		if (delItem == null) {
			return;
		}

		ZonePath zp = this.zonePathDao.getById(delItem.getZonePathId());

		Short fileKind = delItem.getFileKind();
		String pattern = delItem.getPattern();
		String bigattern = delItem.getBigPattern();
		String transferPath = delItem.getTransferPath();

		this.baseFileDao.deleteById(delItem.getId());

		// 删除源文件
		FileOperation.deleteFile(zp.obtainDownLoadPath() + delItem.getSavePath());

		if (fileKind == BaseFile.FILE_KIND_PICTURE || fileKind == BaseFile.FILE_KIND_VIDEO) {// 删除附带的压缩图片
			FileOperation.delteCompressPicture(zp.obtainVirtualPath(), pattern, bigattern);
		}

		// 删除转换的文件
		if (!StringUtils.isBlank(transferPath)) {
			FileOperation.deleteFile(zp.obtainVirtualPath() + transferPath);

		}

		this.deleteConvertImgs(delItem, zp.obtainVirtualPath());
	}

	// 删除转换的图片集
	private void deleteConvertImgs(BaseFile delItem, String virtualPath) {

		List<BaseFile> childFiles = this.baseFileDao.getBaseFileByMainId(delItem.getId());
		for (BaseFile cf : childFiles) {
			FileOperation.deleteFile(virtualPath + cf.getSavePath());
		}

		if (!childFiles.isEmpty()) {
			this.baseFileDao.deleteByMainId(delItem.getId());
		}

	}

	/**
	 * 获取文件的物理路径
	 * 
	 * @param id
	 * @return
	 */
	@Override
	public String getDownLoadFilePath(Long id) {
		Assert.notNull(id, "file id must not be null!");

		Map<String, String> result = this.baseFileDao.getFileWholePath(id);
		String savePath = result.get("save_path");
		String path = result.get("path");

		return FileOperation.filterViewPath(FileOperation.filterPath(path) + savePath);

	}

	@Override
	public String getBigPatternViewPath(Long id) {
		Assert.notNull(id, "file id must not be null!");

		Map<String, String> result = this.baseFileDao.getBigPatternViewPath(id);
		String bigPattern = result.get("big_pattern");
		String viewPath = result.get("view_path");

		return FileOperation.filterPath(viewPath) + bigPattern;
	}

	/**
	 * 获取文件的预览路径
	 * 
	 * @param id
	 * @return
	 */
	@Override
	public String getFileViewPath(Long id) {
		Assert.notNull(id, "file id must not be null!");

		Map<String, String> result = this.baseFileDao.getFileViewPath(id);
		String transferPath = result.get("transfer_path");
		String virtualPath = result.get("virtual_path");

		Assert.hasText(transferPath, "Could not get transfer file");

		return FileOperation.filterPath(virtualPath) + transferPath;
	}

	/**
	 * 获取下载文件的信息
	 * 
	 * @param baseFileId
	 * @return
	 */
	@Override
	public DownLoadDTO getDownLoadInfoById(Long baseFileId) {
		Assert.notNull(baseFileId, "baseFileId could not be null");

		Map<String, String> result = this.baseFileDao.getFileWholePath(baseFileId);
		String savePath = result.get("save_path");
		String path = result.get("path");
		String fileName = result.get("file_name");
		String fileType = result.get("file_type");

		return new DownLoadDTO(fileName, FileOperation.filterPath(path) + savePath, fileType);

	}

	/**
	 * 获取一个虚拟目录保持文件路径
	 * 
	 * @param zp
	 * @param fileType
	 * @return
	 */
	@Override
	public String getVirtualSavePath(ZonePath zp, String fileType) {

		String result = PathGenerator.makeSavePath(zp.obtainVirtualPath(), fileType);

		return result;

	}

	/**
	 * 保持文件转换为图片子集文件
	 * 
	 * @param mainId
	 * @param zonePathId
	 * @param fileName
	 * @param savePath
	 * @param length
	 * @param fileType
	 */
	@Override
	public void saveTransformImgFile(Long mainId, Long zonePathId, String fileName, String savePath, Long length, String fileType, String userName) {

		BaseFile baseFile = new BaseFile(fileName, FileOperation.filterViewPath(savePath), userName, BaseFile.FILE_KIND_PICTURE,
				SizeCalculation.getDataSize(length), fileType, length, savePath, zonePathId, mainId);

		this.baseFileDao.insert(baseFile);
	}

	/**
	 * 获取对应文件转换为预览图并输出预览图集，预览图地址已添加Zonepath地址前缀
	 */
	@Override
	public List<PreviewImageDTO> getPreviewImageByBaseFileId(Long baseFileId) {
		List<PreviewImageDTO> dtolist = this.viewFileByImgs(baseFileId);
		Map<Long, String> cache = new HashMap<Long, String>();
		for (PreviewImageDTO o : dtolist) {
			o.setPattern(this.zonePathService.viewCache(o.getZonePathId(), cache) + o.getPattern());
		}
		return dtolist;
	}

	/**
	 * 更新文件的转换图片集
	 * 
	 * @param baseFileId
	 */
	@Override
	public void updateConvertImgsById(Long baseFileId, String userName) {
		BaseFile baseFile = this.baseFileDao.getById(baseFileId);
		ZonePath zp = this.zonePathDao.getById(baseFile.getZonePathId());
		Assert.notNull(baseFile, "Could not find the data file!");
		Assert.notNull(zp, "Could not find the path object!");

		// 删除原来转换的图片集
		this.deleteConvertImgs(baseFile, zp.obtainVirtualPath());

		try {
			convertFileToImgs(baseFile.getId(), baseFile.getFileName(), userName);
			if (baseFile.getTurnStatus() == BaseFile.TURN_STATUS_NOT_TURNED) {
				baseFile.setTurnStatus(BaseFile.TURN_STATUS_FINISHED);
				this.baseFileDao.update(baseFile);
			}

		} catch (IOException e) {
			e.printStackTrace();
			throw new BusinessException("转换文件失败！");

		}

	}

	/**
	 * 预览文件,查询预览文件的转换后的图片
	 * 
	 * @param baseFileId
	 */
	@Override
	public List<PreviewImageDTO> viewFileByImgs(Long baseFileId) {
		BaseFile baseFile = this.baseFileDao.getById(baseFileId);
		Assert.notNull(baseFile, "Could not find the data file!");

		List<PreviewImageDTO> dtoList = new ArrayList<PreviewImageDTO>();

		if (baseFile.getTurnStatus() == BaseFile.TURN_STATUS_NOT_TURNED) {// 未转换

			try {
				convertFileToImgs(baseFile.getId(), baseFile.getFileName(), getNowUser().getUsername());
				baseFile.setTurnStatus(BaseFile.TURN_STATUS_FINISHED);
				this.baseFileDao.update(baseFile);

			} catch (IOException e) {
				throw new BusinessException("转换文件失败！");
			}

		}

		if (baseFile.getTurnStatus() == BaseFile.TURN_STATUS_NO_NEED) {
			PreviewImageDTO dto = new PreviewImageDTO();
			dto.setTitle(baseFile.getFileName());
			dto.setId(baseFileId);
			dto.setPattern(baseFile.getPattern());
			dto.setZonePathId(baseFile.getZonePathId());
			dtoList.add(dto);
		} else {
			dtoList = this.baseFileDao.getByMainId(baseFileId);
			int i = 1;
			for (PreviewImageDTO o : dtoList) {
				o.setTitle(baseFile.getFileName() + "(" + i + ")");
				i++;
			}
		}
		return dtoList;

	}

	/**
	 * 文件转换为图片集（先把文件转pdf,再把pdf文件转为图片）
	 * 
	 * @param baseFileId
	 * @throws IOException
	 */
	private void convertFileToImgs(Long baseFileId, String mainName, String userName) throws IOException {
		String sourcePath = this.getDownLoadFilePath(baseFileId);

		File sourceFile = new File(sourcePath);
		if (sourceFile.getName().endsWith("txt")) {

			String odtTempPath = this.zonePathService.getTempFileWholePath("odt");
			File odtTempFile = new File(odtTempPath);
			FileUtils.copyFile(sourceFile, odtTempFile);

			sourceFile = odtTempFile;
		}

		Assert.isTrue(sourceFile.isFile(), "is invalid file!");

		ZonePath zp = this.zonePathService.getUseableZone(ZonePath.COMMON_FILE);
		String pdfTempPath = this.getVirtualSavePath(zp, "pdf");

		File pdfFile = PdfToJpgUtils.convertFileToPdf(sourceFile, pdfTempPath);

		this.convertPdfToImgs(pdfFile, baseFileId, mainName, zp, userName);

	}

	/**
	 * 转换pdf文件为图片集
	 * 
	 * @param pdfFile
	 * @param baseFileId
	 * @param zp
	 * @throws Exception
	 * @throws IOException
	 */
	private void convertPdfToImgs(File pdfFile, Long baseFileId, String mainName, ZonePath zp, String userName) throws IOException {

		Assert.isTrue(pdfFile.isFile(), "is invalid file!");

		RandomAccessFile raf = null;
		FileChannel channel = null;

		try {

			raf = new RandomAccessFile(pdfFile, "r");
			channel = raf.getChannel();
			ByteBuffer buf = channel.map(FileChannel.MapMode.READ_ONLY, 0, channel.size());
			PDFFile pdffile = new PDFFile(buf);
			System.out.println("页数： " + pdffile.getNumPages());

			for (int i = 1; i <= pdffile.getNumPages(); i++) {
				// draw the first page to an image
				PDFPage page = pdffile.getPage(i);

				// get the width and height for the doc at the default zoom
				Rectangle rect = new Rectangle(0, 0, (int) page.getBBox().getWidth(), (int) page.getBBox().getHeight());

				// generate the image
				Image img = page.getImage(rect.width * 2, rect.height * 2, // width
																			// &
																			// height
						rect, // clip rect
						null, // null for the ImageObserver
						true, // fill background with white
						true // block until drawing is done
						);

				BufferedImage tag = new BufferedImage(rect.width * 2, rect.height * 2, BufferedImage.SCALE_SMOOTH);
				tag.getGraphics().drawImage(img, 0, 0, rect.width * 2, rect.height * 2, null);

				String savePath = PathGenerator.makeSavePath2(zp.obtainVirtualPath(), "jpg");
				File saveFile = new File(zp.obtainVirtualPath() + savePath);
				FileOutputStream out = new FileOutputStream(saveFile); // 输出到文件流

				JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(out);
				JPEGEncodeParam param = encoder.getDefaultJPEGEncodeParam(tag);
				param.setQuality(1f, true);
				encoder.encode(tag); // JPEG编码

				out.close();

				String saveName = mainName.substring(0, mainName.lastIndexOf(".")) + "(" + i + ")" + ".jpg";

				this.saveTransformImgFile(baseFileId, zp.getId(), saveName, savePath, saveFile.length(), "jpg", userName);

			}

			// show the image in a frame
			// JFrame frame = new JFrame("PDF Test");
			// frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
			// frame.add(new JLabel(new ImageIcon(img)));
			// frame.pack();
			// frame.setVisible(true);

		} catch (IOException e) {
			e.printStackTrace();
			throw e;
		} finally {

			try {
				channel.close();
				raf.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			pdfFile.delete();
		}

	}

	/**
	 * 获取要预览文件的所需信息
	 * 
	 * @param baseFileId
	 * @return
	 */
	@Override
	public DownLoadDTO getViewFileInfo(Long baseFileId) {
		Assert.notNull(baseFileId, Assert.NULL_PARAM_STR("baseFileId"));

		BaseFile baseFile = this.baseFileDao.getById(baseFileId);
		Assert.notNull(baseFile, Assert.EMPTY_REOCRD_STR);

		ZonePath zp = this.zonePathDao.getById(baseFile.getZonePathId());
		if (baseFile.getTurnStatus() == BaseFile.TURN_STATUS_NOT_TURNED) {
			Assert.isTrue(convertFileToSwf(baseFile, zp), "转换文件失败！");
		}

		return new DownLoadDTO(baseFile.getFileName(), zp.obtainViewHead() + baseFile.getTransferPath(), baseFile.getFileType());
	}

	/**
	 * 转换文件为swf文件
	 * 
	 * @param baseFile
	 * @param zp
	 * @return
	 */
	private boolean convertFileToSwf(BaseFile baseFile, ZonePath zp) {

		String sourcePath = zp.obtainDownLoadPath() + baseFile.getSavePath();
		String swfPath = zp.obtainVirtualPath() + baseFile.getTransferPath();

		File sourceFile = new File(sourcePath);

		Assert.isTrue(sourceFile.isFile(), "is invalid file!");
		if (sourceFile.getName().endsWith("txt")) {

			String odtTempPath = this.zonePathService.getTempFileWholePath("odt");
			File odtTempFile = new File(odtTempPath);
			try {
				FileUtils.copyFile(sourceFile, odtTempFile);
			} catch (IOException e) {
				e.printStackTrace();
				return false;
			}

			sourceFile = odtTempFile;
		}

		String pdfTempPath = this.getVirtualSavePath(zp, "pdf");

		File pdfFile;
		try {
			pdfFile = PdfToJpgUtils.convertFileToPdf(sourceFile, pdfTempPath);

			if (PdfToSwfUtils.pdfToSwf(pdfFile, swfPath)) {
				baseFile.setTurnStatus(BaseFile.TURN_STATUS_FINISHED);
				this.baseFileDao.update(baseFile);

				return true;
			} else {
				return false;
			}

		} catch (IOException e) {

			e.printStackTrace();
		}

		return false;

	}

	/* 文件缓存 */
	private final Map<String, Map<String, List<SaveResult>>> tempCache = new ConcurrentHashMap<String, Map<String, List<SaveResult>>>();
	private final Map<String, Long> timeCache = new HashMap<String, Long>();

	/**
	 * 保存上传的文件，并将保存文件的相关信息存放在缓存里
	 * 
	 * @param uuid
	 *            唯一标识
	 * @param type
	 *            类型
	 * @param uploadFile
	 *            上传文件
	 */
	@Override
	public String saveByCache(String uuid, String type, CommonsMultipartFile uploadFile) {
		Assert.hasText(uuid, "uuid could not be null");
		Assert.notNull(uploadFile, "uploadFile could not be null");

		if (!checkTokenIsCorrect(uuid)) {
			throw new BusinessException("upload fail");
		}

		SaveResult as = this.addBaseFile(uploadFile, ZonePath.COMMON_FILE);
		String key = type;
		if (StringUtils.isBlank(key)) {
			key = UUIDGenerator.getUUID();
		}

		if (tempCache.containsKey(uuid)) {

			List<SaveResult> fileList = null;
			if (tempCache.get(uuid).containsKey(key)) {

				fileList = tempCache.get(uuid).get(key);

			} else {

				fileList = new ArrayList<SaveResult>();
			}

			fileList.add(as);

			tempCache.get(uuid).put(key, fileList);

		} else {
			Map<String, List<SaveResult>> data = new HashMap<String, List<SaveResult>>();
			List<SaveResult> fileList = new ArrayList<>();
			fileList.add(as);
			data.put(key, fileList); // type为key value为baseFile的id

			tempCache.put(uuid, data);
			timeCache.put(uuid, System.currentTimeMillis());
		}

		return key;
	}

	/**
	 * 获取上传文件码，拥有此码才能上传文件
	 * 
	 * @return
	 */
	@Override
	public String getUploadToken() {
		String code = UUIDGenerator.getUUID();
		timeCache.put(code, System.currentTimeMillis());

		return code;
	}

	/**
	 * 检查上传码是否存在
	 * 
	 * @param code
	 * @return
	 */
	@Override
	public boolean checkTokenIsCorrect(String code) {

		return timeCache.containsKey(code);

	}

	/**
	 * 把保存好的文件的相关信息存放在缓存里
	 * 
	 * @param uuid
	 * @param type
	 * @param baseFileId
	 */
	@Override
	public void saveByCache(String uuid, String type, Long baseFileId) {
		Assert.hasText(uuid, "uuid could not be null");
		Assert.notNull(baseFileId, "baseFileId could not be null");

		if (tempCache.containsKey(uuid)) {
			List<SaveResult> fileList = tempCache.get(uuid).get(type);
			fileList.add(new SaveResult(baseFileId));
			tempCache.get(uuid).put(type, fileList);
		} else {
			Map<String, List<SaveResult>> data = new HashMap<String, List<SaveResult>>();

			List<SaveResult> fileList = new ArrayList<>();
			fileList.add(new SaveResult(baseFileId));

			data.put(type, fileList);

			tempCache.put(uuid, data);
			timeCache.put(uuid, System.currentTimeMillis());
		}
	}

	@Override
	public void deleteInnerCache(String uuid, String key) {
		Assert.hasText(uuid, "uuid could not be null");
		Assert.notNull(key, "key could not be null");

		if (tempCache.containsKey(uuid)) {
			if (tempCache.get(uuid).containsKey(key)) {
				List<SaveResult> as = tempCache.get(uuid).get(key);
				if (as != null && !as.isEmpty()) {
					for (SaveResult saveResult : as) {
						this.realDeteleFile(saveResult.getId());
					}
				}

				tempCache.get(uuid).remove(key);
			}
		}

	}

	/**
	 * 读取文件缓存的内容，只支持doc、docx和txt文件
	 * 
	 * @param uuid
	 * @param key
	 * @return 2017-12-12 下午4:46:43
	 */
	@Override
	public String getFileText(String uuid, String key) {
		Assert.hasText(uuid, "uuid could not be null");
		Assert.notNull(key, "key could not be null");

		String result = "";
		// if (tempCache.containsKey(uuid)) {
		// if (tempCache.get(uuid).containsKey(key)) {
		// List<SaveResult> as = tempCache.get(uuid).get(key);
		// if (as != null && !as.isEmpty()) {
		//
		//
		//
		// if ("doc".equals(as.getFileType()) || "docx".equals(as.getFileType())
		// || "txt".equals(as.getFileType())) {
		// if ("txt".equals(as.getFileType())) {
		// result = WordUtils.readTxtText(as.getDownLoadPath());
		// } else {
		//
		// result = WordUtils.readWordText(as.getDownLoadPath());
		// }
		// }
		//
		// }
		//
		// }
		// }
		return result;
	}

	/**
	 * 获取上传文件码，拥有此码才能上传文件
	 * 
	 * */
	@Override
	public String getUploadCode() {
		String code = UUIDGenerator.getUUID();
		timeCache.put(code, System.currentTimeMillis());

		return code;
	}

	/**
	 * 通过uuid在文件缓冲中获取保存文件的信息
	 */
	@Override
	public Map<String, List<SaveResult>> getTempCacheVal(String uuid) {
		return this.tempCache.get(uuid);
	}

	/**
	 * 通过uuid在删除文件缓冲中获取保存文件的信息
	 */
	@Override
	public void removeTempCacheObj(String uuid) {
		this.tempCache.remove(uuid);
		this.timeCache.remove(uuid);
	}

	/**
	 * 监测文件缓存，执行删除过时的缓存信息
	 */
	@Override
	public void monitorCache() {
		System.out.println("monitorCache..............." + DateUtil.DateToStr(new Date()));

		Iterator<Entry<String, Long>> iterator = this.timeCache.entrySet().iterator();
		Set<String> removeodes = new HashSet<String>();
		while (iterator.hasNext()) {
			Entry<String, Long> entry = iterator.next();
			Long timeVal = entry.getValue();

			Long currTime = System.currentTimeMillis();
			if (timeVal != null) {
				if ((currTime - timeVal) >= (30 * 60 * 1000)) {// 放置超过半个小时的信息进行删除
					removeodes.add(entry.getKey());
				}
			}

		}

		for (String code : removeodes) {

			this.tempCache.remove(code);
			this.timeCache.remove(code);

			if (this.logger.isInfoEnabled()) {
				this.logger.info("删除文件缓存：key=" + code);
			}
		}

	}

	@Override
	public DownLoadDTO downloadTempFile(String tempLocation, String type) {

		// String templatefile = tempLocation + getTempFilePath(type);
		DownLoadDTO downLoadDTO = new DownLoadDTO();
		// downLoadDTO.setFileName(getTempFileName(type) + ".doc");
		// downLoadDTO.setFilePath(templatefile);
		downLoadDTO.setFileType("doc");
		return downLoadDTO;
	}

	@Override
	public String saveByCacheAndReturnViewPattern(String uuid, String modelType, CommonsMultipartFile uploadFile, String type) {
		Assert.hasText(uuid, "uuid could not be null");
		Assert.notNull(uploadFile, "uploadFile could not be null");

		if (!checkTokenIsCorrect(uuid)) {
			throw new BusinessException("upload fail");
		}

		SaveResult as = this.addBaseFile(uploadFile, ZonePath.COMMON_FILE);
		String key = modelType;
		if (StringUtils.isBlank(key)) {
			key = UUIDGenerator.getUUID();
		}

		if (tempCache.containsKey(uuid)) {

			List<SaveResult> fileList = null;
			if (tempCache.get(uuid).containsKey(key)) {

				fileList = tempCache.get(uuid).get(key);

			} else {

				fileList = new ArrayList<SaveResult>();
			}

			fileList.add(as);

			tempCache.get(uuid).put(key, fileList);

		} else {
			Map<String, List<SaveResult>> data = new HashMap<String, List<SaveResult>>();
			List<SaveResult> fileList = new ArrayList<>();
			fileList.add(as);
			data.put(key, fileList); // type为key value为baseFile的id

			tempCache.put(uuid, data);
			timeCache.put(uuid, System.currentTimeMillis());
		}

		return as.getViewPattern();
	}

	/**
	 * 获取临时文件保存路径
	 * 
	 * @param fileType
	 *            文件类型
	 * @return 文件保存路径
	 */
	@Override
	public String getTempFileWholePath(String fileType) {
		ZonePath zp = this.zonePathService.getUseableZone(ZonePath.TEMP_FILE);

		StringBuilder result = new StringBuilder();
		result.append(zp.getPath());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String dataStr = sdf.format(new Date());
		result.append(dataStr.substring(0, 4) + File.separator + dataStr.substring(4) + File.separator);

		File directory = new File(result.toString());
		if (!directory.exists()) {
			directory.mkdirs();
		}

		result.append(UUID.randomUUID().toString()); // uuid
		result.append(".");
		result.append(fileType);

		return result.toString();
	}

}
