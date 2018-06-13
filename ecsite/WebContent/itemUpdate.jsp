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

  <title>ItemUpdate画面</title>

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

    table td a{
      display:block;
      width:100%;
      height:100%;
    }

    table td a:hover{
      background-color:yellow;
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
      <p>商品一覧</p>
    </div>
    <div>


      <table border="1">
        <tr>
          <th>id</th>
          <th>商品名</th>
          <th>値段</th>
          <th>在庫</th>
          <th>追加日時</th>
          <th>更新日時</th>

        </tr>

        <s:iterator value="itemList">

        <tr>

          <td><s:property value="id"/></td>
          <td>
          <a href='<s:url action="ItemUpdateFormAction">
          <s:param name="dto.itemName"><s:property value="itemName"/></s:param>
          <s:param name="dto.itemPrice"><s:property value="itemPrice"/></s:param>
          <s:param name="dto.itemStock"><s:property value="itemStock"/></s:param>
          </s:url>'>
          <s:property value="itemName"/>
          </a>
          </td>
          <td><s:property value="itemPrice"/></td>
          <td><s:property value="itemStock"/></td>
          <td><s:property value="insertDate"/></td>
          <td><s:property value="updateDate"/></td>

        </tr>

        </s:iterator>

      </table>




    <div id="text-right">

      <p><a href='<s:url action="GoAdHomeAction"/>'>戻る</a></p>
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