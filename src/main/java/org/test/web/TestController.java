package org.test.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.test.entity.PaymentInfo;
import org.test.entity.Result;

/**
 * 支付接口 
 * @author Administrator
 * 
 */
@Controller
public class TestController {
	private Logger logger = LoggerFactory.getLogger(this.getClass());

	/**
	 * 初始化页面
	 * 
	 * @param model
	 * @return
	 */
	/*@RequestMapping(value = "/page", method = RequestMethod.GET)
	public String page() {
		return "page";
	}*/

	/**
	 * 支付页面
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/topay", method = RequestMethod.POST)
	public String index(PaymentInfo paymentInfo, Model model) {
		// 初始化数据
		// Payment Information
		model.addAttribute("paymentInfo", paymentInfo);
		return "testPay";
	}

	/**
	 * 支付
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/payment", method = RequestMethod.POST)
	public String payment(PaymentInfo paymentInfo,RedirectAttributes attr) {
		Result result = new Result();
		result.setRespCode("01");
		result.setRespMsg("Do not honor");
		logger.info(result.toString());
		attr.addAttribute("respCode", result.getRespCode());
		attr.addAttribute("respMsg", result.getRespMsg());
		return  "redirect:"+paymentInfo.getReturnURL();
	}
	
	/*@RequestMapping(value = "/page1", method = RequestMethod.GET)
	public String page1(Result result,Model model) {
		model.addAttribute("result", result);
		return "page";
	}*/
}
