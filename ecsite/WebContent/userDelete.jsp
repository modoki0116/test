<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="Content-Style-Type" content="text/css"/>
  <meta http-equiv="Content-Script-Type" content="text/javascript"/>
  <meta http-equiv="imagetoolbar" content="no"/>
  <meta name="description" content=""/>
  <meta name="keywords" content=""/>

  <title>UserDelete画面</title>

  <style type="text/css">
  /* ========TAG LAYOUT======== */

    body{
      margin:0;
      padding:0;
      line-height:1.6;
      letter-spacing:1px;
      font-family:Verbana,Helvetica,sans-serif;
      font-size:12px;
      color:#333;
      background:#fff;
    }

    table{
      text-align:center;
      margin:0 auto;
    }

  /* ========ID LAYOUT======== */

    #top{
      width:780px;
      margin:30px auto;
      border:1px solid #333;
    }

    #header{
      width:100%;
      height:80px;
      background-color:black;
    }

    #main{
      width:100%;
      height:500px;
      text-align:center;
    }

    #footer{
      width:100%;
      height:80px;
      background-color:black;
      clear:both;
    }

    #text-right{
      display:inline-block;
      text-align:right;
    }

  </style>

</head>
<body>

  <div id="header">
    <div id="pr">
    </div>
  </div>

  <div id="main">
    <div id="top">
      <p>ユーザー削除</p>
    </div>
    <div>

      <table border="1">
        <tr>
          <th>id</th>
          <th>login_id</th>
          <th>login_pass</th>
          <th>user_name</th>
          <th>insert_date</th>
          <th>updated_date</th>
        </tr>
        <s:iterator value="userList">
        <input type="hidden" name="check" value="0">
        <s:checkbox name="check" value="1">
        <tr>
          <td><s:property value="id"/></td>
          <td><s:property value="login_id"/></td>
          <td><s:property value="login_pass"/></td>
          <td><s:property value="user_name"/></td>
          <td><s:property value="insert_date"/></td>
          <td><s:property value="updated_date"/></td>
        </tr>
        </s:checkbox>
        </s:iterator>
      </table>


    <div id="text-right">
      <p><a href='<s:url action="GoHomeAction"/>'>Home</a></p>

    </div>
    </div>
  </div>

  <div id="footer">
    <div id="pr">
    </div>"
  </div>

</body>
</html>