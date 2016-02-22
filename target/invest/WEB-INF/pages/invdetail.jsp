<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head>
    <script>
        var bairong=true;
    </script>
    <title>易通贷_成熟投资人选择的安全投资平台</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
    <meta name="renderer" content="webkit|ie-comp|ie-stand" />
    <meta name="description" content="易通贷，中国领先的P2P网络投资理财平台，注册资金1个亿。投资无风险，本息有保障，门槛低，收益高，100元也能做理财。是个人小额投资、家庭理财的理想选择。">
    <meta name="keywords" content="P2P理财,P2P网贷,投资理财,网络理财,网络投资,小额投资理财,如何投资理财,个人理财,家庭理财,易通贷">
    <link type="/image/x-icon" rel="Icon" href="/etd.ico" />
    <link type="/image/x-icon" rel="Shortcut Icon" href="/etd.ico" />
    <link type="/image/x-icon" rel="Bookmark" href="/etd.ico" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7">
    <!--[if IE 6]>
    <script src="/js/DD_belatedPNG.js"></script>
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
        $(function(){
            var Stringserver={
                server:"http://app.etongdai.com",
                staticServer:"http://www.etongdai.com",
                sslServer:"https://app.etongdai.com"
            }

            Stringserver.server=Stringserver.server || "";
            var userName=$.cookie('_username');
            var loginHtml="";
            var indexHtml="";
            if(userName){
                loginHtml="欢迎您，<a href='https://app.etongdai.com/account/index'>"+userName+"</a>" +
                        "<span>|</span><a class='exit' href='https://app.etongdai.com/login/logout'>退出登录</a>";

                indexHtml="<a class='btn logbtn' href='https://app.etongdai.com/account/index'>进入我的账户</a>"+
                        "<a class='btn' href='http://app.etongdai.com/investments/index'>马上投资</a>";
            }else{
                loginHtml="<a href='https://app.etongdai.com/login/index'>登录</a><span>|</span><a id='fenliu' href='https://app.etongdai.com/register/index'>免费注册</a>";

                indexHtml="<a class='btn logbtn' href='https://app.etongdai.com/login/index'>登录易通贷</a>"+
                        "<a class='btn' href='https://app.etongdai.com/register/index'>注册新账户</a>";
            }
            $("#isLoginCon").append(indexHtml);
            $("#isLoginHead").append(loginHtml);
            registerFenliu();

            thousand_char($(".thousand_char"), 2);

            var cur_domain = document.domain;
            if(cur_domain.indexOf("test") != -1 || cur_domain.indexOf("www") != -1){
                $(".fix_r .ul_v .hbgif").show();
            }else{
                // 新手任务
                $.ajax({
                    type : "post",
                    dataType : "json",
                    url : "/showNewTaskFlag",
                    error : function(){},
                    success : function(data){
                        if(data.body){
                            $(".fix_r .ul_v .hbgif").show();
                        }
                    }
                });
            }
        })

    </script><link href="http://www.etongdai.com/css/tz/tz.css" rel="stylesheet">
    <link href="http://www.etongdai.com/css/tz/tz_detail.css" rel="stylesheet">
    <link href="http://www.etongdai.com/css/my/hb.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="http://www.etongdai.com/css/page.css" />
    <link rel="stylesheet" type="text/css" href="http://www.etongdai.com/css/tk.css" />
    <script type="text/javascript">
        $(function(){
            $("#_menu li").eq(1).click();

            $("#okbtn").click(function() {
                $(".wrong").removeClass("vis");

                $(this).attr("disabled","disabled").css({background:"#ddd",cursor:"default"});
                $("#form_login").submit();
            });
        });
    </script>
    <!--[if IE]>
    <script type="text/javascript" src="http://www.etongdai.com/js/tz/excanvas.js" onload="explorercanvasload"></script>
    <script type="text/javascript">
        Object.defineProperty = function(a, b, c) {
        };
    </script>
    <![endif]-->
</head>
<body>
<div id="big" style="display:none">
    <div id="park">
    </div>
    <div id="ts">
        <div class="null"></div>
        <p>未进行实名认证将无法进行投资,</p>
        <p>请您完成认证!</p>
        <div id="btn1"><a href="http://app.etongdai.com/certification/attestation">去认证</a></div>
        <div id="btn2"><a href="#">取消</a></div>
        <div id="btn3"></div>
    </div>
</div>

