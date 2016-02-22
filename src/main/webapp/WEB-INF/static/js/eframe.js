$(function() {
    /**top下拉动画和右侧fixed进入状态**/
    $('.share li,.fix_r li').hover(function() {
        $(this).addClass('on');
    },function() {
        $(this).removeClass('on');
    });
    /**微信弹出显示**/
    $(".share .two").click(function(){
        $(".tc_f").fadeIn();
    });
    /**微信弹出隐藏**/
    $(".tc_f .close").click(function(){
        $(".tc_f").fadeOut();
    });
    /**切换登录**/
    $("#log2 .exit").click(function(){
        $("#log2").hide();
        $("#log1").slideDown();
    });
    /**返回顶部**/
    $(".totop").click(function(){
        $('body,html').animate({scrollTop:0},500);
        return false;
    });

    //首先将.fix_r隐藏
    $(".fix_r .totop").hide();
    //当滚动条的位置处于距顶部100像素以下时，跳转链接出现，否则消失
    $(function () {
        $(window).scroll(function(){
            if ($(window).scrollTop()>550){
                $(".fix_r .totop").fadeIn(500);
            }
            else
            {
                $(".fix_r .totop").fadeOut(500);
            }
        });
    });

});