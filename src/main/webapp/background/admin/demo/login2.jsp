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
<body class="login-body body">

<div class="login-box">
    <form class="layui-form layui-form-pane" method="get" action="">
        <div class="layui-form-item">
            <h3>xxåå°ç»å½ç³»ç»</h3>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">è´¦å·ï¼</label>

            <div class="layui-input-inline">
                <input type="text" name="account" class="layui-input" lay-verify="account" placeholder="è´¦å·"
                       autocomplete="on" maxlength="20"/>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">å¯ç ï¼</label>

            <div class="layui-input-inline">
                <input type="password" name="password" class="layui-input" lay-verify="password" placeholder="å¯ç "
                       maxlength="20"/>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">éªè¯ç ï¼</label>

            <div class="layui-input-inline">
                <input type="number" name="code" class="layui-input" lay-verify="code" placeholder="éªè¯ç " maxlength="4"/><img
                    src="../frame/static/image/v.png" alt="">
            </div>
        </div>
        <div class="layui-form-item">
            <button type="reset" class="layui-btn layui-btn-danger btn-reset">éç½®</button>
            <button type="button" class="layui-btn btn-submit" lay-submit="" lay-filter="sub">ç«å³ç»å½</button>
        </div>
    </form>
</div>

<script type="text/javascript" src="../frame/layui/layui.js"></script>
<script type="text/javascript">
    layui.use(['form', 'layer'], function () {

        // æä½å¯¹è±¡
        var form = layui.form
                , layer = layui.layer
                , $ = layui.jquery;

        // éªè¯
        form.verify({
            account: function (value) {
                if (value == "") {
                    return "è¯·è¾å¥ç¨æ·å";
                }
            },
            password: function (value) {
                if (value == "") {
                    return "è¯·è¾å¥å¯ç ";
                }
            },
            code: function (value) {
                if (value == "") {
                    return "è¯·è¾å¥éªè¯ç ";
                }
            }
        });

        // æäº¤çå¬
        form.on('submit(sub)', function (data) {
            layer.alert(JSON.stringify(data.field), {
                title: 'æç»çæäº¤ä¿¡æ¯'
            });
            return false;
        });

        // you code ...
    })

</script>
</body>
</html>