<div class="top">
    <div class="con24 white">
        <ul class="share ul_h ab_l">
            <li class="graya">关注我们</li>
            <li class="one" title="新浪微博"><a href="http://weibo.com/etongdaiwl" target="_blank"><i></i></a></li>
            <li class="two" title="关注微信-易通贷资讯号"><a><i></i></a></li>
            <li class="thr"><a href="http://www.etongdai.com/download.html" target="_blank"><i></i>手机APP</a></li>
            <li class="fiv"><a href="http://m.etongdai.com" target="_blank" title="移动WAP版">&nbsp;</a></li>
            <li class="fou"><a onclick="javascript:window.open('http://b.qq.com/webc.htm?new=0&sid=4000035158&eid=218808P8z8p8K8P80808P&o=www.etongdai.com&q=7&ref=http://www.etongdai.com/', '_blank', 'height=544, width=644,toolbar=no,scrollbars=no,menubar=no,status=no');"><i></i>在线客服</a></li>
        </ul>
        <div id="isLoginHead" class="log">
        </div>
    </div>
</div>
<div class="header">
    <div class="con24">
        <h1><a class="logo" href="http://www.etongdai.com/">易通贷</a></h1>
        <div class="menu">
            <ul class="ul_h" id="_menu">
                <li><a href="http://www.etongdai.com/">首页</a></li>
                <li><a href="http://app.etongdai.com/investments/index">我要投资</a></li>
                <li><a href="http://www.soudaila.com/etongdai/apply.html" target="_blank">我要借款</a></li>
                <li><a href="http://app.etongdai.com/safetySystem/nvestingSafety">安全保障</a></li>
                <li><a href="https://app.etongdai.com/account/index">我的账户</a></li>
                <li><a href="http://app.etongdai.com/aboutusMag/aboutus">关于我们</a></li>
                <li><a href="http://www.etongdai.com/p2p/zhishi/">行业资讯</a></li>
            </ul>
            <input type="hidden" value="http://app.etongdai.com" id="hideServer" />
        </div>
    </div>
</div>
<div class="tzzq"></div>
<div class="onep">
    <div class="con24">
        <div class="xiangmu left">
            <p class="tips">
                <i class="di_tu">&nbsp;</i><!-- 抵押贷、信用贷图片 -->
                <i class="he_tu">合作机构</i>
            </p>
            <h3 id="bairong">中小企业短期资金周转（债权编号：FF0216H0930）</h3>
            <div class="shuju">
                <ul class="ul_h">
                    <li><i id='iteYearRate'>12.18</i>%	<p>预期年化收益</p></li>
                    <li><span class='thousand_char'>200000.00</span>元	<p>借款金额</p></li>
                </ul>
            </div>
            <p class="bar">
                <i style="width: 44.51%"></i>
                <em>44.51%</em>
            </p>
            <div class="xshuju">
                <dl class="tzs1 dl_h">
                    <dd>还款方式<span>到期还本息</span>	</dd>
                    <dd>还款期限<span>60天</span></dd>

                    <dd id="CountMsg" class="hotdate clearfix">
                        剩余时间
                        <span id="t_d">00</span>天
                        <span id="t_h">00</span>小时
                        <span id="t_m">00</span>分
                        <span id="t_s">00</span>秒
                    </dd>
                    <dd>违约保障类型<span>本息保障</span>	</dd>
                </dl>
            </div>
            <div class="chart ab_r">
                <div class="xy_tu">
                    <span class="blue">A</span><p>信用等级</p>
                </div>
                <div class='svg_tu'><canvas id='canvas' height='450' width='450'></canvas></div>
                <!--	<div class='svg_tu'>
                        <canvas id='canvas001' height='450' width='450'></canvas>
                    </div>-->
                <!-- 地区、学历、稳定性、企业性质、收入水平 -->
                <input id="canvasvalue" type="hidden"
                       value="79_78_94_94_92" />
            </div>
        </div>
        <div class="right tz_info ">
            <p>
                可投金额 <span class="blue canInvestCash thousand_char">110966.00</span>元
            </p>
            <div id="my_log">
                <p class="p1">可用金额<a class="into btn" href="https://app.etongdai.com/login/index">登录</a>后可见</p>
            </div>

            <form id="form_login" method="post" action="investments/investconfirm">
                <div class="tzjin">
                    <div class="tzj1">
                        投资金额： <input type="text" class="i_text" tabindex="2" id="money" name="p"
                                     onkeyup="this.value=this.value.replace(/[^\d]/g,'')"
                                     onafterpaste="this.value=this.value.replace(/[^\d]/g,'')"
                                     value="100"
                    />
                        <input type="hidden" name="money" class="moneyGive" 	                        		value="100"
                        />
                    </div>
                    <p class="tip">
                        <a class="btn_m">500元</a>
                        <a class="btn_m">1000元</a>
                        <a class="btn_m_all"><i></i>全部</a>
                    </p>
                    <div class="wrong"></div>
                </div>

                <input type="hidden" name="myTotalInvSumYuan" value="0.00"/>
                <input type="hidden" name="minInvestAmt" id="minInvestAmt" value="100"/>
                <input id="iteId_val" type="hidden" name="iteId"  value="45805" />
                <input id="userId_val" type="hidden" name="userId"  value="3525211" />
                <input id="borrowLevelName" type="hidden" name="borrowLevelName"  value="A" />
                <input id="redPacketAmt" type="hidden" name="redPacketAmt" value="0" />
                <input id="payAmt" type="hidden" name="payAmt" 	                        		value="100"
                />
                <input id="ticId" type="hidden" name="ticId" value="0" />
                <!-- 选择红包 -->
                <dl class="check">
                    <dt class="hb-id">可用红包</dt>
                    <dd><span class="best">0个</span></dd>
                </dl>
                <p class="orange check">（每笔投资限用一个红包）</p>

                <!-- 修改、清除红包 -->
                <dl class="update" style="display:none;">
                    <dt class="hb-id">红包金额</dt>
                    <dd><span class="xiug1 redPacketAmt thousand_char">0</span>元
                        <span class="cheng"><a class="modify">修改</a></span><span class="xiug"><a class="clean">删除红包</a></span></dd>
                </dl>
                <dl class="update wlgc" style="display:none;">
                    <dt class="hb-id1">实付金额</dt>
                    <dd><span class="best1 payAmt thousand_char">0</span>元</dd>
                </dl>

                <p class="tool">
                    <a id="okbtn" class="btn">立即投资</a>
                </p>

                <!--戳-->

            </form>
        </div>

        <!--hongbao start-->
        <div class="hbxx" style="display: none;">
            <ul class="hb-w clearfix"></ul>
        </div>
        <!--hongbao end -->

    </div>
