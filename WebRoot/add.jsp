<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
	<script type="text/javascript" src="js/jquery-2.1.3.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
    <base href="<%=basePath%>">
    
    <title></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	.in{
		height: 500px;
	}
	#wang{
		width:800px;
		height:300px;
	}
	</style>

  </head>
  
  <body>
    <nav class="navbar navbar-default navbar-fixed-top">
  	<div class="container">
    	<div class="con">
		<ul>
    		<li>文章管理</li>
    		</ul>
    	</div>
  	</div>
	</nav>
	<div>
		<div class="panel panel-default">
  			<div class="panel-heading">Panel heading without title</div>
  				<div class="panel-body">
   					 Panel content
  				</div>
		</div>
	</div>
	<form action="/boke/bookcl" method="post">
	<div class="input-group input-group-lg">
  		<span class="input-group-addon" id="sizing-addon1">请输入标题</span>
  		<input type="text" class="form-control" name="title" placeholder="title" aria-describedby="sizing-addon1">
	</div>
	<div class="panel panel-default">
  		<div class="panel-body">
    		<textarea id = "wang" name="body">请输入内容</textarea>
  		</div>
  	</div>
  		<input type="submit" value="提交">
  	</form>
	</div>
  </body>
</html>
