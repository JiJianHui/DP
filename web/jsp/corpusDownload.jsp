<%--
  Created by IntelliJ IDEA.
  User: Ji JianHui
  Date: 14-4-21
  Time: 下午7:28
  Email: jhji@ir.hit.edu.cn
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link rel="stylesheet" href="/css/corpus.css">

<div class="content" style="font-size: 15px;">

            <div class="index">
                <a nme="Top"></a>
                <br /><font color="#006600" size="+1"><b>目录：</b></font><br/>
                <a href="#projectTitle">1. 课题介绍</a>
                <!--<br /><a href="#proMember">2: 项目组主要人员</a>-->
                <br /><a href="#downloadTitle">2. 语料下载</a>
                <br /><a href="#proPapers">3. 发表文章</a>
                <%--<br /><a href="#aboutus">4. 联系我们</a>--%>
            </div>

            <div class="contentBody">
                <div id="projectIntroduction">

                    <div class="title"><a name="projectTitle">1. 课题介绍</a></div>
                    <b>&nbsp;&nbsp;&nbsp;&nbsp;负责人：</b>刘挺教授
                    <br/><b>依托单位：</b>哈尔滨工业大学
                    <br/><b>项目类型：</b>国家自然科学基金 重点项目
                    <br/><b>项目名称：</b>篇章级中文语义分析理论与方法

                    <br/><br/>

                </div>

                <div id="download">
                    <div class="title"><a name="downloadTitle">2. 语料下载</a></div>
                    <p><br/>感谢您关注 <font color="#FF0000" style="font-weight:bold">哈工大中文篇章级句间语义关系语料(HIT-CDTB)</font>，
                        本语料由哈工大社会计算与信息检索研究中心开发。</p>
                    <div style="height: 10px;"></div>
                    <p>本次语料标注工作属于中心承担的自然科学基金重点项目“中文篇章级语义分析理论与方法”的部分工作内容；
                        <br>语料包含525篇Ontonotes中文语料的标注结果，覆盖了句群关系、复句关系、分句关系等多级信息。
                    <div style="height: 10px;"></div>
                    为促进国内相关研究发展，推动学术交流，我们决定 <font color="red">将语料免费对学术界开放</font>，欢迎大家下载使用。
                    </p>

                    <p><br/></p>

                    <div style=" font-size: 15px;">
                        &nbsp;&nbsp;&nbsp;&nbsp;&bull; 如果您希望了解我们的语料，这里是小集合语料样例(50篇)下载
                        <a href="./files/HIT_Discourse_Example.rar"  style="border-bottom: thin dotted; text-decoration: none">
                            <font color="#00008b">&lt;语料样例下载(50篇)&gt;</font></a>
                    </div>
                    <div style="height: 10px;"></div>
                    <div style=" font-size: 15px;">
                        &nbsp;&nbsp;&nbsp;&nbsp;&bull; 如果您希望获取全部语料，请下载签署
                        <a href="./files/HIT-CIR_Sharing_Protocol.doc" style="border-bottom: thin dotted; text-decoration: none">
                            <font color="#00008b">&lt;哈工大社会计算与信息检索研究中心共享资源协议&gt;</font></a>，并联系秦兵教授(qinb@ir.hit.edu.cn)。
                        <!--<br/><a href="#" onclick="openDownload()">点击这里进行下载</a>-->
                    </div>

                    <p>
                    <div style="height: 30px;"></div>
                    <b>特别说明:</b><br/>
                    <div style="height: 10px;"></div>
                    <div style="color:#CF0F0F;font-weight: bold;">
                        1) 请您所在课题组负责人签署协议，并将协议Word电子版直接发送给 秦兵教授（qinb@ir.hit.edu.cn），
                        协商语料的具体交付方式。<br/>
                    </div>
                    <div style="height: 10px;"></div>
                    2) HIT-SCIR共享资源的完整数据和相关程序库的完整版本只免费提供给“高校和科研院所”用于科学研究，对于独立个人或者商业公司的申请恕不免费提供。<br/>

                    <div style="height: 10px;"></div>
                    3) 在发表论文和申报成果时声明“使用了哈工大社会计算与信息检索研究中心中文篇章关系语料”，并且引用以下论文：<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;张牧宇，宋原，秦兵，刘挺. 中文篇章级语义关系识别. 中文信息学报. 已录用（待发表）.<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;同时，发信给qinb@ir.hit.edu.cn,说明发表论文题目或取得成果的出处等情况。<br/>

                    <div style="height: 10px;"></div>
                    <b>具体要求请参见共享资源协议内容</b>
                    </p>

                </div>

                <br/><br/>

                <div id="projectPaper">
                    <div class="title"><a name="proPapers">3. 发表文章</a></div>
                    <!--<font color="#00008b">-->中文篇章级关系体系及类型标注</font>；张牧宇，秦兵，刘挺；中文信息学报，已录用
                    <br/><!--<font color="#00008b">-->中文篇章级句间语义关系识别</font>；张牧宇，宋原，秦兵，刘挺；中文信息学报，已录用
                </div>
                <br/><br/>
            </div>

            <%--<div id="contractUs">--%>
                <%--<div class="title"><a name="aboutus">4. 联系我们</a></div>--%>
                <%--如果您有任何问题，欢迎随时与我们联系。--%>
                <%--<br/>--%>

                <%--<br/><b>秦兵（教授、博士生导师）</b>--%>
                <%--<br/>Homepage：<a href="http://ir.hit.edu.cn/~qinb/" style="border-bottom: thin dotted; text-decoration: none">--%>
                <%--http://ir.hit.edu.cn/~qinb/</a>--%>
                <%--<br/>E-mail：qinb@ir.hit.edu.cn--%>
                <%--<br/>--%>

                <%--<br/><b>张牧宇（博士研究生）</b>--%>
                <%--<br/>Homepage：<a href="http://ir.hit.edu.cn/~myzhang/" style="border-bottom: thin dotted; text-decoration: none">--%>
                <%--http://ir.hit.edu.cn/~myzhang/</a>--%>
                <%--<br/>E-mail：myzhang@ir.hit.edu.cn--%>
                <%--<br/>--%>

                <%--<br/><b>姬建辉（硕士研究生）</b>--%>
                <%--<br/>Homepage：<a href="http://ir.hit.edu.cn/~jhji/" style="border-bottom: thin dotted; text-decoration: none">--%>
                <%--http://ir.hit.edu.cn/~jhji/</a>--%>
                <%--<br/>E-mail：jhji@ir.hit.edu.cn--%>

            <%--</div>--%>

        </div> <!--End of content-->


