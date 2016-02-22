<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- saved from url=(0024)http://www.etongdai.com/ -->
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head>
    <script>
        var bairong = true;
    </script>
    <meta property="csaiapi" content="33e75ff09dd601bb">
    <meta property="qc:admins" content="261362145246547674116375">
    <meta property="wb:webmaster" content="3e3497e039dc5b25">
    <meta name="baidu-site-verification" content="Jfh5Zmhbr6">
    <title>易通贷_成熟投资人选择的安全投资平台</title>


    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta name="description" content="易通贷，中国领先的P2P网络投资理财平台，注册资金1个亿。投资无风险，本息有保障，门槛低，收益高，100元也能做理财。是个人小额投资、家庭理财的理想选择。">
    <meta name="keywords" content="P2P理财,P2P网贷,投资理财,网络理财,网络投资,小额投资理财,如何投资理财,个人理财,家庭理财,易通贷">
    <link type="/image/x-icon" rel="Icon" href="http://www.etongdai.com/etd.ico">
    <link type="/image/x-icon" rel="Shortcut Icon" href="http://www.etongdai.com/etd.ico">
    <link type="/image/x-icon" rel="Bookmark" href="http://www.etongdai.com/etd.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7">
    <!--[if IE 6]>
    <script type="text/javascript">
        DD_belatedPNG.fix('.png,.png:hover,img,background');
    </script>
    <![endif]-->
    <link href="static/css/com.css" rel="stylesheet">
    <link href="static/css/tf.css" rel="stylesheet">
    <script src="static/js/jquery-1.7.2.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="static/js/eframe.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript" src="static/js/digital.js"></script>
    <script type="text/javascript" src="static/js/fancySelect.js" charset="utf-8"></script>
    <script type="text/javascript" src="static/js/base.js"></script>
    <script type="text/javascript" src="static/js/md5.js"></script>
    <script type="text/javascript">
        $(function () {
            var Stringserver = {
                server: "http://app.etongdai.com",
                staticServer: "http://www.etongdai.com",
                sslServer: "https://app.etongdai.com"
            }

            Stringserver.server = Stringserver.server || "";
            var userName = $.cookie('_username');
            var loginHtml = "";
            var indexHtml = "";
            if (userName) {
                loginHtml = "欢迎您，<a href='https://app.etongdai.com/account/index'>" + userName + "</a>" +
                        "<span>|</span><a class='exit' href='https://app.etongdai.com/login/logout'>退出登录</a>";

                indexHtml = "<a class='btn logbtn' href='https://app.etongdai.com/account/index'>进入我的账户</a>" +
                        "<a class='btn' href='http://app.etongdai.com/investments/index'>马上投资</a>";
            } else {
                loginHtml = "<a href='https://app.etongdai.com/login/index'>登录</a><span>|</span><a id='fenliu' href='https://app.etongdai.com/register/index'>免费注册</a>";

                indexHtml = "<a class='btn logbtn' href='https://app.etongdai.com/login/index'>登录易通贷</a>" +
                        "<a class='btn' href='https://app.etongdai.com/register/index'>注册新账户</a>";
            }
            $("#isLoginCon").append(indexHtml);
            $("#isLoginHead").append(loginHtml);
            registerFenliu();

            thousand_char($(".thousand_char"), 2);

            var cur_domain = document.domain;
            if (cur_domain.indexOf("test") != -1 || cur_domain.indexOf("www") != -1) {
                $(".fix_r .ul_v .hbgif").show();
            } else {
                // 新手任务
                $.ajax({
                    type: "post",
                    dataType: "json",
                    url: "/showNewTaskFlag",
                    error: function () {
                    },
                    success: function (data) {
                        if (data.body) {
                            $(".fix_r .ul_v .hbgif").show();
                        }
                    }
                });
            }
        })

    </script><!--写入页面内的ＣＳＳ-->
    <link href="static/css/index.css" rel="stylesheet">
    <script type="text/javascript">
        var _iteRepaymentType = {
            '1': '按月等额本息', '2': '按月还息到期还本', '3': '到期还本息'
        };
        var _itsTypeDictList = {
            '1': '征信认证', '2': '第三方担保', '3': '合作机构'
        };
    </script>


    <script type="text/javascript">
        $(function () {
            $("#_menu li").eq(0).click();

            //置顶标年利率显示
            setRateList($(".year_rate"));
        })

    </script>
</head>

<body>
<iframe src="javascript:false;" style="display: none;"></iframe>

<div class="top">
    <div class="con24 white">
        <ul class="share ul_h ab_l">
            <li class="graya">关注我们</li>
            <li class="one" title="新浪微博"><a href="http://weibo.com/etongdaiwl" target="_blank"><i></i></a></li>
            <li class="two" title="关注微信-易通贷资讯号"><a><i></i></a></li>
            <li class="thr"><a href="http://www.etongdai.com/download.html" target="_blank"><i></i>手机APP</a></li>
            <li class="fiv"><a href="http://m.etongdai.com/" target="_blank" title="移动WAP版">&nbsp;</a></li>
            <li class="fou"><a
                    onclick="javascript:window.open(&#39;http://b.qq.com/webc.htm?new=0&amp;sid=4000035158&amp;eid=218808P8z8p8K8P80808P&amp;o=www.etongdai.com&amp;q=7&amp;ref=http://www.etongdai.com/&#39;, &#39;_blank&#39;, &#39;height=544, width=644,toolbar=no,scrollbars=no,menubar=no,status=no&#39;);"><i></i>在线客服</a>
            </li>
        </ul>
        <div id="isLoginHead" class="log">
            <a href="https://app.etongdai.com/login/index">登录</a><span>|</span><a id="fenliu"
                                                                                  href="https://app.etongdai.com/register/index">免费注册</a>
        </div>
    </div>
