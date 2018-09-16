<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>æ¬¢è¿é¡µ</title>
    <link rel="stylesheet" href="../frame/layui/css/layui.css">
    <link rel="stylesheet" href="../frame/static/css/style.css">
    <link rel="icon" href="../frame/static/image/code.png">
</head>
<body class="body">

<div class="layui-row layui-col-space10 my-index-main">
    <div class="layui-col-xs4 layui-col-sm2 layui-col-md2">
        <div class="my-nav-btn layui-clear" data-href="./demo/btn.jsp">
            <div class="layui-col-md5">
                <button class="layui-btn layui-btn-big layui-btn-danger layui-icon">&#xe756;</button>
            </div>
            <div class="layui-col-md7 tc">
                <p class="my-nav-text">40</p>
                <p class="my-nav-text layui-elip">æé®</p>
            </div>
        </div>
    </div>
    <div class="layui-col-xs4 layui-col-sm2 layui-col-md2">
        <div class="my-nav-btn layui-clear" data-href="./demo/form.jsp">
            <div class="layui-col-md5">
                <button class="layui-btn layui-btn-big layui-btn-warm layui-icon">&#xe735;</button>
            </div>
            <div class="layui-col-md7 tc">
                <p class="my-nav-text">40</p>
                <p class="my-nav-text layui-elip">è¡¨å</p>
            </div>
        </div>
    </div>
    <div class="layui-col-xs4 layui-col-sm2 layui-col-md2">
        <div class="my-nav-btn layui-clear" data-href="./demo/table.jsp">
            <div class="layui-col-md5">
                <button class="layui-btn layui-btn-big layui-icon">&#xe715;</button>
            </div>
            <div class="layui-col-md7 tc">
                <p class="my-nav-text">40</p>
                <p class="my-nav-text layui-elip">è¡¨æ ¼</p>
            </div>
        </div>
    </div>
    <div class="layui-col-xs4 layui-col-sm2 layui-col-md2">
        <div class="my-nav-btn layui-clear" data-href="./demo/tab-card.jsp">
            <div class="layui-col-md5">
                <button class="layui-btn layui-btn-big layui-btn-normal layui-icon">&#xe705;</button>
            </div>
            <div class="layui-col-md7 tc">
                <p class="my-nav-text">40</p>
                <p class="my-nav-text layui-elip">éé¡¹å¡</p>
            </div>
        </div>
    </div>
    <div class="layui-col-xs4 layui-col-sm2 layui-col-md2">
        <div class="my-nav-btn layui-clear" data-href="./demo/progress-bar.jsp">
            <div class="layui-col-md5">
                <button class="layui-btn layui-btn-big layui-bg-cyan layui-icon">&#xe6b2;</button>
            </div>
            <div class="layui-col-md7 tc">
                <p class="my-nav-text">40</p>
                <p class="my-nav-text layui-elip">è¿åº¦æ¡</p>
            </div>
        </div>
    </div>
    <div class="layui-col-xs4 layui-col-sm2 layui-col-md2">
        <div class="my-nav-btn layui-clear" data-href="./demo/folding-panel.jsp">
            <div class="layui-col-md5">
                <button class="layui-btn layui-btn-big layui-bg-black layui-icon">&#xe698;</button>
            </div>
            <div class="layui-col-md7 tc">
                <p class="my-nav-text">40</p>
                <p class="my-nav-text layui-elip">æå é¢æ¿</p>
            </div>
        </div>
    </div>

    <div class="layui-col-xs12 layui-col-sm6 layui-col-md6">
        <div class="layui-collapse">
            <div class="layui-colla-item">
                <h2 class="layui-colla-title">è¿åº¦æ¡</h2>
                <div class="layui-colla-content layui-show">

                    <div class="layui-progress">
                        <div class="layui-progress-bar" lay-percent="10%"></div>
                    </div>
                    <br/>
                    <div class="layui-progress" lay-showPercent="yes">
                        <div class="layui-progress-bar layui-bg-red" lay-percent="30%"></div>
                    </div>
                    <br/>
                    <div class="layui-progress layui-progress-big">
                        <div class="layui-progress-bar" lay-percent="20%"></div>
                    </div>
                    <br/>
                    <div class="layui-progress layui-progress-big">
                        <div class="layui-progress-bar layui-bg-orange" lay-percent="50%"></div>
                    </div>
                    <br/>
                    <div class="layui-progress layui-progress-big" lay-showPercent="true">
                        <div class="layui-progress-bar layui-bg-blue" lay-percent="80%"></div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div class="layui-col-xs12 layui-col-sm6 layui-col-md6">
        <div class="layui-collapse">
            <div class="layui-colla-item">
                <h2 class="layui-colla-title">è¡¨æ ¼</h2>
                <div class="layui-colla-content layui-show">

                    <table class="layui-table">
                        <colgroup>
                            <col width="150">
                            <col width="200">
                            <col>
                        </colgroup>
                        <thead>
                        <tr>
                            <th>æµç§°</th>
                            <th>å å¥æ¶é´</th>
                            <th>ç­¾å</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>è´¤å¿</td>
                            <td>2016-11-29</td>
                            <td>äººçå°±åæ¯ä¸åºä¿®è¡</td>
                        </tr>
                        <tr>
                            <td>è®¸é²å¿</td>
                            <td>2016-11-28</td>
                            <td>äºåä¸äººä¹ä¸­éè§ä½ æéè§çäººï¼äºåä¸å¹´ä¹ä¸­ï¼æ¶é´çæ æ¶¯çèééâ¦</td>
                        </tr>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </div>

    <div class="layui-col-xs12 layui-col-sm6 layui-col-md4">
        <div class="layui-collapse">
            <div class="layui-colla-item">
                <h2 class="layui-colla-title">çæ¬</h2>
                <div class="layui-colla-content layui-show">

                    <ul class="layui-timeline max-auto">
                        <li class="layui-timeline-item">
                            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                            <div class="layui-timeline-content layui-text">
                                <h3 class="layui-timeline-title">v1.8.0</h3>
                                <p>
                                    æ´æ°æ¥æ:2017-08-26
                                </p>
                                <ul>
                                    <li>æ´æ°layui-v1.0.9ä¸ºlayui-v2.0.2çæ¬</li>
                                    <li>å³é®å¢å å³é­å¨é¨æ ç­¾æé®</li>
                                    <li>æ´æ°æ¬¢è¿é¡µé¢</li>
                                    <li>æ´æ°data-tableé¡µé¢åtree-tableé¡µé¢ä¸ºlayuièªå¸¦tableç»ä»¶</li>
                                    <li>
                                        <h4>æ°å¢jsåè½</h4>
                                        <ul>
                                            <li>
                                                <p>vip_table.js</p>
                                                <ul>
                                                    <li>getFullHeightæ¹æ³  getFullHeight();    // è¿åå­é¡µé¢æ´ä½é«åº¦,ç¨äºtableç»ä»¶è®¾ç½®å¨å±é«åº¦</li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>ä¿®æ¹å·²ç¥BUG</li>
                                </ul>
                            </div>
                        </li>
                        <li class="layui-timeline-item">
                            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                            <div class="layui-timeline-content layui-text">
                                <h3 class="layui-timeline-title">v1.7.0</h3>
                                <p>æ´æ°æ¶é´:2017-05-21</p>
                                <ul>
                                    <li>ä¼åä¸»é¢æ ·å¼ç»è</li>
                                    <li>æ ç­¾æ°å¢åå»å³é­å½åæ ç­¾åè½</li>
                                    <li>æ ç­¾æ°å¢å³é®åè½</li>
                                    <li>
                                        <h5>æ°å¢jsåè½ã   è¯¦ç»å¯æ¥çãframe/static/jsãæä»¶å¤¹åçjs</h5>
                                        <ul>
                                            <li>
                                                <h4>vip_nav.js ãä¸»é¡µèåjsã</h4>
                                                <ul>
                                                    <li>mainæ¹æ³       main(è¯·æ±å°å,è¿æ»¤ID,æ¯å¦å±å¼,æºå¸¦åæ°);</li>
                                                    <li>top_leftæ¹æ³   top_left(è¯·æ±å°å,è¿æ»¤ID,æ¯å¦å±å¼,æºå¸¦åæ°);</li>
                                                </ul>
                                            </li>
                                            <li>
                                                <h4>vip_tab.js ãå­é¡µé¢æä½ç¶é¡µé¢éé¡¹å¡jsã</h4>
                                                <ul>
                                                    <li>addæ¹æ³            add(æä½å¯¹è±¡ï¼æ ç­¾æ é¢ï¼urlå°å);</li>
                                                    <li>getThisTabIdæ¹æ³   getThisTabId();     // è¿åå½åå±ç¤ºé¡µé¢ç¶çº§çªå£æ ç­¾çlay-id</li>
                                                    <li>delæ¹æ³            del(æ ç­¾lay-id);</li>
                                                </ul>
                                            </li>
                                            <li>
                                                <h4>vip_table.js ãè¡¨æ ¼js,è¯¥jså±äºæ´åã</h4>
                                                <ul>
                                                    <li>deleteAllæ¹æ³      deleteAll(ids,è¯·æ±çurl,æä½æåè·³è½¬url,æä½å¤±è´¥è·³è½¬url);</li>
                                                    <li>unixToDateæ¹æ³     unixToDate(æ¶é´æ³,æ¯å¦åªæ¾ç¤ºå¹´ææ¥æ¶å,8);        // è¿åæ­£å¸¸æ¶é´</li>
                                                    <li>getIdsæ¹æ³         getIds(è¡¨æ ¼å¯¹è±¡,æ¯æ¡æ°æ®çå±æ§id);      // è¿åéè¦ç ids</li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>ä¿®æ¹å·²ç¥BUGã</li>
                                </ul>
                            </div>
                        </li>
                        <li class="layui-timeline-item">
                            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                            <div class="layui-timeline-content layui-text">
                                <h3 class="layui-timeline-title">v1.6.0</h3>
                                <p>æ´æ°æ¶é´:2017-04-25</p>
                                <ul>
                                    <li>ä¼åCSSãJS</li>
                                    <li>æ°å¢æ°çç»å½ãæ³¨åé¡µé¢</li>
                                    <li>æ°å¢ä¸»é¢åè½ï¼æä¾é»è®¤ãçº¯ç½ãèç½ä¸ç§ä¸»é¢éç½®</li>
                                    <li>å¯¼èªæ æ·»å å¾æ </li>
                                    <li>ä¿®æ¹å·²ç¥BUG</li>
                                </ul>
                            </div>
                        </li>
                        <li class="layui-timeline-item">
                            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                            <div class="layui-timeline-content layui-text">
                                <h3 class="layui-timeline-title">v1.5.1</h3>
                                <p>æ´æ°æ¶é´:2017-03-21</p>
                                <ul>
                                    <li>ä¿®æ¹æµè§å¨çªå£resizeæ¶ä¸æ­éªçBUGã  æè°¢ï¼Clannad-</li>
                                </ul>
                            </div>
                        </li>
                        <li class="layui-timeline-item">
                            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                            <div class="layui-timeline-content layui-text">
                                <h3 class="layui-timeline-title">v1.5.0</h3>
                                <p>æ´æ°æ¶é´:2017-03-20</p>
                                <ul>
                                    <li>æ´æ°layuiæ¡æ¶ä¸ºææ°ç1.0.9_rtsçæ¬</li>
                                    <li>ä¼åcss,æ ·å¼æ´å æ¥è¿vip-adminç®¡çç³»ç»v1.0.5</li>
                                    <li>æ°å¢ææï¼å¯¼èªæ ç¹å»æ ç®å³ä¾§æ·»å ç¸åºtabéé¡¹å¡,ç¹å»å·²ç»çæè¿çéé¡¹å¡ç´æ¥è·³è½¬å°è¯¥ééé¡¹å¡</li>
                                    <li>æ°å¢å¯¼èªæ æ¶ç¼©æé®</li>
                                    <li>ä¿®æ¹å·²ç¥BUG</li>
                                </ul>
                            </div>
                        </li>
                        <li class="layui-timeline-item">
                            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                            <div class="layui-timeline-content layui-text">
                                <h3 class="layui-timeline-title">1.1.0</h3>
                                <p>æ´æ°æ¶é´:2017-02-27</p>
                                <ul>
                                    <li>ç»å½é¡µé¢æ·»å å¤´é¨æ é¢</li>
                                    <li>æ°å¢tree table é¡µé¢</li>
                                    <li>æ°å¢404é¡µé¢</li>
                                    <li>æ°å¢tipsæç¤ºé¡µé¢</li>
                                    <li>
                                        <h4>jsåè½: å·ä½æä½è¯·æ¥ç js/table-tool.js</h4>
                                        <ul>
                                            <li>getIds(tableå¯¹è±¡,è·åinputä¸ºidçå±æ§);</li>
                                            <li>deleteAll(ids,è¯·æ±url,æä½æåè·³è½¬url,æä½å¤±è´¥è·³è½¬url);</li>
                                            <li>UnixToDate(æ¶é´æ³,æ¾ç¤ºå¹´ææ¥æ¶å,å 8å°æ¶æ¾ç¤ºæ­£å¸¸æ¶é´åº);</li>
                                        </ul>
                                    </li>
                                    <li>è¯¥çæ¬å·²å¼å®¹ææºæµè§</li>
                                    <li>ä¿®æ¹å·²ç¥BUG</li>
                                </ul>
                            </div>
                        </li>
                        <li class="layui-timeline-item">
                            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                            <div class="layui-timeline-content layui-text">
                                <h3 class="layui-timeline-title">v1.0.1</h3>
                                <p>æ´æ°æ¶é´:2017-02-16</p>
                                <ul>
                                    <li>ä¼ådatatablesè¡¨æ ¼ï¼æ·»å æåºå¾æ ï¼ç¹å»ååºéåºæ´å ç¾è§ï¼è¡¨æ ¼å¨éä¼åï¼å¨éåææéä¸­é¡¹æ·»å èæ¯é¢è²ï¼ä½¿ä¹éä¸­æ´å ææ¾</li>
                                    <li>æ·»å echeartså¾è¡¨æä»¶ï¼å±ç¤ºäºåºæ¬çæ±ç¶å¾åé¥¼å¾ç¤ºä¾</li>
                                </ul>
                            </div>
                        </li>
                        <li class="layui-timeline-item">
                            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                            <div class="layui-timeline-content layui-text">
                                <h3 class="layui-timeline-title">v1.0.0</h3>
                                <p>æ´æ°æ¶é´:2017-01-06</p>
                                <ul>
                                    <li>è¯¥æ¨¡æ¿æå¤§åä¿çäºåçlayuiçåºç¡æ ·å¼ï¼æ´åè¡æçä¸å¥åå°æ¨¡æ¿</li>
                                    <li>è¯¥æ¨¡æ¿éåäºlayuiæä»¶ãdatatablesæä»¶</li>
                                    <li>è¯¥æ¨¡æ¿ä½¿ç¨layuiåºç¡æ ·å¼ä¸­çæé®ãè¡¨åãè¡¨æ ¼ãåéé¡¹å¡</li>
                                    <li>datatablesè¡¨æ ¼ålayuiè¡¨æ ¼æ·±åº¦æ´åï¼ä½¿ç¨æ´å æ¹ä¾¿ãç¾è§ãäººæ§å</li>
                                    <li>æ©å±äºæ¬¢è¿é¡µé¢ãç»å½é¡µé¢</li>
                                </ul>
                            </div>
                        </li>
                        <li class="layui-timeline-item">
                            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                            <div class="layui-timeline-content layui-text">
                                <div class="layui-timeline-title">å¼å§äº2017å¹´01æ06æ¥</div>
                            </div>
                        </li>
                    </ul>

                </div>
            </div>
        </div>
    </div>
    <div class="layui-col-xs12 layui-col-sm6 layui-col-md4">
        <div class="layui-collapse">
            <div class="layui-colla-item">
                <h2 class="layui-colla-title">å¾è¡¨</h2>
                <div class="layui-colla-content layui-show">

                    <div id="main-line" style="height: 450px;"></div>

                </div>
            </div>
        </div>
    </div>
    <div class="layui-col-xs12 layui-col-sm6 layui-col-md4">
        <div class="layui-collapse">
            <div class="layui-colla-item">
                <h2 class="layui-colla-title">è¡¨å</h2>
                <div class="layui-colla-content layui-show">

                    <form class="layui-form max-auto" action="">
                        <div class="layui-form-item">
                            <label class="layui-form-label">è¾å¥æ¡</label>
                            <div class="layui-input-block">
                                <input type="text" name="title" required lay-verify="required" placeholder="è¯·è¾å¥æ é¢"
                                       autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">å¯ç æ¡</label>
                            <div class="layui-input-inline">
                                <input type="password" name="password" required lay-verify="required"
                                       placeholder="è¯·è¾å¥å¯ç " autocomplete="off" class="layui-input">
                            </div>
                            <div class="layui-form-mid layui-word-aux">è¾å©æå­</div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">éæ©æ¡</label>
                            <div class="layui-input-block">
                                <select name="city" lay-verify="required">
                                    <option value=""></option>
                                    <option value="0">åäº¬</option>
                                    <option value="1">ä¸æµ·</option>
                                    <option value="2">å¹¿å·</option>
                                    <option value="3">æ·±å³</option>
                                    <option value="4">æ­å·</option>
                                </select>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">å¤éæ¡</label>
                            <div class="layui-input-block">
                                <input type="checkbox" name="like[write]" title="åä½">
                                <input type="checkbox" name="like[read]" title="éè¯»" checked>
                                <input type="checkbox" name="like[dai]" title="åå">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">å¼å³</label>
                            <div class="layui-input-block">
                                <input type="checkbox" name="switch" lay-skin="switch">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">åéæ¡</label>
                            <div class="layui-input-block">
                                <input type="radio" name="sex" value="ç·" title="ç·">
                                <input type="radio" name="sex" value="å¥³" title="å¥³" checked>
                            </div>
                        </div>
                        <div class="layui-form-item layui-form-text">
                            <label class="layui-form-label">ææ¬å</label>
                            <div class="layui-input-block">
                                <textarea name="desc" placeholder="è¯·è¾å¥åå®¹" class="layui-textarea"></textarea>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <button class="layui-btn" lay-submit lay-filter="formDemo">ç«å³æäº¤</button>
                                <button type="reset" class="layui-btn layui-btn-primary">éç½®</button>
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="../frame/layui/layui.js"></script>
<script type="text/javascript" src="../js/index.js"></script>
<script type="text/javascript" src="../frame/echarts/echarts.min.js"></script>
<script type="text/javascript">
    layui.use(['element', 'form', 'table', 'layer', 'vip_tab'], function () {
        var form = layui.form
                , table = layui.table
                , layer = layui.layer
                , vipTab = layui.vip_tab
                , element = layui.element
                , $ = layui.jquery;

        // åºäºåå¤å¥½çdomï¼åå§åechartså®ä¾
        var myChart = echarts.init(document.getElementById('main-line'));

        // ä½¿ç¨åæå®çéç½®é¡¹åæ°æ®æ¾ç¤ºå¾è¡¨ã
        myChart.setOption({
            title: {
                text: 'ç¤ºä¾'
            },
            tooltip: {},
            legend: {
                data: ['éé']
            },
            xAxis: {
                data: ["è¡¬è¡«", "ç¾æ¯è¡«", "éªçººè¡«", "è£¤å­", "é«è·é", "è¢å­"]
            },
            yAxis: {},
            series: [{
                name: 'éé',
                type: 'bar',
                data: [5, 20, 36, 10, 10, 20]
            }]
        });

        // æå¼éé¡¹å¡
        $('.my-nav-btn').on('click', function(){
            if($(this).attr('data-href')){
                //vipTab.add('','æ é¢','è·¯å¾');
                vipTab.add($(this),'<i class="layui-icon">'+$(this).find("button").jsp()+'</i>'+$(this).find('p:last-child').jsp(),$(this).attr('data-href'));
            }
        });

        // you code ...


    });
</script>
</body>
</html>