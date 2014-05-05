<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Go to top</title>
    <style>
        .backToTop{display:none; width:18px; line-height:1.2; padding:5px 0;
            background-color:#000; color:#fff; font-size:12px; text-align:center;
            position:fixed; _position:absolute; right:10px; bottom:100px;
            _bottom:"auto"; cursor:pointer; opacity:.6; filter:Alpha(opacity=60);}
    </style>
</head>

<body>

<div id="header">
</div>

<div id="main">
    <h1>jQuery下的返回顶部功能的实现实例页面</h1>

    <div id="body" class="light">

        <div id="content" class="show">

            显式句间关系:
            指由显式关联词标识的句间关系。
            <br>标注过程中，通常从识别关联词入手，根据关联词判断是否存在句间关系，
            <br>但并不是所有的关联词都标识了句间关系，
            <br>因此需要标注人员进行识别。
            <br>在标注过程中需要首先识别显式关联词，再根据关联词寻找关系元素。

            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            <br>隐式句间关系:
            <br>隐式句间关系是指没有显式关联词的句间关系。在很多情况下<br>，汉语句间关系并没有关联词，<br>识别难度比显式句间关系更大。
            <br>在标注过程中，首先需要标注人员识别隐式关系，并选择合适的连词插入关系，以此标识该句间关系。
            <br>在标注过程中，首先需要标注人员识别隐式关系，并选择合适的连词插入关系，以此标识该句间关系。

        </div>
    </div>
</div>

<script type="text/javascript" src="/js/jquery.min.js"></script>
<script>
    (function() {
        var $backToTopTxt = "返回顶部", $backToTopEle = $('<div class="backToTop"></div>').appendTo($("body"))
                .text($backToTopTxt).attr("title", $backToTopTxt).click(function() {
                    $("html, body").animate({ scrollTop: 0 }, 120);
                }), $backToTopFun = function() {
            var st = $(document).scrollTop(), winh = $(window).height();
            (st > 0)? $backToTopEle.show(): $backToTopEle.hide();
            //IE6下的定位
            if (!window.XMLHttpRequest) {
                $backToTopEle.css("top", st + winh - 166);
            }
        };
        $(window).bind("scroll", $backToTopFun);
        $(function() { $backToTopFun(); });
    })();

</script>

</body>
</html>
