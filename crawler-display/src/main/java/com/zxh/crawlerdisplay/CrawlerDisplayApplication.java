package com.zxh.crawlerdisplay;

import com.zxh.crawlerdisplay.core.spring.security.filter.MyAuthenticationFilter;
import com.zxh.crawlerdisplay.core.spring.security.handler.MyAuthenticationFailureHandler;
import com.zxh.crawlerdisplay.core.spring.security.handler.MyAuthenticationSuccessHandler;
import com.zxh.crawlerdisplay.core.spring.security.service.MyAccessDecisionManagerImpl;
import com.zxh.crawlerdisplay.core.spring.security.service.MyFilterSecurityInterceptorImpl;
import com.zxh.crawlerdisplay.core.spring.security.service.MyInvocationSecurityMetadataSourceImpl;
import com.zxh.crawlerdisplay.core.spring.security.service.MyUserDetailsServiceImpl;
import org.dozer.spring.DozerBeanMapperFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScans;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.ProviderManager;
import org.springframework.security.authentication.RememberMeAuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.core.session.SessionRegistryImpl;
import org.springframework.security.crypto.password.MessageDigestPasswordEncoder;
import org.springframework.security.web.authentication.session.ConcurrentSessionControlAuthenticationStrategy;
import org.springframework.security.web.session.SessionInformationExpiredStrategy;
import org.springframework.security.web.session.SimpleRedirectSessionInformationExpiredStrategy;

import javax.servlet.annotation.WebFilter;
import java.util.ArrayList;
import java.util.List;

@SpringBootApplication
@MapperScan("com.zxh.crawlerdisplay.web.*.dao")
public class CrawlerDisplayApplication {

    public static void main(String[] args) {
        SpringApplication.run(CrawlerDisplayApplication.class, args);
    }

    @Bean
    public DozerBeanMapperFactoryBean mapper(){
        return new DozerBeanMapperFactoryBean();
    }



    @Bean
    public SessionRegistry sessionRegistry() {
        return new SessionRegistryImpl();
    }

    //权限资源映射数据源
//    @Bean
//    public MyInvocationSecurityMetadataSourceImpl myInvocationSecurityMetadataSource() {
//        MyInvocationSecurityMetadataSourceImpl a = new MyInvocationSecurityMetadataSourceImpl();
//        a.reloadResourceMap();
//        return a;
//    }
    @Bean
    //配置访问决定处理器
    public MyAccessDecisionManagerImpl myAccessDecisionManager() {
        return new MyAccessDecisionManagerImpl();
    }


    //配置登录成功后转入页面
    @Bean
    public MyAuthenticationSuccessHandler authenticationSuccessHandler() {
        MyAuthenticationSuccessHandler a = new MyAuthenticationSuccessHandler();
        a.setDefaultTargetUrl("/index.do");
        a.setTargetUrlParameter("j_url");
        return a;
    }

    @Bean
    public MyAuthenticationFailureHandler authenticationFailureHandler() {
        MyAuthenticationFailureHandler a = new MyAuthenticationFailureHandler();
        a.setDefaultFailureUrl("/login.do");
        return a;
    }

    @Autowired
    public MyUserDetailsServiceImpl myUserDetailsServiceImpl;

    @Bean
    public DaoAuthenticationProvider authenticationProvider(MyUserDetailsServiceImpl myUserDetailsServiceImpl) {
        DaoAuthenticationProvider a = new DaoAuthenticationProvider();
        a.setHideUserNotFoundExceptions(false);
        a.setUserDetailsService(myUserDetailsServiceImpl);
        MessageDigestPasswordEncoder shaPasswordEncoder = new MessageDigestPasswordEncoder("SHA-256");
        a.setPasswordEncoder(shaPasswordEncoder);

        return a;
    }
    @Bean
    public RememberMeAuthenticationProvider rememberMeAuhenticationProvider(){
        RememberMeAuthenticationProvider rememberMeAuhenticationProvider= new RememberMeAuthenticationProvider("wwbt8NSmtajdzLbCJG");
        return rememberMeAuhenticationProvider;
    }

}
