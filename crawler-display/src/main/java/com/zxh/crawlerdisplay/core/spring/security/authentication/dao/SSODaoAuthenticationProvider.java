package com.zxh.crawlerdisplay.core.spring.security.authentication.dao;

import com.zxh.crawlerdisplay.core.spring.security.authentication.SSOAuthenticationToken;
import com.zxh.crawlerdisplay.core.utils.PropertiesUtil;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.context.MessageSource;
import org.springframework.context.MessageSourceAware;
import org.springframework.context.support.MessageSourceAccessor;
import org.springframework.security.authentication.*;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.SpringSecurityMessageSource;
import org.springframework.security.core.authority.mapping.GrantedAuthoritiesMapper;
import org.springframework.security.core.authority.mapping.NullAuthoritiesMapper;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsChecker;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.util.Assert;

import java.io.InputStream;
import java.io.ObjectInputStream;
import java.net.URL;
import java.net.URLConnection;

public class SSODaoAuthenticationProvider implements AuthenticationProvider, InitializingBean, MessageSourceAware {

	protected final Log logger = LogFactory.getLog(getClass());

	// ~ Instance fields
	// ================================================================================================

	protected MessageSourceAccessor messages = SpringSecurityMessageSource.getAccessor();
	private UserDetailsService userDetailsService;

	private boolean forcePrincipalAsString = false;
	private UserDetailsChecker preAuthenticationChecks = new DefaultPreAuthenticationChecks();
	private UserDetailsChecker postAuthenticationChecks = new DefaultPostAuthenticationChecks();
	private GrantedAuthoritiesMapper authoritiesMapper = new NullAuthoritiesMapper();

	private String ticketVaildateUrl = "http://172.128.200.31:8081/platform-sso-server/validate";

	public SSODaoAuthenticationProvider() {
		String classBaseDir = this.getClass().getResource("/").getPath();
		String propertiesfile = classBaseDir + "systemConfig.properties";

		String value = PropertiesUtil.getValueByKey(propertiesfile, "TICKET_VAILDATE_URL");
        if (StringUtils.isNotBlank(value)) {
			ticketVaildateUrl = value;
		}
	}

	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {

		String username = (authentication.getPrincipal() == null) ? "NONE_PROVIDED" : authentication.getName();

		UserDetails user = null;
		try {
			user = retrieveUser(username, (SSOAuthenticationToken) authentication);

		} catch (UsernameNotFoundException notFound) {
			logger.debug("User '" + username + "' not found");

			throw notFound;

		}

		Assert.notNull(user, "retrieveUser returned null - a violation of the interface contract");

		try {
			preAuthenticationChecks.check(user);
			additionalAuthenticationChecks(user, (SSOAuthenticationToken) authentication);
		} catch (AuthenticationException exception) {

			throw exception;

		}

		postAuthenticationChecks.check(user);

		Object principalToReturn = user;

		if (forcePrincipalAsString) {
			principalToReturn = user.getUsername();
		}

		return createSuccessAuthentication(principalToReturn, authentication, user);

	}

	private void additionalAuthenticationChecks(UserDetails userDetails, SSOAuthenticationToken authentication) throws AuthenticationException {
		String ticket = authentication.getCredentials().toString();

		StringBuilder vaildateUrl = new StringBuilder(ticketVaildateUrl).append("?ticket=").append(ticket);
		String respMsg = "";
		try {
			respMsg = (String) this.request(vaildateUrl.toString());
		} catch (Exception e) {
			respMsg = "false";
		}

		if ("false".equals(respMsg)) {
			throw new AuthenticationServiceException("Ticket vaildate failed");
		}

	}

	public static Object request(String url) throws Exception {
		Object obj = null;

		URL u = new URL(url);

		URLConnection uc = u.openConnection();
		uc.setRequestProperty("Connection", "close");
		uc.setRequestProperty("Charset", "utf-8");
		InputStream is = uc.getInputStream();
		ObjectInputStream ois = new ObjectInputStream(is);
		obj = ois.readObject();

		return obj;
	}

