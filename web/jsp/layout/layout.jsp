<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 14-4-18
  Time: 下午3:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="/WEB-INF/tiles.tld" prefix="tiles" %>
<%@ taglib uri="/struts-tags" prefix="s" %>

<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title><tiles:insertAttribute name="title" ignore="true" /></title>
    <!--[if IE 6]->
        <style>
        #root{height:100%;} /* IE在高度不够时会自动撑开层*/
        </style>
    <![endif]-->
</head>

<link rel="stylesheet" href="/css/layout.css" >
<script type="text/javascript" src="/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/jquery.SuperSlide.2.1.js"></script>


<body>

    <div id="root">

        <div id="container">

            <div id="menu"><tiles:insertAttribute name="menu" /></div>
            <div style="clear: both"></div>
            <div id="content"><tiles:insertAttribute name="body" /></div>

        </div>

        <div style="clear: both"></div>

        <div id="footer"><tiles:insertAttribute name="footer" /></div>

    </div>

</body>

<%--<script type="text/javascript" src="/js/gototop.js"></script>--%>

</html>