<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>추가하세요!</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }
        .form-group label {
            color: #74c0fc;
        }
        .form-control {
            border: 1px solid #ced4da;
            border-radius: 5px;
            padding: 5px;
        }
        .btn-secondary {
            background-color: #f06595;
        }
        .btn-primary {
            background-color: #74c0fc;
        }
        form {
            margin: 4rem auto;
            width: 80%;
            padding: 2rem;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<form action="addok" method="post" class="m-4">
    <div class="form-group">
        <label for="category">관련 인원</label>
        <input type="text" class="form-control" name="category" id="category">
    </div>
    <div class="form-group">
        <label for="title">카테고리</label>
        <input type="text" class="form-control" name="title" id="title">
    </div>
    <div class="form-group">
        <label for="writer">제목</label>
        <input type="text" class="form-control" name="writer" id="writer">
    </div>
    <div class="form-group">
        <label for="content">내용</label>
        <textarea class="form-control" cols="50" rows="5" name="content" id="content"></textarea>
    </div>
    <button type="button" class="btn btn-secondary" onclick="location.href='board/list'">목록보기</button>
    <button type="submit" class="btn btn-primary">등록하기</button>
</form>
</body>
</html>
