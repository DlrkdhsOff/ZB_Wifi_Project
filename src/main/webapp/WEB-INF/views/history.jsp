<%@ page import="com.zerobase.wifi.dto.HistoryDTO" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>와이파이 정보 구하기</title>

    <style>
        #link-list {
            margin-bottom: 20px;
        }

        #table-list {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        #table-list td, #table-list th {
            border: 1px solid #ddd;
            text-align: center;
            font-size: 14px;
            padding: 8px;
        }

        #table-list tr:nth-child(odd) {
            background-color: #f2f2f2;
        }

        #table-list tr:hover {
            background-color: #ddd;
        }

        #table-list th {
            padding-top: 12px;
            padding-bottom: 12px;
            background-color: #04AA6D;
            color: white;
        }
    </style>
</head>
<body>
<h1>위치 히스토리 목록</h1>

<div id="link-list">
    <a href="home">홈</a>
    &#124;
    <a href="getHistory">위치 히스토리 목록</a>
    &#124;
    <a href="lode-wifi-data">Open API 와이파이 정보 가져오기</a>
    &#124;
    <a href="bookmark-list">북마크 보기</a>
    &#124;
    <a href="bookmark-group">북마크 그룹 관리</a>
</div>

<table id="table-list">
    <thead>
    <tr>
        <th>ID</th>
        <th>X좌표</th>
        <th>Y좌표</th>
        <th>조회일자</th>
        <th>비고</th>
    </tr>
    </thead>
    <tbody>
    <%
        List<HistoryDTO> list = (List<HistoryDTO>) request.getAttribute("list");
        if (list != null && !list.isEmpty()) {
            for (HistoryDTO item : list) {
    %>
    <tr>
        <td><%= item.getId() %></td>
        <td><%= item.getLat() %></td>
        <td><%= item.getLnt() %></td>
        <td><%= item.getDate() %></td>
        <td>
            <button onclick="deleteId(<%= item.getId() %>);">삭제</button>
        </td>
    </tr>
    <%
        }
    }
    %>
    </tbody>
</table>

<script>
    function deleteId(id) {
        location.href = "deleteHistory?id=" + id;
    }
</script>
</body>
</html>
