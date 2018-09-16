<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title></title>
    <link rel="stylesheet" href="../frame/layui/css/layui.css">
    <link rel="stylesheet" href="../frame/static/css/style.css">
    <link rel="icon" href="../frame/static/image/code.png">
</head>
<body class="body">

<div class="layui-row layui-col-space10">
    <div class="layui-col-xs12 layui-col-sm2 layui-col-md2">
        <!-- tree -->
        <ul id="tree" class="tree-table-tree-box"></ul>
    </div>
    <div class="layui-col-xs12 layui-col-sm10 layui-col-md10">
        <!-- å·¥å·é -->
        <div class="my-btn-box">
            <span class="fl">
                <a class="layui-btn layui-btn-danger" id="btn-delete-all">æ¹éå é¤</a>
                <a class="layui-btn btn-default btn-add" id="btn-add-article">åå¸æç« </a>
            </span>
            <span class="fr">
                <span class="layui-form-label">æç´¢æ¡ä»¶ï¼</span>
                <div class="layui-input-inline">
                    <input type="text" autocomplete="off" placeholder="è¯·è¾å¥æç´¢æ¡ä»¶" class="layui-input">
                </div>
                <button class="layui-btn mgl-20">æ¥è¯¢</button>
            </span>
        </div>
        <!-- table -->
        <div id="dateTable"></div>
    </div>
</div>


<script type="text/javascript" src="../frame/layui/layui.js"></script>
<script type="text/javascript" src="../js/index.js"></script>
<script type="text/javascript">

    // layuiæ¹æ³
    layui.use(['tree', 'table', 'vip_table', 'layer'], function () {

        // æä½å¯¹è±¡
        var table = layui.table
                , vipTable = layui.vip_table
                , layer = layui.layer
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
            console.log(obj.checked); //å½åæ¯å¦éä¸­ç¶æ
            console.log(obj.data); //éä¸­è¡çç¸å³æ°æ®
            console.log(obj.type); //å¦æè§¦åçæ¯å¨éï¼åä¸ºï¼allï¼å¦æè§¦åçæ¯åéï¼åä¸ºï¼one
        });

        // æ         æ´å¤æä½è¯·æ¥ç http://www.layui.com/demo/tree.html
        layui.tree({
            elem: '#tree' //ä¼ å¥åç´ éæ©å¨
            , click: function (item) { //ç¹å»èç¹åè°
                layer.msg('å½åèåç§°ï¼' + item.name);
                // å è½½ä¸­...
                var loadIndex = layer.load(2, {shade: false});
                // å³é­å è½½
                layer.close(loadIndex);
                // å·æ°è¡¨æ ¼
                tableIns.reload();
            }
            , nodes: [{ //èç¹
                name: 'ç¶èç¹1'
                , children: [{
                    name: 'å­èç¹11'
                    , children: [{
                        name: 'å­èç¹111'
                    }]
                }, {
                    name: 'å­èç¹12'
                }]
            }, {
                name: 'ç¶èç¹2'
                , children: [{
                    name: 'å­èç¹21'
                    , children: [{
                        name: 'å­èç¹211çº·çº·å°±ç±æå°±è¦å¶èå®éä½å°'
                    }]
                }]
            }]
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