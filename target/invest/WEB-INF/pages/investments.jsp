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
            loginHtml="欢迎您，<a href='https://app.etongdai.com/account/index'>samwang</a>" +
                    "<span>|</span><a class='exit' href='https://app.etongdai.com/login/logout'>退出登录</a>";

            indexHtml="<a class='btn logbtn' href='https://app.etongdai.com/account/index'>进入我的账户</a>"+
                    "<a class='btn' href='http://app.etongdai.com/investments/index'>马上投资</a>";
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
    <link href="http://www.etongdai.com/css/page.css" rel="stylesheet">
    <script type="text/javascript">
        $(function(){
            $("#_menu li").eq(1).click();
        });
    </script>
</head>

<body>

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
<div class="tzzq">
    <div class="con24">
        <ul class="tz">
            <li class="act">投资项目列表</li>
            <li><a href="http://app.etongdai.com/creditortransfer/transferList">债权转让列表</a></li>
        </ul>
    </div>
</div>

<div class="xxk">
    <div class="con24">
        <dl>
            <dt>项目类型:</dt>
            <dd>
                <ul>
                    <li class="type_ act_b">不限</li>
                    <li class='type_1 ' >信用贷</li>
                    <li class='type_2 ' >抵押贷</li>
                </ul>
            </dd>
        </dl>
        <dl>
            <dt>年化收益:</dt>
            <dd>
                <ul>
                    <li class="scope_ act_b">不限</li>
                    <li class='scope_0-10 ' >10%以下</li>
                    <li class='scope_10-15 ' >10%-15%</li>
                    <li class='scope_15-18 ' >15%-18%</li>
                    <li class='scope_18-20 ' >18%-20%</li>
                </ul>
            </dd>
        </dl>
        <dl>
            <dt>还款期限:</dt>
            <dd>
                <ul>
                    <li class="repay_ act_b">不限</li>
                    <li class='repay_1 ' >1个月</li>
                    <li class='repay_3 ' >3个月</li>
                    <li class='repay_6 ' >6个月</li>
                    <li class='repay_12 ' >12个月</li>
                    <li class='repay_60 ' >60天</li>
                    <li class='repay_90 ' >90天</li>
                </ul>
            </dd>
        </dl>
        <dl>
            <dt>还款方式:</dt>
            <dd>
                <ul>
                    <li class="repayType_ act_b">不限</li>
                    <li class='repayType_1 ' >按月等额本息</li>
                    <li class='repayType_2 ' >按月还息到期还本</li>
                    <li class='repayType_3 ' >到期还本息</li>
                </ul>
            </dd>
        </dl>
    </div>
</div>

<form action="http://app.etongdai.com/investments/index" id="form_search" method="post">
    <input type="hidden" name="type" id="type" value=""/>
    <input type="hidden" name="scope" id="scope" value="" />
    <input type="hidden" name="repay" id="repay" value="" />
    <input type="hidden" name="repayType" id="repayType" value="" />
    <input type="hidden" name="orderArgs" id="orderArgs" value="3"/>
    <input type="hidden" name="ascDesc" value="desc" />
</form>

