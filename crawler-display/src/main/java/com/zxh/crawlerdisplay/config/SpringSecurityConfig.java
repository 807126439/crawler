package com.zxh.crawlerdisplay.config;

import com.zxh.crawlerdisplay.core.spring.security.filter.MyAuthenticationFilter;
import com.zxh.crawlerdisplay.core.spring.security.handler.MyAuthenticationFailureHandler;
import com.zxh.crawlerdisplay.core.spring.security.handler.MyAuthenticationSuccessHandler;
import com.zxh.crawlerdisplay.core.spring.security.service.MyAccessDecisionManagerImpl;
import com.zxh.crawlerdisplay.core.spring.security.service.MyFilterSecurityInterceptorImpl;
import com.zxh.crawlerdisplay.core.spring.security.service.MyInvocationSecurityMetadataSourceImpl;
import com.zxh.crawlerdisplay.core.spring.security.service.MyUserDetailsServiceImpl;
import com.zxh.crawlerdisplay.web.system.service.IAuthorityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.ProviderManager;
import org.springframework.security.authentication.RememberMeAuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.web.access.intercept.FilterSecurityInterceptor;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.security.web.authentication.session.ConcurrentSessionControlAuthenticationStrategy;
import org.springframework.security.web.session.ConcurrentSessionFilter;
import org.springframework.security.web.session.SessionInformationExpiredStrategy;
import org.springframework.security.web.session.SimpleRedirectSessionInformationExpiredStrategy;

import java.util.ArrayList;
import java.util.List;

@Configuration
@EnableWebSecurity
public class SpringSecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private UserDetailsService myUserDetailsService;
    @Autowired
    private DaoAuthenticationProvider authenticationProvider;
    @Autowired
    private SessionRegistry sessionRegistry;
    @Autowired
    private MyAuthenticationSuccessHandler authenticationSuccessHandler;
    @Autowired
    private MyAuthenticationFailureHandler authenticationFailureHandler;
    @Autowired
    private RememberMeAuthenticationProvider rememberMeAuhenticationProvider;
    @Autowired
    private MyInvocationSecurityMetadataSourceImpl myInvocationSecurityMetadataSource;
    @Autowired
    private MyAccessDecisionManagerImpl myAccessDecisionManager;
    @Autowired
    private IAuthorityService authorityService;

//
//    //定义上下文返回的消息的国际化
//    @Bean
//    public ReloadableResourceBundleMessageSource messageSource() {
//        ReloadableResourceBundleMessageSource a = new ReloadableResourceBundleMessageSource();
//        a.setBasename("classpath:messages_zh_CN");
//        return a;
//    }
//
    //配置用户验证
    @Bean
    public MyUserDetailsServiceImpl myUserDetailsService() {
        return new MyUserDetailsServiceImpl();
    }

//
//    @Bean
//    public MylogoutSuccessHandler logoutSuccessHandler() {
//        MylogoutSuccessHandler a = new MylogoutSuccessHandler();
//        a.setDefaultTargetUrl("/index.do");
//        return a;
//    }
//

    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/css/**");
        web.ignoring().antMatchers("/images/**");
        web.ignoring().antMatchers("/js/**");
        web.ignoring().antMatchers("/view/**");
//忽略登录界面
        web.ignoring().antMatchers("*.jpg");
        web.ignoring().antMatchers("*.ico");
        web.ignoring().antMatchers("/login.do");

        web.ignoring().antMatchers("/plug-in/**");
        web.ignoring().antMatchers("/kaptcha");
        //注册地址不拦截
//        web.ignoring().antMatchers("/reg");
    }



    @Override
    protected void configure(HttpSecurity http) throws Exception {
        //  允许所有用户访问"/"和"/index.html"
        http
                .authorizeRequests()
                    .antMatchers("/login.html","/login.do", "/goLogin.ftl").permitAll()
                    .anyRequest().authenticated()   // 其他地址的访问均需验证权限
                .and()
                .headers()
                    .frameOptions().sameOrigin()
                .and()
                .csrf().disable()
                .formLogin()
                    .loginPage("/login.do")
                    .loginProcessingUrl("/j_spring_security_check")
                    .passwordParameter("j_username")
                    .usernameParameter("j_password")
                    .successForwardUrl("/index.do")
                    .failureUrl("/page/common/error/accessDenied.ftl")
                    .permitAll()
                .and()
                .addFilterAt(loginFilter(), UsernamePasswordAuthenticationFilter.class)
                .addFilterBefore(myFilterSecurityInterceptor(), FilterSecurityInterceptor.class)
                .addFilterAt(new ConcurrentSessionFilter(sessionRegistry,sessionInformationExpiredStrategy()),ConcurrentSessionFilter.class)
                .logout()
                    .logoutUrl("/j_spring_security_logout")
                    .logoutSuccessUrl("/login.do")
                .and()
                    .userDetailsService(myUserDetailsService)
                    .authenticationProvider(authenticationProvider)
                .sessionManagement()
                    .sessionAuthenticationFailureHandler(authenticationFailureHandler)
                    .invalidSessionUrl("/login.do")
                    .sessionAuthenticationErrorUrl("/sessionError.ftl")
                    .maximumSessions(10)
                    .expiredUrl("/login.do")
                ;
    }


    public MyAuthenticationFilter loginFilter() {
        MyAuthenticationFilter a = new MyAuthenticationFilter();
        //<!-- 登陆页面URL -->
        a.setFilterProcessesUrl("/j_spring_security_check");
        List<AuthenticationProvider> providerList = new ArrayList<AuthenticationProvider>();
        providerList.add(authenticationProvider);
        providerList.add(rememberMeAuhenticationProvider);
        AuthenticationManager authenticationManager = new ProviderManager(providerList);
        ((ProviderManager) authenticationManager).setEraseCredentialsAfterAuthentication(false);
        //<!-- 校验用户名及密码，并对用户授权 -->
        a.setAuthorityService(authorityService);
        a.setAuthenticationManager(authenticationManager);
        a.setAuthenticationSuccessHandler(authenticationSuccessHandler);
        a.setAuthenticationFailureHandler(authenticationFailureHandler);
        a.setSessionAuthenticationStrategy(new ConcurrentSessionControlAuthenticationStrategy(sessionRegistry));
        a.setPostOnly(true);
        a.setUsernameParameter("j_username");
        a.setPasswordParameter("j_password");
        return a;
    }

    //组装权限信息
    public MyFilterSecurityInterceptorImpl myFilterSecurityInterceptor() {
        MyFilterSecurityInterceptorImpl a = new MyFilterSecurityInterceptorImpl();
        myInvocationSecurityMetadataSource.reloadResourceMap();
        a.setAuthorityService(authorityService);
        a.setSecurityMetadataSource(myInvocationSecurityMetadataSource);
        a.setAccessDecisionManager(myAccessDecisionManager);
        return a;
    }



    //session失效跳转
    private SessionInformationExpiredStrategy sessionInformationExpiredStrategy() {
        return new SimpleRedirectSessionInformationExpiredStrategy("/login/goLogin.ftl");
    }



}
