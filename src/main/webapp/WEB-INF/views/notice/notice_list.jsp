<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}" />
<%
  request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>공지사항 목록</title>
    <style>
        table {
            width: 80%;
            margin: auto;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: lightblue;
        }
        h2 {
            text-align: center;
            margin-top: 30px;
        }
    </style>
</head>
<body>

<h2>공지사항</h2>

<table>
    <thead>
        <tr>
            <th>번호</th>
            <th>구분</th>
            <th>제목</th>
            <th>등록일</th>
        </tr>
    </thead>
    <tbody>
        <c:choose>
            <c:when test="${noticeList == null || noticeList.isEmpty()}">
                <tr>
                    <td colspan="4">등록된 공지사항이 없습니다.</td>
                </tr>
            </c:when>
            <c:otherwise>
                <c:forEach var="notice" items="${noticeList}" varStatus="status">
                    <tr>
                        <td>${status.count}</td>
                        <td>${notice.n_category}</td>
                        <td style="text-align: left;">${notice.n_title}</td>
                        <td>
                            <fmt:formatDate value="${notice.n_regdate}" pattern="yyyy-MM-dd" />
                        </td>
                    </tr>
                </c:forEach>
            </c:otherwise>
        </c:choose>
    </tbody>
</table>

</body>
</html>