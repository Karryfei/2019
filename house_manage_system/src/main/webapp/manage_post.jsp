<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Administer Manage System</title>
<script src="../js/jquery-2.2.4.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/index.css" />

<link rel="stylesheet"
	href="//cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="//cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script
	src="//cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="layui/layui.all.js"></script>
</head>
<body>
	
	<%-- <nav class="navbar navbar-default" role="navigation">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span><span
					class="icon-bar"></span><span class="icon-bar"></span><span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="../houseInfo.jsp" target="houseInfo">首页</a>
		</div>
	
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li><h4>${sessionScope.user.name},欢迎登录！</h4></li>
				<li><a href="../user/select.do">用户列表</a></li>
				<li><a href="../house/selectAll.do">房源列表</a></li>
				<li><a href="../post.html">官方发布</a></li>
				<li><a href="../user/outlogin.do">退出</a></li>
			</ul>
		</div>
	</nav> --%>
	
	<c:if test="${houseSize==0}">
		
		<div
			style="background-image: url(../images/pass.png); height: 80px; width: 80px; background-size: cover;">
		</div>
		<h1>还没有发布房源，赶快去寻找房源发布吧！</h1>

	</c:if>
	
	<br><br>
	<ul class="ul" style="list-style: none;">
		<c:forEach items="${house}" var="house" varStatus="status">
			<li>
				<div style="display: inline-block; width: 23%; height: 150px;">
					<img style="height: 150px; width: 230px; float: left" src="../images/${house.img}">
				</div>
				<div style="display: inline-block; width: 76%;">
					<h2 style="margin-bottom: 20px;">${house.topic}</h2>
					<p style="float: right; color: red; font-size: 20px;">${house.price/10000}万元</p>
					<b style='display: block; margin-bottom: 20px;'>类型：${house.typeName}</b>
					<span>${house.position}</span> <span>${house.area}平方米</span> <span>楼龄${house.houseage}年</span>
					<br>
					
					<div style="height: 20px;"></div>
					<span>${house.creattime}发布<span> 
					
					<a style="float: right; display: inline-block; height: 23px;width: 80px;background-color: rgb(255,85,46);margin-left: 5px;text-align: center;color: black;text-decoration:none;"  href="deleteOrder.do?houseid=${house.id}&&userid=${house.userid}"><strong>点击删除</strong></a>
					<a style="float: right;" target="_blank" href="../house/detail.do?id=${house.id}">查看详情</a>
				</div>
				<hr>
			</li>
		</c:forEach>
	</ul>
	
</body>
</html>