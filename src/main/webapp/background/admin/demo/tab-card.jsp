<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>éé¡¹å¡</title>
    <link rel="stylesheet" href="../frame/layui/css/layui.css">
    <link rel="stylesheet" href="../frame/static/css/style.css">
    <link rel="icon" href="../frame/static/image/code.png">
</head>
<body class="body">

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>é»è®¤é£æ ¼çTab</legend>
</fieldset>

<div class="layui-tab">
    <ul class="layui-tab-title">
        <li class="layui-this">ç½ç«è®¾ç½®</li>
        <li>ç¨æ·ç®¡ç</li>
        <li>æéåé</li>
        <li>ååç®¡ç</li>
        <li>è®¢åç®¡ç</li>
    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
            1. é«åº¦é»è®¤èªéåºï¼ä¹å¯ä»¥éæåºå®½ã
            <br>2. Tabè¿è¡äºååºå¼å¤çï¼æä»¥æ éæå¿æ°éå¤å°ã
        </div>
        <div class="layui-tab-item">åå®¹2</div>
        <div class="layui-tab-item">åå®¹3</div>
        <div class="layui-tab-item">åå®¹4</div>
        <div class="layui-tab-item">åå®¹5</div>
    </div>
</div>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
    <legend>å¨ææä½Tab</legend>
</fieldset>

<div class="layui-tab" lay-filter="demo" lay-allowclose="true">
    <ul class="layui-tab-title">
        <li class="layui-this">ç½ç«è®¾ç½®</li>
        <li>ç¨æ·ç®¡ç</li>
        <li>æéåé</li>
        <li>ååç®¡ç</li>
        <li>è®¢åç®¡ç</li>
    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">åå®¹1</div>
        <div class="layui-tab-item">åå®¹2</div>
        <div class="layui-tab-item">åå®¹3</div>
        <div class="layui-tab-item">åå®¹4</div>
        <div class="layui-tab-item">åå®¹5</div>
    </div>
</div>
<div class="site-demo-button">
    <button class="layui-btn site-demo-active" data-type="tabAdd">æ°å¢ä¸ä¸ªTabé¡¹</button>
    <button class="layui-btn site-demo-active" data-type="tabDelete">å é¤ç¬¬ä¸ä¸ªTabé¡¹</button>
    <button class="layui-btn site-demo-active" data-type="tabChange">åæ¢å°ç¬¬äºä¸ªTabé¡¹</button>
</div>

<!-- éç¨-970*90 -->
<div style="margin-top: 20px;">
    <ins class="adsbygoogle" style="display:inline-block;width:970px;height:90px"
         data-ad-client="ca-pub-6111334333458862" data-ad-slot="6835627838"></ins>
</div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
    <legend>ç®æ´é£æ ¼çTab</legend>
</fieldset>

<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
    <ul class="layui-tab-title">
        <li class="layui-this">ç½ç«è®¾ç½®</li>
        <li>ç¨æ·ç®¡ç</li>
        <li>æéåé</li>
        <li>ååç®¡ç</li>
        <li>è®¢åç®¡ç</li>
    </ul>
    <div class="layui-tab-content" style="height: 100px;">
        <div class="layui-tab-item layui-show">åå®¹ä¸ä¸æ ·æ¯è¦æï¼å ä¸ºä½ å¯ä»¥çå¬tabäºä»¶ï¼éè¯»ä¸ææ¡£å°±æ¯äºï¼</div>
        <div class="layui-tab-item">åå®¹2</div>
        <div class="layui-tab-item">åå®¹3</div>
        <div class="layui-tab-item">åå®¹4</div>
        <div class="layui-tab-item">åå®¹5</div>
    </div>
</div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
    <legend>å¡çé£æ ¼çTab</legend>
</fieldset>

