package com.zxh.crawlerdisplay.core.utils.http;

import com.zxh.crawlerdisplay.core.common.exception.BusinessException;
import com.zxh.crawlerdisplay.core.utils.EscapeUnescape;
import org.apache.commons.lang.StringUtils;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;

import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import javax.servlet.http.HttpServletRequest;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

public class HttpUtils {

	public static String doGet(String url, Map<String, String> querys) {
		HttpClient httpClient = wrapClient(url);

		try {
			HttpGet request = new HttpGet(buildUrl(url, querys));
			System.out.println("doGet:" + request.getURI());
			HttpResponse response = httpClient.execute(request);
			return EntityUtils.toString(response.getEntity(), "utf-8");

		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

			throw new BusinessException("无法支持编码异常");
		} catch (ClientProtocolException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new BusinessException("客服端协议异常");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new BusinessException("IO异常");
		}

	}

	public static String doPost(String url, Map<String, String> querys, Map<String, String> bodys) {

		HttpClient httpClient = wrapClient(url);
		try {
			HttpPost request = new HttpPost(buildUrl(url, querys));
			System.out.println(url);

			if (bodys != null) {
				List<NameValuePair> nameValuePairList = new ArrayList<NameValuePair>();

				for (String key : bodys.keySet()) {
					nameValuePairList.add(new BasicNameValuePair(key, bodys.get(key)));
				}
				UrlEncodedFormEntity formEntity = new UrlEncodedFormEntity(nameValuePairList, "utf-8");
				formEntity.setContentType("application/x-www-form-urlencoded; charset=UTF-8");
				request.setEntity(formEntity);
			}

			HttpResponse response = httpClient.execute(request);

			return EntityUtils.toString(response.getEntity(), "utf-8");

		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

			throw new BusinessException("无法支持编码异常");
		} catch (ClientProtocolException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new BusinessException("客服端协议异常");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new BusinessException("IO异常");
		}
	}

	/**
	 * get
	 * 
	 * @param url
	 * @param headers
	 * @param querys
	 * @return
	 * @throws Exception
	 */
	public static HttpResponse doGet(String url, Map<String, String> headers, Map<String, String> querys) throws Exception {
		HttpClient httpClient = wrapClient(url);

		HttpGet request = new HttpGet(buildUrl(url, querys));
		if (headers != null) {
			for (Map.Entry<String, String> e : headers.entrySet()) {
				request.addHeader(e.getKey(), e.getValue());
			}
		}

		return httpClient.execute(request);
	}

	/**
	 * post form
	 * 
	 * @param url
	 * @param headers
	 * @param querys
	 * @param bodys
	 * @return
	 * @throws Exception
	 */
	public static HttpResponse doPost(String url, Map<String, String> headers, Map<String, String> querys, Map<String, String> bodys) throws Exception {
		HttpClient httpClient = wrapClient(url);

		HttpPost request = new HttpPost(buildUrl(url, querys));
		if (headers != null) {
			for (Map.Entry<String, String> e : headers.entrySet()) {
				request.addHeader(e.getKey(), e.getValue());
			}
		}

		if (bodys != null) {
			List<NameValuePair> nameValuePairList = new ArrayList<NameValuePair>();

			for (String key : bodys.keySet()) {
				nameValuePairList.add(new BasicNameValuePair(key, bodys.get(key)));
			}
			UrlEncodedFormEntity formEntity = new UrlEncodedFormEntity(nameValuePairList, "utf-8");
			formEntity.setContentType("application/x-www-form-urlencoded; charset=UTF-8");
			request.setEntity(formEntity);
		}

		return httpClient.execute(request);
	}

	/**
	 * Post String
	 * 
	 * @param url
	 * @param headers
	 * @param querys
	 * @param body
	 * @return
	 * @throws Exception
	 */
	public static HttpResponse doPost(String url, Map<String, String> headers, Map<String, String> querys, String body) throws Exception {
		HttpClient httpClient = wrapClient(url);

		HttpPost request = new HttpPost(buildUrl(url, querys));
		if (headers != null) {
			for (Map.Entry<String, String> e : headers.entrySet()) {
				request.addHeader(e.getKey(), e.getValue());
			}
		}

		if (StringUtils.isNotBlank(body)) {
			request.setEntity(new StringEntity(body, "utf-8"));
		}

		return httpClient.execute(request);
	}

