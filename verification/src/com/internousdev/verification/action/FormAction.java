package com.internousdev.verification.action;

import com.opensymphony.xwork2.ActionSupport;

public class FormAction extends ActionSupport{

	private String value;

	public String execute(){

		String[] valueList=value.split(", ",0);

		System.out.println(value);
		System.out.println(valueList[1]);



		return SUCCESS;
	}

	public String getValue(){
		return value;
	}
	public void setValue(String value){
		this.value=value;
	}

}