</div>
<div class="header">
    <div class="con24">
        <h1><a class="logo" href="http://www.etongdai.com/">易通贷</a></h1>
        <div class="menu">
            <ul class="ul_h" id="_menu">
                <li class="cur"><a href="/">首页</a></li>
                <li><a href="/investments/index">我要投资</a></li>
                <li><a href="http://www.soudaila.com/etongdai/apply.html" target="_blank">我要借款</a></li>
                <li><a href="http://app.etongdai.com/safetySystem/nvestingSafety">安全保障</a></li>
                <li><a href="https://app.etongdai.com/account/index">我的账户</a></li>
                <li><a href="http://app.etongdai.com/aboutusMag/aboutus">关于我们</a></li>
                <li><a href="http://www.etongdai.com/p2p/zhishi/">行业资讯</a></li>
            </ul>
            <input type="hidden" value="http://app.etongdai.com" id="hideServer">
        </div>
    </div>
</div>
<div id="focus">
    <ul>
        <li style="width: 1275px; background-image: url(&quot;http://www.etongdai.com/upload/49/62/a20ba150224eb9be.png&quot;);">
            <a target="_blank" href="http://app.etongdai.com/newTask/index" style="display: none;"></a>
        </li>
        <li style="width: 1275px; background-image: url(&quot;http://www.etongdai.com/upload/5e/0c/a56ff7878f82630f.jpg&quot;);">
            <a target="_blank" href="http://www.etongdai.com/download.html" style="display: none;"></a>
        </li>
        <li style="width: 1275px; background-image: url(&quot;http://www.etongdai.com/upload/59/9b/abe55b4adaffcec9.png&quot;);">
            <a target="_blank" href="http://app.etongdai.com/aboutusMag/aboutusContext/6" style="display: none;"></a>
        </li>
        <li style="width: 1275px; background-image: url(&quot;http://www.etongdai.com/upload/88/35/a4fb2731bba31e91.jpg&quot;);">
            <a target="_blank" href="http://app.etongdai.com/aboutusMag/aboutusContext/37" style="display: none;"></a>
        </li>
        <li style="width: 1275px; background-image: url(&quot;http://www.etongdai.com/upload/c4/eb/842ed41ae6643f55.jpg&quot;);">
            <a target="_blank" href="http://app.etongdai.com/aboutusMag/aboutusContext/143" style="display: none;"></a>
        </li>
    </ul>
</div><!--focus end-->

<div class="tip">
    <dl class="con24 dl_h">
        <dt><i class="x_tu"></i>最新公告 <span>|</span></dt>
        <dd class="scrolldiv">
            <ul class="scroll ul_v" style="margin-top: 0px;">


                <li><a href="http://app.etongdai.com/helpCenter/help_context_detail/1324">易通贷开启“新年为新手送点心意”活动</a></li>
                <li><a href="http://app.etongdai.com/helpCenter/help_context_detail/1361">关于春节期间银行支付系统暂停运行的公告</a></li>
                <li><a href="http://app.etongdai.com/helpCenter/help_context_detail/1356">关于春节假期期间提现处理方式的公告</a></li>
                <li><a href="http://app.etongdai.com/helpCenter/help_context_detail/1353">关于开启“新春壕奖赚起来”活动公告</a></li>
                <li><a href="http://app.etongdai.com/helpCenter/help_context_detail/1352">关于2016年春节假期安排的通知</a></li>
            </ul>
        </dd>
        <dd class="last graya"><a href="http://app.etongdai.com/helpCenter/help_context/9">更多公告详情&gt;&gt;</a></dd>
    </dl>
</div>

<div class="con24 money">
    <ul class="ul_h">
        <li>
            <p class="t"><i class="m_tu"></i>易通贷平台已撮合借款</p>
            <p class="blue">52<em>亿</em>5261<em>万</em>9000<em>元</em></p>
            <div class="clearfix"><p class="t"><i class="s_tu"></i>平台数据每日更新</p></div>
        </li>
        <li>
            <p class="t"><i class="m_tu m_time"></i>易通贷平台已平稳运营</p>
            <p class="blue">1153<em>天</em>15<em>时</em>54<em>分</em></p>
            <div class="clearfix"><p class="t"><i class="s_tu"></i>平台数据每日更新</p></div>
        </li>
        <li class="last">
            <p>已有<span class="blue">1791414</span>位投资人加入了我们</p>
            <div id="isLoginCon">
                <a class="btn logbtn" href="https://app.etongdai.com/login/index">登录易通贷</a><a class="btn"
                                                                                              href="https://app.etongdai.com/register/index">注册新账户</a>
            </div>
        </li>
    </ul>
