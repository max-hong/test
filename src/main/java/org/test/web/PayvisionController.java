package org.test.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.test.utils.Tools;

@Controller
public class PayvisionController {

	private static Log logger = LogFactory.getLog(PayvisionController.class);

	/**
	 * 初始化页面
	 * 
	 * @param model
	 * @return
	 */

	@RequestMapping(value = "/example", method = RequestMethod.GET)
	public String page() {
		return "3d/example";
	}

	/**
	 * 实现解析xml字符串 返回map
	 * 
	 * @return
	 */
	public static void parseXML(String xml, HashMap<String, String> map) {
		try {
			// System.out.println("===="+xml);
			Document doc = DocumentHelper.parseText(xml);
			Element root = doc.getRootElement();
			Iterator iter = root.elementIterator();
			if (!iter.hasNext()) {
				System.out.println("name:" + root.getName() + " text:"
						+ root.getText());
				map.put(root.getName(), root.getText());
			}
			while (iter.hasNext()) {
				Element element = (Element) iter.next();
				parseXML(element.asXML(), map);
			}

		} catch (DocumentException e) {
			e.printStackTrace();
		}
		return;
	}

	public static void main(String[] args) throws ClientProtocolException, IOException {
		DefaultHttpClient httpClient = null;
		httpClient = Tools.getHttpClientTLSv12();
		String data = "{" + "\"memberId\": \"25321\","
				+ "\"memberGuid\": \"ab7dab91-23cb-41b3-b01f-19fed68a3851\","
				+ "\"countryId\": \"528\"," 
				+ "\"amount\": \"1.00\","
				+ "\"currencyId\": \"840\","
				+ "\"trackingMemberCode\": \"order# 1\","
				+ "\"cardNumber\": \"5200 0000 0000 0007\","
				+ "\"cardHolder\": \"test\"," 
				+ "\"cardExpiryMonth\": \"01\","
				+ "\"cardExpiryYear\": \"2022\"," 
				+ "\"cardCvv\": \"356\","
				+ "\"merchantAccountType\": \"1\"," 
				+ "\"dbaName\": \"test\"," 
				+ "\"dbaCity\": \"" + "Limassol" + "\"," 
				+ "\"additionalInfo\":{" + "}" + "}";
		HttpPost post = null;
		post = new HttpPost(
				"https://testprocessor.payvisionservices.com/GatewayV2/BasicOperationsService.svc/json/Payment");
		StringEntity stringEntity = new StringEntity(data);
		post.setEntity(stringEntity);
		post.setHeader("Content-Type", "application/json");
		// post.setHeader("Content-Length",data.getBytes().length+"");
		post.setHeader("charset", "utf-8");
		HttpResponse response = httpClient.execute(post);
		String xml = EntityUtils.toString(response.getEntity());
		
		HashMap<String, String> map=new HashMap<>();
		logger.info("支付结果："+xml);
	}
}
