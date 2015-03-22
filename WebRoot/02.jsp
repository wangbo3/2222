<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP '02.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
	<script type="text/javascript" src="js/jquery-2.1.3.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
  
   <style type="text/css">
		html,body{
			width: 100%;
			height: 100%;
			background: url(img/ps.jpg) no-repeat;
			background-size: 100%;
		}
		div.a{
			margin-top: 50px;
			width: 200px;
			height: 200px;
			padding: 30px;
		}
		div.a ul li{
			margin-top: 10px;
		}
	</style>

  </head>
  
  <body>
  <header class="navbar navbar-inverse navbar-fixed-top bs-docs-nav" role="banner">
				<title>龍潭齋&nbsp;&nbsp;☆&nbsp;&nbsp;博客简介</title>
				<div class="container">
					<nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
						<ul class="nav navbar-nav">
							<li class="active">
							 <li class="active">卧龙山庄</li>
           					 <li><a href="person.html">个人资料</a></li>
           					 <li><a href="news.html"></a>经典美文</li>
        				  </ul>
						<ul class="nav navbar-nav navbar-right">					
							<li>
							<a href="login.jsp">登录</a>
							</li>
						</ul>
					</nav>
				</div>
			</header>
		</div>
	<body style="background: url(images/17183518883b16614c2fe8.jpg) fixed no-repeat; background-size: cover;">
	<link href='../resource/bootstrap/css/nav.css'  rel="stylesheet">
	<div class="container_wrapper">
	<div class="container bs-docs-container" style="margin-bottom:80px;">
				<div class="row">
						<script src="../resource/stickUp-master/stickUp.min.js"></script>
			<style>
				.isStuck
				{
					width:250px;
				}
			</style>
			<!-- <div class="navbar-wrapper">
				<div class="col-md-3" id="stuck_div">
					
				</div>
			</div> -->
			<div class="a" >
						<ul>
							<li>
							<a href="#">回到顶端</a>
							</li>
														<li>
							<a href="#a">博客之路</a>
							</li>
														<li>
							<a href="#b">博主简介</a>
							</li>
														<li>
							<a href="#c">版权声明</a>
							</li>
							</ul>
					</div>
   
  </body>
</html>
