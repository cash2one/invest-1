// JavaScript Document


//首页显示用
function getIndexHtml(Stringserver){
    Stringserver.server=Stringserver.server || "";
    var userName=$.cookie('_username');
    var loginHtml="";
    var indexHtml="";
    if(userName){
        loginHtml="欢迎您，"
            +"<a href='"+Stringserver.sslServer+"/account/index'>"+userName+"</a><span>|</span><a class='exit' href='"+
            Stringserver.server+"/login/logout'>退出登录</a>";

        indexHtml="<a class='btn logbtn' href='"+Stringserver.sslServer+"/account/index'>进入我的账户</a>"+
            "<a class='btn' href='"+Stringserver.server+"/investments/index'>马上投资</a>";
    }else{
        loginHtml="<a href='"+Stringserver.sslServer+"/login/index'>登录</a><span>|</span><a id='fenliu' href='"+
            Stringserver.sslServer+"/register/index'>免费注册</a>";

        indexHtml="<a class='btn logbtn' href='"+Stringserver.sslServer+"/login/index'>登录易通贷</a>"+
            "<a class='btn' href='"+Stringserver.sslServer+"/register/index'>注册新账户</a>";
    }
    $("#isLoginCon").append(indexHtml);
    $("#isLoginHead").append(loginHtml);
    registerFenliu();
}
$(function(){
    $("#_menu li").click(function(){
        $(this).parents("ul").find("li").removeClass("cur");
        $(this).addClass("cur");
    });

    //只能输入数字和小数点
    $(".digital_num").keyup(function(){
        var regx=/^\d+(\.\d{1,2})?$/,val=$(this).val(),
            notNum=/[^\d.]/g;//非数字和.
        if($(this).attr("class").indexOf("digital_num_flag")>-1){
            regx=/^\-\d+(\.\d{1,2})?$/;
            notNum=/[^\-\d.]/g;
        }
        if(!regx.test(val)){
            $(this).val(val.replace(notNum,"")//非数字和.
                .replace(/^\./g,"")//以.开头的不能出现
                .replace(/\.{2}/g,".")//保证只出现一个
                .replace(".","a").replace(/\./g,"").replace("a","."));//保证只有一个.
        }
    }).blur(function(){//不能以.结尾，而且只能保留后两位
        var val=$(this).val();
        if(val.length!=0&&val.indexOf(".")>0){
            arr=val.split(".");
            text0=arr[0];
            text1=arr[1];
            text1=text1+"00";
            text1=text1.substring(0,2);
            val=text0+"."+text1;
            $(this).val(val);
            //$(this).val(Number(val.replace(/\.$/g,"")).toFixed(2));
        }
    });


    //金额显示，每三位加一个，
    digital_three($(".moneyThree"),2);//有.
    digital_three($(".moneyThreeIn"),1);//无.

    /*输入框千分位*/
    $(".input_three").keyup(function(){
        var text0=val=$(this).val().replace(/,/g,""),arr=[],text1="";
        if(val.indexOf(".")>-1){
            arr=val.split(".");
            text0=arr[0];
            text1=arr[1];
        }
        var len=text0.length;
        var r=len%3;
        if(len>3){
            if(val.indexOf(".")>-1){
                val=r>0?text0.substr(0,r)+","+text0.substr(r).match(/\d{3}/g).join(","):text0.match(/\d{3}/g).join(",");
                val=val+"."+text1;
                $(this).val(val);
            }else{
                val=r>0?text0.substr(0,r)+","+text0.substr(r).match(/\d{3}/g).join(","):text0.match(/\d{3}/g).join(",");
                $(this).val(val);
            }
        }
    });


    /**预览弹出显示**/
    $(".preview").live('click',function(){
        var ultex=$(this).parent().children(".view_bd").html();
        var closebtn='<a title="关闭" class="ab_r close close2">✖</a>';
        $("#tu_fixed .bd").empty();
        $("#tu_fixed .bd").prepend(ultex);
        $("#tu_fixed .bd").append(closebtn);
        $("#tu_fixed").fadeIn();
        $("#tu_fixed .close2").click(function(){
            $("#tu_fixed").fadeOut();
        });
        $("#tu_fixed .bd").children("div").addClass("viewul");
        $(function() {
            var sWidth = $(".viewul").width(); //获取焦点图的宽度（显示面积）
            var len = $(".viewul ul li").length; //获取焦点图个数
            var index = 0;
            var picTimer;
            var tool = "<div class='preNext pre'></div><div class='preNext next'></div>";
            $(".viewul").append(tool);
            $('.viewul .tool').css('left',($('body').width()-$('.viewul .tool').width()-10)/2 );
            //上一页按钮
            $(".viewul .pre").click(function() {
                index -= 1;
                if (index == -1) {
                    index = len - 1;
                }
                showPics(index);
            });
            //下一页按钮
            $(".viewul .next").click(function() {
                index += 1;
                if (index == len) {
                    index = 0;
                }
                showPics(index);
            });
            //本例为左右滚动，即所有li元素都是在同一排向左浮动，所以这里需要计算出外围ul元素的宽度
            $(".viewul ul").css("width", sWidth * (len));
            //鼠标滑上焦点图时停止自动播放，滑出时开始自动播放
            $(".viewul").hover(function() {
                    clearInterval(picTimer);
                },
                function() {
                    picTimer = setInterval(function() {
                            showPics(index);
                            index++;
                            if (index == len) {
                                index = 0;
                            }
                        },
                        300000); //此2000代表自动播放的间隔，单位：毫秒
                }).trigger("mouseleave");
            //显示图片函数，根据接收的index值显示相应的内容
            function showPics(index) { //普通切换
                var nowLeft = -index * sWidth; //根据index值计算ul元素的left值
                $(".viewul ul").stop(true, false).animate({
                        "left": nowLeft
                    },
                    1000);
            }
        });
    });
    $(".tc_up .close1").click(function(){
        $(".tc_up1").fadeOut();
    });
});
//三位一个，
function digital_three(obj,num){
    for(var i=0;i<obj.length;i++){
        var text;
        if(num==2){//123.00
            text=$(obj[i]).text().replace(/,/g,"").split(".")[0];
            text2="."+$(obj[i]).text().split(".")[1];
        }else{
            text=$(obj[i]).text();
            text2="";
        }
        var len=text.length;
        var r=len%3;
        if(len<=3){
            $(obj[i]).text(text+text2);
        }else{
            /*r>0或r=0*/
            var txt=r>0?text.slice(0,r)+","+text.slice(r).match(/\d{3}/g).join(","):text.slice(r).match(/\d{3}/g).join(",")
            $(obj[i]).text(txt+text2);
        }
    }
}


