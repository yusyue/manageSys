<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>æ³¨åé¡µ</title>
    <link rel="stylesheet" href="../frame/layui/css/layui.css">
    <link rel="stylesheet" href="../frame/static/css/style.css">
    <link rel="icon" href="../frame/static/image/code.png">
</head>
<body>

<div class="login-main">
    <header class="layui-elip">æ³¨åé¡µ</header>
    <form class="layui-form">
        <div class="layui-input-inline">
            <input type="text" name="account" required  lay-verify="required" placeholder="é®ç®±" autocomplete="off" class="layui-input">
        </div>
        <div class="layui-input-inline login-btn">
            <button type="submit" class="layui-btn">æ³¨å</button>
        </div>
        <hr/>
        <p><a href="javascript:;" class="fl">å·²æè´¦å·ï¼ç«å³ç»å½</a><a href="javascript:;" class="fr">å¿è®°å¯ç ï¼</a></p>
    </form>
</div>


<script src="../frame/layui/layui.js"></script>
<script type="text/javascript">
    layui.use(['form'], function () {
        var form    = layui.form
            ,$      = layui.jquery;

        // you code ...


    });
</script>
</body>
</html>