<%--
  Created by IntelliJ IDEA.
  User: Ji JianHui
  Date: 14-4-21
  Time: 下午7:24
  Email: jhji@ir.hit.edu.cn
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link rel="stylesheet" href="/css/corpus.css">
<div class="content">

            <div class="index">

                <br /><font color="#006600" size="+1"><b>目录：</b></font><br/>
                <a href="#wordAnalysis">1. 关联词分析</a>
                <!--<br /><a href="#corpusExpExample" class="subIndex">1.1: 关联词出现频率分析</a>-->
                <br /><a href="#connectiveDictTitle">2. 关联词表</a>

                <br /><a href="#expRelAnalysisTitle">3. 显式句间关系分析</a>

                <br /><a href="#impRelAnalysisTitle">4. 隐式句间关系分析</a>


            </div>

            <div id="wordAnalysis">
                <div class="title"><a name="wordAnalysisTitle">1. 关联词分析</a></div>

                <br/>此次标注的关联词分为显式关联词和隐式关联词两种。
                显式关联词主要是指在实际语料中出现的，用于指示句间关系的关联词。
                隐式关联词主要是指在实际语料中没有出现的，由标注人员手工插入用于指示句间关系的关联词。
                针对标注出来的关联词，主要从以下几个方面进行统计分析：
                关联词出现频率；关联词在句群，复句和分句中的分布规律；
                关联词在实际语料中的使用频率；
                并列关联词；关联词指示能力分析。

                <br/><br/>常见的显式关联词包括以下几个类别：

                <br/><br/><b>普通关联词</b>
                <br/>可以单独使用来标识句间关系的关联词，例如：但是，由于，不过等。
                <br/>例如：小强今天没来上课，因为他生病了。

                <br/><br/><b>带修饰关联词</b>
                <br/>很多普通关联词可以搭配副词使用，例如：部分原因，尤其是等。
                <br/>例如：他最近成绩不好，部分原因是身体不好的原因。

                <br/><br/><b>平行关联词</b>
                <br/>这样的关联词通常由两部分组成，例如：一方面…另一方面…，一边…一边…等。
                <br/>例如：一方面经济发展迅速，人民生活水平大大提高；另一方面环境问题却日渐严重。

                <div class="title"><a name="corpusIntroduction">1.1: 关联词出现频率</a></div>
                该统计结果主要是用来分析在标注结果中每个关联词出现的次数的分布规律。
                <br/>根据关联词的显式和隐式，将统计结果分成了两部分，即显式关联词在标注结果中的出现频率以及隐式关联词在标注结果中的出现频率。

                <br/><br/><b>显式关联词出现频率</b>
                <br/>语料中标注出来的显式关联词共有1472种，它们总共出现的次数是11519次。
                其中显式关联词出现频率前20的各个关联词出现次数以及它们在总次数中占据的比例如表1和表2所示。
                <br/>

                <div style="text-align: center;">
                    表1：显式关联词中出现次数排名前1-10的各个关联词
                    <table class="wordTable" style="width:70%;margin-left: 15%;">
                        <tr style="border-style: dotted;" >
                            <th>关联词</th>
                            <td>但</td>	<td>但是</td>	<td>因为</td>	<td>而</td>	<td>如果</td>
                            <td>不过</td>	<td>也</td>	<td>所以</td>	<td>并</td>	<td>而且</td>
                        </tr>

                        <tr>
                            <th>次数</th>
                            <td>630</td>	<td>579</td>	<td>467</td>	<td>458</td>	<td>344</td>
                            <td>337</td>	<td>318</td>	<td>256</td>	<td>254</td>	<td>204</td>
                        </tr>

                        <tr>
                            <th>比例</th>
                            <td>5.47%</td>	<td>5.03%</td>	<td>4.05%</td>	<td>3.98%</td>	<td>2.99%</td>
                            <td>2.93%</td>	<td>2.76%</td>	<td>2.22%</td>	<td>2.21%</td>	<td>1.77%</td>
                        </tr>
                    </table>
                </div>
                <br/>
                <div style="text-align: center;">
                    表2：显式关联词中出现次数排名前11-20的各个关联词
                    <table class="wordTable" style="width:70%;margin-left: 15%;">
                        <tr style="border-style: dotted;" >
                            <th>关联词</th>
                            <td>并且</td>	<td>因此</td>	<td>和</td>	<td>然而</td>	<td>还</td>
                            <td>由于</td>	<td>为了</td>	<td>以及</td>	<td>之后</td>	<td>其中</td>
                        </tr>

                        <tr>
                            <th>次数</th>
                            <td>203</td>	<td>197</td>	<td>192</td>	<td>169</td>	<td>162</td>
                            <td>144</td>	<td>134</td>	<td>131</td>	<td>129</td>	<td>129</td>
                        </tr>

                        <tr>
                            <th>比例</th>
                            <td>1.76%</td>	<td>1.71%</td>	<td>1.67%</td>	<td>1.47%</td>	<td>1.41%</td>
                            <td>1.25%</td>	<td>1.16%</td>	<td>1.14%</td>	<td>1.12%</td>	<td>1.12%</td>
                        </tr>
                    </table>
                </div>

            </div>

            <div id="connectiveDict">
                <div class="title"><a name="connectiveDictTitle">2. 关联词表</a></div>
                关联词表分为两个部分；
                <br/>unSingleWord.txt: 单个字作为关联词的词表。每行表示一个关联词，以及它作为显式关联词和隐式关联词的次数
                <br/>unParallelWord.txt: 并列关联词词表。每行表示一个关联词，以及它作为显式关联词和隐式关联词的次数
                <br/><a href="./files/Word%20Dict.rar" style="border-bottom-style: dotted;border-bottom-width: thin;">中文关联词词表下载>>></a>
                <br/><br/>
            </div>

            <div id="expRelationAnalysis">
                <div class="title"><a name="expRelAnalysisTitle">3. 显式句间关系分析</a></div>
                此次标注的句间关系主要分为三个级别的句间关系：句群关系、复句关系和分句关系。标注的句间关系共6个大类：1时序关系、2因果关系、3条件关系、4比较关系、5扩展关系、6并列关系。
                显式句间关系是指在语料中有显式关联词明确指示的句间关系。在所有标注的显式关系结果中，6类句间关系的分布情况如图3-2所示。
                <div style="text-align: center"><img src="./images/Exp.jpg" /></div>
            </div>

            <div id="impRelationAnalysis">
                <div class="title"><a name="impRelAnalysisTitle">4. 隐式句间关系分析</a></div>
                隐式句间关系是指没有明显的关联词指示的，但却由标注人员认为存在的，手动标注的句间关系。在隐式关系中，6类句间关系的分布情况如图3-3所示。
                <div style="text-align: center"><img src="./images/Imp.jpg" /></div>
            </div>

</div> <!--End of content-->

