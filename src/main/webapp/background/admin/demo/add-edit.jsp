<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>æ·»å -ä¿®æ¹</title>
    <link rel="stylesheet" href="../frame/layui/css/layui.css">
    <link rel="stylesheet" href="../frame/static/css/style.css">
    <link rel="icon" href="../frame/static/image/code.png">
</head>
<body class="body">

<form class="layui-form layui-form-pane" action="">
    <div class="layui-form-item">
        <label class="layui-form-label">é¿è¾å¥æ¡</label>

        <div class="layui-input-block">
            <input type="text" name="title" autocomplete="off" placeholder="è¯·è¾å¥æ é¢" lay-verify="required"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">ç­è¾å¥æ¡</label>

        <div class="layui-input-inline">
            <input type="text" name="username" lay-verify="required" placeholder="è¯·è¾å¥" autocomplete="off"
                   class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">æ¥æéæ©</label>

            <div class="layui-input-block">
                <input type="text" name="date" id="date" autocomplete="off" class="layui-input"
                       onclick="layui.laydate({elem: this})">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">è¡åè¡¨å</label>

            <div class="layui-input-inline">
                <input type="number" name="number" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">å¯ç </label>

        <div class="layui-input-inline">
            <input type="password" name="password" placeholder="è¯·è¾å¥å¯ç " autocomplete="off" class="layui-input">
        </div>
        <div class="layui-form-mid layui-word-aux">è¯·å¡å¿å¡«åç¨æ·å</div>
    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">èå´</label>

            <div class="layui-input-inline" style="width: 100px;">
                <input type="text" name="price_min" placeholder="ï¿¥" autocomplete="off" class="layui-input">
            </div>
            <div class="layui-form-mid">-</div>
            <div class="layui-input-inline" style="width: 100px;">
                <input type="text" name="price_max" placeholder="ï¿¥" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">åè¡éæ©æ¡</label>

        <div class="layui-input-block">
            <select name="interest" lay-filter="aihao">
                <option value=""></option>
                <option value="0">åä½</option>
                <option value="1" selected="">éè¯»</option>
                <option value="2">æ¸¸æ</option>
                <option value="3">é³ä¹</option>
                <option value="4">æè¡</option>
            </select>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">è¡åéæ©æ¡</label>

        <div class="layui-input-inline">
            <select name="quiz1">
                <option value="">è¯·éæ©ç</option>
                <option value="æµæ±" selected="">æµæ±ç</option>
                <option value="ä½ çå·¥å·">æ±è¥¿ç</option>
                <option value="ä½ æåæ¬¢çèå¸">ç¦å»ºç</option>
            </select>
        </div>
        <div class="layui-input-inline">
            <select name="quiz2">
                <option value="">è¯·éæ©å¸</option>
                <option value="æ­å·">æ­å·</option>
                <option value="å®æ³¢" disabled="">å®æ³¢</option>
                <option value="æ¸©å·">æ¸©å·</option>
                <option value="æ¸©å·">å°å·</option>
                <option value="æ¸©å·">ç»å´</option>
            </select>
        </div>
        <div class="layui-input-inline">
            <select name="quiz3">
                <option value="">è¯·éæ©å¿/åº</option>
                <option value="è¥¿æ¹åº">è¥¿æ¹åº</option>
                <option value="ä½æ­åº">ä½æ­åº</option>
                <option value="æ±å¢åº">ä¸´å®å¸</option>
            </select>
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <div class="layui-input-block">
            <textarea id="LAY_demo_editor" placeholder="è¯·è¾å¥åå®¹" class="layui-textarea"></textarea>
        </div>
        <label class="layui-form-label">è¯·è¾å¥åå®¹</label>
    </div>
    <div class="layui-form-item">
        <button class="layui-btn" lay-submit="" lay-filter="sub">æäº¤</button>
    </div>
</form>

<script src="../frame/layui/layui.js" charset="utf-8"></script>
<script type="text/javascript">
    layui.use(['form', 'layedit', 'laydate', 'element'], function () {
        var form = layui.form
                , layer = layui.layer
                , layedit = layui.layedit
                , laydate = layui.laydate
                , element = layui.element;

        //åå»ºä¸ä¸ªç¼è¾å¨
        var editIndex = layedit.build('LAY_demo_editor');

        //èªå®ä¹éªè¯è§å
        form.verify({
            title: function (value) {
                if (value.length < 5) {
                    return 'æ é¢è³å°å¾5ä¸ªå­ç¬¦å';
                }
            }
            , pass: [/(.+){6,12}$/, 'å¯ç å¿é¡»6å°12ä½']
            , content: function (value) {
                layedit.sync(editIndex);
            }
        });

        //çå¬æäº¤
        form.on('submit(sub)', function (data) {
            layer.alert(JSON.stringify(data.field), {
                title: 'æç»çæäº¤ä¿¡æ¯'
            });
            return false;
        });

        // you code ...


    });
</script>
</body>
</html>