<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <meta charset="utf-8">
	<title></title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
	<script type="text/javascript" src="js/jquery-2.1.3.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<style type="text/css">
	.ad{
		width: 1000px;
		height: 500px;
		margin-left: 90px;
	}
	.tj{
		float: right;
	}
	</style>

  </head>
  
  <body>
  	<nav class="navbar navbar-default">
 	 	<div class="container">
    		<ul>
    			<li>文章管理</li>
    		</ul>
  		</div>
	</nav>
	<div class="ad">
	<div class="panel panel-default">
  <!-- Default panel contents -->
  <%tool.book book = new tool.book() ; %>
 	<div class="panel-heading">文章列表<div class="tj"><button type="button" onclick="window.location.href='/Admin/AddArticle'" data-target=".adduser" class="btn btn-default btn-sm add"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>添加文章  </button></div></div> 
	 <table class="table">
	 	<thead>
  		<tr>
  			<td>序号</td>
  			<td>文章名</td>
  			<td>发布人</td>
  		</tr>
  		</thead>
  		<tbody>
  		<tr>
  			<td><%book.getId(); %></td>
  			<td><%book.getTitle(); %></td>
  			<td>王博</td>
  		</tr>
  		</tbody>
  	</table>
</div>
</div>
  </body>
</html>