</div>

<div class="twop">
    <div class="detail_con con24">
        <div class="hd_bd tab_t clearfix">
            <a class='item_info'>项目基本情况</a>
            <a class='record'>投标记录</a>
            <a class='audit'>合规资料</a>
            <a class='collateral'>风控措施</a>
        </div>
        <div class="bd">
            <!-- 项目基本情况 -->
            <div class="tab_c" id="arti_bd">
                <p><span style="font-size:14px;">一、借款基本情况</span><br />
                    <span style="font-size:14px;">1.借款用途 </span><br />
                    <span style="font-size:14px;">借款人本次所借资金主要用于其工贸公司短期资金周转。</span><br />
                    <span style="font-size:14px;">2.还款来源 </span><br />
                    <span style="font-size:14px;">借款人的还款来源为其公司经营收入。企业自成立以来，规模不断扩大，经营稳健，无不良征信，还款有保障。</span><br />
                    <span style="font-size:14px;">二、风控措施</span><br />
                    <span style="font-size:14px;">1.抵押物情况</span><br />
                    <span style="font-size:14px;">抵押物为北京住宅房产一套，已经办理抵押登记手续。</span><br />
                    <span style="font-size:14px;">2.企业背景</span><br />
                    <span style="font-size:14px;">借款人经营的企业是一家主要生产经营切削液、工业清洗剂、防锈剂等产品的企业。该公司自成立以来，规模不断扩大，经营稳健。企业征信记录良好，经法院系统查询，没有涉诉及被执行记录。</span><br />
                    <span style="font-size:14px;">3.抵押物处置措施</span><br />
                    <span style="font-size:14px;">如果借款人逾期违约，易通贷可以直接将借款人提供的抵押物委托拍卖公司拍卖、变卖，提高偿还效率。</span><br />
                    <span style="font-size:14px;">三、合规资料</span><br />
                    <span style="font-size:14px;">1.强制执行公证</span><br />
                    <span style="font-size:14px;">原借款合同经公证处已经办理强制执行公证手续。</span><br />
                    <span style="font-size:14px;">2.抵押</span><br />
                    <span style="font-size:14px;">借款人提供的抵押物已经办理抵押登记手续，抵押合法有效。</span><br />
                    <span style="font-size:14px;">3.拍卖</span><br />
                    <span style="font-size:14px;">借款人提供的抵押物已经办理拍卖授权，授权给易通贷，如果出现借款逾期或者违约，易通贷有权直接委托拍卖公司拍卖、变卖该抵押物，提高抵押物的处置效率，增强了项目的安全保障。</span><br />
                    <span style="font-size:14px;">四、项目编号及备查资料</span><br />
                    <span style="font-size:14px;">1.借款基本情况文件清单</span><br />
                    <span style="font-size:14px;">1)借款人信息登记表</span><br />
                    <span style="font-size:14px;">2)抵押物证明材料&nbsp;</span><br />
                    <span style="font-size:14px;">3)抵押登记手续&nbsp;</span><br />
                    <span style="font-size:14px;">2.风控资料清单</span><br />
                    <span style="font-size:14px;">1)原始借款合同</span><br />
                    <span style="font-size:14px;">2)付款证明</span><br />
                    <span style="font-size:14px;">3)债权转让人、债务人身份证明</span><br />
                    <span style="font-size:14px;">4)债务人银行征信报告</span><br />
                    <span style="font-size:14px;">5)抵押物、质押物权属证明、他项权证原件</span><br />
                    <span style="font-size:14px;">6)公证书（强制公证、委托出售公证、委托抵解押等公证）</span><br />
                    <span style="font-size:14px;">7)其他需要债务人提供的资料</span><br /></p>
            </div>
            <!-- 投标记录 -->
            <div class="det_c2 tab_c">
                <table class="tb1" id="item_info">
                    <thead>
                    <tr class="tr0">
                        <th>投标人/关系</th>
                        <td class="t2">年化收益</td>
                        <td class="t3">投标金额</td>
                        <td class="t4">有效金额</td>
                        <td class="t5">投标时间</td>
                        <td class="t6">状态</td>
                    </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
                <div class="tool">
                    <p>
                        提示：当前投资人数<span class="blue claimCount" >0</span>人<span class="orange">（本标的投标记录只显示最新10条）</span>
                    </p>
                </div>
            </div>
            <!-- 合规资料 -->
            <div class="tab_c">
                <table class="tb2 tb1" id="audit_info">
                    <thead>
                    <tr class="tr0">
                        <th>审核项目</th>
                        <td class="t2">审核时间</td>
                        <td class="t6">审核状态</td>
                    </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
            <!-- 风控措施 -->
            <div class="det_c4 tab_c">
                <h4 class="title_name"></h4>
                <p class="col_content"></p>
            </div>
        </div>

    </div>
