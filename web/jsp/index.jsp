<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 14-4-17
  Time: ÏÂÎç4:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<link rel="stylesheet" href="/css/index.css">

<div class="banner">
    <img src="/images/banner.png" />
</div>

<div class="content">

    <div class="show">

        <div class="showLeft"  style="cursor:pointer;" onclick="location.href='/corpusIntroduction.html';">

            <span class="showTitle">&nbsp;&nbsp;<a href="/corpusIntroduction.html">语料标注</a></span>
            <a href="/corpusIntroduction.html" style="display: block"><img src="images/showLeft.png" /></a>
            <%--<div class="showBottom"><br /><a href="./Corpus Introduction.html">更多</a></div>--%>

        </div>

        <div class="showCenter" style="cursor:pointer;" onclick="location.href='/corpusAnalysis.html';">

            <span class="showTitle">&nbsp;&nbsp;<a href="/corpusAnalysis.html">语料分析</a></span>
            <a href="/corpusAnalysis.html" style="display: block"><img src="images/showCenter.gif" /></a>
            <%--<div class="showBottom"><br /><a href="/corpusAnalysis.html">更多</a></div>--%>

        </div>

        <div class="showRight"  style="cursor:pointer;" onclick="location.href='/corpusDownload.html';">

            <span class="showTitle"> &nbsp;&nbsp;<a href="/corpusDownload.html">语料下载</a></span>
            <a href="/corpusDownload.html" style="display: block"><img src="images/showRight.gif" /></a>
            <%--<div class="showBottom"><br /><a href="./Project Introduction.html">更多</a></div>--%>

        </div>

        <br class="clean" clear="all" style="height:1px; width:1px;" />
    </div>
</div> <!--End of content-->


<!------------------项目链接区域---------------------------------->
<div class="myFooter">

    <div class = "footerInLeft">
        <a href="/corpusIntroduction.html"><h1 class = "title">语料标注</h1></a>

        <ul class="MyFooterMenu">
            <li><a href="/corpusIntroduction.html#corpusIntroduction"> 语料介绍</a></li>

            <li><a href="/corpusIntroduction.html#corpusExample">标注样例</a></li>
            <li><a href="/corpusIntroduction.html#corpusFormat">存储格式</a></li>
            <li><a href="/corpusIntroduction.html#annotationMannual">标注手册</a></li>
        </ul>

    </div>

    <div class="footerInCenter">
        <a href="/corpusAnalysis.html"><h1 class = "title">语料分析</h1></a>
        <ul class="MyFooterMenu">
            <li><a href="/corpusAnalysis.html#wordAnalysis"> 关联词分析</a></li>
            <li><a href="/corpusAnalysis.html#connectiveDict">关联词词表</a></li>
            <li><a href="/corpusAnalysis.html#expRelAnalysis">显式句间关系分析</a></li>
            <li><a href="/corpusAnalysis.html#impRelAnalysis">隐式句间关系分析</a></li>
        </ul>
    </div>

    <div class="footerInRight">
        <a href="/corpusDownload.html"><h1 class = "title">语料下载</h1></a>
        <ul class="MyFooterMenu">
            <li><a href="/corpusDownload.html#projectTitle"> 课题介绍</a></li>
            <li><a href="/corpusDownload.html#download">语料下载</a></li>
            <li><a href="/corpusDownload.html#proPapers">发表文章</a></li>
            <li><a href="/corpusDownload.html#aboutus">联系我们</a></li>
            <li><a href="http://ir.hit.edu.cn/">HIT-SCIR</a></li>
        </ul>
    </div>

    <!--<div class="banner">-->
    <!--<img src="./images/banner.png" />-->
    <!--</div>-->

    <div class="download" style=" margin-left:9%;">
        <a href="/corpusDownload.html#download">
            <img src="images/downloadpng1.png" style="height:50px;width:150px;margin-top:20px;">
        </a>
    </div>


</div><!---End of my footer--->
