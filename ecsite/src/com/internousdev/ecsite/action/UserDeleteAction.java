package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.UserDeleteDAO;
import com.internousdev.ecsite.dto.UserDeleteDTO;
import com.opensymphony.xwork2.ActionSupport;

public class UserDeleteAction extends ActionSupport implements SessionAware{

	public Map<String,Object> session;
	private ArrayList<UserDeleteDTO> userList=new ArrayList<UserDeleteDTO>();
	private UserDeleteDAO userDAO=new UserDeleteDAO();


	public String execute() throws SQLException{

		userList=userDAO.getUserInfo();
		return SUCCESS;

	}


	public void delete() throws SQLException{
		String id=session.get("id").toString();
		userDAO.userDelete(id);
	}

	@Override
	public void setSession(Map<String,Object> session){
		this.session=session;
	}

	public ArrayList<UserDeleteDTO> getUserList(){
		return userList;
	}
	public void setUserList(ArrayList<UserDeleteDTO> userList){
		this.userList=userList;
	}



}