	/**
	 * Post stream
	 * 
	 * @param url
	 * @param method
	 * @param headers
	 * @param querys
	 * @param body
	 * @return
	 * @throws Exception
	 */
	public static HttpResponse doPost(String url, String method, Map<String, String> headers, Map<String, String> querys, byte[] body) throws Exception {
		HttpClient httpClient = wrapClient(url);

		HttpPost request = new HttpPost(buildUrl(url, querys));
		if (headers != null) {
			for (Map.Entry<String, String> e : headers.entrySet()) {
				request.addHeader(e.getKey(), e.getValue());
			}
		}

		if (body != null) {
			request.setEntity(new ByteArrayEntity(body));
		}

		return httpClient.execute(request);
	}

	/**
	 * Put String
	 * 
	 * @param url
	 * @param method
	 * @param headers
	 * @param querys
	 * @param body
	 * @return
	 * @throws Exception
	 */
	public static HttpResponse doPut(String url, String method, Map<String, String> headers, Map<String, String> querys, String body) throws Exception {
		HttpClient httpClient = wrapClient(url);

		HttpPut request = new HttpPut(buildUrl(url, querys));
		if (headers != null) {
			for (Map.Entry<String, String> e : headers.entrySet()) {
				request.addHeader(e.getKey(), e.getValue());
			}
		}

		if (StringUtils.isNotBlank(body)) {
			request.setEntity(new StringEntity(body, "utf-8"));
		}

		return httpClient.execute(request);
	}

	/**
	 * Put stream
	 * 
	 * @param url
	 * @param method
	 * @param headers
	 * @param querys
	 * @param body
	 * @return
	 * @throws Exception
	 */
	public static HttpResponse doPut(String url, String method, Map<String, String> headers, Map<String, String> querys, byte[] body) throws Exception {
		HttpClient httpClient = wrapClient(url);

		HttpPut request = new HttpPut(buildUrl(url, querys));
		if (headers != null) {
			for (Map.Entry<String, String> e : headers.entrySet()) {
				request.addHeader(e.getKey(), e.getValue());
			}
		}

		if (body != null) {
			request.setEntity(new ByteArrayEntity(body));
		}

		return httpClient.execute(request);
	}

	/**
	 * Delete
	 * 
	 * @param url
	 * @param method
	 * @param headers
	 * @param querys
	 * @return
	 * @throws Exception
	 */
	public static HttpResponse doDelete(String url, String method, Map<String, String> headers, Map<String, String> querys) throws Exception {
		HttpClient httpClient = wrapClient(url);

		HttpDelete request = new HttpDelete(buildUrl(url, querys));
		if (headers != null) {
			for (Map.Entry<String, String> e : headers.entrySet()) {
				request.addHeader(e.getKey(), e.getValue());
			}
		}

		return httpClient.execute(request);
	}

	private static String buildUrl(String url, Map<String, String> querys) throws UnsupportedEncodingException {
		StringBuilder sbUrl = new StringBuilder();
		sbUrl.append(url);

		if (null != querys) {
			StringBuilder sbQuery = new StringBuilder();
			for (Map.Entry<String, String> query : querys.entrySet()) {
				if (0 < sbQuery.length()) {
					sbQuery.append("&");
				}
				if (StringUtils.isBlank(query.getKey()) && !StringUtils.isBlank(query.getValue())) {
					sbQuery.append(query.getValue());
				}
				if (!StringUtils.isBlank(query.getKey())) {
					sbQuery.append(query.getKey());
					if (!StringUtils.isBlank(query.getValue())) {
						sbQuery.append("=");
						sbQuery.append(URLEncoder.encode(query.getValue(), "utf-8"));
					}
				}
			}
			if (0 < sbQuery.length()) {
				sbUrl.append("?").append(sbQuery);
			}
		}
		return sbUrl.toString();
	}

