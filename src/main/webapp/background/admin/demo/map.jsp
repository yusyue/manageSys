<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>å°å¾æä»¶</title>
    <link rel="stylesheet" href="../frame/layui/css/layui.css">
    <link rel="stylesheet" href="../frame/static/css/style.css">
    <link rel="icon" href="../frame/static/image/code.png">
</head>
<body class="body">

<!-- ä¸º ECharts åå¤ä¸ä¸ªå·å¤å¤§å°ï¼å®½é«ï¼ç DOM -->
<div id="main-line" style="width: 100%;height:400px;"></div>

<div id="main-bing" style="width: 100%;height:400px;"></div>

<script type="text/javascript" src="../frame/layui/layui.js"></script>
<script type="text/javascript" src="../frame/echarts/echarts.min.js"></script>
<script type="text/javascript">

    // åºäºåå¤å¥½çdomï¼åå§åechartså®ä¾
    var myChart = echarts.init(document.getElementById('main-line'));

    // ä½¿ç¨åæå®çéç½®é¡¹åæ°æ®æ¾ç¤ºå¾è¡¨ã
    myChart.setOption({
        title: {
            text: 'ç¤ºä¾'
        },
        tooltip: {},
        legend: {
            data:['éé']
        },
        xAxis: {
            data: ["è¡¬è¡«","ç¾æ¯è¡«","éªçººè¡«","è£¤å­","é«è·é","è¢å­"]
        },
        yAxis: {},
        series: [{
            name: 'éé',
            type: 'bar',
            data: [5, 20, 36, 10, 10, 20]
        }]
    });

    // åºäºåå¤å¥½çdomï¼åå§åechartså®ä¾
    var chart = echarts.init(document.getElementById('main-bing'));

    // éç½®
    chart.setOption({
        series : [
            {
                name: 'è®¿é®æ¥æº',
                type: 'pie',
                radius: '55%',
                data:[
                    {value:400, name:'æç´¢å¼æ'},
                    {value:335, name:'ç´æ¥è®¿é®'},
                    {value:310, name:'é®ä»¶è¥é'},
                    {value:274, name:'èçå¹¿å'},
                    {value:235, name:'è§é¢å¹¿å'}
                ]
            }
        ]
    });

    layui.use(['element'], function(){
        var element = layui.element
            ,$      = layui.jquery;

        // you code ...


    });
</script>
</body>
</html>