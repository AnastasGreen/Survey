<%@ page session="false" isELIgnored="false" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Topics</title>
    <link href="<c:url value="/pages/css/fonts.css" />" rel="stylesheet">
    <link href="<c:url value="/pages/css/style.css" />" rel="stylesheet">
    <link href="<c:url value="/pages/libs/bootstrap/bootstrap.css" />" rel="stylesheet">
</head>
<body>
<c:import url="header.jsp"/>
<div class="content-bg">
    <div class="article">
        <div id="survey">
            <ol>
                <c:forEach items="${topics}" var="topic">
                    <li><a href="<c:url value="/topic?name=${topic.name}"/>">${topic.name}</a></li>
                    <ol>
                        <c:forEach items="${topic.surveys}" var="survey">
                            <li><a href="<c:url value="/survey?id=${survey.id}"/>"
                                   style="color: white; margin-left: 30%;"> ${survey.name}</a></li>
                        </c:forEach>
                    </ol>
                </c:forEach>
            </ol>
        </div>
    </div>
</div>
<c:import url="footer.jsp"/>
</body>
</html>
