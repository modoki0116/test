package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.ecsite.dao.UserDeleteDAO;
import com.internousdev.ecsite.dto.UserDeleteDTO;
import com.opensymphony.xwork2.ActionSupport;

public class UserDeleteAction extends ActionSupport{

	private List<String> deleteList=new ArrayList<String>();
	private ArrayList<UserDeleteDTO> userList=new ArrayList<UserDeleteDTO>();
	private UserDeleteDAO userDAO=new UserDeleteDAO();


	public String execute() throws SQLException{

		userList=userDAO.getUserInfo();
		return SUCCESS;
		

	}

	public void delete() throws SQLException{

		for(int i=0;i<deleteList.size()-1;i++){
			userDAO.userDelete(deleteList.get(i));
		}

		deleteList=null;
	}


	public ArrayList<UserDeleteDTO> getUserList(){
		return userList;
	}
	public void setUserList(ArrayList<UserDeleteDTO> userList){
		this.userList=userList;
	}

	public List<String> getDeleteList(){
		return deleteList;
	}
	public void setDeleteList(List<String> deleteList){
		this.deleteList=deleteList;
	}


}
