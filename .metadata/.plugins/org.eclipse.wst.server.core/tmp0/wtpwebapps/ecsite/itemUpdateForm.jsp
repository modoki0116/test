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

  <title>ItemUpdateForm画面</title>

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

  </style>

</head>
<body>

  <div id="header">
    <div id="pr">
    </div>
  </div>

  <div id="main">
    <div id="top">
      <p>商品情報変更</p>
    </div>
    <div>
      <s:if test="errorMessage != null">
        <s:property value="errorMessage" escape="false"/>
      </s:if>
        <table>
        <s:form action="ItemUpdateConfirmAction">
          <tr>
            <td>
              <label>商品名:</label>
            </td>
            <td>
              <input type="text" name="itemName" value="<s:property value='session.item_name'/>"/>
            </td>
          </tr>
          <tr>
            <td>
              <label>値段:</label>
            </td>
            <td>
              <input type="text" name="itemPrice" value="<s:property value='session.item_price'/>"/>
            </td>
          </tr>
          <tr>
            <td>
              <label>在庫数:</label>
            </td>
            <td>
              <input type="text" name="itemStock" value="<s:property value='session.item_stock'/>"/>
            </td>
          </tr>
          <s:submit value="登録"/>
        </s:form>
        </table>



      <div>
        <a href='<s:url action="ItemUpdateAction"/>'>戻る</a><br>
        <a href='<s:url action="GoHomeAction"/>'>Home</a>
      </div>
    </div>
  </div>

  <div id="footer">
    <div id="pr">
    </div>"
  </div>

</body>
</html>