package com.zxh.crawlerdisplay.core.sms;


/**
 * @author wb_java_zjr
 * @create 2017-08-25 10:08
 */
public class SmsKit {
	// protected static Logger logger = LoggerFactory.getLogger(SmsKit.class);
	//
	// // 产品名称:云通信短信API产品,开发者无需替换
	// static final String product = "Dysmsapi";
	// // 产品域名,开发者无需替换
	// static final String domain = "dysmsapi.aliyuncs.com";
	//
	// static final String signName = "广东万维博通";
	//
	// /**
	// * 发送短信结果
	// *
	// * @param phone
	// * 手机号码（必须）
	// * @param params
	// * 模板参数（必须）
	// * @param templateCode
	// * 模板号（必须）
	// * @param msgId
	// * 信息记录id
	// * @return
	// */
	// public static boolean sendSms(String phone, JSONObject params, String
	// templateCode, String msgId) {
	//
	// // 可自助调整超时时间
	// System.setProperty("sun.net.client.defaultConnectTimeout", "10000");
	// System.setProperty("sun.net.client.defaultReadTimeout", "10000");
	//
	// // 初始化acsClient,暂不支持region化
	// IClientProfile profile = DefaultProfile.getProfile("cn-hangzhou",
	// AliyunMnsConfig.accesskeyid, AliyunMnsConfig.accesskeysecret);
	// try {
	// DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", product,
	// domain);
	// } catch (ClientException e) {
	// e.printStackTrace();
	// if (logger.isErrorEnabled()) {
	// logger.error("初始化阿里云短信客户端失败");
	// }
	// return false;
	// }
	// IAcsClient acsClient = new DefaultAcsClient(profile);
	//
	// // 组装请求对象-具体描述见控制台-文档部分内容
	// SendSmsRequest request = new SendSmsRequest();
	// // 必填:待发送手机号
	// request.setPhoneNumbers(phone);
	// // 必填:短信签名-可在短信控制台中找到
	// request.setSignName(signName);
	// // 必填:短信模板-可在短信控制台中找到
	// request.setTemplateCode(templateCode);
	// // 可选:模板中的变量替换JSON串,如模板内容为"亲爱的${name},您的验证码为${code}"时,此处的值为
	// // request.setTemplateParam("{\"name\":\"Tom\", \"code\":\"123\"}");
	// request.setTemplateParam(params.toString());
	//
	// // 选填-上行短信扩展码(无特殊需求用户请忽略此字段)
	// // request.setSmsUpExtendCode("90997");
	//
	// // 可选:outId为提供给业务方扩展字段,最终在短信回执消息中将此值带回给调用者
	// request.setOutId(msgId);
	//
	// // hint 此处可能会抛出异常，注意catch
	//
	// SendSmsResponse sendSmsResponse = null;
	// try {
	// sendSmsResponse = acsClient.getAcsResponse(request);
	//
	// System.out.println("短信接口返回的数据----------------");
	// System.out.println("Code=" + sendSmsResponse.getCode());
	// System.out.println("Message=" + sendSmsResponse.getMessage());
	// System.out.println("RequestId=" + sendSmsResponse.getRequestId());
	// System.out.println("BizId=" + sendSmsResponse.getBizId());
	//
	// if (sendSmsResponse.getCode() != null &&
	// sendSmsResponse.getCode().equals("OK")) {
	// return true;
	// }
	//
	// } catch (Exception e) {
	// e.printStackTrace();
	//
	// }
	//
	// return false;
	// }
	//
	// /**
	// * 查询短信结果请求
	// *
	// * @param bizId
	// * @param phone
	// * @param date
	// * @param currentPage
	// * @return
	// * @throws ClientException
	// */
	// public static QuerySendDetailsResponse querySendDetails(String bizId,
	// String phone, String date, Long currentPage) throws ClientException {
	//
	// // 可自助调整超时时间
	// System.setProperty("sun.net.client.defaultConnectTimeout", "10000");
	// System.setProperty("sun.net.client.defaultReadTimeout", "10000");
	//
	// // 初始化acsClient,暂不支持region化
	// IClientProfile profile = DefaultProfile.getProfile("cn-hangzhou",
	// AliyunMnsConfig.accesskeyid, AliyunMnsConfig.accesskeysecret);
	// DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", product,
	// domain);
	// IAcsClient acsClient = new DefaultAcsClient(profile);
	//
	// // 组装请求对象
	// QuerySendDetailsRequest request = new QuerySendDetailsRequest();
	// // 必填-号码
	// request.setPhoneNumber(phone);
	// // 可选-流水号
	// request.setBizId(bizId);
	// // 必填-发送日期 支持30天内记录查询，格式yyyyMMdd
	// // SimpleDateFormat ft = new SimpleDateFormat("yyyyMMdd");
	// request.setSendDate(date);
	// // 必填-页大小
	// request.setPageSize(10L);
	// // 必填-当前页码从1开始计数
	// request.setCurrentPage(currentPage);
	//
	// // hint 此处可能会抛出异常，注意catch
	// QuerySendDetailsResponse querySendDetailsResponse =
	// acsClient.getAcsResponse(request);
	//
	// return querySendDetailsResponse;
	// }
	//
	// /**
	// * 短信结果查询
	// *
	// * @param bizId
	// * 查询流水号（可选）
	// * @param phone
	// * 手机号码（必须）
	// * @param date
	// * 发送日期（必须） 格式yyyyMMdd
	// * @param currentPage
	// * 查询页（必须）输入1
	// * @param msgId
	// * 信息记录id 用来匹配短信结果
	// * @return
	// * @throws ClientException
	// */
	// public SmsResult getSmsInfo(String bizId, String phone, String date, Long
	// currentPage, String msgId) throws ClientException {
	//
	// QuerySendDetailsResponse querySendDetailsResponse =
	// querySendDetails(bizId, phone, date, currentPage);
	//
	// System.out.println("短信明细查询接口返回数据----------------");
	// System.out.println("Code=" + querySendDetailsResponse.getCode());
	// System.out.println("Message=" + querySendDetailsResponse.getMessage());
	// System.out.println("RequestId=" +
	// querySendDetailsResponse.getRequestId());
	// System.out.println("TotalCount=" +
	// querySendDetailsResponse.getTotalCount());
	//
	// SmsResult result =
	// cycleSmsResult(querySendDetailsResponse.getSmsSendDetailDTOs(), msgId);
	//
	// // 结果为空，且后面还有记录再次发起查询
	// if (result == null && (currentPage * 10) <
	// Integer.valueOf(querySendDetailsResponse.getTotalCount())) {
	// result = getSmsInfo(bizId, phone, date, ++currentPage, msgId);
	// }
	//
	// return result;
	// }
	//
	// private SmsResult
	// cycleSmsResult(List<QuerySendDetailsResponse.SmsSendDetailDTO>
	// smsSendDetailDTOs, String msgId) {
	//
	// for (QuerySendDetailsResponse.SmsSendDetailDTO smsSendDetailDTO :
	// smsSendDetailDTOs) {
	//
	// if (msgId.equals(smsSendDetailDTO.getOutId())) {
	// StringBuilder note = new
	// StringBuilder("ErrCode=").append(smsSendDetailDTO.getErrCode()).append(" OutId=").append(smsSendDetailDTO.getOutId())
	// .append(" PhoneNum=").append(smsSendDetailDTO.getPhoneNum()).append(" ReceiveDate=").append(smsSendDetailDTO.getReceiveDate())
	// .append(" SendDate=").append(smsSendDetailDTO.getSendDate()).append(" SendStatus=").append(smsSendDetailDTO.getSendStatus())
	// .append(" Template=").append(smsSendDetailDTO.getTemplateCode());
	//
	// return new SmsResult(smsSendDetailDTO.getContent(),
	// smsSendDetailDTO.getSendStatus().shortValue(), note.toString());
	// }
	//
	// }
	//
	// return null;
	// }
	//
	// /**
	// * 通过线程发送短信
	// *
	// * @param phone
	// * @param params
	// * @param templateCode
	// */
	// public static void sendSmsByThread(String phone, JSONObject params,
	// String templateCode, String msgId) {
	// new Thread(new SendSmsThread(phone, params, templateCode,
	// msgId)).start();
	// }
	//
	// private static class SendSmsThread implements Runnable {
	//
	// private final String phone;
	// private final JSONObject params;
	// private final String templateCode;
	// private final String msgId;
	//
	// public SendSmsThread(String phone, JSONObject params, String
	// templateCode, String msgId) {
	// super();
	// this.phone = phone;
	// this.params = params;
	// this.templateCode = templateCode;
	// this.msgId = msgId;
	// }
	//
	// @Override
	// public void run() {
	// sendSms(phone, params, templateCode, msgId);
	// }
	// }
	//
	// /**
	// * 短信模板填充参数
	// *
	// * @param str
	// * @param project
	// * @return
	// */
	// public static GeneralizeResult generalizeString(String str,
	// ProjectInfoDTO project) {
	//
	// List<String> names = new ArrayList<String>();
	// JSONObject params = new JSONObject();
	// boolean sign = false;
	// List<Character> chars = new ArrayList<Character>();
	// for (Character c : str.toCharArray()) {
	// if (c.equals('$')) {
	// sign = true;
	// }
	//
	// if (sign) {
	// chars.add(c);
	// }
	//
	// if (c.equals('}')) {
	// StringBuilder temp = new StringBuilder();
	// for (Character c2 : chars) {
	// temp.append(c2);
	// }
	// names.add(temp.toString());
	// chars.clear();
	// sign = false;
	// temp = null;
	// }
	// }
	//
	// if (!names.isEmpty()) {
	// List<String[]> attrNames = new ArrayList<String[]>();
	// for (String name : names) {
	// String field = name.substring(2, name.length() - 1);
	// String val = ReflectUtil.getValueByGetMethod(project, field);
	// attrNames.add(new String[] { name, val });
	// params.put(field, val);
	// }
	//
	// for (String[] sa : attrNames) {
	// if (sa[0] != null && sa[1] != null) {
	// str = str.replace(sa[0], sa[1]);
	// }
	//
	// }
	// }
	//
	// return new GeneralizeResult(str, params);
	// }
	//
	// /**
	// * 短信查询结果
	// *
	// * @author wb_java_zjr
	// *
	// */
	// public static class SmsResult {
	//
	// private String content; // 短信内容
	// private Short status; // 发送状态 1：等待回执，2：发送失败，3：发送成功
	// private String resultNote; // 返回结果
	//
	// public SmsResult(String content, Short status, String resultNote) {
	// super();
	// this.content = content;
	// this.status = status;
	// this.resultNote = resultNote;
	// }
	//
	// public String getContent() {
	// return content;
	// }
	//
	// public void setContent(String content) {
	// this.content = content;
	// }
	//
	// public Short getStatus() {
	// return status;
	// }
	//
	// public void setStatus(Short status) {
	// this.status = status;
	// }
	//
	// public String getResultNote() {
	// return resultNote;
	// }
	//
	// public void setResultNote(String resultNote) {
	// this.resultNote = resultNote;
	// }
	//
	// }
	//
	// public static void main(String[] args) throws ClientException,
	// InterruptedException {
	//
	// // String str =
	// //
	// "贵单位${buildUnit}所负责的项目${proName}已获得施工许可，请根据《深圳市城市建设档案管理办法》有关规定，及时完善项目基本信息，并上报相关管理机构${manageUnit}进行审核。";
	// // ProjectInfoDTO project = new ProjectInfoDTO();
	// // project.setBuildUnit("逐月集团");
	// // project.setProName("深圳前海天长工程");
	// // project.setManageUnit("深圳档案局");
	// //
	// // GeneralizeResult rs = generalizeString(str, project);
	// //
	// // sendSms("15920231598", rs.getParams(), "SMS_96740053");
	//
	// QuerySendDetailsResponse querySendDetailsResponse = querySendDetails("",
	// "15920231598", "20170920", 1L);
	//
	// // public SmsResult getSmsInfo(String bizId, String phone, String date,
	// // Long currentPage, String msgId)
	// System.out.println("短信明细查询接口返回数据----------------");
	// System.out.println("Code=" + querySendDetailsResponse.getCode());
	// System.out.println("Message=" + querySendDetailsResponse.getMessage());
	// System.out.println("RequestId=" +
	// querySendDetailsResponse.getRequestId());
	// System.out.println("TotalCount=" +
	// querySendDetailsResponse.getTotalCount());
	// int i = 0;
	// for (QuerySendDetailsResponse.SmsSendDetailDTO smsSendDetailDTO :
	// querySendDetailsResponse.getSmsSendDetailDTOs()) {
	// System.out.println("SmsSendDetailDTO[" + i + "]:");
	// System.out.println("Content=" + smsSendDetailDTO.getContent());
	// System.out.println("ErrCode=" + smsSendDetailDTO.getErrCode());
	// System.out.println("OutId=" + smsSendDetailDTO.getOutId());
	// System.out.println("PhoneNum=" + smsSendDetailDTO.getPhoneNum());
	// System.out.println("ReceiveDate=" + smsSendDetailDTO.getReceiveDate());
	// System.out.println("SendDate=" + smsSendDetailDTO.getSendDate());
	// System.out.println("SendStatus=" + smsSendDetailDTO.getSendStatus());
	// System.out.println("Template=" + smsSendDetailDTO.getTemplateCode());
	// i++;
	// }
	//
	// // System.out.println(rs.getParams().toString());
	//
	// // JSONObject parms = new JSONObject();
	// // parms.put("dwname", "深圳市建筑工务署");
	// // parms.put("projectname", "测试项目3");
	// // parms.put("shdw", "深圳市档案局");
	// // sendSms("13763184969", parms, TempleateCode.PROJECT_lONGIN_CODE);
	//
	// // 发短信
	// // SendSmsResponse response = sendSms();
	// // System.out.println("短信接口返回的数据----------------");
	// // System.out.println("Code=" + response.getCode());
	// // System.out.println("Message=" + response.getMessage());
	// // System.out.println("RequestId=" + response.getRequestId());
	// // System.out.println("BizId=" + response.getBizId());
	//
	// // Thread.sleep(3000L);
	// //
	// // //查明细
	// // if(response.getCode() != null && response.getCode().equals("OK")) {
	// // QuerySendDetailsResponse querySendDetailsResponse =
	// // querySendDetails(response.getBizId());
	// // System.out.println("短信明细查询接口返回数据----------------");
	// // System.out.println("Code=" + querySendDetailsResponse.getCode());
	// // System.out.println("Message=" +
	// // querySendDetailsResponse.getMessage());
	// // int i = 0;
	// // for(QuerySendDetailsResponse.SmsSendDetailDTO smsSendDetailDTO :
	// // querySendDetailsResponse.getSmsSendDetailDTOs())
	// // {
	// // System.out.println("SmsSendDetailDTO["+i+"]:");
	// // System.out.println("Content=" + smsSendDetailDTO.getContent());
	// // System.out.println("ErrCode=" + smsSendDetailDTO.getErrCode());
	// // System.out.println("OutId=" + smsSendDetailDTO.getOutId());
	// // System.out.println("PhoneNum=" + smsSendDetailDTO.getPhoneNum());
	// // System.out.println("ReceiveDate=" +
	// // smsSendDetailDTO.getReceiveDate());
	// // System.out.println("SendDate=" + smsSendDetailDTO.getSendDate());
	// // System.out.println("SendStatus=" + smsSendDetailDTO.getSendStatus());
	// // System.out.println("Template=" + smsSendDetailDTO.getTemplateCode());
	// // }
	// // System.out.println("TotalCount=" +
	// // querySendDetailsResponse.getTotalCount());
	// // System.out.println("RequestId=" +
	// // querySendDetailsResponse.getRequestId());
	// // }
	//
	// }
}