<div class="hot_tz" id="xxk1">
    <div class="con24">
        <!-- 排序 -->
        <div class="px">
            <div class="pxl">排序:</div>
            <table class="pxr">
                <tbody>
                <tr><!-- 行 -->
                    <td class="0 ">借款金额</td>
                    <td class="1 ">年化收益</td>
                    <td class="2 ">还款期限</td>
                    <td class="3 act_b1">进度↑</td>
                </tr>
                </tbody>
            </table>
        </div>

        <div class="xiangmu">
            <!--列表-->
            <dl class="dl_h">
                <dt>
                <h3>
                    <a href="http://app.etongdai.com/investments/invdetail?iteId=46137"
                       title="中小企业短期资金周转（债权编号：FF0218H0616）">中小企业短期资金周转（债权编号：FF0218H0616）</a>
						<span class="tips">
							<i class="di_tu">&nbsp;</i><!-- TODO 抵押贷、信用贷图标 -->
									<i class="he_tu">合作机构</i>
						</span>
                </h3>
                <div class="con2">
                    <ul class="ul_h">
                        <li><i>19.00</i>%	<p>预期年化收益</p></li>
                        <li><em>6</em>个月	<p>还款期限</p></li>
                        <li><span class='thousand_char'>250000.00</span>元	<p>借款金额</p></li>
                    </ul>
                    <div class="tool">
                        <p class="grade">信用等级 <i class="blue">A</i></p>
                        <p>还款方式 <span class="black">按月等额本息</span></p>
                    </div>
                </div>
                </dt>
                <dd class="dd3">
                    <p>还需借款<i class="ab_r"><span class='thousand_char'>250000.00</span><i class="graya">元</i></i></p>
                    <p class="bar">
                        <i style="width:0.00%"></i>
                        <em>0.00%</em>
                    </p>
                    <p class="p3">违约保障类型<span>本息保障</span></p>
                </dd>
                <dd class="dd4">
                    <a href="http://app.etongdai.com/investments/invdetail?iteId=46137" class="btn yuanshilink" id="46137">立即投资</a>
                </dd>
            </dl>

            <dl class="dl_h">
                <dt>
                <h3>
                    <a href="http://app.etongdai.com/investments/invdetail?iteId=46164"
                       title="中小企业短期资金周转（债权编号：FF0218H0211）">中小企业短期资金周转（债权编号：FF0218H0211）</a>
						<span class="tips">
							<i class="di_tu">&nbsp;</i><!-- TODO 抵押贷、信用贷图标 -->
									<i class="he_tu">合作机构</i>
						</span>
                </h3>
                <div class="con2">
                    <ul class="ul_h">
                        <li><i>16.00</i>%	<p>预期年化收益</p></li>
                        <li><em>90</em>天	<p>还款期限</p></li>
                        <li><span class='thousand_char'>250000.00</span>元	<p>借款金额</p></li>
                    </ul>
                    <div class="tool">
                        <p class="grade">信用等级 <i class="blue">AAA</i></p>
                        <p>还款方式 <span class="black">到期还本息</span></p>
                    </div>
                </div>
                </dt>
                <dd class="dd3">
                    <p>还需借款<i class="ab_r"><span class='thousand_char'>159338.00</span><i class="graya">元</i></i></p>
                    <p class="bar">
                        <i style="width:36.26%"></i>
                        <em>36.26%</em>
                    </p>
                    <p class="p3">违约保障类型<span>本息保障</span></p>
                </dd>
                <dd class="dd4">
                    <a href="http://app.etongdai.com/investments/invdetail?iteId=46164" class="btn yuanshilink" id="46164">立即投资</a>
                </dd>
            </dl>

            <dl class="dl_h">
                <dt>
                <h3>
                    <a href="http://app.etongdai.com/investments/invdetail?iteId=45805"
                       title="中小企业短期资金周转（债权编号：FF0216H0930）">中小企业短期资金周转（债权编号：FF0216H0930）</a>
						<span class="tips">
							<i class="di_tu">&nbsp;</i><!-- TODO 抵押贷、信用贷图标 -->
									<i class="he_tu">合作机构</i>
						</span>
                </h3>
                <div class="con2">
                    <ul class="ul_h">
                        <li><i>12.18</i>%	<p>预期年化收益</p></li>
                        <li><em>60</em>天	<p>还款期限</p></li>
                        <li><span class='thousand_char'>200000.00</span>元	<p>借款金额</p></li>
                    </ul>
                    <div class="tool">
                        <p class="grade">信用等级 <i class="blue">A</i></p>
                        <p>还款方式 <span class="black">到期还本息</span></p>
                    </div>
                </div>
                </dt>
                <dd class="dd3">
                    <p>还需借款<i class="ab_r"><span class='thousand_char'>110966.00</span><i class="graya">元</i></i></p>
                    <p class="bar">
                        <i style="width:44.51%"></i>
                        <em>44.51%</em>
                    </p>
                    <p class="p3">违约保障类型<span>本息保障</span></p>
                </dd>
                <dd class="dd4">
                    <a href="http://app.etongdai.com/investments/invdetail?iteId=45805" class="btn yuanshilink" id="45805">立即投资</a>
                </dd>
            </dl>

            <dl class="dl_h">
                <dt>
                <h3>
                    <a href="http://app.etongdai.com/investments/invdetail?iteId=45512"
                       title="中小企业短期资金周转（债权编号：FF0204H1059）">中小企业短期资金周转（债权编号：FF0204H1059）</a>
						<span class="tips">
							<i class="di_tu">&nbsp;</i><!-- TODO 抵押贷、信用贷图标 -->
									<i class="he_tu">合作机构</i>
						</span>
                </h3>
                <div class="con2">
                    <ul class="ul_h">
                        <li><i>10.80</i>%	<p>预期年化收益</p></li>
                        <li><em>1</em>个月	<p>还款期限</p></li>
                        <li><span class='thousand_char'>200000.00</span>元	<p>借款金额</p></li>
                    </ul>
                    <div class="tool">
                        <p class="grade">信用等级 <i class="blue">AAA</i></p>
                        <p>还款方式 <span class="black">按月等额本息</span></p>
                    </div>
                </div>
                </dt>
                <dd class="dd3">
                    <p>还需借款<i class="ab_r"><span class='thousand_char'>83379.00</span><i class="graya">元</i></i></p>
                    <p class="bar">
                        <i style="width:58.31%"></i>
                        <em>58.31%</em>
                    </p>
                    <p class="p3">违约保障类型<span>本息保障</span></p>
                </dd>
                <dd class="dd4">
                    <a href="http://app.etongdai.com/investments/invdetail?iteId=45512" class="btn yuanshilink" id="45512">立即投资</a>
                </dd>
            </dl>

            <dl class="dl_h">
                <dt>
                <h3>
                    <a href="http://app.etongdai.com/investments/invdetail?iteId=46197"
                       title="中小企业短期资金周转（债权编号：FF0219H0044）">中小企业短期资金周转（债权编号：FF0219H0044）</a>
						<span class="tips">
							<i class="di_tu">&nbsp;</i><!-- TODO 抵押贷、信用贷图标 -->
									<i class="he_tu">合作机构</i>
						</span>
                </h3>
                <div class="con2">
                    <ul class="ul_h">
                        <li><i>16.50</i>%	<p>预期年化收益</p></li>
                        <li><em>3</em>个月	<p>还款期限</p></li>
                        <li><span class='thousand_char'>250000.00</span>元	<p>借款金额</p></li>
                    </ul>
                    <div class="tool">
                        <p class="grade">信用等级 <i class="blue">AA</i></p>
                        <p>还款方式 <span class="black">按月等额本息</span></p>
                    </div>
                </div>
                </dt>
                <dd class="dd3">
                    <p>还需借款<i class="ab_r"><span class='thousand_char'>71899.00</span><i class="graya">元</i></i></p>
                    <p class="bar">
                        <i style="width:71.24%"></i>
                        <em>71.24%</em>
                    </p>
                    <p class="p3">违约保障类型<span>本息保障</span></p>
                </dd>
                <dd class="dd4">
                    <a href="http://app.etongdai.com/investments/invdetail?iteId=46197" class="btn yuanshilink" id="46197">立即投资</a>
                </dd>
            </dl>

            <dl class="dl_h">
                <dt>
                <h3>
                    <a href="http://app.etongdai.com/investments/invdetail?iteId=46278"
                       title="中小企业短期资金周转（债权编号：FF0219H0077）">中小企业短期资金周转（债权编号：FF0219H0077）</a>
						<span class="tips">
							<i class="di_tu">&nbsp;</i><!-- TODO 抵押贷、信用贷图标 -->
									<i class="he_tu">合作机构</i>
						</span>
                </h3>
                <div class="con2">
                    <ul class="ul_h">
                        <li><i>19.80</i>%	<p>预期年化收益</p></li>
                        <li><em>12</em>个月	<p>还款期限</p></li>
                        <li><span class='thousand_char'>250000.00</span>元	<p>借款金额</p></li>
                    </ul>
                    <div class="tool">
                        <p class="grade">信用等级 <i class="blue">A</i></p>
                        <p>还款方式 <span class="black">按月还息到期还本</span></p>
                    </div>
                </div>
                </dt>
                <dd class="dd3">
                    <p>还需借款<i class="ab_r"><span class='thousand_char'>27917.00</span><i class="graya">元</i></i></p>
                    <p class="bar">
                        <i style="width:88.83%"></i>
                        <em>88.83%</em>
                    </p>
                    <p class="p3">违约保障类型<span>本息保障</span></p>
                </dd>
                <dd class="dd4">
                    <a href="http://app.etongdai.com/investments/invdetail?iteId=46278" class="btn yuanshilink" id="46278">立即投资</a>
                </dd>
            </dl>

            <dl class="dl_h">
                <dt>
                <h3>
                    <a href="http://app.etongdai.com/investments/invdetail?iteId=46054"
                       title="中小企业短期资金周转（债权编号：FF0217H0114）">中小企业短期资金周转（债权编号：FF0217H0114）</a>
						<span class="tips">
							<i class="di_tu">&nbsp;</i><!-- TODO 抵押贷、信用贷图标 -->
									<i class="he_tu">合作机构</i>
						</span>
                </h3>
                <div class="con2">
                    <ul class="ul_h">
                        <li><i>11.80</i>%	<p>预期年化收益</p></li>
                        <li><em>1</em>个月	<p>还款期限</p></li>
                        <li><span class='thousand_char'>225000.00</span>元	<p>借款金额</p></li>
                    </ul>
                    <div class="tool">
                        <p class="grade">信用等级 <i class="blue">AAA</i></p>
                        <p>还款方式 <span class="black">按月等额本息</span></p>
                    </div>
                </div>
                </dt>
                <dd class="dd3">
                    <p>还需借款<i class="ab_r"><span class='thousand_char'>0.00</span><i class="graya">元</i></i></p>
                    <p class="bar">
                        <i style="width:100.00%"></i>
                        <em>100.00%</em>
                    </p>
                    <p class="p3">违约保障类型<span>本息保障</span></p>
                    <i id="touman_tu"></i>
                </dd>
                <dd class="dd4">
                    <a href="http://app.etongdai.com/investments/invdetail?iteId=46054" class="btn btn2">了解详情</a>
                </dd>
            </dl>

            <dl class="dl_h">
                <dt>
                <h3>
                    <a href="http://app.etongdai.com/investments/invdetail?iteId=45916"
                       title="中小企业短期资金周转（债权编号：FF0216H0836）">中小企业短期资金周转（债权编号：FF0216H0836）</a>
						<span class="tips">
							<i class="di_tu">&nbsp;</i><!-- TODO 抵押贷、信用贷图标 -->
									<i class="he_tu">合作机构</i>
						</span>
                </h3>
                <div class="con2">
                    <ul class="ul_h">
                        <li><i>17.60</i>%	<p>预期年化收益</p></li>
                        <li><em>90</em>天	<p>还款期限</p></li>
                        <li><span class='thousand_char'>250000.00</span>元	<p>借款金额</p></li>
                    </ul>
                    <div class="tool">
                        <p class="grade">信用等级 <i class="blue">AA</i></p>
                        <p>还款方式 <span class="black">到期还本息</span></p>
                    </div>
                </div>
                </dt>
                <dd class="dd3">
                    <p>还需借款<i class="ab_r"><span class='thousand_char'>0.00</span><i class="graya">元</i></i></p>
                    <p class="bar">
                        <i style="width:100.00%"></i>
                        <em>100.00%</em>
                    </p>
                    <p class="p3">违约保障类型<span>本息保障</span></p>
                    <i id="touman_tu"></i>
                </dd>
                <dd class="dd4">
                    <a href="http://app.etongdai.com/investments/invdetail?iteId=45916" class="btn btn2">了解详情</a>
                </dd>
            </dl>

            <dl class="dl_h">
                <dt>
                <h3>
                    <a href="http://app.etongdai.com/investments/invdetail?iteId=46307"
                       title="中小企业短期资金周转（债权编号：FF0219H0053）">中小企业短期资金周转（债权编号：FF0219H0053）</a>
						<span class="tips">
							<i class="di_tu">&nbsp;</i><!-- TODO 抵押贷、信用贷图标 -->
									<i class="he_tu">合作机构</i>
						</span>
                </h3>
                <div class="con2">
                    <ul class="ul_h">
                        <li><i>18.00</i>%	<p>预期年化收益</p></li>
                        <li><em>3</em>个月	<p>还款期限</p></li>
                        <li><span class='thousand_char'>250000.00</span>元	<p>借款金额</p></li>
                    </ul>
                    <div class="tool">
                        <p class="grade">信用等级 <i class="blue">AA</i></p>
                        <p>还款方式 <span class="black">按月等额本息</span></p>
                    </div>
                </div>
                </dt>
                <dd class="dd3">
                    <p>还需借款<i class="ab_r"><span class='thousand_char'>0.00</span><i class="graya">元</i></i></p>
                    <p class="bar">
                        <i style="width:100.00%"></i>
                        <em>100.00%</em>
                    </p>
                    <p class="p3">违约保障类型<span>本息保障</span></p>
                    <i id="touman_tu"></i>
                </dd>
                <dd class="dd4">
                    <a href="http://app.etongdai.com/investments/invdetail?iteId=46307" class="btn btn2">了解详情</a>
                </dd>
            </dl>

            <dl class="dl_h">
                <dt>
                <h3>
                    <a href="http://app.etongdai.com/investments/invdetail?iteId=45829"
                       title="中小企业短期资金周转（债权编号：FF0216H0321）">中小企业短期资金周转（债权编号：FF0216H0321）</a>
						<span class="tips">
							<i class="di_tu">&nbsp;</i><!-- TODO 抵押贷、信用贷图标 -->
									<i class="he_tu">合作机构</i>
						</span>
                </h3>
                <div class="con2">
                    <ul class="ul_h">
                        <li><i>18.00</i>%	<p>预期年化收益</p></li>
                        <li><em>90</em>天	<p>还款期限</p></li>
                        <li><span class='thousand_char'>200000.00</span>元	<p>借款金额</p></li>
                    </ul>
                    <div class="tool">
                        <p class="grade">信用等级 <i class="blue">AA</i></p>
                        <p>还款方式 <span class="black">到期还本息</span></p>
                    </div>
                </div>
                </dt>
                <dd class="dd3">
                    <p>还需借款<i class="ab_r"><span class='thousand_char'>0.00</span><i class="graya">元</i></i></p>
                    <p class="bar">
                        <i style="width:100.00%"></i>
                        <em>100.00%</em>
                    </p>
                    <p class="p3">违约保障类型<span>本息保障</span></p>
                    <i id="touman_tu"></i>
                </dd>
                <dd class="dd4">
                    <a href="http://app.etongdai.com/investments/invdetail?iteId=45829" class="btn btn2">了解详情</a>
                </dd>
            </dl>

            <!--列表end-->

            <div class="thePage clearfix ">
                <div class="page">
                    <span class='prev btn-disabled'><</span><span class='active'>1</span><span class='next btn-disabled'>></span><script type='text/javascript'>function getPage(){var pageIndex = document.getElementById('pageText').value,count=1;var patten=/^[0-9]*$/;if(!patten.test(pageIndex))return;pageIndex=pageIndex==0?1:pageIndex;pageIndex=pageIndex>count?count:pageIndex;window.location.href='/investments/index?pageId='+ pageIndex +'';}</script> 共 1 页&nbsp;&nbsp; 到第<input type='text' name='pageText' id='pageText' class='page_box' onkeyup="this.value=this.value.replace(/[^\d]/g,'')" onafterpaste="this.value=this.value.replace(/[^\d]/g,'')" value='1'/>页<input type='button' name='pageBtn' value='确定' class='page_button' onclick='getPage()' />
                </div>
            </div>
        </div>
    </div>
</div>

<script src="http://www.etongdai.com/js/tz/tz_z.js" type="text/javascript" charset="utf-8"></script>
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
                "user_id" : "3604573", //网站当前用户id
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
    _BR.BR_INFO = {
        "category" : [["抵押贷","http://app.etongdai.com/investments/index"]],   //产品的类别详细信息，第一个元素为类别名称，第二个元素为类别地址，2维数组;类别从大到小，数组最后一项为产品当前属类别
        "category_id" : [""],   //类别、ID;对应类别详细信息，一维数组
        "user_id" : "3604573", //网站当前用户id，如果未登录就为0或空字符串
        "page_type" : "list" //当前页面类型，请勿修改
    };
</script>

<script type="text/javascript" src="http://q.vlion.cn/j?mp=1170102"></script>

</body>
</html>