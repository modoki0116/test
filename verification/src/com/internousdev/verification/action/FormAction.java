package com.internousdev.verification.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class FormAction extends ActionSupport implements SessionAware{

	private String num1;
	private String num2;
	private String math;
	public Map<String,Object> session;

	public String execute(){
		int number1=Integer.parseInt(num1);
		int number2=Integer.parseInt(num2);
		int result=0;

		switch(math){
		  case "+": result=number1+number2;
		            break;
		  case "-": result=number1-number2;
		            break;
		  case "*": result=number1*number2;
		            break;
		  case "/": result=number1/number2;
		            break;
		}
		session.put("result",result);

		return SUCCESS;
	}

	public String getNum1(){
		return num1;
	}
	public void setNum1(String num1){
		this.num1=num1;
	}

	public String getNum2(){
		return num2;
	}
	public void setNum2(String num2){
		this.num2=num2;
	}

	public String getMath(){
		return math;
	}
	public void setMath(String math){
		this.math=math;
	}

	public void setSession(Map<String,Object> session){
		this.session=session;
	}

}