</div>

<div class="tdb">
    <div class="con24">
        <ul class="ul_h">
            <li class="one"><em><i style="transform: rotate(0deg); transform-origin: 50% 50% 0px;"></i></em>30倍活期存款收益
            </li>
            <li class="two"><em><i style="transform: rotate(0deg); transform-origin: 50% 50% 0px;"></i></em>100元即可加入
            </li>
            <li class="thr"><em><i style="transform: rotate(0deg); transform-origin: 50% 50% 0px;"></i></em>本息保障</li>
            <li class="fou"><em><i style="transform: rotate(0deg); transform-origin: 50% 50% 0px;"></i></em>随时赎回投资</li>
            <li class="fiv"><em><i style="transform: rotate(0deg); transform-origin: 50% 50% 0px;"></i></em>多方安全保障</li>
        </ul>
    </div>
</div>

<div class="egou con24">
    <h3 class="hd">易通贷e起购</h3>
    <ul class="ul_h blue">
        <li class="one">

            <div class="lilv"><span>年化收益</span>
                <em class="year_rate_big0">12</em>.<label class="year_rate_min0">18</label>%
                <input type="hidden" class="year_rate" value="12.18">
            </div>
            <dl class="dl_h">
                <dt>e</dt>
                <dd class="biao">
                    <p>起购-A</p>
                    <div><span>还款期限</span><i>60</i>天</div>
                </dd>
                <dd class="tool">
                    <!-- -->
                    <a class="btn" href="http://app.etongdai.com/investments/invdetail?iteId=45805">点击抢购</a>
                </dd>
            </dl>
        </li>
        <li class="two">

            <div class="lilv"><span>年化收益</span>
                <em class="year_rate_big1">16</em>.<label class="year_rate_min1">00</label>%
                <input type="hidden" class="year_rate" value="16.00">
            </div>
            <dl class="dl_h">
                <dt>e</dt>
                <dd class="biao">
                    <p>起购-AAA</p>
                    <div><span>还款期限</span><i>90</i>天</div>
                </dd>
                <dd class="tool">
                    <!-- -->
                    <a class="btn" href="http://app.etongdai.com/investments/invdetail?iteId=46163">点击抢购</a>
                </dd>
            </dl>
        </li>
        <li class="thr">

            <div class="lilv"><span>年化收益</span>
                <em class="year_rate_big2">16</em>.<label class="year_rate_min2">50</label>%
                <input type="hidden" class="year_rate" value="16.50">
            </div>
            <dl class="dl_h">
                <dt>e</dt>
                <dd class="biao">
                    <p>起购-AA</p>
                    <div><span>还款期限</span><i>3</i>个月</div>
                </dd>
                <dd class="tool">
                    <!-- -->
                    <a class="btn" href="http://app.etongdai.com/investments/invdetail?iteId=46197">点击抢购</a>
                </dd>
            </dl>
        </li>
    </ul>
</div>

