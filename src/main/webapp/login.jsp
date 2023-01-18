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
                login.action = "join.jsp";
                login.submit();
            });
            document.querySelector("#login_btn").addEventListener("click", function(){
                let login = document.login;
                login.method = "post";
                login.action = "pacebook";
                login.submit();
            });
        }
    </script>
    <style>
        .aa1 {
            /* border: 1px solid red; */
            height: 700px;
            width: 1000px;
            margin: auto;
            
        }
        .aa {
            /* border: 1px solid red; */
            /* height: 600px;
            width: 400px; */
            display: inline-block;
            
            /* vertical-align: top;  */
            /* margin-top: 10px; */
            margin-left: 95px;
            /* margin-bottom: 00px;  */
            text-align: center;
            
        }
        .a {
            border: 1px solid rgb(8, 133, 243);
            height: 600px;
            width: 400px;
            border-radius: 20px;
            display: inline-block;
            margin-top: 100px;
           
        }
        .a1 {
            margin-top: 90px;
            text-align: center;
          
        }
        .a2 {
            font-size: 65px;
            color: #F39C12;
        }
        .login {
            size: 100px;
        }
        #login_btn{
            border:1px solid #3196f6 ;
            background-color: #3196f6;
            color: rgb(253, 253, 253);
            padding: 5px;
            border-radius: 10px;
            height: 40px;
            width: 300px;
        }
        #join_btn{
            border:1px solid #3169f6 ;
            background-color: #3169f6;
            color: rgb(253, 253, 253);
            padding: 5px;
            border-radius: 10px;
            height: 40px;
            width: 300px;
        }
    </style>
</head>
<body>
   <div class="aa1">
    <div class="aa">
        <img src="https://image.dongascience.com/Photo/2022/04/1a883a4f90cc55e30dc6ffab8b92a310.JPG" style=" width:400px; height:400px; border-radius: 20px;">
    </div>
    <div class="a">
        <form name="login">
            <div class="a1">
        <h1 class="a2">PACEBOOK LOGIN</h1>
        <div class="login">
        <input type="text" name="id" placeholder="E-mail" style="height:40px; width: 350px;border-radius: 10px;border:0 solid black"><br>
            </div>
        <input type="password" name="pw" placeholder="Password" style="height:40px; width: 350px;border-radius: 10px;border:0 solid black"><br>
        <button id="login_btn" name="command" value="login" onclick="alert('로그인성공했습니다!')">로그인</button>
        <br>    
        <button id="join_btn">회원가입</button>
    </div>
        </form>
    </div>   
</div>    
</body>
</html>