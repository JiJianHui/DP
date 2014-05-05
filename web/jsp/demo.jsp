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
        <div class="inputTips">请输入一句话or一段文字来分析其中的句间关系：or选择实例：
            <select name="examples" class="long_select" id="examples" onchange="getData()">
                <option value=-1 selected="selected">Examples</option>
                <option value=0 >浦东 开发 开放 是 一 项 振兴 上海 ， 建设 现代化 经济 、 贸易 、 金融 中心 的 跨世纪 工程 ， 因此 大量 出现 的 是 以前 不 曾 遇到 过 的 新 情况 、 新 问题 。</option>
                <option value=1 >我 听到 过 很多 解释, 但是 我 觉得 我 从没有 看到 过 清晰 的 分析 。</option>
                <option value=2 >虽然 影响 了 交通 不过 看到 这 群 可爱 的 游行 队伍 来往 的 人 车 也 都 相当 的 体谅 。</option>
                <option value=3 >中国 北方 重要 经济 城市 天津 与 俄罗斯 联邦 的 经贸 交往 目前 正 稳步 发展 ， 并 呈现 出 新 的 特色 。</option>
            </select>
        </div>
        <form action="ajaxDPParse.html" method="post" id="dpForm">
            <textarea name="inputSentence" class="inputData" rows="3" id="inputSentence"></textarea>
            <input type="submit" id="submitData" value="提交"><span class="errorTips" id="inputError"></span>
            <%--<button type="button" id="submitData">提交</button><span class="errorTips" id="inputError"></span>--%>
        </form>

    </div>
    <div style="clear: both"></div>
    <div id="showResult">
        <%--<s:property value="dpResult"></s:property>--%>
        <%--<div class="connWord">Connective: <s:property value="connWord"/></div>--%>
        <%--<div class="arg2">Arg1Content: <s:property value="arg1Content"/></div>--%>
        <%--<div class="arg1">Arg2Content: <s:property value="arg2Content"/></div>--%>
        <%--<div class="relType">SenseType: <s:property value="expRelType"/></div>--%>
        <%--<div class="relType">Probality: <s:property value="expRelProbality"/></div>--%>
    </div>

</div>

<script>
    function getData()
    {
        var exampleData = $("#examples").find("option:selected").text();
        if(exampleData == "Examples"){
            document.getElementById("inputSentence").value = "";
        }else{
            document.getElementById("inputSentence").value = exampleData;
        }
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