<div class="hot_tz">
    <div class="con24">
        <h3 class="hd">最热投资项目推荐<a class="ab_r" href="http://app.etongdai.com/investments/index">更多项目&gt;&gt;</a></h3>
        <div class="xiangmu">
            <dl class="dl_h">
                <dt>
                <h3><a href="http://app.etongdai.com/investments/invdetail?iteId=46136"
                       title="中小企业短期资金周转（债权编号：FF0218H0615）">
                    中小企业短期资金周转（债权编号：FF0218H0615）</a><span class="tips"><i class="di_tu">&nbsp;</i>
                		<i class="he_tu">合作机构</i>
                	
                	</span></h3>
                <div class="con2">
                    <ul class="ul_h">
                        <li>
                            <i>19.00</i>%
                            <p>预期年化收益</p>
                        </li>
                        <li>
                            <em>6</em>个月
                            <p>还款期限</p>
                        </li>
                        <li>
                            <span class="thousand_char">250,000.00</span>元
                            <p>借款金额</p>
                        </li>
                    </ul>
                    <div class="tool"><p class="grade">信用等级 <i class="blue">A</i></p>
                        <p>还款方式 <span class="black">按月等额本息</span></p>
                    </div>
                </div>
                </dt>
                <dd class="dd3">
                    <p class="p1">还需借款<i class="ab_r"><span class="thousand_char">245,500.00</span><i
                            class="graya">元</i></i>
                    </p>
                    <p class="bar"><i style="width:1.80% "></i>
                        <em>1.80% </em>
                    </p>
                    <p class="p3">违约保障类型<span>本息保障</span></p>
                </dd>
                <dd class="dd4">
                    <a class="btn" href="invdetail?iteId=46136">
                        我要投资
                    </a>
                </dd>
            </dl>
            <dl class="dl_h">
                <dt>
                <h3><a href="invdetail?iteId=46163"
                       title="中小企业短期资金周转（债权编号：FF0218H0210）">
                    中小企业短期资金周转（债权编号：FF0218H0210）</a><span class="tips"><i class="di_tu">&nbsp;</i>
                		<i class="he_tu">合作机构</i>
                	
                	</span></h3>
                <div class="con2">
                    <ul class="ul_h">
                        <li>
                            <i>16.00</i>%
                            <p>预期年化收益</p>
                        </li>
                        <li>
                            <em>90</em>天
                            <p>还款期限</p>
                        </li>
                        <li>
                            <span class="thousand_char">250,000.00</span>元
                            <p>借款金额</p>
                        </li>
                    </ul>
                    <div class="tool"><p class="grade">信用等级 <i class="blue">AAA</i></p>
                        <p>还款方式 <span class="black">到期还本息</span></p>
                    </div>
                </div>
                </dt>
                <dd class="dd3">
                    <p class="p1">还需借款<i class="ab_r"><span class="thousand_char">208,913.00</span><i
                            class="graya">元</i></i>
                    </p>
                    <p class="bar"><i style="width:16.43% "></i>
                        <em>16.43% </em>
                    </p>
                    <p class="p3">违约保障类型<span>本息保障</span></p>
                </dd>
                <dd class="dd4">
                    <a class="btn" href="invdetail?iteId=46163">
                        我要投资
                    </a>
                </dd>
            </dl>
            <dl class="dl_h">
                <dt>
                <h3><a href="invdetail?iteId=45511"
                       title="中小企业短期资金周转（债权编号：FF0204H1058）">
                    中小企业短期资金周转（债权编号：FF0204H1058）</a><span class="tips"><i class="di_tu">&nbsp;</i>
                		<i class="he_tu">合作机构</i>
                	
                	</span></h3>
                <div class="con2">
                    <ul class="ul_h">
                        <li>
                            <i>10.80</i>%
                            <p>预期年化收益</p>
                        </li>
                        <li>
                            <em>1</em>个月
                            <p>还款期限</p>
                        </li>
                        <li>
                            <span class="thousand_char">200,000.00</span>元
                            <p>借款金额</p>
                        </li>
                    </ul>
                    <div class="tool"><p class="grade">信用等级 <i class="blue">AAA</i></p>
                        <p>还款方式 <span class="black">按月等额本息</span></p>
                    </div>
                </div>
                </dt>
                <dd class="dd3">
                    <p class="p1">还需借款<i class="ab_r"><span class="thousand_char">108,729.00</span><i
                            class="graya">元</i></i>
                    </p>
                    <p class="bar"><i style="width:45.63% "></i>
                        <em>45.63% </em>
                    </p>
                    <p class="p3">违约保障类型<span>本息保障</span></p>
                </dd>
                <dd class="dd4">
                    <a class="btn" href="invdetail?iteId=45511">
                        我要投资
                    </a>
                </dd>
            </dl>
            <dl class="dl_h">
                <dt>
                <h3><a href="invdetail?iteId=46307"
                       title="中小企业短期资金周转（债权编号：FF0219H0053）">
                    中小企业短期资金周转（债权编号：FF0219H0053）</a><span class="tips"><i class="di_tu">&nbsp;</i>
                		<i class="he_tu">合作机构</i>
                	
                	</span></h3>
                <div class="con2">
                    <ul class="ul_h">
                        <li>
                            <i>18.00</i>%
                            <p>预期年化收益</p>
                        </li>
                        <li>
                            <em>3</em>个月
                            <p>还款期限</p>
                        </li>
                        <li>
                            <span class="thousand_char">250,000.00</span>元
                            <p>借款金额</p>
                        </li>
                    </ul>
                    <div class="tool"><p class="grade">信用等级 <i class="blue">AA</i></p>
                        <p>还款方式 <span class="black">按月等额本息</span></p>
                    </div>
                </div>
                </dt>
                <dd class="dd3">
                    <p class="p1">还需借款<i class="ab_r"><span class="thousand_char">113,345.00</span><i
                            class="graya">元</i></i>
                    </p>
                    <p class="bar"><i style="width:54.66% "></i>
                        <em>54.66% </em>
                    </p>
                    <p class="p3">违约保障类型<span>本息保障</span></p>
                </dd>
                <dd class="dd4">
                    <a class="btn" href="invdetail?iteId=46307">
                        我要投资
                    </a>
                </dd>
            </dl>
            <dl class="dl_h">
                <dt>
                <h3><a href="invdetail?iteId=45916"
                       title="中小企业短期资金周转（债权编号：FF0216H0836）">
                    中小企业短期资金周转（债权编号：FF0216H0836）</a><span class="tips"><i class="di_tu">&nbsp;</i>
                		<i class="he_tu">合作机构</i>
                	
                	</span></h3>
                <div class="con2">
                    <ul class="ul_h">
                        <li>
                            <i>17.60</i>%
                            <p>预期年化收益</p>
                        </li>
                        <li>
                            <em>90</em>天
                            <p>还款期限</p>
                        </li>
                        <li>
                            <span class="thousand_char">250,000.00</span>元
                            <p>借款金额</p>
                        </li>
                    </ul>
                    <div class="tool"><p class="grade">信用等级 <i class="blue">AA</i></p>
                        <p>还款方式 <span class="black">到期还本息</span></p>
                    </div>
                </div>
                </dt>
                <dd class="dd3">
                    <p class="p1">还需借款<i class="ab_r"><span class="thousand_char">0.00</span><i class="graya">元</i></i>
                    </p>
                    <p class="bar"><i style="width:100.00% "></i>
                        <em>100.00% </em>
                    </p>
                    <p class="p3">违约保障类型<span>本息保障</span></p>
                    <i id="touman_tu"></i>
                </dd>
                <dd class="dd4">
                    <a class="btn btn2" href="invdetail?iteId=45916">
                        了解详情
                    </a>
                </dd>
            </dl>
        </div>
    </div>
