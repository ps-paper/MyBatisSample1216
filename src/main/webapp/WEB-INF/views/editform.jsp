<%-- Created by IntelliJ IDEA. User: 박민준 Date: 2023-12-02 Time: 오후 3:54 --%>
<?xml version="1.0" encoding="UTF-8"?>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>

<head>
    <title>수정하세요!</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            text-align: center;
        }
        table {
            margin: auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            margin-bottom: 20px;
        }
        td {
            padding: 10px;
        }
        input[type="text"], input[type="password"], textarea {
            border: 1px solid #ced4da;
            border-radius: 5px;
            padding: 5px;
        }
        input[type="submit"], input[type="button"], button {
            background-color: #74c0fc;
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 5px;
        }
        input[type="button"] {
            background-color: #f06595;
        }
    </style>
</head>
<body>

<form:form modelAttribute="u" method="POST" action="../editok">
    <form:hidden path="seq"/>
    <table id="edit">
        <tr><td>관련 인원</td><td><form:input path="category" /></td></tr>
        <tr><td>카테고리</td><td><form:input path="title" /></td></tr>
        <tr><td>제목</td><td><form:input path="writer" /></td></tr>
        <tr><td>내용</td><td><form:textarea cols="50" rows="5" path="content"/></td></tr>
    </table>
    <input type="submit" value="수정하기"/>
    <input type="button" value="취소하기" onclick="history.back()"/>
</form:form>

</body>
</html>