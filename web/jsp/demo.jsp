<%--
  Created by IntelliJ IDEA.
  User: Ji JianHui
  Date: 14-4-21
  Time: 下午9:57
  Email: jhji@ir.hit.edu.cn
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<link rel="stylesheet" href="/css/demo.css">

<div class="contentBody">

    <div id="data">

        <div class="inputTips">请输入一句话or一段文字来分析其中的句间关系：or选择实例：</div>

        <form action="ajaxDPParse.html" method="post" id="dpForm">

        <div id="examples">
            <select name="examples" class="long_select" id="singleSentence" onchange="getData()">
                <option value=-1 selected="selected">Single Sentence</option>
                <option value=0 >浦东 开发 开放 是 一 项 振兴 上海 ， 建设 现代化 经济 、 贸易 、 金融 中心 的 跨世纪 工程 ， 因此 大量 出现 的 是 以前 不 曾 遇到 过 的 新 情况 、 新 问题 。</option>
                <option value=1 >我 听到 过 很多 解释, 但是 我 觉得 我 从没有 看到 过 清晰 的 分析 。</option>
                <option value=2 >虽然 影响 了 交通 不过 看到 这 群 可爱 的 游行 队伍 来往 的 人 车 也 都 相当 的 体谅 。</option>
                <option value=3 >中国 北方 重要 经济 城市 天津 与 俄罗斯 联邦 的 经贸 交往 目前 正 稳步 发展 ， 并 呈现 出 新 的 特色 。</option>
            </select>

            <select name="multiSentences" class="long_select_multi" id="multiSentences" onchange="getMultiData()">
                <option value=-1 selected="selected">Multi Sentences</option>
                <option value=3 >据 了解 ， 高行健 目前 已经 完成 了 一 部 新作 《 另 一 种 美 》 的 书稿 ， 并且 表示 能够 在 台湾 出版 。 高行健 １２月 １０号 将 在 瑞典 首都 斯德哥尔摩 举行 的 赠奖 仪式 当中 和 其他 诺贝尔 奖 得主 接受 瑞典 国王 卡尔 十六 世 古斯达夫 的 颁奖 。</option>
                <option value=0>俄罗斯 总统 普京 ５号 结束 在 印度 的 访问 飞回 莫斯科 。 普京 在 回国 之后 将 努力 平息 南斯拉夫 因为 总统 大选 所 引爆 的 政治 危机 。</option>
                <option value=1 >普京 表示 南国 国内 的 政治 危机 ， 导致 他 无法 离开 南斯拉夫 。 但是 米洛舍维奇 对 普京 的 提议 则 是 没有 反应 。</option>
                <option value=2 >普京 本 星期 初 曾经 表示 他 将 邀请 南国 总统 米洛舍维奇 和 南国 反对党 总统 候选人 科什图尼察 到 莫斯科 举行 谈判 。 但是 科什图尼察 表示 由于 南国 国内 的 政治 危机 ， 他 无法 离开 南斯拉夫 。</option>
            </select>


            <s:radio name="needSegment" list="%{#{'1':'需要分词','0':'不需要分词'}}" listKey="key" listValue="value" value="0"/>

        </div>


        <textarea name="inputSentence" class="inputData" rows="3" id="inputSentence"></textarea>
        <input type="submit" id="submitData" value="提交"><span class="errorTips" id="inputError"></span>

        </form>

    </div>

    <div style="clear: both"></div>

    <div id="showResult">
    </div>

</div>

<script>
    function getData()
    {
        var exampleData = $("#singleSentence").find("option:selected").text();
        if(exampleData == "Single Sentence"){
            document.getElementById("inputSentence").value = "";
        }else{
            document.getElementById("inputSentence").value = exampleData;
        }
        $("#multiSentences").val("-1");
    }

    function getMultiData()
    {
        var exampleData = $("#multiSentences").find("option:selected").text();
        if(exampleData == "Multi Sentences"){
            document.getElementById("inputSentence").value = "";
        }else{
            document.getElementById("inputSentence").value = exampleData;
        }
        $("#singleSentence").val("-1");
    }

    function checkData()
    {
        var inputData = document.getElementById("inputSentence").value;
        if(inputData.trim().length < 8) {
            document.getElementById("inputError").innerHTML = "请输入正确的句子。";
            return false;
        }
        document.getElementById("inputError").innerHTML = "";
        return true;
    }


    $("#submitData").click(function () {
        if ( checkData() ) {

            var userData = $("#dpForm").serialize();
            $.post("ajaxDPParse.html", userData, function (data) {
                handlePostResult(data);
            });
        }
    });

</script>