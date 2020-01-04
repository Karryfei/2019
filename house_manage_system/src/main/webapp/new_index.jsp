<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
						<li><a id="modal-686965" href="#modal-container-686965"
							role="button" class="btn" data-toggle="modal">注册</a></li>
					</ul>
				</div>
				</nav>




				<div class="modal fade" id="modal-container-686965" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">×</button>
								<h4 class="modal-title" id="myModalLabel">注册</h4>
							</div>
							<div class="modal-body">
								<form class="form-horizontal" role="form"
									action="user/register.do" method="post">

									<div class="form-group">
										<label for="inputUsername" class="col-sm-2 control-label">用户名</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="inputUsername"
												name="name" style="width: 300px" />
										</div>
									</div>
									<div class="form-group">
										<label for="inputPassword" class="col-sm-2 control-label">密码</label>
										<div class="col-sm-10">
											<input type="password" class="form-control"
												id="inputPassword" name="password" style="width: 300px" />
										</div>
									</div>

									<div class="form-group">
										<label for="inputSex" class="col-sm-2 control-label">性别</label>
										<div class="col-sm-10">
											<input name="sex" type="radio" value="0" checked="checked" />男
											<input name="sex" type="radio" value="1" />女
										</div>
									</div>
									<div class="form-group">
										<label for="inputTel" class="col-sm-2 control-label">手机号</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="inputTel"
												name="tel" style="width: 300px" />
										</div>
									</div>
									<div class="form-group">
										<label for="inputEmail" class="col-sm-2 control-label">邮箱</label>
										<div class="col-sm-10">
											<input type="email" class="form-control" id="inputEmail"
												name="email" style="width: 300px" />
										</div>
									</div>
									<div class="form-group">
										<label for="inputAddress" class="col-sm-2 control-label">地址</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="inputAddress"
												name="address" style="width: 300px" />
										
												省份选择
												<select id="prov" onchange="showCity(this)">
													<option>=请选择省份=</option>

												</select>

												城市选择
												<select id="city" onchange="showCountry(this)">
													<option>=请选择城市=</option>
												</select>

												县区选择
												<select id="country" onchange="selecCountry(this)">
													<option>=请选择县区=</option>
												</select>
												<button type="button" class="btn met1" onClick="showAddr()"
													id="button-show">确定</button>
										
										</div>
									</div>

									<div class="form-group">
										<div class="col-sm-offset-2 col-sm-10">
											<button type="submit" class="btn btn-default btn-primary">注册</button>
										</div>
									</div>
								</form>
							</div>
						</div>

					</div>

				</div>



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
								<h4>棒球</h4>
								<p>棒球运动是一种以棒打球为主要特点，集体性、对抗性很强的球类运动项目，在美国、日本尤为盛行。</p>
							</div>
						</div>
						<div class="item">
							<img src="images/4.jpg" alt="Third slide">
							<div class="carousel-caption">
								<h4>棒球</h4>
								<p>棒球运动是一种以棒打球为主要特点，集体性、对抗性很强的球类运动项目，在美国、日本尤为盛行。</p>
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
						<a href="#" class="thumbnail"> <img src="images/f1.jpg"
							alt="通用的占位符缩略图">
						</a>
						<p class="text-center">市北-同安路</p>
						<p class="text-center">浮山后六小区</p>
					</div>
					<div class="col-sm-6 col-md-3">
						<a href="#" class="thumbnail"> <img src="images/f2.jpg"
							alt="通用的占位符缩略图">
						</a>
						<p class="text-center">市北-浮山后</p>
						<p class="text-center">浮山后一小区</p>
					</div>
					<div class="col-sm-6 col-md-3">
						<a href="#" class="thumbnail"> <img src="images/f3.jpg"
							alt="通用的占位符缩略图">
						</a>
						<p class="text-center">城阳-十梅庵</p>
						<p class="text-center">天泰城迦南美地</p>
					</div>
					<div class="col-sm-6 col-md-3">
						<a href="#" class="thumbnail"> <img src="images/f4.jpg"
							alt="通用的占位符缩略图">
						</a>
						<p class="text-center">李沧-下王埠</p>
						<p class="text-center">百通馨苑三区</p>
					</div>
				</div>


			</div>

		</div>
	</div>

	<script src="js/city.js"></script>
	<script src="js/method.js"></script>
</body>