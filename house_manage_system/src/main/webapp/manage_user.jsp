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

	<!-- nav -->
	
	<ul class="ul" style="list-style: none;">
		<c:forEach items="${sessionScope.individuals}" var="indiv" varStatus="status">
			<li>
				<div style="display: inline-block; width: 100%;">
					<h2 style="margin-bottom: 20px;">${indiv.name}</h2>
					<p style="float: right; color: red; font-size: 20px;">联系方式: ${indiv.tel}</p>
					
					<c:choose>
						<c:when test="${indiv.sex == 0}">
							<span>男</span>
						</c:when>
						<c:otherwise>
							<span>女</span>
						</c:otherwise>
					</c:choose>
					
					<br>
					<div style="height: 20px;"></div>
					<span>邮箱: ${indiv.email}<span> 
					
					<a style="float: right; display: inline-block; height: 23px;width: 80px;background-color: rgb(255,85,46);margin-left: 5px;text-align: center;color: black;text-decoration:none;"  href="user/delete.do?id=${indiv.id}"><strong>删除用户</strong></a>
					<a style="float: right;" target="_blank" href="house/selectByUser.do?id=${indiv.id}">查看房源发布详情</a>
				</div>
				<hr>
			</li>
		</c:forEach>
	</ul>
	
</body>
</html>