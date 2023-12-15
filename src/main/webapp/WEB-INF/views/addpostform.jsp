<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<form action="addok" method="post" class="m-4">
    <div class="form-group">
        <label for="category">카테고리</label>
        <input type="text" class="form-control" name="category" id="category">
    </div>
    <div class="form-group">
        <label for="title">제목</label>
        <input type="text" class="form-control" name="title" id="title">
    </div>
    <div class="form-group">
        <label for="writer">글쓴이</label>
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
