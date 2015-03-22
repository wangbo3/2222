<%@page import="java.security.AllPermission"%>
<%@page import="tool.word"%>
<%@page import="tool.book"%>
<%@page import="javax.tools.Tool"%>
<%@page import="service.bookservice"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'news.jsp' starting page</title>
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

  </head>
  
  <body>
  <%
  	bookservice bookservice =new bookservice();
      ArrayList<book> al=bookservice.getbook();
  %>
 
    <div>
		<nav class="navbar navbar-inverse navbar-fixed-top">
      <!-- We use the fluid option here to avoid overriding the fixed width of a normal container within the narrow content columns. -->
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
          <ul class="nav navbar-nav navbar-right">					
							<li>
							<a href="javascript:void(0)" data-toggle="modal" data-target="#login_modal">登录</a>
							</li>
							<li>
							<a href="wordlogin.jsp">留言</a>
							</li>
						</ul>
        </div><!-- /.navbar-collapse -->
        </div>
         </nav>
    <div >
	<br />
	<!---m>面板<!-->
	<style type="text/css">
		div h3{
			color: red;
		}
	div.panel h3.panel-title{
			color: green；
		}
		div.panel{
			width: 800px;
			margin-top: 0px;
		}
		div.panel-heading{
			margin-top: 0px;
			color: red;
		}
		div.boring{
			position: relative;left: 900px;width: 100%;
			font-size: 20px;
		}

		div.row{
			position: relative;left: 800px ;width: 100%;
			margin-top: 0px;
			height: 0px;
		}
	</style>
	<div class="panel panel-default">
	<div class="boring">
  		<h1>Hello, world!</h1>
  		<p>欢迎来到卧龙山庄</p>
  		<p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
	</div>
 		 <div class="panel-heading"><h3>美文鉴赏</h3>
 		 </div>
 		 <div class="panel-body">
   		 	<h2>励志文章</h2>
   		 	<p>
  
   		 	<%
     		 		for(book book:al){
     		 	     		 	   		 		out.println(book.getTitle());
     		 	     		 	   		 	}
     		 	%>
   		 </p>
  		</div>
	</div>
	<div class="panel panel-default">
	<div class="row">
  <div class="col-xs-6 col-md-3">
    <a href="#" class="thumbnail">
     <img src="img/xs.jpg" alt="哈哈">
       <div class="caption">
      	<p>许嵩，中国内地流行乐男歌手，音乐创作人，1986年5月14日生于安徽合肥，毕业于安徽医科大学。</p>
      </div>
    </a>
 
  </div>
  <div class="col-xs-6 col-md-3">
    <a href="#" class="thumbnail">
   <img src="img/jj.jpg" height ="95%"  width="95%" alt="...">
      <div class="caption">
      	<p>《爵迹》是当代作家郭敬明创作的一部长篇小说。小说设定在一个虚构的奥汀大陆，讲述了一群被称作“王爵”、“使徒”的人为捍卫荣誉，争夺权力而发生的故事</p>
      </div>
    </a>
 
  </div>
  <div class="col-xs-6 col-md-3">
    <a href="#" class="thumbnail">
      <img src="img/zj2.jpg" height="75%" width = "75%" alt="...">
      <div class="caption">
    <p>张杰，1982年12月20日出生于四川成都，中国流行歌手。</p>
 	</div>
    </a>
 
  </div>
</div>
  <div class="panel-heading">
    <h3 >青春文学</h3>
  	</div>
	<div class="panel-body">
  			  Panel content
  			  <%
		for(book book:al){
		  			  book.getTitle();
		  			  }
	%>
  	</div>
</div>
<style type="text/css">
	div.img{
			width: 800px;
			height: 500px;
			background: url(img/boke.jpg) no-repeat;
			background-size: 100%;
		}
		.word{
			width: 400px;
			height: 100%;
			margin-left: 800px;
			border: 10px;
			border color: red;
	}
	div.boring{
		margin-left: 800px;
		float: right;
		margin-top: 0px;
		height: 50px;
	}
	
	}
</style>
	<div class="img">
		  <div class="word" align="center"><font color="#000000" size="5">留言板 </font> 
		   <table width="75%" border="1" cellspacing="1" cellpadding="1" align="center">
    <tr>
        <td width=12% align=center>姓名</td>
        <td width=12% align=center>性别</td>
        <td width=12% align=center>年龄</td>
        <td width=52% align=center>留言</td>
        <td width=6% align=center>修改</td>
        <td width=6% align=center>删除</td>
    </tr>
    
    <%
        	//  Word word = new Word();
                service.wordservice wordservice = new service.wordservice();
                  ArrayList<word> aal =wordservice.getword();
                 
                    //for(tool.word word1:aal){
                    for(int i=0;i<14;i++){
                    //out.print(word1.getName());
        %>
    	
    <tr>
    	<td width=12% align=center><% out.print(aal.get(i).getName())  ; %></td>
        <td width=12% align=center><%out.print(aal.get(i).isSex()); %></td>
        <td width=12% align=center><% out.print(aal.get(i).getAge());%></td>
        <td width=52% align=center><%out.print(aal.get(i).getWord());%></td>
        <td width=6% align=center>修改</td>
        <td width=6% align=center>删除</td>
        
    </tr>
 <%} %>
		   </div>
	</div>
	
  </body>
</html>
