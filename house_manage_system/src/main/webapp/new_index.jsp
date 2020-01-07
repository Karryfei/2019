<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<!-- <link rel="stylesheet" href="css/style2.css" /> -->
<link rel="stylesheet"
	href="//cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="//cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script
	src="//cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">

				<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span><span
							class="icon-bar"></span><span class="icon-bar"></span><span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">首页</a>
				</div>

				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active"><a href="login.html">公寓</a></li>
						<li><a href="login.html">住宅</a></li>
						<li><a href="login.html">工业厂房</a></li>
						<li><a href="login.html">别墅</a></li>
						<li><a href="login.html">商业办公</a></li>
					</ul>
					<!-- <form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" />
						</div>
						<button type="submit" class="btn btn-default">搜索</button>
					</form> -->
					<ul class="nav navbar-nav navbar-right">
						<li><a href="login.html">登录</a></li>
						<li><a href="register.html">注册</a></li>
					</ul>
				</div>
				</nav>

				<div id="myCarousel" class="carousel slide">
					<!-- 轮播（Carousel）指标 -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
					</ol>
					<!-- 轮播（Carousel）项目 -->
					<div class="carousel-inner">
						<div class="item active">
							<img src="images/1.jpg" alt="First slide">
							<div class="carousel-caption">
								<h4>愿明天醒来</h4>
								<p>有像阳光一样灿烂的微笑，也有像微笑一样的灿烂阳光</p>
							</div>
						</div>
						<div class="item">
							<img src="images/3.jpg" alt="Second slide">
							<div class="carousel-caption">
								<h4>愿你这一生</h4>
								<p>既有随处可栖的江湖，也有追风逐梦的骁勇。</p>
							</div>
						</div>
						<div class="item">
							<img src="images/4.jpg" alt="Third slide">
							<div class="carousel-caption">
								<h4>愿陪你一起</h4>
								<p>走遍世界的所有角落，看尽人间的繁华与平凡。</p>
								
							</div>
						</div>
					</div>
					<!-- 轮播（Carousel）导航 -->
					<a class="left carousel-control" href="#myCarousel" role="button"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel" role="button"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
				
				<h2>二手好房</h2>
				<p>好房源那么多，我们为您精选</p>

				<div class="row">
					<div class="col-sm-6 col-md-3">
						<a href="login.html" class="thumbnail"> <img src="images/f9.jpg"
							alt="通用的占位符缩略图">
						</a>
						<p class="text-center">市北-同安路</p>
						<p class="text-center">浮山后六小区</p>
					</div>
					<div class="col-sm-6 col-md-3">
						<a href="login.html" class="thumbnail"> <img src="images/f15.jpg"
							alt="通用的占位符缩略图">
						</a>
						<p class="text-center">市北-浮山后</p>
						<p class="text-center">浮山后一小区</p>
					</div>
					<div class="col-sm-6 col-md-3">
						<a href="login.html" class="thumbnail"> <img src="images/f13.jpg"
							alt="通用的占位符缩略图">
						</a>
						<p class="text-center">城阳-十梅庵</p>
						<p class="text-center">天泰城迦南美地</p>
					</div>
					<div class="col-sm-6 col-md-3">
						<a href="login.html" class="thumbnail"> <img src="images/f14.png"
							alt="通用的占位符缩略图">
						</a>
						<p class="text-center">李沧-下王埠</p>
						<p class="text-center">百通馨苑三区</p>
					</div>
				</div>
				
				<h2>小区精选</h2>
				<p>纵览小区，恋上这座城</p>

				<div class="row">
					<div class="col-sm-6 col-md-4">
						<a href="login.html" class="thumbnail"> <img src="images/f6.jpg"
							alt="通用的占位符缩略图">
						</a>
						<p class="text-center">乐天家园</p>
						<p class="text-center">2010年建</p>
					</div>
					<div class="col-sm-6 col-md-4">
						<a href="login.html" class="thumbnail"> <img src="images/f8.jpg"
							alt="通用的占位符缩略图">
						</a>
						<p class="text-center">长沙小区</p>
						<p class="text-center">2008年建</p>
					</div>
					<div class="col-sm-6 col-md-4">
						<a href="login.html" class="thumbnail"> <img src="images/f7.png"
							alt="通用的占位符缩略图">
						</a>
						<p class="text-center">万科紫台</p>
						<p class="text-center">2014年建</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>