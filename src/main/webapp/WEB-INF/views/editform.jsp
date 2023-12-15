
<%--
  Created by IntelliJ IDEA.
  User: 박민준
  Date: 2023-12-02
  Time: 오후 3:54
  To change this template use File | Settings | File Templates.
--%>
<?xml version="1.0" encoding="UTF-8"?>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>

<head>
    <title>Title</title>
</head>
<body>


<form:form modelAttribute="u" method="POST" action="../editok">
    <form:hidden path="seq"/>
    <table id = "edit">
            <tr><td>카테고리</td><td><form:input path="category" /></td></tr>
            <tr><td>제목</td><td><form:input path="title" /></td></tr>
            <tr><td>글쓴이</td><td><form:input path="writer" /></td></tr>
            <tr><td>내용</td><td><form:textarea cols="50" rows="5" path="content"/></td></tr>
    </table>
    <input type="submit" value ="수정하기"/>
    <input type="button" value ="취소하기" onclick="history.back()"/>
    <button type="button" onclick="location.href=''">목록보기</button>
</form:form>

</body>
</html>
