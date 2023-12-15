
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>목록!</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f8f9fa;
      color: #333;
    }
    .table-responsive {
      margin: 20px;
      padding: 20px;
      background-color: #fff;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    table {
      width: 100%;
      border-collapse: collapse;
    }
    th, td {
      padding: 10px;
      border-bottom: 1px solid #ddd;
      text-align: left;
    }
    th {
      background-color: #a5d8ff;
    }
    a {
      color: #f783ac;
      text-decoration: none;
    }
    a:hover {
      text-decoration: underline;
    }
    .btn-edit, .btn-delete {
      padding: 5px 10px;
      border: none;
      border-radius: 4px;
      color: white;
      text-decoration: none;
    }
    .btn-edit { background-color: #74c0fc; }
    .btn-delete { background-color: #f06595; }
    @media screen and (max-width: 600px) {
      .table-responsive {
        padding: 5px;
      }
      th, td {
        padding: 5px;
      }
    }
  </style>
</head>
<body>
<div class="table-responsive small">
  <table class="table table-striped table-sm">
    <thead>
    <thead>
    <tr>
      <th>Seq</th>
      <th>Title</th>
      <th>Writer</th>
      <th>Category</th>
      <th>Content</th>
      <th>Reg Date</th>
      <th>Mod Date</th>
      <th>Edit</th>
      <th>Delete</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="one">
      <tr>
        <td>${one.seq}</td>
        <td>${one.title}</td>
        <td>${one.writer}</td>
        <td>${one.category}</td>
        <td>${one.content}</td>
        <td>${one.regdate}</td>
        <td>${one.moddate}</td>
        <td><a href="../editform/${one.seq}" class="btn-edit">Edit</a></td>
        <td><a href="javascript:delete_ok('${one.seq}')" class="btn-delete">Delete</a></td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
  <br><a href="../board/list">Go Back</a>
</div>
</body>
</html>
