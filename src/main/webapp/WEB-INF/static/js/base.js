/* 定义一些公用的基本功能、工具函数
 * 1.数字千分符
 * 2.数字四舍五入、格式化
 * 3.日期格式化
 * 4.倒计时
 * create by zhaohaibo
 */
function rmoney(s) {
    return parseFloat(s.replace(/[^\d\.-]/g, ""));
}

function thousand_char(obj, d){
    for(var i=0;i<obj.length;i++){
        var v = rmoney($(obj[i]).text());
        //$(obj[i]).text(numFormat(v, d));

        $(obj[i]).text(toThousands(v, d));
    }
}
function numFormat(num, d) {
    return (num.toFixed(d) + '').replace(/\d{1,3}(?=(\d{3})+(\.\d*)?$)/g, '$&,');
}
function toThousands(num, d) {
    var text1='', result = '';
    var num = num.toFixed(d);
    num = (num || 0).toString();
    var index = num.indexOf(".");
    if(index!=-1){
        text1=num.substring(index);
        num = num.substring(0, index);
    }
    while (num.length > 3) {
        result = ',' + num.slice(-3) + result;
        num = num.slice(0, num.length - 3);
    }
    if (num) {
        result = num + result;
    }
    return result+text1;
}

/**
 * 将value转为数字类型，并保留指定小数位
 * @param v
 * @param d
 * @returns
 */
function parseNum(v, d){
    if(!v){
        v = 0;
    }else if(isNaN(v)){
        v = v.replace(/,/g,"");
    }
    if(isNaN(v)){
        v = 0;
    }
    if(!d || isNaN(d)){
        d = 2;
    }
    return parseFloat(v).toFixed(d);
}
function toMd5(pwd){
    var passwd = hex_md5(pwd+'s^H8').toUpperCase();
    return hex_md5(passwd.substring(0, 5)+passwd).toUpperCase();
}
$(function(){
    //$('input[type="password"]').each(function(){
    //	alert(this.name+"="+this.value);
    //});

    $("form").submit(function(){
        $('input[type="password"]').each(function(){
            if(this.value && this.value.length >= 6 && this.value.length <= 16){
                this.value = hex_md5(this.value+'s^H8').toUpperCase();
                this.value = hex_md5(this.value.substring(0, 5)+this.value).toUpperCase();
            }
        });
    });
});

/**
 * 时间格式化
 * @param fmt
 * @returns
 */
Date.prototype.Format=function(fmt) {
    var o = {
        "M+" : this.getMonth()+1, //月份
        "d+" : this.getDate(), //日
        "h+" : this.getHours()%12 == 0 ? 12 : this.getHours()%12, //小时
        "H+" : this.getHours(), //小时
        "m+" : this.getMinutes(), //分
        "s+" : this.getSeconds(), //秒
        "q+" : Math.floor((this.getMonth()+3)/3), //季度
        "S" : this.getMilliseconds() //毫秒
    };

    var week = {
        "0" : "\u65e5",
        "1" : "\u4e00",
        "2" : "\u4e8c",
        "3" : "\u4e09",
        "4" : "\u56db",
        "5" : "\u4e94",
        "6" : "\u516d"
    };

    if(/(y+)/.test(fmt)){
        fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));
    }

    if(/(E+)/.test(fmt)){
        fmt=fmt.replace(RegExp.$1, ((RegExp.$1.length>1) ? (RegExp.$1.length>2 ? "\u661f\u671f" : "\u5468") : "")+week[this.getDay()+""]);
    }

    for(var k in o){
        if(new RegExp("("+ k +")").test(fmt)){
            fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));
        }
    }
    return fmt;
};