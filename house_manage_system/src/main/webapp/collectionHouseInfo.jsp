<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
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

	<nav class="navbar navbar-default" role="navigation">
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
				<li><a href="../collection/select.do">我的收藏</a></li>
				<li><a href="../house/selectByUserid.do">我的发布</a></li>
				<li><a href="../post.html">免费发布</a></li>
				<li><a href="../user/outlogin.do">退出</a></li>
			</ul>
		</div>
	</nav>
	
<div style="height: 90px; background-color: rgb(245, 245, 245);">

	<div style="height: 70px;">
			<img style="float: left; margin: 5px;" src="../images/house.png">
			<h1
				style="float: left; display: inline-block; margin: 0; color: #6756EA;">青大找房</h1>
			<h3
				style="float: left; display: inline-block; margin-top: 10px; margin-left: 30px; color: #6756EA;">我的收藏</h3>
	</div>
	
	<c:if test="${collectionSize==0}">
		
		<div
			style="background-image: url(../images/sorry.gif); height: 600px; width: 60%; background-size: cover;">
			<h1>您还没有收藏过房子，赶快去收藏吧！</h1>
		</div>

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
					
					<a style="float: right; display: inline-block; height: 23px;width: 80px;background-color: rgb(255,85,46);margin-left: 5px;text-align: center;color: black;text-decoration:none;"  href="delete.do?houseid=${house.id}"><strong>取消收藏</strong></a>
					<a style="float: right;" target="_blank" href="../house/detail.do?id=${house.id}">查看详情</a>
				</div>
				<hr>
			</li>
		</c:forEach>
	</ul>
</body>
</html>