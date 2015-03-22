<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
	<script type="text/javascript" src="js/jquery-2.1.3.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<style type="text/css">
	html,body{
		width: 100%;
		height: 100%;
		background: url(http://s.cn.bing.net/az/hprichbg/rb/TheLuxorHotel_ZH-CN12121725266_1920x1080.jpg) no-repeat;
		background-size:100%;
	}
	h3{
		margin-top: 500px;
		font-size: 40px;
		font-style: italic;
		color: yellow;
	}
	.rela{
	text-align: center; 
	
	position:absolute;
	left: 30%;top: -30%;
	}
	p{
		color: #c7c7e2;
		font-size: 20px;
		font-style: oblique;
	}
	</style>
    
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
   <audio src="1.mp3" loop="loop" audio autoplay="autoplay">
</audio>
<div>
<nav class="navbar navbar-inverse">
      <div class="container-fluid">
        <div class="navbar-header">


          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-6">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          <tton>
          <a class="navbar-brand" href="#">Brand</a>
        </div>
      	
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-6">
          <ul class="nav navbar-nav">
            <li class="active">卧龙山庄</li>
            <li><a href="person.html">个人资料</a></li>
            <li><a href="news.html">经典美文</a></li>
          </ul>
        </div>

		</div>
		</nav>

	<div  class="rela">
	<h3 height="10px" align="center"><a href="news.jsp">卧龙山庄</a></h3>
	
	<p>這個世上只有兩樣東西永遠都不會衰老，一個是青春，一個是對知識的渴求</p>
	<p>	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ---- 熱愛生活，熱愛編碼，為了夢想奔跑的程序員</p>
      </div>

    
	<br />


</div>

   
  </body>
</html>
