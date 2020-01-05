<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script src="js/jquery-2.2.4.min.js"></script>
<link href="../layui/css/layui.css" rel="stylesheet">
<script type="text/javascript" src="../layui/layui.all.js"></script>
<style type="text/css">
.detail span {
	margin: 20px;
}
</style>
<link rel="stylesheet" type="text/css" href="css/index.css" />
<link rel="stylesheet"
	href="//cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="//cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script
	src="//cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="layui/layui.all.js"></script>

</head>
<body>
	<div style="height: 160px; background-color: rgb(245, 245, 245);">
		<div style="height: 70px; margin-left: 80px">
			<nav class="navbar navbar-default" role="navigation">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span><span
						class="icon-bar"></span><span class="icon-bar"></span><span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="houseInfo.jsp" target="houseInfo">首页</a>
			</div>

			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="houseInfo.jsp?type=0"
						target="houseInfo">公寓</a></li>
					<li><a href="houseInfo.jsp?type=1" target="houseInfo">住宅</a></li>
					<li><a href="houseInfo.jsp?type=2" target="houseInfo">工业厂房</a></li>
					<li><a href="houseInfo.jsp?type=3" target="houseInfo">别墅</a></li>
					<li><a href="houseInfo.jsp?type=4" target="houseInfo">商业办公</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><h4>${sessionScope.user.name},欢迎登录！</h4></li>
					<li><a href="collection/select.do">我的收藏</a></li>
					<li><a href="house/selectByUserid.do">我的发布</a></li>
					<li><a href="../post.html">免费发布</a></li>
					<li><a href="user/outlogin.do">退出</a></li>
				</ul>
			</div>
			</nav>
			<div>
				<h1 style="margin-top: 0">${house.topic}</h1>

				<span style="color: #9199AA">${house.description}</span>
			</div>
		</div>
	</div>

	<div style="margin-left: 80px; padding: 8px">
		<span>青岛房产 &nbsp>&nbsp ${house.position} &nbsp> &nbsp
			${house.posidetail}</span>
	</div>
	<div style="margin-left: 80px; float: left; height: 380px; width: 50%">
		<img src="../images/${house.img}" style="height: 380px; width: 100%">
	</div>
	<div style="float: left; margin-left: 40px; width: 30%">
		<b style="color: red; font-size: 50px">${house.price/10000}</b> <span
			style="color: red;">万</span> <b style="margin-left: 30px;">${house.unitPrice}元/平米</b>
		<hr>
		<div style="padding-top: 10px; padding-bottom: 10px">
			<b style="font-size: 25px">${house.layout}</b> <b
				style="font-size: 25px; margin-left: 80px">${house.area}平方米</b>
			<hr>
		</div>
		<div class="detail">
			<div>

				<span style="color: #9199AA">详细地址 </span> <span><a
					href="../map.jsp?position=山东省青岛市${house.position}${house.posidetail}"
					target="_blank">${house.posidetail}(点击查看地图)</a> </span>
			</div>
			<div>
				<span style="color: #9199AA">所在区域 </span> <span>${house.position}</span>
			</div>
			<div>
				<span style="color: #9199AA">看房时间 </span> <span>请联系房主</span>
			</div>
			<hr>
		</div>
		<div>
			<h1 style="font-size: 27px">房主： ${house.name}</h1>
			<div
				style="margin-top: 20px; padding-left: 10px; height: 30px; width: 80%; background-color: rgb(48, 114, 246); color: white; border-radius: 5px;">
				<span style="font-size: 20px">电话:${house.tel}</span>
			</div>
			<div
				style="margin-top: 10px; padding-left: 10px; margin-top: 5px; height: 30px; width: 80%; background-color: rgb(48, 114, 246); color: white; border-radius: 5px;">
				<span style="font-size: 20px">邮箱:${house.email}</span>
			</div>

		</div>
	</div>
	<div>
		<input
			style="border-radius: 5px; height: 30px; width: 6.3%; background-color: rgb(48, 114, 246); color: white; float: right;"
			onclick="collect()" type="button" value="点击收藏">
	</div>
	<div
		style="height: 40px; width: 100%; background-color: rgb(245, 245, 245); clear: both"></div>

	<script type="text/javascript">
		function collect() {
			var houseid = $
			{
				house.id
			}
			;
			$.ajax({
				type : 'POST',
				url : "../collection/insert.do?houseid=" + houseid,
				data : JSON.stringify({}),
				contentType : 'application/json',
				success : function(data) {
					layer.msg('收藏成功', {
						icon : 1
					});
				},
				dataType : "json",
			});
		}
	</script>

</body>
</html>