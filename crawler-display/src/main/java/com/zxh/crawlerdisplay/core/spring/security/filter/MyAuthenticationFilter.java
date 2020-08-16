package com.zxh.crawlerdisplay.core.spring.security.filter;

import com.zxh.crawlerdisplay.core.spring.security.authentication.SSOAuthenticationToken;
import com.zxh.crawlerdisplay.core.spring.security.user.extend.MyUser;
import com.zxh.crawlerdisplay.web.system.service.IAuthorityService;
import org.apache.commons.lang.StringUtils;
import org.springframework.security.authentication.AuthenticationServiceException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter;
import org.springframework.stereotype.Component;
import org.springframework.util.Assert;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public class MyAuthenticationFilter extends AbstractAuthenticationProcessingFilter {

	public static final String SPRING_SECURITY_FORM_USERNAME_KEY = "j_username";
	public static final String SPRING_SECURITY_FORM_PASSWORD_KEY = "j_password";
	/**
	 * @deprecated If you want to retain the username, cache it in a customized
     *             {@code AuthenticationFailureHandler}filterProcessesUrl
	 */
	@Deprecated
	public static final String SPRING_SECURITY_LAST_USERNAME_KEY = "SPRING_SECURITY_LAST_USERNAME";

	private String usernameParameter = SPRING_SECURITY_FORM_USERNAME_KEY;
	private String passwordParameter = SPRING_SECURITY_FORM_PASSWORD_KEY;
	private boolean postOnly = true;

	private IAuthorityService authorityService;

	private final String j_ticket = "ticket";
	private final String j_captcha = "j_captcha";

	@Resource
	private SessionRegistry sessionRegistry;

	// ~ Constructors
	// ===================================================================================================

	public MyAuthenticationFilter() {
		super("/j_spring_security_check");
	}

	// ~ Methods
	// ========================================================================================================

	@Override
	public Authentication attemptAuthentication(HttpServletRequest request, HttpServletResponse response) throws AuthenticationException {
		// if (postOnly && !request.getMethod().equals("POST")) {
		// throw new
		// AuthenticationServiceException("Authentication method not supported: "
		// + request.getMethod());
		// }

		String username = obtainUsername(request);

		if (username == null) {
			username = "";
		}

		username = username.trim();

		if (request.getMethod().equals("GET") && !StringUtils.isBlank(request.getQueryString())) {
			String ticket = request.getParameter(j_ticket);

			if (StringUtils.isBlank(ticket)) {
				throw new AuthenticationServiceException("ticket could not be null or empty");
			}

			SSOAuthenticationToken authRequest = new SSOAuthenticationToken(username, ticket);

			setSSODetails(request, authRequest);

			Authentication authentication = this.getAuthenticationManager().authenticate(authRequest);

			return createSuccessAuthentication(request, authentication);

		} else {
			if (checkCaptcha(request)) {
				String password = obtainPassword(request);
				if (password == null) {
					password = "";
				}

				UsernamePasswordAuthenticationToken authRequest = new UsernamePasswordAuthenticationToken(username, password + "{" + username + "}");

				// Allow subclasses to set the "details" property
				setDetails(request, authRequest);

				Authentication authentication = this.getAuthenticationManager().authenticate(authRequest);

				return createSuccessAuthentication(request, authentication);
			} else {

				throw new AuthenticationServiceException("验证码错误！");
			}

		}

	}

	public Authentication createSuccessAuthentication(HttpServletRequest request, Authentication authentication) {

		MyUser user = (MyUser) authentication.getPrincipal();

		if (user.getRoleIds() == null || user.getRoleIds().isEmpty()) {
			return authentication;
		}

		String menu = this.authorityService.getAuthMenu(user.getRoleIds(), request.getContextPath());
		request.getSession().setAttribute("menu", menu);

		List<String> authCodes = this.authorityService.getAuthControlItem(user.getRoleIds());
		user.setAuthCodes(authCodes);

		SecurityContextHolder.getContext().setAuthentication(authentication);

		//用户名密码验证通过后,注册session
//		sessionRegistry.registerNewSession(request.getSession().getId(),authentication.getPrincipal());

		return authentication;
	}

	/**
	 * 校验验证码
	 * 
	 * @param request
	 * @return
	 */
	public boolean checkCaptcha(HttpServletRequest request) {
		String reqCaptchaVal = request.getParameter(j_captcha);// 用户输入的验证码
		String curCaptchaVal = (String) request.getSession().getAttribute(com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY);
		if (reqCaptchaVal == null || curCaptchaVal == null) {
			return false;

		} else if (reqCaptchaVal.equals(curCaptchaVal)) {

			return true;
		} else {

			return false;
		}

	}

	/**
	 * Enables subclasses to override the composition of the password, such as
	 * by including additional values and a separator.
	 * <p>
	 * This might be used for example if a postcode/zipcode was required in
	 * addition to the password. A delimiter such as a pipe (|) should be used
	 * to separate the password and extended value(s). The
	 * <code>AuthenticationDao</code> will need to generate the expected
	 * password in a corresponding manner.
	 * </p>
	 * 
	 * @param request
	 *            so that request attributes can be retrieved
	 * 
	 * @return the password that will be presented in the
	 *         <code>Authentication</code> request token to the
	 *         <code>AuthenticationManager</code>
	 */
	protected String obtainPassword(HttpServletRequest request) {
		return request.getParameter(passwordParameter);
	}

	/**
	 * Enables subclasses to override the composition of the username, such as
	 * by including additional values and a separator.
	 * 
	 * @param request
	 *            so that request attributes can be retrieved
	 * 
	 * @return the username that will be presented in the
	 *         <code>Authentication</code> request token to the
	 *         <code>AuthenticationManager</code>
	 */
	protected String obtainUsername(HttpServletRequest request) {
		return request.getParameter(usernameParameter);
	}

	/**
	 * Provided so that subclasses may configure what is put into the
	 * authentication request's details property.
	 * 
	 * @param request
	 *            that an authentication request is being created for
	 * @param authRequest
	 *            the authentication request object that should have its details
	 *            set
	 */
	protected void setDetails(HttpServletRequest request, UsernamePasswordAuthenticationToken authRequest) {
		authRequest.setDetails(authenticationDetailsSource.buildDetails(request));
	}

	protected void setSSODetails(HttpServletRequest request, SSOAuthenticationToken authRequest) {
		authRequest.setDetails(authenticationDetailsSource.buildDetails(request));
	}

	/**
	 * Sets the parameter name which will be used to obtain the username from
	 * the login request.
	 * 
	 * @param usernameParameter
	 *            the parameter name. Defaults to "j_username".
	 */
	public void setUsernameParameter(String usernameParameter) {
		Assert.hasText(usernameParameter, "Username parameter must not be empty or null");
		this.usernameParameter = usernameParameter;
	}

	/**
	 * Sets the parameter name which will be used to obtain the password from
	 * the login request..
	 * 
	 * @param passwordParameter
	 *            the parameter name. Defaults to "j_password".
	 */
	public void setPasswordParameter(String passwordParameter) {
		Assert.hasText(passwordParameter, "Password parameter must not be empty or null");
		this.passwordParameter = passwordParameter;
	}

	/**
	 * Defines whether only HTTP POST requests will be allowed by this filter.
	 * If set to true, and an authentication request is received which is not a
	 * POST request, an exception will be raised immediately and authentication
	 * will not be attempted. The <tt>unsuccessfulAuthentication()</tt> method
	 * will be called as if handling a failed authentication.
	 * <p>
	 * Defaults to <tt>true</tt> but may be overridden by subclasses.
	 */
	public void setPostOnly(boolean postOnly) {
		this.postOnly = postOnly;
	}

	public final String getUsernameParameter() {
		return usernameParameter;
	}

	public final String getPasswordParameter() {
		return passwordParameter;
	}

	public IAuthorityService getAuthorityService() {
		return authorityService;
	}

	public void setAuthorityService(IAuthorityService authorityService) {
		this.authorityService = authorityService;
	}
}