//数字小数点前三位加逗号  --自用
function fmoneys_self(num) {
    texts = (num+"").split(".");
    var text1 = texts[1];
    var text0=texts[0];
    var len=text0.length;
    var r=len%3;
    if(len>3){
        if(text0.indexOf(".")>-1){

        }else{
            text0=r>0?text0.substr(0,r)+","+text0.substr(r).match(/\d{3}/g).join(","):text0.match(/\d{3}/g).join(",");
        }
    }
    if(text1== undefined)
        text1="00";
    return text0+"."+text1;
}
function recodHtml(data,type){
    var Ynum=(data/100).toFixed(2),YnumArr=Ynum.split("."), YnumArrHTML='';
    YnumArr[0] = fmoneys(YnumArr[0]);
    if(type==1){
        YnumArrHTML='<span>￥</span><span>'+YnumArr[0]+'</span>.<span>'+YnumArr[1]+'</span>';
    }else if(type==2){
        YnumArrHTML='<span class="d">￥</span><span id="yuan" class="digial_show">'+YnumArr[0]+'</span><span class="colf60 decimal" id="fen">.'+YnumArr[1]+'</span>'
    }else if(type==3){
        YnumArrHTML='￥<span class="colf60 font_18" id="balance">'+YnumArr[0]+'</span><span class="small" id="decimals">.'+YnumArr[1]+'</span>'			  }
    return YnumArrHTML
}


function fmoneys(num) {
    var text0=num;
    var len=text0.length;
    var r=len%3;
    if(len>3){
        if(text0.indexOf(".")>-1){

        }else{
            text0=r>0?text0.substr(0,r)+","+text0.substr(r).match(/\d{3}/g).join(","):text0.match(/\d{3}/g).join(",");
        }
    }
    return text0;
}