<div class="layui-tab layui-tab-card">
    <ul class="layui-tab-title">
        <li class="layui-this">ç½ç«è®¾ç½®</li>
        <li>ç¨æ·ç®¡ç</li>
        <li>æéåé</li>
        <li>ååç®¡ç</li>
        <li>è®¢åç®¡ç</li>
    </ul>
    <div class="layui-tab-content" style="height: 100px;">
        <div class="layui-tab-item layui-show">é»è®¤å®½åº¦æ¯ç¸å¯¹äºç¶åç´ 100%éåºçï¼ä½ ä¹å¯ä»¥åºå®å®½åº¦ã</div>
        <div class="layui-tab-item">2</div>
        <div class="layui-tab-item">3</div>
        <div class="layui-tab-item">4</div>
        <div class="layui-tab-item">5</div>
        <div class="layui-tab-item">6</div>
    </div>
</div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
    <legend>å½Tabæ°è¶è¿ä¸å®å®½åº¦</legend>
</fieldset>

<div class="layui-tab layui-tab-card" style="width: 290px;">
    <ul class="layui-tab-title">
        <li class="layui-this">ç½ç«è®¾ç½®</li>
        <li>ç¨æ·ç®¡ç</li>
        <li>æéåé</li>
        <li>ååç®¡ç</li>
        <li>è®¢åç®¡ç</li>
    </ul>
    <div class="layui-tab-content" style="height: 100px;">
        <div class="layui-tab-item layui-show">
            1. å®½åº¦è¶³å¤ï¼å°±ä¸ä¼åºç°å³ä¸å¾æ ï¼å®½åº¦ä¸å¤ï¼å°±ä¼å¼å¯å±å¼åè½ã
            <br>2. å¦æä½ çå®½åº¦æ¯èªéåºçï¼Tabä¼èªå¨å¤æ­æ¯å¦éè¦å±å¼ï¼å¹¶éç¨äºææé£æ ¼ã
        </div>
        <div class="layui-tab-item">2</div>
        <div class="layui-tab-item">3</div>
        <div class="layui-tab-item">4</div>
        <div class="layui-tab-item">5</div>
        <div class="layui-tab-item">6</div>
    </div>
</div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
    <legend>å¸¦å é¤åè½çTab</legend>
</fieldset>

<div class="layui-tab layui-tab-card" lay-allowclose="true">
    <ul class="layui-tab-title">
        <li class="layui-this">ç½ç«è®¾ç½®</li>
        <li>ç¨æ·åºæ¬ç®¡ç</li>
        <li>æéåé</li>
        <li>ååç®¡ç</li>
        <li>è®¢åç®¡ç</li>
    </ul>
    <div class="layui-tab-content" style="height: 150px;">
        <div class="layui-tab-item layui-show">
            1. æä¸ªäººæ¯è¾åæ¬¢å¡çé£æ ¼çï¼æä»¥ä½ åç°åæ¯ä»¥å¡ççé£æ ¼ä¸¾ä¾
            2. å é¤åè½éç¨äºææé£æ ¼
        </div>
        <div class="layui-tab-item">2</div>
        <div class="layui-tab-item">3</div>
        <div class="layui-tab-item">4</div>
        <div class="layui-tab-item">5</div>
        <div class="layui-tab-item">6</div>
    </div>
</div>

<script type="text/javascript" src="../frame/layui/layui.js"></script>
<script type="text/javascript">
    layui.use('element', function () {
        var $ = layui.jquery
                , element = layui.element;

        //è§¦åäºä»¶
        var active = {
            tabAdd: function () {
                //æ°å¢ä¸ä¸ªTabé¡¹
                element.tabAdd('demo', {
                    title: 'æ°éé¡¹' + (Math.random() * 1000 | 0) //ç¨äºæ¼ç¤º
                    , content: 'åå®¹' + (Math.random() * 1000 | 0)
                })
            }
            , tabDelete: function () {
                //å é¤æå®Tabé¡¹
                element.tabDelete('demo', 2); //å é¤ç¬¬3é¡¹ï¼æ³¨æåºå·æ¯ä»0å¼å§è®¡ç®ï¼
            }
            , tabChange: function () {
                //åæ¢å°æå®Tabé¡¹
                element.tabChange('demo', 1); //åæ¢å°ç¬¬2é¡¹ï¼æ³¨æåºå·æ¯ä»0å¼å§è®¡ç®ï¼
            }
        };

        $('.site-demo-active').on('click', function () {
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });

        // you code ...


    });
</script>

</body>
</html>