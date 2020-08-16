package com.zxh.crawlerdisplay.config;

import com.zxh.crawlerdisplay.core.spring.mvc.resolver.view.MultiViewResolver;
import freemarker.ext.jsp.TaglibFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;
import org.springframework.web.servlet.view.freemarker.FreeMarkerView;
import org.springframework.web.servlet.view.freemarker.FreeMarkerViewResolver;

import javax.annotation.PostConstruct;
import java.util.*;

@Configuration
@ComponentScan("com.zxh.crawlerdisplay.web.*")
public class SpringMVCConfig extends WebMvcConfigurationSupport {

    @Autowired
    private FreeMarkerConfigurer configurer;

    @PostConstruct
    public void freeMarkerConfigurer() {
        List<String> tal = new ArrayList<>();
        tal.add("security.tld");
        tal.add("myui.tld");
        TaglibFactory taglibFactory = configurer.getTaglibFactory();
        taglibFactory.setClasspathTlds(tal);
        if(taglibFactory.getObjectWrapper() == null) {
            taglibFactory.setObjectWrapper(configurer.getConfiguration().getObjectWrapper());
        }
    }

//    /**
//     * 配置拦截器
//     *
//     * @param registry
//     */
//    @Override
//    public void addInterceptors(InterceptorRegistry registry) {
//    }
//
//    @Override
//    public void configurePathMatch(PathMatchConfigurer configurer) {
//        //开启路径后缀匹配
//        configurer.setUseRegisteredSuffixPatternMatch(false);
//    }
//    @Bean
//    @Order(0)
//    public BeanNameViewResolver beanNameViewResolver(){
//        return new BeanNameViewResolver();
//    }


//    @Bean
//    public ServletRegistrationBean servletRegistrationBean(DispatcherServlet dispatcherServlet) {
//        ServletRegistrationBean<DispatcherServlet> servletServletRegistrationBean = new ServletRegistrationBean<>(dispatcherServlet);
//        servletServletRegistrationBean.addUrlMappings("*.do");
//        return servletServletRegistrationBean;
//    }
//
//    public InternalResourceViewResolver jspViewResolver(){
//        InternalResourceViewResolver jspViewResolver = new InternalResourceViewResolver();
//        jspViewResolver.setContentType("text/html; charset=utf-8");
//        jspViewResolver.setPrefix("/page/");
////        jspViewResolver.setSuffix(".jsp");
//        jspViewResolver.setViewClass(JstlView.class);
//        return jspViewResolver;
//    }

    @Bean
    public FreeMarkerViewResolver ftlViewResolver(){
        FreeMarkerViewResolver ftlViewResolver = new FreeMarkerViewResolver();
        ftlViewResolver.setViewClass(FreeMarkerView.class);
        ftlViewResolver.setContentType("text/html; charset=utf-8");
        ftlViewResolver.setCache(false);
        ftlViewResolver.setRequestContextAttribute("request");
        return ftlViewResolver;
    }

//    @Bean(name = "freemarkerConfig")
//    public FreeMarkerConfigurer getFreemarkerConfig() {
//        FreeMarkerConfigurer config = new FreeMarkerConfigurer();
//        config.setTemplateLoaderPath("classpath:/static/ftl");
//        return config;
//    }


    /**
     * 多视图匹配器
     *
     * @return
     */
    @Bean
    public MultiViewResolver viewResolver(FreeMarkerViewResolver ftlViewResolver) {
        Map<Set<String>, ViewResolver> viewResolverMap = new HashMap<>();
        Set<String> jspset = new HashSet<String>();
        Set<String> ftlset = new HashSet<String>();
        jspset.add(".jsp");
        ftlset.add(".ftl");
        InternalResourceViewResolver jspViewResolver = new InternalResourceViewResolver();
        jspViewResolver.setContentType("text/html; charset=utf-8");
        jspViewResolver.setPrefix("/page/");
//        jspViewResolver.setSuffix(".jsp");
        jspViewResolver.setViewClass(JstlView.class);
        viewResolverMap.put(jspset, jspViewResolver);

//        FreeMarkerViewResolver ftlViewResolver = new FreeMarkerViewResolver();
//        ftlViewResolver.setViewClass(FreeMarkerView.class);
//        ftlViewResolver.setContentType("text/html; charset=utf-8");
//        ftlViewResolver.setCache(true);
        viewResolverMap.put(ftlset, ftlViewResolver);

        MultiViewResolver viewResolver = new MultiViewResolver();
        InternalResourceViewResolver defaultViewResolver = new InternalResourceViewResolver();
        viewResolver.setDefaultViewResolver(defaultViewResolver);
        viewResolver.setViewResolverMap(viewResolverMap);
        return viewResolver;
    }

//    @Override
//    protected void configureViewResolvers(ViewResolverRegistry registry) {
//        super.configureViewResolvers(registry);
//        registry.viewResolver(viewResolver());
//    }



//    @Bean
//    public GlobalExceptionResolver exceptionHandler() {
//        GlobalExceptionResolver exceptionResolver = new GlobalExceptionResolver();
//        return exceptionResolver;
//    }

//    @Bean
//    public MappingJackson2HttpMessageConverter mappingJacksonHttpMessageConverter() {
//        MappingJackson2HttpMessageConverter mappingJacksonHttpMessageConverter = new MappingJackson2HttpMessageConverter();
//        //<!--避免IE执行AJAX时，返回JSON出现下载文件 -->
//        List<MediaType> supportedMediaTypes = new ArrayList<MediaType>();
//        supportedMediaTypes.add(MediaType.APPLICATION_JSON_UTF8);
//        supportedMediaTypes.add(MediaType.TEXT_HTML);
//        mappingJacksonHttpMessageConverter.setSupportedMediaTypes(supportedMediaTypes);
//        ObjectMapper objectMapper = new ObjectMapper();
//        objectMapper.setDateFormat(new SimpleDateFormat("yyyy-MM-dd"));
//        mappingJacksonHttpMessageConverter.setObjectMapper(objectMapper);
//        return mappingJacksonHttpMessageConverter;
//    }

    /**
     * 静态资源配置
     *
     * @param registry
     */
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/view/**").addResourceLocations("file:D:/SZZJ_FILE_STORE/common-file/view/");
        registry.addResourceHandler("/**").addResourceLocations("classpath:/static/");
        super.addResourceHandlers(registry);
    }
}
