<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>와이파이 정보 구하기</title>
</head>
<style>
    * {
        text-align: center;
    }
</style>
<body>
<h1><%= request.getAttribute("totalFetched") %>개의 WIFI 정보를 정상적으로 저장하였습니다.</h1>
<a href="home">홈으로 가기</a>
</body>
</html>