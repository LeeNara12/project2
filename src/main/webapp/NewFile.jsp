<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>loginPage</title>
    <script>
        window.onload = function(){
            document.querySelector("#join_btn").addEventListener("click", function(){
                let login = document.login;
                login.method = "get";
                login.action = "join";
                login.submit();
            });
            document.querySelector("#login_btn").addEventListener("click", function(){
                let login = document.login;
                login.method = "post";
                login.action = "main";
                login.submit();
            });
        }
    </script>
</head>
<body>
    <h1>로그인 페이지 입니다.</h1>
    <form name="login">
        <input type="text" id="id" placeholder="아이디"><br>
        <input type="password" id="pw" placeholder="비밀번호"><br>
        <button id="join_btn">회원가입</button>
        <button id="login_btn">로그인</button>
    </form>
</body>
</html>