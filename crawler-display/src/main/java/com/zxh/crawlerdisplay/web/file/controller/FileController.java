package com.zxh.crawlerdisplay.web.file.controller;

import java.io.IOException;
import java.io.InputStream;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.zxh.crawlerdisplay.core.common.bean.AjaxJson;
import com.zxh.crawlerdisplay.core.common.controller.BaseController;
import com.zxh.crawlerdisplay.core.common.dto.DownLoadDTO;
import com.zxh.crawlerdisplay.core.utils.json.ReadJsonFile;
import com.zxh.crawlerdisplay.web.file.dto.baseFile.SaveResult;
import com.zxh.crawlerdisplay.web.file.dto.baseFile.UploadResult;
import com.zxh.crawlerdisplay.web.file.entity.ZonePath;
import com.zxh.crawlerdisplay.web.file.service.IBaseFileService;

@Controller
@Scope("prototype")
@RequestMapping("/file")
public class FileController extends BaseController {
	/**
	 * 
	 */
	private static final long serialVersionUID = -2874105942311327743L;

	@Resource
	private IBaseFileService baseFileService;

	/**
	 * 文件上传接口
	 * 
	 * @param file
	 * @param ucode
	 *            唯一标识
	 *            （多个文件用ucode标识，等另外操作完成后通过ucode获取上传文件id（baseFileService.getTempCacheVal
	 *            ()））
	 * @return
	 */
	@RequestMapping("/upload")
	@ResponseBody
	public AjaxJson uploadFile(@RequestParam(value = "file") CommonsMultipartFile file, @RequestParam(required = true) String ucode, String modelType) {

		String key = this.baseFileService.saveByCache(ucode, modelType, file);
		return new AjaxJson(this.UPLOAD_SUCCESS_MESSAGE, AjaxJson.success, key);
	}

	/**
	 * 文件上传接口(同上，返回图片路径)
	 * 
	 */
	@RequestMapping(value = "/uploadAndGetPattern", method = { RequestMethod.POST })
	@ResponseBody
	public AjaxJson uploadAndGetPattern(@RequestParam(value = "file") CommonsMultipartFile file, @RequestParam(required = true) String ucode, String modelType,
			String fileType) {

		String viewPattern = this.baseFileService.saveByCacheAndReturnViewPattern(ucode, modelType, file, fileType);
		return new AjaxJson(this.UPLOAD_SUCCESS_MESSAGE, AjaxJson.success, viewPattern);
	}

	@RequestMapping("/delete")
	@ResponseBody
	public AjaxJson deleteInnerCache(@RequestParam(required = true) String ucode, @RequestParam(required = true) String kw) {

		this.baseFileService.deleteInnerCache(ucode, kw);
		return new AjaxJson(this.DEL_SUCCESS_MESSAGE, AjaxJson.success);
	}

	/**
	 * 获取文件内容
	 * 
	 * @param ucode
	 * @param kw
	 * @return 2017-12-12 下午4:48:32
	 */
	@RequestMapping("/getFileText")
	@ResponseBody
	public AjaxJson getFileText(@RequestParam(required = true) String ucode, @RequestParam(required = true) String kw) {

		String text = this.baseFileService.getFileText(ucode, kw);

		return new AjaxJson("success", AjaxJson.success, text);
	}

	/**
	 * 富文本上传文件
	 * 
	 * @param upfile
	 * @return
	 */
	@RequestMapping(value = "/uploadUeditorFile")
	@ResponseBody
	private Object uploadPublicFile(HttpServletRequest request, String action, @RequestParam(required = false) CommonsMultipartFile upfile) {

		if ("config".equals(action)) {
			InputStream inputStream = request.getServletContext().getResourceAsStream("plug-in/h-ui/lib/ueditor/config.json");
			try {
				String result = ReadJsonFile.readFile(inputStream);
				JSONObject jsonConfig = JSONObject.fromObject(result);

				return jsonConfig;

			} catch (IOException e) {

				return "error";
			}

		} else if ("uploadimage".equals(action) || "uploadfile".equals(action)) {

			SaveResult aResult = this.baseFileService.addBaseFile(upfile, ZonePath.COMMON_FILE);

			return new UploadResult(UploadResult.SUCCESS, aResult.getViewBigPattern(), upfile.getOriginalFilename(), upfile.getOriginalFilename());

		} else {

			return "Invalid request!";
		}

	}

	// 下载8个表模板
	@RequestMapping(value = "/downloadTempFile")
	public void downloadTempFile(HttpServletRequest request, HttpServletResponse response, String type) {
		DownLoadDTO fileInfo = this.baseFileService.downloadTempFile(request.getSession().getServletContext().getRealPath("/"), type);
		this.createDownLoadStream(request, response, fileInfo);
	}

}
