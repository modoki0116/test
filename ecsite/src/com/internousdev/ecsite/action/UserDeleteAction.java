package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.ecsite.dao.UserDeleteDAO;
import com.internousdev.ecsite.dto.UserDeleteDTO;
import com.opensymphony.xwork2.ActionSupport;

public class UserDeleteAction extends ActionSupport{


	private ArrayList<UserDeleteDTO> userList=new ArrayList<UserDeleteDTO>();
	private UserDeleteDAO userDAO=new UserDeleteDAO();


	public String execute() throws SQLException{


		userList=userDAO.getUserInfo();
		return SUCCESS;

	}


	public void delete() throws SQLException{

		String[] del;
		int i=0;
		userDAO.userDelete(del[i]);
	}



	public ArrayList<UserDeleteDTO> getUserList(){
		return userList;
	}
	public void setUserList(ArrayList<UserDeleteDTO> userList){
		this.userList=userList;
	}



}
