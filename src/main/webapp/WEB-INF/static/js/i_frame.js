/****开始轮播*****/
window.onload = function() {
    $(function() {

        var sWidth = $("#focus").width(); //获取焦点图的宽度（显示面积）
        var len = $("#focus ul li").length; //获取焦点图个数
        var index = 0;
        var picTimer;

        //以下代码添加数字按钮和按钮后的半透明条，还有上一页、下一页两个按钮
        var tool = "<div class='toolBg'></div><div class='tool'>";
        for (var i = 0; i < len; i++) {
            tool += "<span></span>";
        }
        tool += "</div><div class='preNext pre'></div><div class='preNext next'></div>";
        $("#focus").append(tool);
        $('#focus .tool').css('left',($('body').width()-$('#focus .tool').width()-10)/2 );
        $("#focus .toolBg").css("opacity", 0.5);
        //为小按钮添加鼠标滑入事件，以显示相应的内容
        $("#focus .tool span").mouseover(function() {
            index = $("#focus .tool span").index(this);
            showPics(index);
            return false;
            // }).eq(0).css("background", "#CF3");
        }).eq(0).addClass("cur");
        //上一页、下一页按钮透明度处理

        //$("#focus ol li").css('opacity',0.6).mouseover(function(){
        //	$(this).css('opacity',1);
        //}).mouseout(function(){
        //	$(this).css('opacity',0.6);
        //}).click(function() {
        //    index = $("#focus ol li").index(this);
        //    showPics(index);
        // });
        $("#focus ol li").hover(function(){
            $(this).addClass("cur");
        },function(){
            $(this).removeClass("cur");
        }).click(function() {
            index = $("#focus ol li").index(this);
            showPics(index);
        });;

        $("#focus .preNext").css("opacity", 1).hover(function() {
                $(this).stop(true, false).animate({
                        "opacity": "1"
                    },
                    300);

            },
            function() {
                $(this).stop(true, false).animate({
                        "opacity": "1"
                    },
                    300);
            });
        //上一页按钮
        $("#focus .pre").click(function() {
            index -= 1;
            if (index == -1) {
                index = len - 1;
            }
            showPics(index);
        });
        //下一页按钮
        $("#focus .next").click(function() {
            index += 1;
            if (index == len) {
                index = 0;
            }
            showPics(index);
        });
        //本例为左右滚动，即所有li元素都是在同一排向左浮动，所以这里需要计算出外围ul元素的宽度
        $("#focus ul").css("width", sWidth * (len));

        //鼠标滑上焦点图时停止自动播放，滑出时开始自动播放
        $("#focus").hover(function() {
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
                    4800); //此2000代表自动播放的间隔，单位：毫秒
            }).trigger("mouseleave");

        //显示图片函数，根据接收的index值显示相应的内容
        function showPics(index) { //普通切换
            var nowLeft = -index * sWidth; //根据index值计算ul元素的left值
            $("#focus ul").stop(true, false).animate({
                    "left": nowLeft
                },
                300); //通过animate()调整ul元素滚动到计算出的position
            $("#focus .tool span").stop(true, false).animate({
                    // "opacity": "1"
                },
                300).eq(index).stop(true, false).animate({
                    //300).css("background", "#69c").eq(index).stop(true, false).animate({
                    // "opacity": "1"
                },
                // 300).css("background", "#CF3"); //为当前的按钮切换到选中的效果
                300).addClass("cur").siblings().removeClass('cur'); //为当前的按钮切换到选中的效果
        }
    });

}

$(function(){

    //alert( $('body').width() );

    $('#focus ul li').width( $('body').width() );
    $('#focus ol').css('left',($('body').width()-$('#focus ol').width())/2 );


    $('#focus').mouseover(function(){
        $('.preNext').show();
        $(this).find('ol').show();
        $(this).find('ul li a').show();
    }).mouseout(function(){
        $(this).find('ol').hide();
        $(this).find('ul li a').hide();
        $('.preNext').hide();
    });

    /*$('#focus .a').hover(function(){
     //$('#focus .small').hide();
     return false;
     });*/

});
/****结束轮播*****/
/****开始滚动*****/
function AutoScroll(obj){
    $(obj).find(".scroll:first").animate({
        marginTop:"-60px"
    },500,function(){
        $(this).css({marginTop:"0px"}).find("li:first").appendTo(this);
    });
}
$(document).ready(function(){
    setInterval('AutoScroll(".scrolldiv")',4000);
});
/****结束滚动*****/
/****开始转*****/
$(document).ready(function(){
    $(".tdb li i").rotate({
        bind:
        {
            mouseover : function() {
                $(this).rotate({animateTo:360});
            },
            mouseout : function() {
                $(this).rotate({animateTo:0});
            }
        }

    });
});
/****end转*****/