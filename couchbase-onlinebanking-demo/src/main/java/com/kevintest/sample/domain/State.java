package com.kevintest.sample.domain;

import java.io.Serializable;

import org.springframework.data.couchbase.core.mapping.Document;
import org.springframework.data.couchbase.core.mapping.Field;

@Document
public class State implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1828485365521417776L;
	
	@Field
	private String step = "";
	@Field
	private String payerID = "";
	@Field
	private String payerName = "";
	@Field
	private String payeeID = "";
	@Field
	private String payeeName = "";
	@Field
	private String transferAmt = "";
	@Field
	private String userpwd = "";
	@Field
	private String usermobile = "";

	public State(String step, String payerID, String payerName,
			String payeeID, String payeeName, String transferAmt,
			String userpwd, String usermobile) {
		this.step = step;
		this.payerID = payerID;
		this.payerName = payerName;
		this.payeeID = payeeID;
		this.payeeName = payeeName;
		this.transferAmt = transferAmt;
		this.userpwd = userpwd;
		this.usermobile = usermobile;
	}

	public State(){
		
	}
	
	@Override
	public String toString() {
		return "state{" + " step=" + "'" + this.step + "'" + ","
				+ " payerID=" + "'" + this.payerID + "'" + ","
				+ " payerName=" + "'" + this.payerName + "'" + ","
				+ " payeeID=" + "'" + this.payeeID + "'" + ","
				+ " payeeName=" + "'" + this.payeeName + "'" + ","
				+ " transferAmt=" + "'" + this.transferAmt + "'" + ","
				+ " userpwd=" + "'" + this.userpwd + "'" + ","
				+ " usermobile=" + "'" + this.usermobile + "'" + "}";
	}

	public String getStep() {
		return step;
	}

	public void setStep(String step) {
		this.step = step;
	}

	public String getPayerID() {
		return payerID;
	}

	public void setPayerID(String payerID) {
		this.payerID = payerID;
	}

	public String getPayerName() {
		return payerName;
	}

	public void setPayerName(String payerName) {
		this.payerName = payerName;
	}

	public String getPayeeID() {
		return payeeID;
	}

	public void setPayeeID(String payeeID) {
		this.payeeID = payeeID;
	}

	public String getPayeeName() {
		return payeeName;
	}

	public void setPayeeName(String payeeName) {
		this.payeeName = payeeName;
	}

	public String getTransferAmt() {
		return transferAmt;
	}

	public void setTransferAmt(String transferAmt) {
		this.transferAmt = transferAmt;
	}

	public String getUserpwd() {
		return userpwd;
	}

	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}

	public String getUsermobile() {
		return usermobile;
	}

	public void setUsermobile(String usermobile) {
		this.usermobile = usermobile;
	}

	
	
}