var Url={encode:function(string){return escape(this._utf8_encode(string))},decode:function(string){return this._utf8_decode(unescape(string))},_utf8_encode:function(string){string=string.replace(/\r\n/g,"\n");var utftext="";for(var n=0;n<string.length;n++){var c=string.charCodeAt(n);if(c<128){utftext+=String.fromCharCode(c)}else if((c>127)&&(c<2048)){utftext+=String.fromCharCode((c>>6)|192);utftext+=String.fromCharCode((c&63)|128)}else{utftext+=String.fromCharCode((c>>12)|224);utftext+=String.fromCharCode(((c>>6)&63)|128);utftext+=String.fromCharCode((c&63)|128)}};return utftext},_utf8_decode:function(utftext){var string="";var i=0;var c=c1=c2=0;while(i<utftext.length){c=utftext.charCodeAt(i);if(c<128){string+=String.fromCharCode(c);i++}else if((c>191)&&(c<224)){c2=utftext.charCodeAt(i+1);string+=String.fromCharCode(((c&31)<<6)|(c2&63));i+=2}else{c2=utftext.charCodeAt(i+1);c3=utftext.charCodeAt(i+2);string+=String.fromCharCode(((c&15)<<12)|((c2&63)<<6)|(c3&63));i+=3}};return string}}
jQuery.cookie=function(name,value,options){if(typeof value!='undefined'){options=options||{};if(value===null){value='';options.expires=-1};var expires='';if(options.expires&&(typeof options.expires=='number'||options.expires.toUTCString)){var date;if(typeof options.expires=='number'){date=new Date();date.setTime(date.getTime()+(options.expires*24*60*60*1000))}else{date=options.expires};expires='; expires='+date.toUTCString()};var path=options.path?'; path='+(options.path):'';var domain=options.domain?'; domain='+(options.domain):'';var secure=options.secure?'; secure':'';document.cookie=[name,'=',encodeURIComponent(value),expires,path,domain,secure].join('')}else{var cookieValue=null;if(document.cookie&&document.cookie!=''){var cookies=document.cookie.split(';');for(var i=0;i<cookies.length;i++){var cookie=jQuery.trim(cookies[i]);if(cookie.substring(0,name.length+1)==(name+'=')){var pattern=/["]+/gi,names=cookie.substring(name.length+1);cookieValue=decodeURIComponent(names.replace(pattern,""));break}}};return cookieValue}};

function send_code($obj,$obj2,state,flag){
    var server=$("#hideServer").val();
    var data={"mobile":$obj.val(),"state":state};
    if($obj.attr("class").indexOf("ok")!=-1){
        $.ajax({
            cache: true ,
            type : "post",
            async:false,
            url : "/sendsms",
            data:data,
            type : "post",
            success:function(data){
                data=$.parseJSON(data);
                if(data.success||data.length==0){
                    if(flag==2){
                        $obj2.attr("disabled","disabled").val("120").css({"background-position":"left 35%","cursor":"normal"});
                        var timer=null,i=120;
                        timer=setInterval(function(){
                            if(i==0){
                                clearInterval(timer);
                                $obj2.val("重新发送").removeAttr("disabled").css({"background-position":"left 49%","cursor":"pointer"});
                            }else{
                                $obj2.val(--i);
                            }
                        },1000);
                    }else{
                        $obj2.attr("disabled","disabled");
                        var timer=null,i=120;
                        timer=setInterval(function(){
                            if(i==0){
                                clearInterval(timer);
                                $obj2.html("再次发送<br />验证码").removeClass('disabled');
                            }else{
                                $obj2.html(--i + "秒后<br />可再次发送").addClass('disabled') ;
                            }
                        },1000);
                    }
                }else{
                    X._alert({msg:data.info});
                }
            }
        });
    }else{
        $obj.blur();
    }
};
function time(o,wait) {
    alert(wait);
    if (wait == 0) {
        o.removeAttr("disabled");
        o.html("再次发送<br />验证码").css('background','#2ea7e0');
        wait = 5;
    } else {
        o.attr("disabled","disabled");
        o.html(+ wait + "秒后<br />可再次发送").css('background','#c5c5c5').css('color','#fff');
        wait--;
        setTimeout(function() {
                time(o,wait);
            },
            1000);
    }
}


//序列	类型（取省、市、区县）	服务	已有值	参数
function addressAssign(i,type,server,typeval,param){
    if(""==type || null==type) return;
    var postUrl="";
    if("provinces"==type)
        postUrl=server+"/uploadinfo/provincesArea";
    else if("cityArea"==type)
        postUrl=server+"/uploadinfo/cityArea";
    else if("area"==type)
        postUrl = server+"/uploadinfo/countysArea";

    $.ajax({
        async : false,
        type : "post",
        url : postUrl,
        data : param,
        success : function (data){
            data=$.parseJSON(data);
            if (data.length== undefined || data.length==0){
                if("cityArea"==type){
                    $("#area" + i).empty();
                    $("#area" + i).append("<option value='' selected='selected'>选择地区</option>");
                    $("#cityArea" + i).empty();
                    $("#cityArea" + i).append("<option value='' selected='selected'>选择城市</option>");
                }else if("area"==type){
                    $("#area" + i).empty();
                    $("#area" + i).append("<option value='' selected='selected'>选择地区</option>");
                }
            }else{
                $.each(data, function(key, val) {
                    var select="";
                    if(data[key].dicKey==typeval){
                        select='selected=\"selected\"';
                    }else{
                        select="";
                    }
                    $("#"+type + i).append("<option "+select+" value=\'" + data[key].dicKey + "\'>"+data[key].dicValue+"</option>");
                });
            }
        }
    });

}


function place_show(i,provinces,value,city,area,server){
    var oldPro = provinces;
    var oldCity = city;
    var oldArea = area;


    //序列	类型（取省、市、区县）	服务	已有值	参数
    //省份赋值
    addressAssign(i,"provinces",server,provinces,null);

    if(provinces!="" && null!=provinces){
        //市级赋值
        var paramet = {cityId : provinces};
        addressAssign(i,"cityArea",server,city,paramet);
        //区县赋值
        var provinces1 = $("#provinces" + i ).find("option:selected").text();
        var city1 = $("#cityArea" + i).val();
        value = $("#cityArea" + i ).find("option:selected").text();
        var paramet1 = {
            provinces : provinces1,
            areaId : city1,
            _value : value
        };
        addressAssign(i,"area",server,area,paramet1);
    }

    var mySelect = $("#provinces" + i);
    mySelect.fancySelect().on("change.fs", function() {
        if(oldPro!=mySelect.val()){
            $("#area" + i).empty();
            $("#area" + i).append("<option value='' selected='selected'>选择地区</option>");
            $("#cityArea" + i).empty();
            $("#cityArea" + i).append("<option value='' selected='selected'>选择城市</option>");
            //市级赋值
            var paramet = {cityId : mySelect.val()};
            addressAssign(i,"cityArea",server,null,paramet);
            $('.sel_o3').trigger('update.fs');
            $('.sel_o2').trigger('update.fs');
        }
        oldPro=mySelect.val();
    });



    var mySelectArea = $("#cityArea" + i );
    mySelectArea.fancySelect().on("change.fs", function() {
        if(oldCity!=mySelectArea.val()){
            $("#area" + i).empty();
            $("#area" + i).append("<option value='' selected='selected'>选择地区</option>");
            var vale = mySelectArea.find("option:selected").text();
            //区县赋值
            var paramet1 = {
                provinces : $("#provinces" + i).find("option:selected").text(),
                areaId : mySelectArea.val(),
                _value : vale
            };
            addressAssign(i,"area",server,"",paramet1);
            $('.sel_o3').trigger('update.fs');
        }
        oldCity = mySelectArea.val();
    });
}



/*
 * page 前台资料上传
 * 弹出层
 */
function showUploadFile(url,uri,id,ajaxurl){
    $("#added").click(function(){
        var dataurl=url+"?uri="+uri+"&&typeId="+id;//'${server}/uploadinfo/upload?uri=${server}/uploadinfo/contact&&typeId=6';
        var bheight=$("body").height();
        var html="<div style=\"display:block\" class=\"tc_up1 tc_up fixcom\"><i class=\"opa\"></i><div class=\"bd\">"+
            "<iframe frameborder=\"0\" scrolling=\"no\" style=\"width:100%;height:100%;\" src="+dataurl+" name=\"bdbridge-frame\"></iframe>"+
            "<a title=\"关闭\" class=\"ab_r close close1\">✖</a></div></div>";
        $("body").append(html);
        $(".tc_up1").fadeIn();
        $(".tc_up .close1").click(function(){
            $(".tc_up1").fadeOut();
        });
    });
    $("body").delegate(".close1","click",function(){
        closedShow(id,ajaxurl);
    });

}

//我的资料-附件
function deleteIt(obj , accid){
    if (confirm("确认要移除附件？")) {
        var paramet = {accId : accid};
        $.post("/uploadinfo/deleteAccByOne",paramet,function(data){
            var data=$.parseJSON(data);
            var info = data.split(',');
            if(info[0]=="succ"){
                var $obj=$(obj);
                var html = "<input name='list' type='hidden' value='" + accid + "' />";
                $obj.parents("tr").remove().append();
                $(".img_tb").append(html);
            }
            alert(info[1]);
        });


    }
}


/*
 * page 前台资料上传
 * 关闭弹出层，并刷新附件
 */
function closedShow(id,ajaxurl){
    $(".tc_up1").fadeOut();
    var arr=new Array();
    $("input[name=list]").each(function(index, el) {
        arr[index]=$(this).val();
    });
    $.ajax({
        url:ajaxurl+"?accType="+id+"&&time="+new Date().getTime(),//'${server}/uploadinfo/selectUserPptAccessory?accType=6',
        dataType: 'json',
        type:'get',
        error: function(data){alert("加载 出错！");},
        success: function(data){
            var vhtml="";
            $(data).each(function(index, element) {
                var brk=false;
                for(i=0;i<arr.length;i++){
                    if(arr[i]==element.accId){
                        brk=true;
                    }
                }

                if(brk){

                }else{
                    vhtml+='<tr>'
                        +'<th title="'+element.accName+'">'+element.accName+'</th>'
                        +'<td class="t2" title="'+element.accDesc+'">'+element.accDesc+'</td>'
                        +'<td class="t3">'
                        + '<div class="view_bd" style="display:none"><div><ul class="ul_h">'
                        +'<li><img  src="'+element.accUrl+'"></li>'
                        +'</ul></div></div>'
                        +'<a class="preview btn">查看</a>'
                        +'<a class="btn btn_red" onclick="deleteIt(this,'+element.accId+')">移除</a>'
                        +'</td>'
                        +'</tr>';
                }
            });
            $("#tableshow").empty();
            $("#tableshow").append(vhtml);
        }
    });
}

//我的资料
function submitForm(){
    $("#start").removeAttr("disabled");
    $(".f_submit").click();
}

function registerFenliu(){
    // 获取终端的相关信息
    var Terminal = {
        // 辨别移动终端类型
        platform : function(){
            var u = navigator.userAgent, app = navigator.appVersion;
            return {
                // android终端或者uc浏览器
                android: u.indexOf('Android') > -1 || u.indexOf('Linux') > -1,
                // 是否为iPhone或者QQHD浏览器
                iPhone: u.indexOf('iPhone') > -1 ,
                // 是否iPad
                iPad: u.indexOf('iPad') > -1
            };
        }(),
        // 辨别移动终端的语言：zh-cn、en-us、ko-kr、ja-jp...
        language : (navigator.browserLanguage || navigator.language).toLowerCase()
    };

    // 根据不同的终端，跳转到不同的地址
    //var theUrl = 'http://www.etongdai.com/download.html';
    if(Terminal.platform.android){
        $("#fenliu,#fenliu1").attr("href", "https://m.etongdai.com/register/wapH5Register");
        // alert('小屏');
    }else if(Terminal.platform.iPhone){
        $("#fenliu,#fenliu1").attr("href", "https://m.etongdai.com/register/wapH5Register");
    }
    //location.href = theUrl;
    else if(Terminal.platform.iPad){
        $("#fenliu,#fenliu1").attr("href", "https://m.etongdai.com/register/wapH5Register");
    }


}

//编辑框
function Kind_Editor(server){
    var editor;
    KindEditor.ready(function(K) {
        var editor1 = K.create('textarea[name="itdContent"]', {
            cssPath : server+'/js/kindeditor/plugins/code/prettify.css',
            uploadJson : server+'/uploadJSON/uploading',
            fileManagerJson : server+'/fileManager/filemanagerJSON',
            allowFileManager : true,
            items : [
                'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
                'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
                'insertunorderedlist', '|', 'emoticons', 'image', 'link'],
            afterCreate : function() {
                var self = this;
                K.ctrl(document, 13, function() {
                    self.sync();
                    document.forms['example'].submit();
                });
                K.ctrl(self.edit.doc, 13, function() {
                    self.sync();
                    document.forms['example'].submit();
                });
            },
            afterBlur:function(){
                this.sync();
            }
        });
        //prettyPrint();
        //editor.sync();
    });
}

//置顶标年利率显示
function setRateList(obj){
    for(var i=0;i<obj.length;i++){
        var $obj=$(obj[i]);
        var mony = $obj.val().split(".");
        $(".year_rate_big"+i).text(mony[0]);
        if(mony[1]== undefined)
            $(".year_rate_min"+i).text("00");
        else
            $(".year_rate_min"+i).text(mony[1]);
    }
}