</div>


<div class="blink">
    <div class="con24">
        <div class="gg">
            <h3 class="hd"><i></i>易通贷公告<a class="ab_r" href="http://app.etongdai.com/helpCenter/help_context/9">更多&gt;&gt;</a>
            </h3>
            <ul class="uldot ul_v">
                <li><a href="http://app.etongdai.com/helpCenter/help_context_detail/1361">关于春节期间银行支付系统暂停运行的公告</a>
                    <span class="time">2016-02-03</span></li>
                <li><a href="http://app.etongdai.com/helpCenter/help_context_detail/1356">关于春节假期期间提现处理方式的公告</a>
                    <span class="time">2016-02-02</span></li>
                <li><a href="http://app.etongdai.com/helpCenter/help_context_detail/1353">关于开启“新春壕奖赚起来”活动公告</a>
                    <span class="time">2016-02-01</span></li>
                <li><a href="http://app.etongdai.com/helpCenter/help_context_detail/1352">关于2016年春节假期安排的通知</a>
                    <span class="time">2016-02-01</span></li>
                <li><a href="http://app.etongdai.com/helpCenter/help_context_detail/1324">易通贷开启“新年为新手送点心意”活动</a>
                    <span class="time">2016-01-20</span></li>
            </ul>
        </div>
        <div class="ask">
            <h3 class="hd"><i></i>常见问题<a class="ab_r" href="http://app.etongdai.com/helpCenter/help_context/7">更多&gt;&gt;</a>
            </h3>
            <ul class="uldot ul_v">
                <li><a href="http://app.etongdai.com/helpCenter/help_context_detail/918" title="易通贷平台服务规则">易通贷平台服务规则</a>
                    <span class="time">2015-06-15</span></li>
                <li><a href="http://app.etongdai.com/helpCenter/help_context_detail/187" title="个人信息安全的问题">个人信息安全的问题</a>
                    <span class="time">2014-05-26</span></li>
                <li><a href="http://app.etongdai.com/helpCenter/help_context_detail/101" title="个人常见问题帮助">个人常见问题帮助</a>
                    <span class="time">2014-05-23</span></li>
                <li><a href="http://app.etongdai.com/helpCenter/help_context_detail/97" title="网站名词解释">网站名词解释</a>
                    <span class="time">2014-05-23</span></li>
                <li><a href="http://app.etongdai.com/helpCenter/help_context_detail/96" title="本息安全保障计划">本息安全保障计划</a>
                    <span class="time">2014-05-23</span></li>
            </ul>
        </div>
    </div>
    <div class="meiti con24">
        <h3 class="hd"><i></i>媒体报道</h3>
        <dl class="con24 dl_h ">
            <dd><a href="http://money.people.com.cn/n/2015/0811/c42877-27441706.html" target="_blank"><img alt="人民网"
                                                                                                           src="./易通贷_成熟投资人选择的安全投资平台_files/931e1884c08efd64.png"></a>
            </dd>
            <dd><a href="http://www.yicai.com/news/2015/09/4682136.html" target="_blank"><img alt="第一财经"
                                                                                              src="./易通贷_成熟投资人选择的安全投资平台_files/bec1d7b3a5a0b933.png"></a>
            </dd>
            <dd><a href="http://p2p.hexun.com/2015-10-14/179808905.html" target="_blank"><img alt="和讯财经"
                                                                                              src="./易通贷_成熟投资人选择的安全投资平台_files/bdf2b592369c4200.png"></a>
            </dd>
            <dd><a href="http://finance.caijing.com.cn/20150921/3971995.shtml" target="_blank"><img alt="财经网"
                                                                                                    src="./易通贷_成熟投资人选择的安全投资平台_files/bd77972a4faa022a.png"></a>
            </dd>
            <dd><a href="http://www.01caijing.com/yzl/1880.htm" target="_blank"><img alt="零壹财经"
                                                                                     src="./易通贷_成熟投资人选择的安全投资平台_files/a9555451a27ed982.png"></a>
            </dd>
            <dd><a href="http://epaper.ynet.com/html/2015-11/17/content_165701.htm?div=5" target="_blank"><img alt="北青"
                                                                                                               src="./易通贷_成熟投资人选择的安全投资平台_files/87adfe4424df1d86.png"></a>
            </dd>
        </dl>
    </div>
    <div class="youlian con24">
        <h3 class="hd"><i></i>友情链接</h3>
        <div class="bd">
            <a target="_blank" href="http://www.chuangtianxia.cn/">创天下</a>
            <a target="_blank" href="http://www.1234wu.com/">123网址之家</a>
            <a target="_blank" href="http://www.erongtu.com/">融途网</a>
            <a target="_blank" href="http://www.wangdaiabc.cn/">网贷ABC</a>
            <a target="_blank" href="http://www.wd315.cn/">网贷315</a>
            <a target="_blank" href="http://www.cjdao.com/index.html">财经道</a>
            <a target="_blank" href="http://www.p2pchina.com/">网贷中国</a>
            <a target="_blank" href="http://www.fbaba.net/">富爸爸</a>
            <a target="_blank" href="http://www.shengcai18.com/">生菜网</a>
            <a target="_blank" href="http://www.yinhang.com/">银率网</a>
            <a target="_blank" href="http://www.soudaila.com/">北京贷款</a>
            <a target="_blank" href="http://www.p2peye.com/">网贷天眼</a>
            <a target="_blank" href="http://www.wangdaibang.com/">网贷帮</a>
            <a target="_blank" href="http://www.wangdaijiamen.com/">网贷家门</a>
            <a target="_blank" href="http://www.p2p001.com/">第一网贷</a>
            <a target="_blank" href="http://www.enfodesk.com/">易观智库</a>
        </div>
    </div>
