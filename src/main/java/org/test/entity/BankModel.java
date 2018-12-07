package org.test.entity;

import java.util.HashMap;
import java.util.Map;

public class BankModel {
	/** 交易编号 */
	private String tradeNo;
	/** 返回码 */
	private String respCode;
	/** 返回信息 */
	private String respMsg;
	/** 订单号 */
	private String orderNo;
	/** 返回货币码 */
	private String currencyCode;
	/** 返回交易金额 */
	private String sourceAmount;
	/** 商户号 */
	private String merNo;
	/** 成功信息 */
	private String succeed;
	/** 银行交易号 */
	private String bankOrder;
	/**  */
	private String viladateUrl;
	/**  */
	private String validateString;
	/** 令牌或加密码 */
	private String tokenId;
	/** 交易金额 */
	private String auNo;
	/** 通道编号 */
	private String terNo;
	/** 交易时间   年月日 */
	private String bankTradeDate;
	/** 交易时间 毫秒值*/
	private String bankTradeTime;
	/**  */
	private String batchNo;
	/**  */
	private String posNo;
	/**  */
	private String invoidNo;
	private String refNo;// 银行参考号
	private String type;
	private String acquirer;
	
	
	private String skipToPayURL;
	
	private String validateURL;
	
	
	private HashMap<String, String> request3DMap;
	
	
	
	
	
	
	
	
	public HashMap<String, String> getRequest3DMap() {
		return request3DMap;
	}

	public void setRequest3DMap(HashMap<String, String> request3dMap) {
		request3DMap = request3dMap;
	}

	public String getValidateURL() {
		return validateURL;
	}

	public void setValidateURL(String validateURL) {
		this.validateURL = validateURL;
	}

	public String getSkipToPayURL() {
		return skipToPayURL;
	}

	public void setSkipToPayURL(String skipToPayURL) {
		this.skipToPayURL = skipToPayURL;
	}

	public String getAcquirer() {
		return acquirer;
	}

	public void setAcquirer(String acquirer) {
		this.acquirer = acquirer;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getBatchNo() {
		return batchNo;
	}

	public void setBatchNo(String batchNo) {
		this.batchNo = batchNo;
	}

	public String getPosNo() {
		return posNo;
	}

	public void setPosNo(String posNo) {
		this.posNo = posNo;
	}

	public String getInvoidNo() {
		return invoidNo;
	}

	public void setInvoidNo(String invoidNo) {
		this.invoidNo = invoidNo;
	}

	
	public String getAuNo() {
		return auNo;
	}

	public void setAuNo(String auNo) {
		this.auNo = auNo;
	}

	public String getTerNo() {
		return terNo;
	}

	public void setTerNo(String terNo) {
		this.terNo = terNo;
	}

	public String getBankTradeTime() {
		return bankTradeTime;
	}

	public void setBankTradeTime(String bankTradeTime) {
		this.bankTradeTime = bankTradeTime;
	}
	
	public String getBankTradeDate() {
		return bankTradeDate;
	}
	
	public void setBankTradeDate(String bankTradeDate) {
		this.bankTradeDate = bankTradeDate;
	}

	public String getTokenId() {
		return tokenId;
	}

	public void setTokenId(String tokenId) {
		this.tokenId = tokenId;
	}

	public String getValidateString() {
		return validateString;
	}

	public void setValidateString(String validateString) {
		this.validateString = validateString;
	}

	public String getViladateUrl() {
		return viladateUrl;
	}

	public void setViladateUrl(String viladateUrl) {
		this.viladateUrl = viladateUrl;
	}

	public String getBankOrder() {
		return bankOrder;
	}

	public void setBankOrder(String bankOrder) {
		this.bankOrder = bankOrder;
	}

	private Map<String, String> expMap;

	public String getSucceed() {
		return succeed;
	}

	public void setSucceed(String succeed) {
		this.succeed = succeed;
	}

	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}

	public String getCurrencyCode() {
		return currencyCode;
	}

	public void setCurrencyCode(String currencyCode) {
		this.currencyCode = currencyCode;
	}

	public String getSourceAmount() {
		return sourceAmount;
	}

	public void setSourceAmount(String sourceAmount) {
		this.sourceAmount = sourceAmount;
	}

	public String getMerNo() {
		return merNo;
	}

	public void setMerNo(String merNo) {
		this.merNo = merNo;
	}

	public Map<String, String> getExpMap() {
		return expMap;
	}

	public void setExpMap(Map<String, String> expMap) {
		this.expMap = expMap;
	}

	public String getTradeNo() {
		return tradeNo;
	}

	public void setTradeNo(String tradeNo) {
		this.tradeNo = tradeNo;
	}

	public String getRespCode() {
		return respCode;
	}

	public void setRespCode(String respCode) {
		this.respCode = respCode;
	}

	public String getRespMsg() {
		return respMsg;
	}

	public void setRespMsg(String respMsg) {
		this.respMsg = respMsg;
	}

	public String getRefNo() {
		return refNo;
	}

	public void setRefNo(String refNo) {
		this.refNo = refNo;
	}

}
