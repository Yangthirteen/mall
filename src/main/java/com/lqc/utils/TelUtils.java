package com.lqc.utils;

import java.io.IOException;
import org.apache.commons.lang3.RandomStringUtils;
import org.json.JSONException;
import com.github.qcloudsms.SmsSingleSender;
import com.github.qcloudsms.SmsSingleSenderResult;
import com.github.qcloudsms.httpclient.HTTPException;

/** 
 		* @author : lingQiCheng
 		* @Description : 短信工具类  
 		* @CreateDate : 2018年12月19日 下午11:23:56 
 		* @lastModified : 2018年12月19日 下午11:23:56 
 		* @version :   v1.0
 	*/  
public class TelUtils {
	public static String getRgeCode(String tel) {
		// 短信应用SDK AppID
		int appid =1400141744; // 1400开头

		// 短信应用SDK AppKey
		String appkey = "4de1cbc179185b85df9a2396b4721cdb";

		// 需要发送短信的手机号码
		String[] phoneNumbers = {tel};

		// 短信模板ID，需要在短信应用中申请
		int templateId = 225482; // NOTE: 这里的模板ID`7839`只是一个示例，真实的模板ID需要在短信控制台中申请
		//templateId7839对应的内容是"您的验证码是: {1}"
		// 签名
		String smsSign = "林启澄的学习乐园"; 
		String code = RandomStringUtils.random(6,false, true);
		try {
			
			String[] params = {code,"5"};//数组具体的元素个数和模板中变量个数必须一致，例如事例中templateId:5678对应一个变量，参数数组中元素个数也必须是一个
			SmsSingleSender ssender = new SmsSingleSender(appid, appkey);
			SmsSingleSenderResult result = ssender.sendWithParam("86", phoneNumbers[0],
					templateId, params, smsSign, "", "");  // 签名参数未提供或者为空时，会使用默认签名发送短信
			System.out.println(result);
			return code;
		} catch (HTTPException e) {
			// HTTP响应码错误
			e.printStackTrace();
		} catch (JSONException e) {
			// json解析错误
			e.printStackTrace();
		} catch (IOException e) {
			// 网络IO错误
			e.printStackTrace();
		}
		return code;
	}
}

