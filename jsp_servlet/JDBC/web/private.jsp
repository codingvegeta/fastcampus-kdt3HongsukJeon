<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*, java.time.*, java.time.format.*" %>
<%@ page import="me.web.util.Status" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSP</title>
    <link href="./css/style.css" rel="stylesheet" type="text/css">
</head>


<body>
<header>
    <jsp:include page="header.jsp"/>
</header>

<%

    if (session.getAttribute("update") != null) {

        if (session.getAttribute("update") == Status.SUCCESS) {

%>
<script>alert("Member Information Update Success!")</script>
<%
        }
        session.removeAttribute("update");
    }
%>


<main>
    <h1>PRIVATE PAGE</h1>

    <ul class="main__nav__next">
        <li>👉🏻<a href="update.jsp"><b>MEMBER INFO UPDATE</b></a></li>
        <li>👉🏻<a href="withdraw.jsp"><b>MEMBER INFO DELETE</b></a></li>
        <li>👉🏻<a href="cookie.jsp"><b>COOKIE</b></a></li>
    </ul>

</main>

<footer>
    <jsp:include page="footer.jsp"/>
</footer>
</body>
</html>