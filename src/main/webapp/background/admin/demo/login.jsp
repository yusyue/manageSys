<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>ç»å½</title>
    <link rel="stylesheet" href="../frame/layui/css/layui.css">
    <link rel="stylesheet" href="../frame/static/css/style.css">
    <link rel="icon" href="../frame/static/image/code.png">
</head>
<body>

<div class="login-main">
    <header class="layui-elip">åå°ç»å½</header>
    <form class="layui-form">
        <div class="layui-input-inline">
            <input type="text" name="account" required lay-verify="required" placeholder="é®ç®±" autocomplete="off"
                   class="layui-input">
        </div>
        <div class="layui-input-inline">
            <input type="password" name="password" required lay-verify="required" placeholder="å¯ç " autocomplete="off"
                   class="layui-input">
        </div>
        <div class="layui-input-inline login-btn">
            <button type="submit" class="layui-btn">ç»å½</button>
        </div>
        <hr/>
        <!--<div class="layui-input-inline">
            <button type="button" class="layui-btn layui-btn-primary">QQç»å½</button>
        </div>
        <div class="layui-input-inline">
            <button type="button" class="layui-btn layui-btn-normal">å¾®ä¿¡ç»å½</button>
        </div>-->
        <p><a href="javascript:;" class="fl">ç«å³æ³¨å</a><a href="javascript:;" class="fr">å¿è®°å¯ç ï¼</a></p>
    </form>
</div>


<script src="../frame/layui/layui.js"></script>
<script type="text/javascript">
    layui.use(['form'], function () {

        // æä½å¯¹è±¡
        var form = layui.form
                , $ = layui.jquery;

        // you code ...


    });
</script>
</body>
</html>