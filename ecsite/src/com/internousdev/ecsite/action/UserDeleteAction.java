package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.ecsite.dao.UserDeleteDAO;
import com.internousdev.ecsite.dto.UserDeleteDTO;
import com.opensymphony.xwork2.ActionSupport;

public class UserDeleteAction extends ActionSupport{

	private ArrayList<UserDeleteDTO> userList=new ArrayList<UserDeleteDTO>();
	private UserDeleteDAO userDAO=new UserDeleteDAO();
	private String deleteFlg;

	public String execute() throws SQLException{

		if(deleteFlg==null){
			userList=userDAO.getUserInfo();
		}else if(deleteFlg.equals("1")){
			while()
		}
		return SUCCESS;

	}

}
