<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>å­çªå£æä½</title>
    <link rel="stylesheet" href="../frame/layui/css/layui.css">
    <link rel="stylesheet" href="../frame/static/css/style.css">
    <link rel="icon" href="../frame/static/image/code.png">
</head>
<body class="body">
<!-- æä½åºå-æ°å¢ -->
<form class="layui-form">
    <button type="button" class="layui-btn layui-btn-small add-tab" lay-id="1">
        <a href="javascript:;" href-url="demo/_blank.jsp"><span><i class="layui-icon">&#xe621;</i>æç§æé®ä¸çæ°æ®çæéé¡¹å¡</span></a>
    </button>
    <button type="button" class="layui-btn layui-btn-small add-tab2">å¡«åä¿¡æ¯çæéé¡¹å¡</button>
</form>
<br/>
<!-- æä½åºå-å é¤ -->
<form class="layui-form">
    <button type="button" class="layui-btn layui-btn-small del-tab">å³é­å½åéé¡¹å¡</button>
</form>
<br/>
<!-- æç¤ºä¿¡æ¯ -->
<blockquote class="layui-elem-quote">è¯¦ç»æä½æ¹æ³è¯·çï¼ãdemo/children.jspã jsæ¹æ³ä¸­ï¼å¾ç®åï¼è°ç¨ä¸ä¸ªæ¹æ³å°±è¡ï¼ä¸çå°±æç½ã</blockquote>

<script type="text/javascript" src="../frame/layui/layui.js"></script>
<script type="text/javascript" src="../js/index.js"></script>
<script type="text/javascript">

    // layuiæ¹æ³
    layui.use(['layer', 'vip_tab'], function () {

        // æä½å¯¹è±¡
        var layer = layui.layer
                , vipTab = layui.vip_tab
                , $ = layui.jquery;

        // æç§æé®ä¸çæ°æ®çæéé¡¹å¡
        $(document).on('click', '.add-tab', function () {
            vipTab.add($(this));
        });

        // æç§å¡«åçæ°æ®çæéé¡¹å¡
        $(document).on('click', '.add-tab2', function () {
            // å£ä»¤å¼¹æ¡
            layer.prompt({
                formType: 0,
                value: 'æ é¢',
                title: 'è¯·è¾å¥æ é¢',
                maxlength: 10
            }, function (val, index) {
                // æ·»å éé¡¹å¡[èªèº«å¯¹è±¡,æ é¢,urlå°å]
                vipTab.add($(this), val, 'demo/children.jsp'); // æä¼ å¥ä¸ä¸ªåæ°ï¼ç¬¬ä¸ä¸ªåæ°å®å¨æ²¡æä½ç¨äºï¼å°±æ¯ç«ä½
                // å³é­å¼¹çª
                layer.close(index);
            });

            // vipTab.add($(this),'æ é¢','å°å');
        });

        // å é¤éé¡¹å¡
        $(document).on('click', '.del-tab', function () {
            // å é¤
            vipTab.del(vipTab.getThisTabId());
        });

        // you code ...


    });
</script>
</body>
</html>