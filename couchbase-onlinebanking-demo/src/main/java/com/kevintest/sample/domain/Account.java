package com.kevintest.sample.domain;

import java.io.Serializable;

import org.springframework.data.annotation.Id;
import org.springframework.data.couchbase.core.mapping.Document;
import org.springframework.data.couchbase.core.mapping.Field;

@Document
public class Account implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -2671674157300692543L;
	
	@Id
	private String Id;
	
	
	@Field
	private String username;
	@Field
	private String password;
	@Field
	private String lastview;
	@Field
	private State state;
	
	
	@Override
	public String toString() {
		
		final StringBuilder sb = new StringBuilder("Account{");
		
		sb.append("username='").append(username).append('\'');
		sb.append(", password='").append(password).append('\'');
		sb.append(", lastview='").append(lastview).append('\'');
		sb.append(", state='").append(state).append('\'');
		sb.append('}');
		
		
		return sb.toString();
//		return "{" + " \"username\": " + "\"" + this.username + "\"" + ","
//				+ " \"password\": " + "\"" + this.password + "\"" + ","
//				+ " \"lastview\": " + "\"" + this.lastview + "\"" + ","
//				+ " \"state\": " + this.state.toString() 
//				+ "}";
	}
	
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLastview() {
		return lastview;
	}
	public void setLastview(String lastview) {
		this.lastview = lastview;
	}
	public State getState() {
		return state;
	}
	public void setState(State state) {
		this.state = state;
	}
	public String getId() {
		return Id;
	}

	public void setId(String id) {
		Id = id;
	}
	

}
