<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" class="no-js">
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
<meta name="viewport" content="width=device-width, initial-scale=1"> 
<title>login</title>
<link rel="stylesheet" type="text/css" href="${path}/loginPage/thirdPage/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="${path}/loginPage/thirdPage/css/demo.css" />
<!--必要样式-->
<link rel="stylesheet" type="text/css" href="${path}/loginPage/thirdPage/css/component.css" />
<!--[if IE]>
<script src="${path}/loginPage/thirdPage/js/html5.js"></script>
<![endif]-->
</head>
<body>
		<div class="container demo-1">
			<div class="content">
				<div id="large-header" class="large-header">
					<canvas id="demo-canvas"></canvas>
					<div class="logo_box">
						<h3>欢迎你</h3>
						<form action="#" name="f" method="post">
							<div class="input_outer">
								<span class="u_user"></span>
								<input name="logname" class="text" style="color: #FFFFFF !important" type="text" placeholder="请输入账户">
							</div>
							<div class="input_outer">
								<span class="us_uer"></span>
								<input name="logpass" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;"value="" type="password" placeholder="请输入密码">
							</div>
							<div class="mb2"><a class="act-but submit" href="javascript:;" style="color: #FFFFFF">登录</a></div>
						</form>
					</div>
				</div>
			</div>
		</div><!-- /container -->
		<script src="${path}/loginPage/thirdPage/js/TweenLite.min.js"></script>
		<script src="${path}/loginPage/thirdPage/js/EasePack.min.js"></script>
		<script src="${path}/loginPage/thirdPage/js/rAF.js"></script>
		<script src="${path}/loginPage/thirdPage/js/demo-1.js"></script>
	</body>
</html>