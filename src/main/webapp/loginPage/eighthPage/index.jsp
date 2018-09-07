<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<HTML>
<head>
<META content="IE=10.000" http-equiv="X-UA-Compatible">
<META http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<TITLE>登录 </TITLE>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<LINK href="${path}/loginPage/eighthPage/js/reset.css" rel="stylesheet" type="text/css">  
<LINK href="${path}/loginPage/eighthPage/js/signin.css" rel="stylesheet" type="text/css">

</head> 
<BODY>

<div class="signin-bg"></div>

<div class="signin-container">

	<div style="margin: 170px 0px 30px 45px;">
		<div style="width: 340px; float: left; display: inline-block;">
			<div style="margin-bottom:8px;"><a href=""><IMG style="width: 200px;" src="${path}/loginPage/eighthPage/img/title.png" border="0"></A></div>
			<FORM name="loginform" id="loginform" action="" method="post">
				<input type="radio" name="act" value="0"/>管理员
				<input type="radio" name="act" value="1"/>教师
				<input type="radio" name="act" value="2"/>学生
				<div style="margin-top: 25px;"><INPUT name="username" class="signin-txt" id="username" type="text" placeholder="用户编号" value=""></div>
				<div style="margin-top: 20px;"><INPUT name="password" class="signin-txt" id="password" type="password" placeholder="密码" value=""></div>
				<div style="margin-top: 20px;">
					<SPAN class="button default signin-btn" id="signin_btn" onClick="login()">立即登录</SPAN>	
					<A class="signin-forget" href="">忘记密码</A>
				</div>
				<div style="color: rgb(34, 34, 34); margin-top:38px;">还没有账户？您可以在此&nbsp;<A style="color: rgb(228, 87, 61);" href="">注册</A></div>
			</FORM>
		</div>
		<div class="clear"></div>
	</div>
	
</div>

</BODY>
</HTML>
