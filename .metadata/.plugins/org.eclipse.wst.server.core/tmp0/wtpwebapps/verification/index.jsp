<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index</title>
</head>
<body>


<s:form action="FormAction">
  <s:hidden name="value" value="a"/>
  <s:hidden name="value" value="b"/>
  <s:hidden name="value" value="c"/>
  <s:hidden name="value" value="d"/>
  <s:submit value="送信"/>
</s:form>


</body>
</html>