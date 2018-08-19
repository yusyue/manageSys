<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<script src="./jquery-1.7.2.js" type="text/javascript"></script>
<h2>Hello World!</h2>
请输入用户名：<input type="text" id="username"><br>
请输入密码：<input type="text" id="password">
<input type="button" onclick="getname()" value="点击">
<script type="text/javascript">
	function getname(){
		alert($("#username").val());
		  $.ajax({
    		  type:'post',
    		  url:'/managesys/userLogin/verifyUserLogin',
    		  dataType:'json',
    		  data:{"userName":$("#username").val(),"password":$("#password").val()},
    		  success:function(result){
    			  console.log(JSON.stringify(result));
    			 if(result.data.isSuccess==true){
    				 alert("登录成功!");
    			 }else{
    				 alert("用户名/密码错误!");
    			 }
    		  }
    	  })
	}
</script>
</body>
</html>
