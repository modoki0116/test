package com.internousdev.verification.action;

import java.util.Map;

import org.apache.struts2.components.File;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class FormAction extends ActionSupport implements SessionAware{

	private File myfile;
	public Map<String,Object> session;

	public String execute(){
		return SUCCESS;
	}

	public File getMyfile(){
		return myfile;
	}
	public void setMyfile(File myfile){
		this.myfile = myfile;
	}

	public void setSession(Map<String,Object> session){
		this.session=session;
	}

}