</div>

<!--本页中-->
<script src="http://www.etongdai.com/js/tz/Chart.min.js" type="text/javascript"	charset="utf-8"></script>
<script src="http://www.etongdai.com/js/tz/tz_detail.js" type="text/javascript"	charset="utf-8"></script>
<script src="http://www.etongdai.com/js/my/hb.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">

    /**倒计时***/
    if($("#t_d")){
        the_time();
    }

    function the_time(){
        var endTime= new Date('2016/02/28 13:45:17'); //截止时间
        var dbTime = new Date('2016/02/21 17:48:23');
        var t = endTime.getTime() - dbTime.getTime();

        show_time();
        var timer=setInterval(show_time,1000);
        function show_time(){
            t = t > 1000 ? (t - 1000) : 0;

            if(t <= 0){
                clearInterval(timer);
                //$("#remainingtime").text('已过期');
            }
            //else {
            var d=Math.floor(t/1000/60/60/24);
            var h=Math.floor(t/1000/60/60%24);
            var m=Math.floor(t/1000/60%60);
            var s=Math.floor(t/1000%60);
            $("#t_d").text(d);
            $("#t_h").text(h);
            $("#t_m").text(m);
            $("#t_s").text(s);
            //}
        }
    }

    $(".close").click(function(){
        $(".jk_tc").hide();
    });

