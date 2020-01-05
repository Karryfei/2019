<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/index.css" />
<script src="js/jquery-2.2.4.min.js"></script>
<link rel="stylesheet"
	href="//cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="//cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script
	src="//cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="layui/layui.all.js"></script>
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
					<ul class="nav navbar-nav navbar-right">
						<li><h4>${sessionScope.user.name},欢迎登录！</h4></li>
						<li><a href="collection/select.do">我的收藏</a></li>
						<li><a href="house/selectByUserid.do">我的发布</a></li>
						<li><a href="post.html">免费发布</a></li>
						<li><a href="user/outlogin.do">退出</a></li>
					</ul>
				</div>
				</nav>

				<div>
					<form class="bs-example bs-example-form " role="form"
						action="house/find.do" method="post" style="width: 1000px">
						<div class="row">
							<div class="col-lg-6">
								<div class="input-group input-group-lg">
									<input type="text" class="form-control" name="find" placeholder="请输入房源相关信息">
									<span class="input-group-btn">
										<button class="btn btn-default btn-primary" type="submit">搜索</button>
									</span>
								</div>
							</div>
						</div>
					</form>
				</div>

				<hr />

				<div class="nav">
					<form action="" method="">
						<table id="table" border="0" cellspacing="50px"width="100%">
							<tr>
								<th>位置</th>

								<td><span><input name="Position" type="checkbox"
										value="position='崂山区'" /> 崂山区</span></td>
								<td><span><input name="Position" type="checkbox"
										value="position='市南区'" /> 市南区</span></td>
								<td><span><input name="Position" type="checkbox"
										value="position='市北区'" /> 市北区</span></td>
								<td><span><input name="Position" type="checkbox"
										value="position='李沧区'" /> 李沧区</span></td>
								<td><span><input name="Position" type="checkbox"
										value="position='城阳区'" /> 城阳区</span></td>
								<td><span><input name="Position" type="checkbox"
										value="position='即墨区'" /> 即墨区</span></td>
								<td><span><input name="Position" type="checkbox"
										value="position='市海岸新区'" /> 市海岸新区</span></td>
							</tr>
							<tr>
								<th>房型</th>
								<td><span><input name="shape" type="checkbox"
										value="shape=1" /> 一室</span></td>
								<td><span><input name="shape" type="checkbox"
										value="shape=2" /> 二室</span></td>
								<td><span><input name="shape" type="checkbox"
										value="shape=3" /> 三室</span></td>
								<td><span><input name="shape" type="checkbox"
										value="shape=4" /> 四室</span></td>
								<td><span><input name="shape" type="checkbox"
										value="shape>4" /> 四室以上</span></td>
							</tr>
							<tr>
								<th>面积</th>
								<td><span><input name="area" type="checkbox"
										value="area<50" /> 50㎡以下</span></td>
								<td><span><input name="area" type="checkbox"
										value="50<=area and area <80" /> 50㎡-80㎡</span></td>
								<td><span><input name="area" type="checkbox"
										value="80<=area and area <100" /> 80㎡-100㎡</span></td>
								<td><span><input name="area" type="checkbox"
										value="100<=area and area <120" /> 100㎡-120㎡</span></td>
								<td><span><input name="area" type="checkbox"
										value="120<=area and area <150" /> 120㎡-150㎡</span></td>
								<td><span><input name="area" type="checkbox"
										value="area > 150" /> 150㎡以上</span></td>
							</tr>
							<tr>
								<th>楼龄</th>
								<td><span><input name="houseage" type="checkbox"
										value="houseage = 0 " /> 全新</span></td>
								<td><span><input name="houseage" type="checkbox"
										value="houseage <=3 " /> 三年内</span></td>
								<td><span><input name="houseage" type="checkbox"
										value="houseage <= 5 " /> 五年内</span></td>
								<td><span><input name="houseage" type="checkbox"
										value="houseage <= 10 " /> 十年内</span></td>
								<td><span><input name="houseage" type="checkbox"
										value="houseage <=20 " /> 二十年内</span></td>
								<td><span><input name="houseage" type="checkbox"
										value="houseage >20 " /> 二十年以上</span></td>
							</tr>
						</table>
					</form>
				</div>
				<hr>
				<iframe style="height: 1000px; width: 100%; border: 0;"
					src="houseInfo.jsp" name="houseInfo"></iframe>
				<script type="text/javascript">
					$("#table").click(
							function() { //给table添加点击事件
								var checkboxValue = new Array();
								var checkboxStr = $("input[type='checkbox']");
								for (var i = 0; i < checkboxStr.length; i++) {
									if (checkboxStr[i].checked) {
										//alert(checkboxStr[i].value+","+checkboxStr[i].nextSibling.nodeValue);  
										checkboxValue
												.push(checkboxStr[i].value);
									}
								}
								window.open("house/find.do?condition="
										+ checkboxValue, "houseInfo")
							});
				</script>
			</div>
		</div>
	</div>
</body>