</div>
<div class="fixcom1" style="display:none">
    <i class="opa"></i>
    <div class="bd">
        <a class="rz" href="http://app.etongdai.com/activity/doubleEleven">我要参加！</a>
        <a title="关闭" class="close"></a>
    </div>
</div>
<div class="footer white">
    <div class="con24">
        <ul class="ul_h">
            <li class="li1">
                <h3 class="t"><a href="http://app.etongdai.com/aboutusMag/aboutus">关于我们</a></h3>
                <div class="bd">
                    <p><a href="http://app.etongdai.com/aboutusMag/aboutusContext/1" title="公司简介">公司简介</a></p>
                    <p><a href="http://app.etongdai.com/aboutusMag/aboutusContext/37" title="业务介绍">业务介绍</a></p>
                    <p><a href="http://app.etongdai.com/aboutusMag/aboutusContext/6" title="媒体报道">媒体报道</a></p>
                    <p><a href="http://app.etongdai.com/aboutusMag/aboutusContext/141" title="团队介绍">团队介绍</a></p>
                </div>
            </li>
            <li class="li2">
                <h3 class="t"><a href="http://app.etongdai.com/helpCenter/help_context/8">相关法律</a></h3>
                <div class="bd">
                    <p><a href="http://app.etongdai.com/helpCenter/help_context_detail/109" title="民间借贷">民间借贷</a></p>
                    <p><a href="http://app.etongdai.com/helpCenter/help_context_detail/110" title="民间借贷合法性">民间借贷合法性</a>
                    </p>
                    <p><a href="http://app.etongdai.com/helpCenter/help_context_detail/111" title="居间服务合法性">居间服务合法性</a>
                    </p>
                    <p><a href="http://app.etongdai.com/helpCenter/help_context_detail/113" title="电子合同合法性">电子合同合法性</a>
                    </p>
                </div>
            </li>
            <li class="li3">
                <h3 class="t"><a href="http://app.etongdai.com/helpCenter/help">帮助中心</a></h3>
                <div class="bd">
                    <p><a href="http://app.etongdai.com/helpCenter/help_context/64">新人向导</a></p>
                    <p><a href="http://app.etongdai.com/helpCenter/help_context/19">网站规则</a></p>
                    <p><a href="http://app.etongdai.com/helpCenter/help_context/25">理财小窍门</a></p>
                    <p><a href="http://app.etongdai.com/helpCenter/help_context/82">政策协议</a></p>
                </div>
            </li>
            <li class="li4">
                <h3 class="t">全国服务热线</h3>
                <div class="bd">
                    <p class="tel">400-003-5158</p>
                    <p>客服咨询时间：9:00 - 18:00</p>
                    <p>服务监督电话:18888833592</p>
                    <p>商务合作电话:18888833593</p>
                </div>
            </li>
            <li class="li5">
                <p class="t">版权所有 © 北京易通贷金融信息服务有限公司</p>
                <p>地址：北京市石景山区实兴大街30号院7号楼京西科技金融大厦11层</p>
                <p>办公时间：周一至周五 9:00--18:00</p>
                <p><span><a target="_blank" href="http://www.miitbeian.gov.cn/" style="color:#B2B0B0; cursor:pointer;">备案号:京ICP备11042752号-4</a></span><a
                        target="_blank"
                        href="http://www.miit.cc/Telecom-Search/?unitName=%E5%8C%97%E4%BA%AC%E6%98%93%E9%80%9A%E8%B4%B7%E9%87%91%E8%9E%8D%E4%BF%A1%E6%81%AF%E6%9C%8D%E5%8A%A1%E6%9C%89%E9%99%90%E5%85%AC%E5%8F%B8&amp;licenseNo=%E4%BA%ACICP%E8%AF%81140393%E5%8F%B7&amp;stsSearch="
                        style="color:#B2B0B0; cursor:pointer;">京ICP证140393号</a></p>

                <!-- 公安网备 -->
                <div style="width:300px;margin:0 auto;">
                    <a target="_blank"
                       href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010702001403"
                       style="display:inline-block;text-decoration:none;height:20px;line-height:20px;">
                        <img src="./易通贷_成熟投资人选择的安全投资平台_files/ghs.png" style="float:left;">
                        <p style="float:left;height:20px;line-height:20px;margin: 0px 0px 0px 5px; color:#b2b0b0;">京公网安备
                            11010702001403号</p>
                    </a>
                </div>


            </li>
        </ul>
    </div>
