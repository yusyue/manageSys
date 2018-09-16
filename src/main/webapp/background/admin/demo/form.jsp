<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>è¡¨å</title>
    <link rel="stylesheet" href="../frame/layui/css/layui.css">
    <link rel="stylesheet" href="../frame/static/css/style.css">
    <link rel="icon" href="../frame/static/image/code.png">
</head>
<body class="body">


<blockquote class="layui-elem-quote layui-text">
    é´äºå°ä¼ä¼´çæ®éåé¦ï¼åæ¸©é¦¨æéä¸¤ä¸ªå¸¸è§âé®é¢âï¼1. <a href="http://www.layui.com/doc/base/faq.html#form" target="_blank">ä¸ºä»ä¹select/checkbox/radioæ²¡æ¾ç¤ºï¼</a> 2. <a href="http://www.layui.com/doc/modules/form.html#render" target="_blank">å¨ææ·»å çè¡¨ååç´ å¦ä½æ´æ°ï¼</a>
</blockquote>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>è¡¨åéåæ¼ç¤º</legend>
</fieldset>

<form class="layui-form" action="">
    <div class="layui-form-item">
        <label class="layui-form-label">åè¡è¾å¥æ¡</label>
        <div class="layui-input-block">
            <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="è¯·è¾å¥æ é¢" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">éªè¯å¿å¡«é¡¹</label>
        <div class="layui-input-block">
            <input type="text" name="username" lay-verify="required" placeholder="è¯·è¾å¥" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">éªè¯ææº</label>
            <div class="layui-input-inline">
                <input type="tel" name="phone" lay-verify="phone" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">éªè¯é®ç®±</label>
            <div class="layui-input-inline">
                <input type="text" name="email" lay-verify="email" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">å¤è§åéªè¯</label>
            <div class="layui-input-inline">
                <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">éªè¯æ¥æ</label>
            <div class="layui-input-inline">
                <input type="text" name="date" id="date" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">éªè¯é¾æ¥</label>
            <div class="layui-input-inline">
                <input type="tel" name="url" lay-verify="url" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">éªè¯èº«ä»½è¯</label>
        <div class="layui-input-block">
            <input type="text" name="identity" lay-verify="identity" placeholder="" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">èªå®ä¹éªè¯</label>
        <div class="layui-input-inline">
            <input type="password" name="password" lay-verify="pass" placeholder="è¯·è¾å¥å¯ç " autocomplete="off" class="layui-input">
        </div>
        <div class="layui-form-mid layui-word-aux">è¯·å¡«å6å°12ä½å¯ç </div>
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
        <div class="layui-inline">
            <label class="layui-form-label">åç»éæ©æ¡</label>
            <div class="layui-input-inline">
                <select name="quiz">
                    <option value="">è¯·éæ©é®é¢</option>
                    <optgroup label="åå¸è®°å¿">
                        <option value="ä½ å·¥ä½çç¬¬ä¸ä¸ªåå¸">ä½ å·¥ä½çç¬¬ä¸ä¸ªåå¸</option>
                    </optgroup>
                    <optgroup label="å­¦çæ¶ä»£">
                        <option value="ä½ çå·¥å·">ä½ çå·¥å·</option>
                        <option value="ä½ æåæ¬¢çèå¸">ä½ æåæ¬¢çèå¸</option>
                    </optgroup>
                </select>
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">æç´¢éæ©æ¡</label>
            <div class="layui-input-inline">
                <select name="modules" lay-verify="required" lay-search="">
                    <option value="">ç´æ¥éæ©ææç´¢éæ©</option>
                    <option value="1">layer</option>
                    <option value="2">form</option>
                    <option value="3">layim</option>
                    <option value="4">element</option>
                    <option value="5">laytpl</option>
                    <option value="6">upload</option>
                    <option value="7">laydate</option>
                    <option value="8">laypage</option>
                    <option value="9">flow</option>
                    <option value="10">util</option>
                    <option value="11">code</option>
                    <option value="12">tree</option>
                    <option value="13">layedit</option>
                    <option value="14">nav</option>
                    <option value="15">tab</option>
                    <option value="16">table</option>
                    <option value="17">select</option>
                    <option value="18">checkbox</option>
                    <option value="19">switch</option>
                    <option value="20">radio</option>
                </select>
            </div>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">èå¨éæ©æ¡</label>
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
        <div class="layui-form-mid layui-word-aux">æ­¤å¤åªæ¯æ¼ç¤ºèå¨æçï¼å¹¶æªåèå¨äº¤äº</div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">å¤éæ¡</label>
        <div class="layui-input-block">
            <input type="checkbox" name="like[write]" title="åä½">
            <input type="checkbox" name="like[read]" title="éè¯»" checked="">
            <input type="checkbox" name="like[game]" title="æ¸¸æ">
        </div>
    </div>

    <div class="layui-form-item" pane="">
        <label class="layui-form-label">åå§å¤éæ¡</label>
        <div class="layui-input-block">
            <input type="checkbox" name="like1[write]" lay-skin="primary" title="åä½" checked="">
            <input type="checkbox" name="like1[read]" lay-skin="primary" title="éè¯»">
            <input type="checkbox" name="like1[game]" lay-skin="primary" title="æ¸¸æ" disabled="">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">å¼å³-é»è®¤å³</label>
        <div class="layui-input-block">
            <input type="checkbox" name="close" lay-skin="switch" lay-text="ON|OFF">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">å¼å³-é»è®¤å¼</label>
        <div class="layui-input-block">
            <input type="checkbox" checked="" name="open" lay-skin="switch" lay-filter="switchTest" lay-text="ON|OFF">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">åéæ¡</label>
        <div class="layui-input-block">
            <input type="radio" name="sex" value="ç·" title="ç·" checked="">
            <input type="radio" name="sex" value="å¥³" title="å¥³">
            <input type="radio" name="sex" value="ç¦" title="ç¦ç¨" disabled="">
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">æ®éææ¬å</label>
        <div class="layui-input-block">
            <textarea placeholder="è¯·è¾å¥åå®¹" class="layui-textarea"></textarea>
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">ç¼è¾å¨</label>
        <div class="layui-input-block">
            <textarea class="layui-textarea layui-hide" name="content" lay-verify="content" id="LAY_demo_editor"></textarea>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit="" lay-filter="demo1">ç«å³æäº¤</button>
            <button type="reset" class="layui-btn layui-btn-primary">éç½®</button>
        </div>
    </div>
