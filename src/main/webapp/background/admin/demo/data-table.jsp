<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>Data-Table è¡¨æ ¼</title>
    <link rel="stylesheet" href="../frame/layui/css/layui.css">
    <!--<link rel="stylesheet" href="http://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">-->
    <link rel="stylesheet" href="../frame/static/css/style.css">
    <link rel="icon" href="../frame/static/image/code.png">
</head>
<body class="body">

<!-- å·¥å·é -->
<div class="my-btn-box">
    <span class="fl">
        <a class="layui-btn layui-btn-danger radius btn-delect" id="btn-delete-all">æ¹éå é¤</a>
        <a class="layui-btn btn-add btn-default" id="btn-add">æ·»å </a>
        <a class="layui-btn btn-add btn-default" id="btn-refresh"><i class="layui-icon">&#x1002;</i></a>
    </span>
    <span class="fr">
        <span class="layui-form-label">æç´¢æ¡ä»¶ï¼</span>
        <div class="layui-input-inline">
            <input type="text" autocomplete="off" placeholder="è¯·è¾å¥æç´¢æ¡ä»¶" class="layui-input">
        </div>
        <button class="layui-btn mgl-20">æ¥è¯¢</button>
    </span>
</div>

<!-- è¡¨æ ¼ -->
<div id="dateTable"></div>

<script type="text/javascript" src="../frame/layui/layui.js"></script>
<script type="text/javascript" src="../js/index.js"></script>
<script type="text/javascript">

    // layuiæ¹æ³
    layui.use(['table', 'form', 'layer', 'vip_table'], function () {

        // æä½å¯¹è±¡
        var form = layui.form
                , table = layui.table
                , layer = layui.layer
                , vipTable = layui.vip_table
                , $ = layui.jquery;

        // è¡¨æ ¼æ¸²æ
        var tableIns = table.render({
            elem: '#dateTable'                  //æå®åå§è¡¨æ ¼åç´ éæ©å¨ï¼æ¨èidéæ©å¨ï¼
            , height: vipTable.getFullHeight()    //å®¹å¨é«åº¦
            , cols: [[                  //æ é¢æ 
                {checkbox: true, sort: true, fixed: true, space: true}
                , {field: 'id', title: 'ID', width: 80}
                , {field: 'account', title: 'ç¨æ·å', width: 120}
                , {field: 'auth_group_name', title: 'æéç»', width: 120}
                , {field: 'last_login_time', title: 'æåç»å½æ¶é´', width: 180}
                , {field: 'last_login_ip', title: 'æåç»å½IP', width: 180}
                , {field: 'create_time', title: 'åå»ºæ¶é´', width: 180}
                , {field: 'status', title: 'ç¶æ', width: 70}
                , {fixed: 'right', title: 'æä½', width: 150, align: 'center', toolbar: '#barOption'} //è¿éçtoolbarå¼æ¯æ¨¡æ¿åç´ çéæ©å¨
            ]]
            , id: 'dataCheck'
            , url: './../json/data_table.json'
            , method: 'get'
            , page: true
            , limits: [30, 60, 90, 150, 300]
            , limit: 30 //é»è®¤éç¨30
            , loading: false
            , done: function (res, curr, count) {
                //å¦ææ¯å¼æ­¥è¯·æ±æ°æ®æ¹å¼ï¼reså³ä¸ºä½ æ¥å£è¿åçä¿¡æ¯ã
                //å¦ææ¯ç´æ¥èµå¼çæ¹å¼ï¼reså³ä¸ºï¼{data: [], count: 99} dataä¸ºå½åé¡µæ°æ®ãcountä¸ºæ°æ®æ»é¿åº¦
                console.log(res);

                //å¾å°å½åé¡µç 
                console.log(curr);

                //å¾å°æ°æ®æ»é
                console.log(count);
            }
        });

        // è·åéä¸­è¡
        table.on('checkbox(dataCheck)', function (obj) {
            layer.msg('123');
            console.log(obj.checked); //å½åæ¯å¦éä¸­ç¶æ
            console.log(obj.data); //éä¸­è¡çç¸å³æ°æ®
            console.log(obj.type); //å¦æè§¦åçæ¯å¨éï¼åä¸ºï¼allï¼å¦æè§¦åçæ¯åéï¼åä¸ºï¼one
        });

        // å·æ°
        $('#btn-refresh').on('click', function () {
            tableIns.reload();
        });


        // you code ...

    });
</script>
<!-- è¡¨æ ¼æä½æé®é -->
<script type="text/html" id="barOption">
    <a class="layui-btn layui-btn-mini" lay-event="detail">æ¥ç</a>
    <a class="layui-btn layui-btn-mini layui-btn-normal" lay-event="edit">ç¼è¾</a>
    <a class="layui-btn layui-btn-mini layui-btn-danger" lay-event="del">å é¤</a>
</script>
</body>
</html>