	public void setPreAuthenticationChecks(UserDetailsChecker preAuthenticationChecks) {
		this.preAuthenticationChecks = preAuthenticationChecks;
	}

	protected UserDetailsChecker getPostAuthenticationChecks() {
		return postAuthenticationChecks;
	}

	public void setPostAuthenticationChecks(UserDetailsChecker postAuthenticationChecks) {
		this.postAuthenticationChecks = postAuthenticationChecks;
	}

	protected final UserDetails retrieveUser(String username, SSOAuthenticationToken authentication) throws AuthenticationException {
		UserDetails loadedUser;

		try {
			loadedUser = this.getUserDetailsService().loadUserByUsername(username);

		} catch (UsernameNotFoundException notFound) {

			throw notFound;
		} catch (Exception repositoryProblem) {
			throw new InternalAuthenticationServiceException(repositoryProblem.getMessage(), repositoryProblem);
		}

		if (loadedUser == null) {
			throw new InternalAuthenticationServiceException("UserDetailsService returned null, which is an interface contract violation");
		}
		return loadedUser;
	}

	@Override
	public void setMessageSource(MessageSource messageSource) {
		this.messages = new MessageSourceAccessor(messageSource);
	}

	@Override
	public final void afterPropertiesSet() throws Exception {
		Assert.notNull(this.messages, "A message source must be set");
		doAfterPropertiesSet();
	}

	protected void doAfterPropertiesSet() throws Exception {
	}

	public UserDetailsService getUserDetailsService() {
		return userDetailsService;
	}

	public void setUserDetailsService(UserDetailsService userDetailsService) {
		this.userDetailsService = userDetailsService;
	}

	public void setAuthoritiesMapper(GrantedAuthoritiesMapper authoritiesMapper) {
		this.authoritiesMapper = authoritiesMapper;
	}

	public boolean isForcePrincipalAsString() {
		return forcePrincipalAsString;
	}

	public void setForcePrincipalAsString(boolean forcePrincipalAsString) {
		this.forcePrincipalAsString = forcePrincipalAsString;
	}

	@Override
	public boolean supports(Class<?> authentication) {

		return (SSOAuthenticationToken.class.isAssignableFrom(authentication));

	}

	protected Authentication createSuccessAuthentication(Object principal, Authentication authentication, UserDetails user) {
		// Ensure we return the original credentials the user supplied,
		// so subsequent attempts are successful even with encoded passwords.
		// Also ensure we return the original getDetails(), so that future
		// authentication events after cache expiry contain the details
		SSOAuthenticationToken result = new SSOAuthenticationToken(principal, authentication.getCredentials(), authoritiesMapper.mapAuthorities(user
				.getAuthorities()));
		result.setDetails(authentication.getDetails());

		return result;
	}

	private class DefaultPreAuthenticationChecks implements UserDetailsChecker {
		@Override
		@SuppressWarnings("deprecation")
		public void check(UserDetails user) {
			if (!user.isAccountNonLocked()) {
				logger.debug("User account is locked");

                throw new LockedException(messages.getMessage("AbstractUserDetailsAuthenticationProvider.locked", "User account is locked"));
			}

			if (!user.isEnabled()) {
				logger.debug("User account is disabled");

                throw new DisabledException(messages.getMessage("AbstractUserDetailsAuthenticationProvider.disabled", "User is disabled"));
			}

			if (!user.isAccountNonExpired()) {
				logger.debug("User account is expired");

                throw new AccountExpiredException(messages.getMessage("AbstractUserDetailsAuthenticationProvider.expired", "User account has expired"));
			}
		}
	}

	private class DefaultPostAuthenticationChecks implements UserDetailsChecker {
		@Override
		@SuppressWarnings("deprecation")
		public void check(UserDetails user) {
			if (!user.isCredentialsNonExpired()) {
				logger.debug("User account credentials have expired");

				throw new CredentialsExpiredException(messages.getMessage("AbstractUserDetailsAuthenticationProvider.credentialsExpired",
                        "User credentials have expired"));
			}
		}
	}
}
