<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta http-equiv="Content-Style-Type" content="text/css"/>
  <meta http-equiv="Content-Script-Type" content="text/javascript"/>
  <meta http-equiv="imagetoolbar" content="no"/>
  <meta name="description" content=""/>
  <meta name="keywords" content=""/>

  <title>Home画面</title>

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
    #text-center{
      display:inline-block;
      text-align:center;
    }

  /* ========CLASS LAYOUT======== */

    .url-box-buy{
      float:left;
      text-align:center;
      margin:20px;
    }

    .url-box-admin{
      float:left;
      text-align:center;
      margin:20px;
    }

    .image-home{
      width:250px;
      height:250px;
      transition-duration:1s;
    }

    .image-home:hover{
      width:300px;
      height:300px;
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
        <p>Home</p>
      </div>
      <div id="text-center">
        <div class="url-box-buy">
          <h1>商品購入</h1><br>
          <a href='<s:url action="HomeAction"/>'><img src="./images/syouhin_tana.png" class="image-home"/></a>
        </div>
        <div class="url-box-admin">
          <h1>Administrator</h1><br>
          <a href='<s:url action="AdHomeAction"/>'><img src="./images/book_open_yoko.png" class="image-home"/></a>
        </div>
        <s:if test="#session.id !=null">
          <p>ログアウトする場合は
           <a href='<s:url action="LogoutAction"/>'>こちら</a></p>
        </s:if>
      </div>
    </div>

    <div id="footer">
      <div id="pr">
      </div>
    </div>

  </body>
  </html>