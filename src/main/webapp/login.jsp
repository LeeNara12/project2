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
        window.onload = function () {

            document.querySelector("#login_btn").addEventListener("click", function () {
                let login = document.login;
                login.method = "post";
                login.action = "pacebook";
                login.submit();
            });
            document.querySelector("#join_btn").addEventListener("click", function () {
                let join = document.join;
                join.method = "post";
                join.action = "join.jsp";
                join.submit();
            });
        }
    </script>
    <style>
        .aa {
            /* border: 1px solid red; */
            height: 600px;
            width: 400px;
            display: inline-block;

            vertical-align: top;
            margin-top: 100px;
            margin-left: 240px;

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


        #id {
            height: 40px;
            width: 350px;
            border-radius: 10px;
            border: 1px solid rgba(77, 73, 73, 0.644);
            padding-left: 10px;
        }

        #pw {
            height: 40px;
            width: 350px;
            border-radius: 10px;
            border: 1px solid rgba(77, 73, 73, 0.644);
            padding-left: 10px;
        }

        #hidden_msg {
            color: red;
            position: relative;
        }

        .a1 {
            text-align: center;
        }

        .a2 {
            font-size: 65px;
            color: #F39C12;
            margin-bottom: 80px;
        }

        #login_btn {
            border: 1px solid #3196f6;
            background-color: #3196f6;
            color: rgba(253, 253, 253, 0.644);
            padding: 5px;
            border-radius: 10px;
            height: 40px;
            width: 300px;
            outline: none;
        }

        #login_btn:hover {
            background-color: #2483db;
        }

        
        #join_btn {
            border: 1px solid #3169f6;
            background-color: #3169f6;
            color: rgba(253, 253, 253, 0.644);
            padding: 5px;
            border-radius: 10px;
            height: 40px;
            width: 300px;
        }
        #join_btn:hover {
            background-color: #0b4df3;
        }

        /* .table {
            margin-right: 30px;
        } */
<<<<<<< HEAD
       
        
=======
>>>>>>> 1df12f9f4b59d41dca405d424cfa924d0b5fb07d
    </style>
</head>

<body>
    <div class="a00">
        <img src="logo.png">
    </div>
    <div class="aa">
        <div>
            <img src="https://masism.kr/wp-content/uploads/2018/05/ti2.jpg" style=" width:400px; height:290px; border-radius: 20px; padding: 0;
            margin: 0;">
        </div>
        <div>
            <img src="https://image.dongascience.com/Photo/2022/04/1a883a4f90cc55e30dc6ffab8b92a310.JPG" style=" width:400px; height:290px; border-radius: 20px;  padding: 0;
            margin: 0;">
        </div>
    </div>
    <div class="a">
        <div class="a1">
            <h1 class="a2">PACEBOOK LOGIN</h1>
            <form name="login">
                <div class="login">
                    <input id="id" type="text" name="id" placeholder="Id">
                    <br>
                    <br>
                    <input id="pw" type="password" name="pw" placeholder="Password">
                    <% String logon = (String)request.getAttribute("logon");
                        if("false".equals(logon)){%>
                    <div id="hidden_msg">아이디 또는 비밀번호가 없거나 틀렸습니다.</div>
                    <%}%>
                </div>
                <br>
                <button id="login_btn" name="command" value="login">로그인</button>
            </form>
            <br>
            <form name="join">
                <button id="join_btn">
                    회원가입
                </button>
            </form>
        </div>
    </div>
    </div>
    <table style="text-align: center;margin: auto; margin-top: 50px;font-size: 13px;">
        <tr class="table">
            <td>Meta</td>
            <td>소개</td>
            <td>블러그</td>
            <td>채용 정보</td>
            <td>도움말</td>
            <td>API</td>
            <td>개인정보처리방침</td>
            <td>약관</td>
            <td>인기계정</td>
            <td>위치</td>
            <td>Pacebook Lite</td>
            <td>연락처 업로드 & 비사용자</td>
        </tr>
    </table>
    </div>
</body>
</html>