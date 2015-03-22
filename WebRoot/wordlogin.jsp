<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'wordlogin.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  
  	<form action="/boke/wordcl" method="post">
		姓名：<input type="text" name="name"/></br>
		性别：<input type="radio" name="sex" value="1">男
			  <input type="radio" name="sex" value="0">女</br>
		年龄：<input type="text"  name="age"></br>
		<textarea rows="8" cols="20" name="word">请输入留言：</textarea></br>
		<input type="submit" value="提交">
	</form>
  </body>
</html>
