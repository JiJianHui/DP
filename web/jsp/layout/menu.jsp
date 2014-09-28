<%--
  Created by IntelliJ IDEA.
  User: Ji JianHui
  Date: 14-4-18
  Time: 下午4:19
  Email: jhji@ir.hit.edu.cn
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!-------------------------------------导航---------------------------------------------->

<div class="topNav">

    <div class="topNav-width">

        <dl class="tnLeft"><dd><h3><img src="images/logo.png"></h3> </dd></dl>

        <dl class="tnRight">

            <dd><h3><a  href="/index.html">首页</a></h3></dd>
            <dd><h3><a  href="/dpParseDemo.html">Demo</a></h3></dd>
            <dd>

                <h3><a  href="/corpusIntroduction.html">语料标注<i></i></a></h3>

                <ul>
                    <li><a href="/corpusIntroduction.html">语料介绍</a></li>
                    <li><a href="/corpusIntroduction.html">语料标注</a></li>
                    <li><a href="/corpusIntroduction.html">语料存储</a></li>
                    <li><a href="/corpusDownload.html">语料下载</a></li>
                </ul>

            </dd>

            <dd>

                <h3><a  href="/corpusAnalysis.html">语料分析<i></i></a></h3>

                <ul>
                    <li><a href="/corpusAnalysis.html">关联词分析</a></li>
                    <li><a href="/corpusAnalysis.html">显式关系分析</a></li>
                    <li><a href="/corpusAnalysis.html">隐式关系分析</a></li>
                    <li><a href="/corpusAnalysis.html">关联词词表</a></li>
                </ul>

            </dd>

            <dd>

                <h3><a  href="/corpusDownload.html">语料下载<i></i></a></h3>

                <ul>
                    <li><a href="/corpusDownload.html#projectTitle">课题介绍</a></li>
                    <%--<li><a href="/corpusDownload.html#proMember">人员介绍</a></li>--%>
                    <li><a href="/corpusDownload.html#proPapers">发表文章</a></li>
                    <%--<li><a href="/corpusDownload.html#aboutus">联系我们</a></li>--%>
                    <li><a href="http://ir.hit.edu.cn">HIT-SCIR</a></li>
                </ul>

            </dd>
            <dd><h3><a  href="/aboutus.html">About us</a></h3></dd>
            
        </dl>

    </div><!--End of topNav-width clearfix -->

</div><!--End of topNV-->



<script type="text/javascript">
      jQuery(".topNav").slide({ type:"menu",  titCell:"dd", targetCell:"ul", delayTime:0,defaultPlay:false,returnDefault:true  });
</script>




