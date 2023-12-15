<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>로그인</title>
    <style>
        body {
            background-color: #ffd1dc;
        }
        img, label { display:inline-block;}
        label { width:130px }
        button { background-color:blue; color:white; font-size:15px }
        .subtitle {
            font-size: 28px;
            color: #FF8000;
            margin-top: 40px;
            margin-bottom: 20px;
            font-family: Arial, sans-serif;
            font-weight: bold;
        }
    </style>
</head>
<body>
<div style='width:100%; text-align:center; padding-top:100px'>
    <img src='img/sample.png' height="250">
    <div class="subtitle">현대인을 위한 플래너</div>
    <form method="post" action="loginOk">
        <div><label>User ID: </label><input type='text' name='userid' /></div>
        <div><label>Password: </label>
            <input type='password' name='password' /></div>
        <button type='submit'>login</button>
    </form>
</div>
</body>
</html>