package org.test.entity;

/**
 * 返回
 * @author Administrator
 *
 */
public class Result {
	/** 返回码 */
	private String respCode;
	/** 返回信息 */
	private String respMsg;
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
	
	@Override
	public String toString() {
		return "Result [respCode=" + respCode + ", respMsg=" + respMsg + "]";
	}
	
}