</div>
<div class="zheng">
    <dl class="con24 dl_h ">
        <dd><a href="http://webscan.360.cn/index/checkwebsite?url=www.etongdai.com" target="_blank"><img
                src="static/images/01.gif"></a></dd>
        <dd><a href="https://search.szfw.org/cert/l/CX20140515008078008136" target="_blank"><img
                src="static/images/02.gif"></a></dd>
        <dd><a target="_blank" href="http://www.isc.org.cn/xhhy/hydw/content-32.html"><img
                src="static/images/03.gif"></a></dd>
        <dd>
            <a href="https://ss.knet.cn/verifyseal.dll?sn=e14051911010849050et7r000000&amp;ct=df&amp;a=1&amp;pa=0.7002172293035737"><img
                    alt="可信网站" src="static/images/04.gif"></a></dd>
        <dd><a target="_blank" href="http://www.bcpcn.com/product/rz/bq/BCP2615734826.html"><img
                src="static/images/05.gif"></a></dd>
        <dd><a target="_blank" href="http://www.315online.com.cn/member/315140031.html"><img
                src="static/images/06.gif"></a></dd>
        <dd><a target="_blank" href="http://www.itrust.org.cn/yz/pjwx.asp?wm=1571278794"><img
                src="static/images/07.gif"></a></dd>
    </dl>
</div>
<div class="fix_r">
    <ul class="ul_v">
        <li class="one"><a
                onclick="javascript:window.open(&#39;http://b.qq.com/webc.htm?new=0&amp;sid=4000035158&amp;eid=218808P8z8p8K8P80808P&amp;o=www.etongdai.com&amp;q=7&amp;ref=http://www.etongdai.com/&#39;, &#39;_blank&#39;, &#39;height=544, width=644,toolbar=no,scrollbars=no,menubar=no,status=no&#39;);"><i></i>在线客服</a>
        </li>
        <li class="two"><a href="http://app.etongdai.com/calculator">收益计算器</a></li>
        <li class="thr"><a href="http://www.etongdai.com/download.html">APP下载</a></li>
        <li class="totop" title="回顶部" style="display: block;"></li>
        <li class="hbgif" style="display: list-item;"><a href="http://app.etongdai.com/newTask/index"></a></li>
    </ul>
</div>
<div style="display:none" class="tc_f">
    <i class="opa"></i>
    <div class="fbd">
        <h3 class="white">关注微信-易通贷资讯号</h3>
        <em class="wxtu">
        </em>
        <p class="graya">打开微信，点击“扫一扫”，扫描此二维码即可关注，或微信
            搜索公众号“易通贷资讯”。</p>
        <a title="关闭" class="ab_r close">✖</a>
    </div>
</div>
<script src="./易通贷_成熟投资人选择的安全投资平台_files/adv.js"></script>
<script type="text/javascript">
    var _sogou_sa_q = _sogou_sa_q || [];
    _sogou_sa_q.push(['_sid', '315279-323715']);
    (function () {
        var _sogou_sa_protocol = (("https:" == document.location.protocol) ? "https://" : "http://");
        var _sogou_sa_src = _sogou_sa_protocol + "hermes.sogou.com/sa.js%3Fsid%3D315279-323715";
        document.write(unescape("%3Cscript src='" + _sogou_sa_src + "' type='text/javascript'%3E%3C/script%3E"));
    })();