</form>
<!-- éç¨-970*90 -->
<div>
    <ins class="adsbygoogle" style="display:inline-block;width:970px;height:90px" data-ad-client="ca-pub-6111334333458862" data-ad-slot="6835627838"></ins>
</div>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
    <legend>æ¹æ¡é£æ ¼çè¡¨åéå</legend>
</fieldset>
<form class="layui-form layui-form-pane" action="">
    <div class="layui-form-item">
        <label class="layui-form-label">é¿è¾å¥æ¡</label>
        <div class="layui-input-block">
            <input type="text" name="title" autocomplete="off" placeholder="è¯·è¾å¥æ é¢" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">ç­è¾å¥æ¡</label>
        <div class="layui-input-inline">
            <input type="text" name="username" lay-verify="required" placeholder="è¯·è¾å¥" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">æ¥æéæ©</label>
            <div class="layui-input-block">
                <input type="text" name="date" id="date1" autocomplete="off" class="layui-input">
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
    <div class="layui-form-item" pane="">
        <label class="layui-form-label">å¼å³-å¼</label>
        <div class="layui-input-block">
            <input type="checkbox" checked="" name="open" lay-skin="switch" lay-filter="switchTest" title="å¼å³">
        </div>
    </div>
    <div class="layui-form-item" pane="">
        <label class="layui-form-label">åéæ¡</label>
        <div class="layui-input-block">
            <input type="radio" name="sex" value="ç·" title="ç·" checked="">
            <input type="radio" name="sex" value="å¥³" title="å¥³">
            <input type="radio" name="sex" value="ç¦" title="ç¦ç¨" disabled="">
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">ææ¬å</label>
        <div class="layui-input-block">
            <textarea placeholder="è¯·è¾å¥åå®¹" class="layui-textarea"></textarea>
        </div>
    </div>
    <div class="layui-form-item">
        <button class="layui-btn" lay-submit="" lay-filter="demo2">è·³è½¬å¼æäº¤</button>
    </div>
</form>

<script src="../frame/layui/layui.js" charset="utf-8"></script>
<script>
    layui.use(['form', 'layedit', 'laydate'], function(){
        var form = layui.form
                ,layer = layui.layer
                ,layedit = layui.layedit
                ,laydate = layui.laydate;

        //æ¥æ
        laydate.render({
            elem: '#date'
        });
        laydate.render({
            elem: '#date1'
        });

        //åå»ºä¸ä¸ªç¼è¾å¨
        var editIndex = layedit.build('LAY_demo_editor');

        //èªå®ä¹éªè¯è§å
        form.verify({
            title: function(value){
                if(value.length < 5){
                    return 'æ é¢è³å°å¾5ä¸ªå­ç¬¦å';
                }
            }
            ,pass: [/(.+){6,12}$/, 'å¯ç å¿é¡»6å°12ä½']
            ,content: function(value){
                layedit.sync(editIndex);
            }
        });

        //çå¬æå®å¼å³
        form.on('switch(switchTest)', function(data){
            layer.msg('å¼å³checkedï¼'+ (this.checked ? 'true' : 'false'), {
                offset: '6px'
            });
            layer.tips('æ¸©é¦¨æç¤ºï¼è¯·æ³¨æå¼å³ç¶æçæå­å¯ä»¥éæå®ä¹ï¼èä¸ä»ä»æ¯ON|OFF', data.othis)
        });

        //çå¬æäº¤
        form.on('submit(demo1)', function(data){
            layer.alert(JSON.stringify(data.field), {
                title: 'æç»çæäº¤ä¿¡æ¯'
            });
            return false;
        });


    });
</script>
</body>
</html>