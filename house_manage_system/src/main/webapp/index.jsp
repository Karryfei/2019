<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/index.css" />
<link rel="stylesheet"
	href="//cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="//cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script
	src="//cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
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
					<!-- 					<form class="navbar-form navbar-left" role="search"
						action="house/find.do" method="post">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="请输入房源相关信息"
								name="find" />
						</div>
						<button type="submit" class="btn btn-default">搜索</button>
					</form> -->
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#">登录</a></li>
						<li><a href="post.html">发布</a></li>
					</ul>
				</div>
				</nav>
				<div>
					<form class="bs-example bs-example-form " role="form"
						action="house/find.do" method="post" style="width: 400px">
						<div class="row">
							<div class="col-lg-6">
								<div class="input-group input-group-lg">
									<input type="text" class="form-control" placeholder="请输入房源相关信息">
									<span class="input-group-btn">
										<button class="btn btn-default btn-primary" type="submit">搜索</button>
									</span>
								</div>
							</div>
						</div>
					</form>
				</div>

				<!-- <div>
 		<img class="imgHouse" src="images/house.png">
		<h1 class="topic">青大找房</h1>
		<div>
			<form class="find" action="house/find.do" method="post">
				<input type="text" name="find" value="" placeholder="请输入房源相关信息" />
				<input type="submit" value="搜房源" />
			</form>
			<a class="post" href="post.html">免费发布</a>
		</div>

		<div style="height: 10px; width: 10px;"></div>
		<div style="height: 45px; background-color: rgb(48, 114, 230);">
			<ul class="ulstyle">
				<li><a href="houseInfo.jsp" target="houseInfo">首页</a></li>
				<li><a href="houseInfo.jsp?type=0" target="houseInfo">公寓</a></li>
				<li><a href="houseInfo.jsp?type=1" target="houseInfo">住宅</a></li>
				<li><a href="houseInfo.jsp?type=2" target="houseInfo">工业厂房</a></li>
				<li><a href="houseInfo.jsp?type=3" target="houseInfo">别墅</a></li>
				<li><a href="houseInfo.jsp?type=4" target="houseInfo">商业办公</a></li>

			</ul>
		</div>
	</div> -->
				<div class="nav">
					<form action="" method="">
						<table border="0" cellspacing="10px" cellpadding="">
							<tr>
								<th>位置</th>
								<td><label><input name="Position" type="checkbox"
										value="崂山区" />崂山区</label></td>
								<td><label><input name="Position" type="checkbox"
										value="市南区" />市南区</label></td>
								<td><label><input name="Position" type="checkbox"
										value="市北区" />市北区</label></td>
								<td><label><input name="Position" type="checkbox"
										value="李沧区" />李沧区</label></td>
								<td><label><input name="Position" type="checkbox"
										value="城阳区" />城阳区</label></td>
								<td><label><input name="Position" type="checkbox"
										value="即墨区" />即墨区</label></td>
								<td><label><input name="Position" type="checkbox"
										value="市海岸新区" />市海岸新区</label></td>
							</tr>
							<tr>
								<th>房型</th>
								<td><label><input name="shape" type="checkbox"
										value="一室" />一室</label></td>
								<td><label><input name="shape" type="checkbox"
										value="二室" />二室</label></td>
								<td><label><input name="shape" type="checkbox"
										value="三室" />三室</label></td>
								<td><label><input name="shape" type="checkbox"
										value="四室" />四室</label></td>
								<td><label><input name="shape" type="checkbox"
										value="四室以上" />四室以上</label></td>
							</tr>
							<tr>
								<th>面积</th>
								<td><label><input name="area" type="checkbox"
										value="area<50" />50㎡以下</label></td>
								<td><label><input name="area" type="checkbox"
										value="50<=area and area <80" />50㎡-80㎡</label></td>
								<td><label><input name="area" type="checkbox"
										value="80<=area and area <100" />80㎡-100㎡</label></td>
								<td><label><input name="area" type="checkbox"
										value="100<=area and area <120" />100㎡-120㎡</label></td>
								<td><label><input name="area" type="checkbox"
										value="120<=area and area <150" />120㎡-150㎡</label></td>
								<td><label><input name="area" type="checkbox"
										value="area > 150" />150㎡以上</label></td>
							</tr>
							<tr>
								<th>楼龄</th>
								<td><label><input name="houseage" type="checkbox"
										value="全新" />全新</label></td>
								<td><label><input name="houseage" type="checkbox"
										value="三年内" />三年内</label></td>
								<td><label><input name="houseage" type="checkbox"
										value="五年内" />五年内</label></td>
								<td><label><input name="houseage" type="checkbox"
										value="十年内" />十年内</label></td>
								<td><label><input name="houseage" type="checkbox"
										value="二十年内" />二十年内</label></td>
								<td><label><input name="houseage" type="checkbox"
										value="二十年以上" />二十年以上</label></td>
							</tr>
						</table>
					</form>
				</div>
				<div style="height: 2px; width: 100%; background-color: #9199AA;">
				</div>
				<iframe style="height: 1000px; width: 100%; border: 0;"
					src="houseInfo.jsp" name="houseInfo"></iframe>
			</div>
		</div>
	</div>



</body>