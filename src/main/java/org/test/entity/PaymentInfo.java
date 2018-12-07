package org.test.entity;

/*
 * 支付信息
 * */
public class PaymentInfo {
	private String amount;// 支付金额
	private String currency;// 支付币种
	private String orderNo;// 商户流水号
	private String website;// 网址
	private String grEmail;// 商户流水号

	private String cardNumber;// 卡号
	private String expMonth;// 卡月
	private String expYear;// 卡年
	private String cvv;
	private String firstName;//
	private String lastName;//
	private String cardAddress;//
	private String cardCity;//
	private String cardState;//
	private String cardCountry;//
	private String cardZipCode;//
	private String cardFullPhone;//
	private String returnURL;
	
	public String getReturnURL() {
		return returnURL;
	}

	public void setReturnURL(String returnURL) {
		this.returnURL = returnURL;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public String getCurrency() {
		return currency;
	}

	public void setCurrency(String currency) {
		this.currency = currency;
	}

	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getGrEmail() {
		return grEmail;
	}

	public void setGrEmail(String grEmail) {
		this.grEmail = grEmail;
	}

	public String getCardNumber() {
		return cardNumber;
	}

	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}

	public String getExpMonth() {
		return expMonth;
	}

	public void setExpMonth(String expMonth) {
		this.expMonth = expMonth;
	}

	public String getExpYear() {
		return expYear;
	}

	public void setExpYear(String expYear) {
		this.expYear = expYear;
	}

	public String getCvv() {
		return cvv;
	}

	public void setCvv(String cvv) {
		this.cvv = cvv;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getCardAddress() {
		return cardAddress;
	}

	public void setCardAddress(String cardAddress) {
		this.cardAddress = cardAddress;
	}

	public String getCardCity() {
		return cardCity;
	}

	public void setCardCity(String cardCity) {
		this.cardCity = cardCity;
	}

	public String getCardState() {
		return cardState;
	}

	public void setCardState(String cardState) {
		this.cardState = cardState;
	}

	public String getCardCountry() {
		return cardCountry;
	}

	public void setCardCountry(String cardCountry) {
		this.cardCountry = cardCountry;
	}

	public String getCardZipCode() {
		return cardZipCode;
	}

	public void setCardZipCode(String cardZipCode) {
		this.cardZipCode = cardZipCode;
	}

	public String getCardFullPhone() {
		return cardFullPhone;
	}

	public void setCardFullPhone(String cardFullPhone) {
		this.cardFullPhone = cardFullPhone;
	}

}