</script>

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
                    <p><a href="http://app.etongdai.com/helpCenter/help_context_detail/110" title="民间借贷合法性">民间借贷合法性</a></p>
                    <p><a href="http://app.etongdai.com/helpCenter/help_context_detail/111" title="居间服务合法性">居间服务合法性</a></p>
                    <p><a href="http://app.etongdai.com/helpCenter/help_context_detail/113" title="电子合同合法性">电子合同合法性</a></p>
                </div>
            </li>
            <li class="li3">
                <h3 class="t"> <a href="http://app.etongdai.com/helpCenter/help">帮助中心</a></h3>
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
                <p><span><a target="_blank" href="http://www.miitbeian.gov.cn" style="color:#B2B0B0; cursor:pointer;">备案号:京ICP备11042752号-4</a></span><a target="_blank" href="http://www.miit.cc/Telecom-Search/?unitName=%E5%8C%97%E4%BA%AC%E6%98%93%E9%80%9A%E8%B4%B7%E9%87%91%E8%9E%8D%E4%BF%A1%E6%81%AF%E6%9C%8D%E5%8A%A1%E6%9C%89%E9%99%90%E5%85%AC%E5%8F%B8&licenseNo=%E4%BA%ACICP%E8%AF%81140393%E5%8F%B7&stsSearch=" style="color:#B2B0B0; cursor:pointer;">京ICP证140393号</a></p>

                <!-- 公安网备 -->
                <div style="width:300px;margin:0 auto;">
                    <a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010702001403" style="display:inline-block;text-decoration:none;height:20px;line-height:20px;">
                        <img src="/img/beian/ghs.png" style="float:left;"/>
                        <p style="float:left;height:20px;line-height:20px;margin: 0px 0px 0px 5px; color:#b2b0b0;">京公网安备 11010702001403号</p>
                    </a>
                </div>


            </li>
        </ul>
    </div>
</div>
<div class="zheng">
    <dl class="con24 dl_h ">
        <dd><a href="http://webscan.360.cn/index/checkwebsite?url=www.etongdai.com" target="_blank"><img src="/img/sys/zheng/01.gif"></a></dd>
        <dd><a href="https://search.szfw.org/cert/l/CX20140515008078008136" target="_blank"><img src="/img/sys/zheng/02.gif"></a></dd>
        <dd><a target="_blank" href="http://www.isc.org.cn/xhhy/hydw/content-32.html" target="_blank"><img src="/img/sys/zheng/03.gif"></a></dd>
        <dd><a href="https://ss.knet.cn/verifyseal.dll?sn=e14051911010849050et7r000000&amp;ct=df&amp;a=1&amp;pa=0.7002172293035737"><img alt="可信网站" src="/img/sys/zheng/04.gif"></a></dd>
        <dd><a target="_blank" href="http://www.bcpcn.com/product/rz/bq/BCP2615734826.html" target="_blank"><img src="/img/sys/zheng/05.gif"></a></dd>
        <dd><a target="_blank" href="http://www.315online.com.cn/member/315140031.html" target="_blank"><img src="/img/sys/zheng/06.gif"></a></dd>
        <dd><a target="_blank" href="http://www.itrust.org.cn/yz/pjwx.asp?wm=1571278794" target="_blank"><img src="/img/sys/zheng/07.gif"></a></dd>
    </dl>
</div>
<div class="fix_r">
    <ul class="ul_v">
        <li class="one"><a onclick="javascript:window.open('http://b.qq.com/webc.htm?new=0&sid=4000035158&eid=218808P8z8p8K8P80808P&o=www.etongdai.com&q=7&ref=http://www.etongdai.com/', '_blank', 'height=544, width=644,toolbar=no,scrollbars=no,menubar=no,status=no');"><i></i>在线客服</a></li>
        <li class="two"><a href="http://app.etongdai.com/calculator">收益计算器</a></li>
        <li class="thr"><a href="http://www.etongdai.com/download.html">APP下载</a></li>
        <li class="totop" title="回顶部"></li>
        <li class="hbgif"><a href="http://app.etongdai.com/newTask/index"></a></li>
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
</div><script  type="text/javascript">
    var _sogou_sa_q = _sogou_sa_q || [];
    _sogou_sa_q.push(['_sid', '315279-323715']);
    (function() {
        var _sogou_sa_protocol = (("https:" == document.location.protocol) ? "https://" : "http://");
        var _sogou_sa_src=_sogou_sa_protocol+"hermes.sogou.com/sa.js%3Fsid%3D315279-323715";
        document.write(unescape("%3Cscript src='" + _sogou_sa_src + "' type='text/javascript'%3E%3C/script%3E"));
    })();