	private static HttpClient wrapClient(String host) {
		HttpClient httpClient = new DefaultHttpClient();
		if (host.startsWith("https://")) {
			sslClient(httpClient);
		}

		return httpClient;
	}

	private static void sslClient(HttpClient httpClient) {
		try {
			SSLContext ctx = SSLContext.getInstance("TLS");
			X509TrustManager tm = new X509TrustManager() {
				@Override
				public X509Certificate[] getAcceptedIssuers() {
					return null;
				}

				@Override
				public void checkClientTrusted(X509Certificate[] xcs, String str) {

				}

				@Override
				public void checkServerTrusted(X509Certificate[] xcs, String str) {

				}
			};
			ctx.init(null, new TrustManager[] { tm }, null);
			SSLSocketFactory ssf = new SSLSocketFactory(ctx);
			ssf.setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
			ClientConnectionManager ccm = httpClient.getConnectionManager();
			SchemeRegistry registry = ccm.getSchemeRegistry();
			registry.register(new Scheme("https", 443, ssf));
		} catch (KeyManagementException ex) {
			throw new RuntimeException(ex);
		} catch (NoSuchAlgorithmException ex) {
			throw new RuntimeException(ex);
		}
	}

	/**
	 * 判断是否是ajax请求
	 * 
	 * @param request
	 * @return
	 */
	public static boolean isAjaxRequest(HttpServletRequest request) {
		String header = request.getHeader("X-Requested-With");
		if (header != null && "XMLHttpRequest".equals(header)) {
			return true;

		} else {
			return false;
		}
	}

	/**
	 * 2018.02.04 对接水务局oa后台的中文采用Escape编码
	 * 
	 * 发送get请求（对中文参数进行Escape编码）
	 * 
	 * @param url
	 * @param querys
	 * @return
	 */
	public static String doGetEscapeCN(String url, Map<String, String> querys) {
		try {
			HttpURLConnection conn = (HttpURLConnection) new URL(buildUrlEscapeCN(url, querys)).openConnection();
			conn.setConnectTimeout(5000);
			conn.setRequestMethod("GET");
			System.out.println(conn.getURL());
			if (conn.getResponseCode() == 200) {
				InputStream is = conn.getInputStream();
				ByteArrayOutputStream os = new ByteArrayOutputStream();
				byte[] buffer = new byte[1024];
				int len = -1;
				while ((len = is.read(buffer)) != -1) {
					os.write(buffer, 0, len);
				}
				os.close();
				is.close();
				return new String(os.toByteArray());
			}
			return null;
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new BusinessException("无法支持编码异常");
		} catch (ClientProtocolException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new BusinessException("客服端协议异常");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new BusinessException("IO异常");
		}
	}

	private static String buildUrlEscapeCN(String url, Map<String, String> querys) throws UnsupportedEncodingException {
		StringBuilder sbUrl = new StringBuilder();
		sbUrl.append(url);

		if (null != querys) {
			Pattern p = Pattern.compile("[\u4e00-\u9fa5]");
			StringBuilder sbQuery = new StringBuilder();
			for (Map.Entry<String, String> query : querys.entrySet()) {
				if (0 < sbQuery.length()) {
					sbQuery.append("&");
				}
				if (StringUtils.isBlank(query.getKey()) && !StringUtils.isBlank(query.getValue())) {
					// 如果参数值含中文，则使用escape编码
					sbQuery.append(p.matcher(query.getValue()).find() ? EscapeUnescape.escape(query.getValue()) : query.getValue());
				}
				if (!StringUtils.isBlank(query.getKey())) {
					sbQuery.append(query.getKey());
					if (!StringUtils.isBlank(query.getValue())) {
						sbQuery.append("=");
						// 如果参数值含中文，则使用escape编码，否则使用utf-8
						sbQuery.append(p.matcher(query.getValue()).find() ? EscapeUnescape.escape(query.getValue()) : URLEncoder.encode(query.getValue(),
								"utf-8"));
					}
				}
			}
			if (0 < sbQuery.length()) {
				sbUrl.append("?").append(sbQuery);
			}
		}
		System.out.println(sbUrl.toString());
		return sbUrl.toString();
	}
}
