<%--
  Created by IntelliJ IDEA.
  User: Ji JianHui
  Date: 14-4-21
  Time: 下午7:01
  Email: jhji@ir.hit.edu.cn
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link rel="stylesheet" href="/css/corpus.css">

<!-------------------------------------内容---------------------------------------------->
<div class="content">

    <div class="index">
        <br /><span style="color:#006600; size:24px"><b>目录：</b></span><br/>
        <a href="#corpusIntroductionTitle">1. 语料介绍</a>
        <br /><a href="#corpusExampleTitle">2. 语料标注</a>
        <br /><a href="#corpusExpExampleTitle" class="subIndex">2.1: 显式句间关系标注</a>
        <br /><a href="#corpusImpExampleTitle" class="subIndex">2.2: 隐式句间关系标注</a>
        <br /><a href="#annotationMannualTitle">3. 标注手册</a>
        <br /><a href="#corpusFormatTitle">4. 语料存储</a>
        <br /><a href="#corpusFormatExpXMLTitle" class="subIndex">4.1: 显式句间关系xml版存储格式</a>
        <br /><a href="#corpusFormatImpXMLTitle" class="subIndex">4.2: 隐式句间关系xml版存储格式</a>

    </div>

    <div id="corpusIntroduction">

        <div class="title"><a name="corpusIntroductionTitle">1. 语料介绍</a></div>

        <div class="contenBody">
            <p>
                <font color="#FF0000" style="font-weight:bold">哈工大中文篇章级句间语义关系语料 (HIT-CDTB) </font>包括525篇标注文本，语料生文本来源于OntoNotes 4.0中的以下四类文本：
            </p>

            <p>&nbsp;&nbsp;&nbsp;&nbsp;   1. bn (broad news)
            <p>&nbsp;&nbsp;&nbsp;&nbsp;   2. mz (magazine)
            <p>&nbsp;&nbsp;&nbsp;&nbsp;   3. nw (new wire)
            <p>&nbsp;&nbsp;&nbsp;&nbsp;   4. wb (web)

            <p><br /></p>
            <p>针对每一篇文本，我们标注了以下三部分内容：分句关系、复句关系和句群关系。</p>

            <p>&nbsp;&nbsp;&nbsp;&nbsp;<font color="#FF0000" style="font-weight:bold">p3:</font>&nbsp;
                分句关系是指句间关系涉及到的两个关系元素位于同一个句子内；
            <p>&nbsp;&nbsp;&nbsp;&nbsp;<font color="#FF0000" style="font-weight:bold">p2:</font>&nbsp;
                复句关系指句间关系涉及到的两个关系元素是两个独立的句子
            <p>&nbsp;&nbsp;&nbsp;&nbsp;<font color="#FF0000" style="font-weight:bold">p1:</font>&nbsp;
                句群关系是指句间关系涉及到的两个关系元素是句子的集合。

            <p><br/>
                <b>显式句间关系:</b><br/>&nbsp;&nbsp;&nbsp;&nbsp;
                指由显式关联词标识的句间关系。标注过程中，通常从识别关联词入手，根据关联词判断是否存在句间关系，但并不是所有的关联词都标识了句间关系，因此需要标注人员进行识别。 在标注过程中需要首先识别显式关联词，再根据关联词寻找关系元素。
            </p>

            <p><br/>
                <b>隐式句间关系:</b><br/>&nbsp;&nbsp;&nbsp;&nbsp;
                隐式句间关系是指没有显式关联词的句间关系。在很多情况下，汉语句间关系并没有关联词，识别难度比显式句间关系更大。在标注过程中，首先需要标注人员识别隐式关系，并选择合适的连词插入关系，以此标识该句间关系。
            </p>
        </div>
    </div>


    <div id="corpusExample">
        <div class="title"><a name="corpusExampleTitle">2. 语料标注</a></div>
        <div class="contenBody">
            <p>针对原始语料：</p>
            <p>
                <br />
                <font style="font-size:14px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;" 前几天大家想出去玩，但是天气一直不好，就没有出去。天气预报说今天天气会很好，大家决定去旁边的白云山上玩。"
                </font>
                <br />
                <br />
            </p>

            <p>
                该语料中共存在两个句间关系，第一句话中是一个典型显式转折关系。第二句话是一个典型的隐式因果关系。
            </p>

            <p>
                <br />
                <b><font size="+1"><a name="corpusExpExample">2.1: 显式句间关系标注示例</a></font></b>
                <br /><br />
            <div><img style="text-align: center" src="images/Explicit.jpg" /></div>
            </p>

            <p><br /></p>

            <p>
                <b><font size="+1"><a name="corpusImpExample">2.2: 隐式句间关系标注示例</a></font></b>
                <br /><br />
            <div ><img style="text-align: center" src="images/Implicit.jpg" /></div>
            </p>

            <p></p>

        </div>

    </div>

    <div id="annotationMannual">
        <div class="title"><a name="annotationMannualTitle">3. 标注手册</a></div>
        <a href="./files/Annotation%20Manual%20of%20CDTB%20of%20HIT.pdf">标注手册下载>>></a>
    </div>

    <div id="corpusFormat">

        <div class="title"><a name="corpusFormatTitle">4. 语料存储格式</a></div>

        <div class="contenBody">
            语料的标注的结果的存放格式分为两种，txt版和xml版。txt版本的存储格式见上面的标注示例.
            <br /><br /><b>
            <font size="+1"><a name="corpusFormatExpXMLTitle">4.1: 显式句间关系xml版本存储格式如下：</a></font>
        </b>
            <br /><br />
            <div><img src="images/ExplicitXML.jpg" /></div>

            <br /><br />

            <b><font size="+1"><a name="corpusFormatImpXMLTitle">4.2: 隐式句间关系xml版本存储格式如下：</a></font></b>
            <br /><br />
            <div><img src="images/implicitXML.jpg" /></div>
        </div>

    </div>

</div>
<!--End of content-->