</script>
<!-- 百度 -->
<div style="display:none;">
    <script>
        var _hmt = _hmt || [];
        (function () {
            var hm = document.createElement("script");
            hm.src = "//hm.baidu.com/hm.js?6abc8f820c003b71587d5619f3080cc1";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>
</div>

<script type="text/javascript">
    var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
    document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F6abc8f820c003b71587d5619f3080cc1' type='text/javascript'%3E%3C/script%3E"));
</script>

<!--聚效 流量统计代码（聚效核心代码）-->
<script type="text/javascript">
    var _mvq = _mvq || [];
    _mvq.push(['$setAccount', 'm-26756-0']);
    _mvq.push(['$logConversion']);
    (function () {
        var mvl = document.createElement('script');
        mvl.type = 'text/javascript';
        mvl.async = true;
        mvl.src = ('https:' == document.location.protocol ? 'https://static-ssl.mediav.com/mvl.js' : 'http://static.mediav.com/mvl.js');
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(mvl, s);
    })();
</script>

<script type="text/javascript">
    var _adwq = _adwq || [];
    _adwq.push(['_setAccount', 'q313q']);
    _adwq.push(['_setDomainName', '.etongdai.com']);
    _adwq.push(['_trackPageview']);

    (function () {
        var adw = document.createElement('script');
        adw.type = 'text/javascript';
        adw.async = true;
        adw.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://s') + '.emarbox.com/js/adw.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(adw, s);
    })();
</script>

<!--360推广-->
<div style="display:none;">
</div>

<!--新数-->
<script>
    var xinshu = document.createElement("script");
    if (document.location.protocol == 'https:') {
        xinshu.src = "https://aw.kejet.net/t?p=gS&c=bt";
    } else {
        xinshu.src = "http://aw.kejet.net/t?p=gS&c=bt";
    }
    document.body.appendChild(xinshu);
</script>
<script src="./易通贷_成熟投资人选择的安全投资平台_files/t"></script>

<script type="text/javascript">
    $(function () {
        if (typeof(bairong) == "undefined") {
            baironggo();
        }
        function baironggo() {
            window["_BR"] = window["_BR"] || {};
            if (document.location.href.indexOf("app.") != -1) {
                _BR.client_id = "etongdai";
            } else {
                _BR.client_id = "etongdai_test";
            }
            _BR.script = document.createElement("script");
            _BR.script.type = "text/javascript";
            _BR.script.async = true;
            _BR.script.charset = "utf-8";
            _BR.script.src = (('https:' == document.location.protocol ? 'https://' : 'http://') + 'static.100credit.com/idata/js/idata.js');
            document.getElementsByTagName("head")[0].appendChild(_BR.script);
            _BR.BR_INFO = {
                "user_id": "", //网站当前用户id
                "page_type": "dft" //当前页面类型，请勿修改
            };
        }
    });
</script>

<script type="text/javascript">
    var _py = _py || [];
    _py.push(['a', 'DWs..zUBmDo9lTruooCUmi-pEO_']);
    _py.push(['domain', 'stats.ipinyou.com']);
    _py.push(['e', '']);
    -function (d) {
        var s = d.createElement('script'),
                e = d.body.getElementsByTagName('script')[0];
        e.parentNode.insertBefore(s, e),
                f = 'https:' == location.protocol;
        s.src = (f ? 'https' : 'http') + '://' + (f ? 'fm.ipinyou.com' : 'fm.p0y.cn') + '/j/adv.js';
    }(document);
</script>
<noscript>&lt;img src="//stats.ipinyou.com/adv.gif?a=DWs..zUBmDo9lTruooCUmi-pEO_&amp;e="
    style="display:none;"/&gt;</noscript>
<script type="text/javascript">
    var _gtc = _gtc || [];
    _gtc.push(["fnSetAccount", "102"]);
    var nGtc = document.createElement("script");
    nGtc.type = "text/javascript";
    nGtc.async = true;
    nGtc.src = ("https:" == document.location.protocol ? "https://sslcdn.istreamsche.com" : "http://ga.istreamsche.com") + "/stat/gtc.js";
    document.getElementsByTagName("head")[0].appendChild(nGtc);
</script>

<!--hao123跳转-->
<script type="text/javascript">
    var refer = document.referrer;
    if (refer.indexOf('www.hao123.com') > 0) {
        document.location.href = 'http://app.etongdai.com?friendId=MjQzNjkxOQ==';
    }
</script>
<script type="text/javascript">
    /**弹出显示**/
    $(function () {
        var now = new Date();
        var start = new Date("2015/11/08 00:00:00");
        var end = new Date("2015/11/13 23:59:59");
        if (start <= now && now <= end) {
            $(".fixcom1").css("display", "block");
        }
    });
    $(".rz").click(function () {
        $(".fixcom1").fadeOut();
    });
    $(".close").click(function () {
        $(".fixcom1").fadeOut();
    });
</script>
<script type="text/javascript">
    var j_protocol = (location.protocol == "https:");
    var gtmac = "102";
    var nRe = document.createElement("script");
    nRe.type = "text/javascript";
    nRe.async = true;
    nRe.src = ("https:" == document.location.protocol ? "https://sslcdn.istreamsche.com" : "http://ga.istreamsche.com") + "/stat/j_REACH.js";
    document.getElementsByTagName("head")[0].appendChild(nRe);
</script>
<script>
    beheActiveView({at: "arrive", src: "1697000544", cid: "", sid: "1198"});
</script>


<!--营销点代码-->
<script src="static/js/i_frame.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="static/js//jquery.rotate.min.js"></script>

<script type="text/javascript">
    window["_BR"] = window["_BR"] || {};
    if (document.location.href.indexOf("app.") != -1 || document.location.href.indexOf("www") != -1) {
        _BR.client_id = "etongdai";
    } else {
        _BR.client_id = "etongdai_test";
    }
    _BR.script = document.createElement("script");
    _BR.script.type = "text/javascript";
    _BR.script.async = true;
    _BR.script.charset = "utf-8";
    _BR.script.src = (('https:' == document.location.protocol ? 'https://' : 'http://') + 'static.100credit.com/idata/js/idata.js');
    document.getElementsByTagName("head")[0].appendChild(_BR.script);
    _BR.BR_INFO = {
        "user_id": "", //网站当前用户id
        "page_type": "homepage" //当前页面类型，请勿修改
    };
</script>

<div id="bairong_flbox" style="position: absolute; overflow: hidden; height: 0px; width: 0px;">
    <object id="bairong_swf_factory" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
            codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="1"
            height="1">
        <param name="allowScriptAccess" value="always">
        <param name="wmode" value="window">
        <param name="movie" value="http://das.bairong.cn/main.swf">
        <param name="quality" value="high">
        <param name="FlashVars" value="">
        <embed src="http://das.bairong.cn/main.swf" flashvars="" quality="high" wmode="window"
               name="bairong_swf_factory" allowscriptaccess="always" swliveconnect="true"
               pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="1"
               height="1">
    </object>
</div>
</body>
</html>