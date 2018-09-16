<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>è¿åº¦æ¡</title>
    <link rel="stylesheet" href="../frame/layui/css/layui.css">
    <link rel="stylesheet" href="../frame/static/css/style.css">
    <link rel="icon" href="../frame/static/image/code.png">
</head>
<body class="body">

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>é»è®¤é£æ ¼çè¿åº¦æ¡</legend>
</fieldset>

<div class="layui-progress">
    <div class="layui-progress-bar" lay-percent="40%"></div>
</div>
<div style="margin-top: 15px; width:300px">
    <div class="layui-progress">
        <div class="layui-progress-bar" lay-percent="70%"></div>
    </div>
</div>
æ¸©é¦¨æç¤ºï¼è¿åº¦æ¡çå®½åº¦æ¯100%ééäºå®çç¶çº§åç´ ï¼å¦ä¸é¢çè¿åº¦æ¡æ¯å¨ä¸ä¸ª300pxçç¶å®¹å¨ä¸­ã

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
    <legend>æ´å¤é¢è²éå</legend>
</fieldset>

<div class="layui-progress">
    <div class="layui-progress-bar layui-bg-red" lay-percent="20%"></div>
</div>

<br>

<div class="layui-progress">
    <div class="layui-progress-bar layui-bg-orange" lay-percent="30%"></div>
</div>

<br>

<div class="layui-progress">
    <div class="layui-progress-bar layui-bg-green" lay-percent="40%"></div>
</div>

<br>

<div class="layui-progress">
    <div class="layui-progress-bar layui-bg-blue" lay-percent="50%"></div>
</div>

<br>

<div class="layui-progress">
    <div class="layui-progress-bar layui-bg-cyan" lay-percent="60%"></div>
</div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
    <legend>å¤§å°ºå¯¸è¿åº¦æ¡</legend>
</fieldset>
<div class="layui-progress layui-progress-big">
    <div class="layui-progress-bar" lay-percent="20%"></div>
</div>

<br>
<div class="layui-progress layui-progress-big">
    <div class="layui-progress-bar layui-bg-green" lay-percent="35%"></div>
</div>
<br>
<div class="layui-progress layui-progress-big">
    <div class="layui-progress-bar layui-bg-cyan" lay-percent="75%"></div>
</div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
    <legend>æ¾ç¤ºç¾åæ¯</legend>
</fieldset>

<div class="layui-progress" lay-showpercent="true">
    <div class="layui-progress-bar" lay-percent="20%"></div>
</div>

<br>

<div class="layui-progress layui-progress-big" lay-showpercent="true">
    <div class="layui-progress-bar" lay-percent="70%"></div>
</div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
    <legend>å¨ææ¹åè¿åº¦</legend>
</fieldset>

<div class="layui-progress layui-progress-big" lay-showpercent="true" lay-filter="demo">
    <div class="layui-progress-bar layui-bg-red" lay-percent="0%"></div>
</div>

<div class="site-demo-button" style="margin-top: 20px; margin-bottom: 0;">
    <button class="layui-btn site-demo-active" data-type="setPercent">è®¾ç½®50%</button>
    <button class="layui-btn site-demo-active" data-type="loading">æ¨¡æloading</button>
</div>

<!-- éç¨-970*90 -->
<div>
    <ins class="adsbygoogle" style="display:inline-block;width:970px;height:90px"
         data-ad-client="ca-pub-6111334333458862" data-ad-slot="6835627838"></ins>
</div>

<script type="text/javascript" src="../frame/layui/layui.js"></script>
<script type="text/javascript">
    layui.use('element', function () {
        var element = layui.element
                , $ = layui.jquery;

        //è§¦åäºä»¶
        var active = {
            setPercent: function () {
                //è®¾ç½®50%è¿åº¦
                element.progress('demo', '50%')
            }
            , loading: function (othis) {
                var DISABLED = 'layui-btn-disabled';
                if (othis.hasClass(DISABLED)) return;

                //æ¨¡æloading
                var n = 0, timer = setInterval(function () {
                    n = n + Math.random() * 10 | 0;
                    if (n > 100) {
                        n = 100;
                        clearInterval(timer);
                        othis.removeClass(DISABLED);
                    }
                    layui.element().progress('demo', n + '%');
                }, 300 + Math.random() * 1000);

                othis.addClass(DISABLED);
            }
        };

        $('.site-demo-active').on('click', function () {
            var othis = $(this), type = $(this).data('type');
            active[type] ? active[type].call(this, othis) : '';
        });

        // you code ...


    });
</script>
</body>
</html>