</script>
<!-- 百度 -->
<div style="display:none;">
    <script>
        var _hmt = _hmt || [];
        (function() {
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
    (function() {
        var mvl = document.createElement('script');
        mvl.type = 'text/javascript'; mvl.async = true;
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

    (function() {
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
    <script src='https://pw.cnzz.com/tongji_360.php?id=1253407868&pid=e360&l=2' language='JavaScript' charset='gb2312'></script>
</div>

<!--新数-->
<script>
    var	xinshu=document.createElement("script");
    if (document.location.protocol == 'https:') {
        xinshu.src = "https://aw.kejet.net/t?p=gS&c=bt";
    } else {
        xinshu.src = "http://aw.kejet.net/t?p=gS&c=bt";
    }
    document.body.appendChild(xinshu);
</script>

<script type="text/javascript">
    $(function(){
        if(typeof(bairong)=="undefined"){
            baironggo();
        }
        function baironggo(){
            window["_BR"] = window["_BR"] || {};
            if (document.location.href.indexOf("app.")!=-1) {
                _BR.client_id = "etongdai";
            }else{
                _BR.client_id = "etongdai_test";
            }
            _BR.script = document.createElement("script");
            _BR.script.type = "text/javascript";
            _BR.script.async = true;
            _BR.script.charset = "utf-8";
            _BR.script.src = (('https:' == document.location.protocol?'https://':'http://')+'static.100credit.com/idata/js/idata.js');
            document.getElementsByTagName("head")[0].appendChild(_BR.script);
            _BR.BR_INFO = {
                "user_id" : "", //网站当前用户id
                "page_type" : "dft" //当前页面类型，请勿修改
            };
        }
    });
</script>

<script type="text/javascript">
    var _py = _py || [];
    _py.push(['a', 'DWs..zUBmDo9lTruooCUmi-pEO_']);
    _py.push(['domain','stats.ipinyou.com']);
    _py.push(['e','']);
    -function(d) {
        var s = d.createElement('script'),
                e = d.body.getElementsByTagName('script')[0]; e.parentNode.insertBefore(s, e),
                f = 'https:' == location.protocol;
        s.src = (f ? 'https' : 'http') + '://'+(f?'fm.ipinyou.com':'fm.p0y.cn')+'/j/adv.js';
    }(document);
</script>
<noscript><img src="//stats.ipinyou.com/adv.gif?a=DWs..zUBmDo9lTruooCUmi-pEO_&e=" style="display:none;"/></noscript>
<script type="text/javascript">
    var _gtc = _gtc || [];
    _gtc.push(["fnSetAccount", "102"]);
    var nGtc = document.createElement("script");nGtc.type = "text/javascript";
    nGtc.async = true;
    nGtc.src = ("https:" == document.location.protocol ? "https://sslcdn.istreamsche.com" : "http://ga.istreamsche.com") + "/stat/gtc.js";
    document.getElementsByTagName("head")[0].appendChild(nGtc);
</script>


<script type="text/javascript">
    window["_BR"] = window["_BR"] || {};
    if (document.location.href.indexOf("app.")!=-1) {
        _BR.client_id = "etongdai";
    }else{
        _BR.client_id = "etongdai_test";
    }
    _BR.script = document.createElement("script");
    _BR.script.type = "text/javascript";
    _BR.script.async = true;
    _BR.script.charset = "utf-8";
    _BR.script.src = (('https:' == document.location.protocol?'https://':'http://')+'static.100credit.com/idata/js/idata.js');
    document.getElementsByTagName("head")[0].appendChild(_BR.script);
    var temp=$("#bairong").html();
    _BR.BR_INFO = {
        "id" : "45805",   //产品id号
        "name" : temp,//产品名称
        "link" : "http://app.etongdai.com/investments/invdetail?iteId=45805",   //产品链接
        "price" : "200000",   //产品金额
        "brand" : "易通贷",   //产品所属来源名称;
        "category" : [["抵押贷","http://app.etongdai.com/investments/index"]],   //产品的类别详细信息，第一个元素为类别名称，第二个元素为类别地址，2维数组;类别从大到小，数组最后一项为产品当前属类别
        "category_id" : [""],   //类别ID;对应类别详细信息，一维数组
        "description" : "这是一个贷款", //描述
        "user_id" : "", //网站当前用户id，如果未登录就为0或空字符串
        "page_type" : "detail" //当前页面类型，请勿修改
    };
</script>
<script type="text/javascript" src="http://q.vlion.cn/j?mp=1170103"></script>
</body>
</html>