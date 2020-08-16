package com.zxh.crawlerdisplay.core.utils.hash;

import com.zxh.crawlerdisplay.core.common.exception.BusinessException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.MessageDigestPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import java.util.ArrayList;

/**
 * @author XUYI Spring Security 3.1 PasswordEncoder
 */

public class ShaPassEncodeUtil {
    private static final String SITE_WIDE_SECRET = "my-secret-key";
    private static final int SECRET_TYPE = 256;
    private static final String saltName = "username";
    private static PasswordEncoder passwordEncoder = new MessageDigestPasswordEncoder("SHA-256");

    /**
     * . 加密
     *
     * @param userName 用户名
     * @param password 密码
     * @return
     */
    public static String encodePassWord(String userName, String password) {
        if (userName == null || userName.isEmpty() || password == null || password.isEmpty()) {
            throw new BusinessException("params can not be null or empty");
        }
        UserDetails userDetails = new User(userName, password, true, true, true, true, new ArrayList<GrantedAuthority>());
        String lastpassword = passwordEncoder.encode(password + userDetails.getUsername());
        return lastpassword;
    }

    public static void main(String[] args) {
        System.out.println(encodePassWord("lsgcb", "wanve123456"));
    }
}
