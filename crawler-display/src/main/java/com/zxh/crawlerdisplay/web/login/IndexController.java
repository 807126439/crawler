package com.zxh.crawlerdisplay.web.login;

import com.zxh.crawlerdisplay.core.common.controller.BaseController;
import com.zxh.crawlerdisplay.dubbo.service.impl.CrawlerContentDubboConsumerService;
import com.zxh.crawlerdisplay.web.file.service.IBaseFileService;
import com.zxh.crawlerdisplay.web.system.service.IBaseDictService;
import com.zxh.crawlerdisplay.web.system.service.IUserService;
import com.zxh.dubbo.common.bean.DataQuery;
import com.zxh.dubbo.model.CrawlerContent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.*;

@Controller
@Scope("prototype")
public class IndexController extends BaseController {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2874105942311327743L;

	private static ExecutorService executorService= Executors.newFixedThreadPool(10);

	@Resource
	private IBaseFileService baseFileService;
	@Resource
	private IBaseDictService baseDictService;
	@Resource
	private IUserService userService;
	@Autowired
	public CrawlerContentDubboConsumerService crawlerContentDubboConsumerService;

	@RequestMapping(value = "/login", method = { RequestMethod.GET })
	public String loginPage(HttpServletRequest request)   {

		return "login/login.ftl";
	}

	@RequestMapping(value = "/goLogin", method = { RequestMethod.GET })
	public String goLogin(HttpServletRequest request)   {

		return "login/gologin.ftl";
	}

	@RequestMapping(value = "/sessionError", method = { RequestMethod.GET })
	public String sessionError(HttpServletRequest request)   {

		return "login/sessionError.ftl";
	}

	@RequestMapping(value = "/error/{errorCode}", method = { RequestMethod.GET })
	public String error(HttpServletRequest request,@PathVariable(required = true,value = "errorCode") String errorCode)   {

		return "error/"+errorCode+".ftl";
	}

	@RequestMapping(value = "/index", method = { RequestMethod.GET })
	public String index(HttpServletRequest request) {

		return "index/index.ftl";
	}

	@RequestMapping(value = "/fullTextQueryPage", method = { RequestMethod.GET })
	public String fullTextQueryPage(HttpServletRequest request) {

		return "index/fullQueryResult.ftl";
	}

	@RequestMapping(value = "/home", method = { RequestMethod.GET })
	public String home(HttpServletRequest request) {
		HashMap hm= new HashMap();
		return "index/homePage.ftl";
	}

	// ----------------- 首页检索 ------------------- //
	@RequestMapping(value = "/searchPage", method = { RequestMethod.GET })
	public String skipSearchPage(HttpServletRequest request, String keyWord, String searchType) {
		return null;
	}

}
