<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"></script>
    <title>My Plan</title>
    <style>
        body {
            background-color: #f8f9fa;
        }
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 20px;
            margin-bottom: 30px;
        }

        .main-title {
            margin-left: 20px;
            text-align: center;
            color: #a5d8ff;
            font-size: 32px;
            font-weight: bold;
        }
        .add-post-link {
            margin-right: 20px;
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            color: #f783ac;
            font-size: 18px;
            font-weight: bold;
        }
        .table-responsive {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .table .btn {
            color: white;
            padding: 5px 10px;
            margin: 2px;
        }
        .table .btn-edit { background-color: #74c0fc; }
        .table .btn-delete { background-color: #f06595; }
        .table .btn-view { background-color: #ced4da; }
        .table tr:nth-child(odd) { background-color: #e9ecef; }
        .table tr:nth-child(even) { background-color: #dee2e6; }
    </style>
    <script>
        function delete_ok(id){
            var a = confirm("정말로 삭제하시겠습니까?");
            if(a) location.href='../deleteok/'+id;
        }
    </script>
</head>
<body>
<div class="header">
    <div class="main-title">My Plan</div>
    <a href="../add" class="add-post-link">Add new post</a>
</div>
<div class="table-responsive small">
    <table class="table table-striped table-sm">
        <tr>
            <th>Id</th>
            <th>Category</th>
            <th>Title</th>
            <th>Writer</th>
            <th>Content</th>
            <th>Regdate</th>
            <th>Moddate</th>
            <th>Edit</th>
            <th>Delete</th>
            <th>View</th>
        </tr>
        <c:forEach items="${list}" var="one"  >
            <tr>
                <td>${one.seq}</td>
                <td>${one.title}</td>
                <td>${one.writer}</td>
                <td>${one.category}</td>
                <td>${one.content}</td>
                <td>${one.regdate}</td>
                <td>${one.moddate}</td>
                <td><a href="../editform/${one.seq}" class="btn btn-edit">수정하기</a></td>
                <td><a href="javascript:delete_ok('${one.seq}')" class="btn btn-delete">삭제하기</a></td>
                <td><a href="../listview/${one.seq}" class="btn btn-view">자세히보기</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
