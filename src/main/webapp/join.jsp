<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .login {
            display: flex;
            justify-content: center;
            flex-direction: column;
            padding: 2%;
            padding-left: 35%;
            width: 50%;
            font-size: 24px;
        }

        .book {
            width: 50%;
            height: 30px;
            font-size: 16px;
            border: 1px solid #3169f6;
            outline: none;
        }

        .book:focus {
            border: 1px solid #F39C12;
        }

        #date {
            font-size: 16px;
            ;
        }

        #join_btn {
            width: 53%;
            background-color: #F39C12;
            height: 40px;
            font-size: 16px;
            margin-bottom: 40px;
        }
        #join_btn:button:hover{
            transition: transform 0.1s linear;
            transform: scale(.9);
            background-color: #f8a41c;
            cursor: pointer;
        }

        .hidden_msg {
            position: absolute;
            visibility: hidden;
            color: red;
            font-size: 20px;
        }
        #login_btn{
            padding-left: 45px;
        }

    </style>
    <script>
        window.onload = function () {
            document.querySelector("#id").addEventListener("focusout", function () {
                document.querySelector("#id_").style.visibility = "visible";
                document.querySelector("#id_").style.position = "relative";
                let regex = /^[A-Za-z]{1}[A-Za-z0-9]{3,19}$/;
                if (document.querySelector("#id").value == "") {
                    document.querySelector("#id_").innerHTML = "필수 정보 입니다.";
                } else if (!regex.test(document.querySelector("#id").value)) {
                    document.querySelector("#id_").innerHTML = "4~20자의 영문 소문자, 대문자, 숫자만 사용 가능합니다.";
                } else {
                    document.querySelector("#id_").style.visibility = "hidden";
                    document.querySelector("#id_").style.position = "absolute";
                }
            });
            document.querySelector("#pw").addEventListener("focusout", function () {
                document.querySelector("#pw_").style.visibility = "visible";
                document.querySelector("#pw_").style.position = "relative";
                let regex = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/;
                if (document.querySelector("#pw").value == "") {
                    document.querySelector("#pw_").innerHTML = "필수 정보 입니다.";
                } else if (!regex.test(document.querySelector("#pw").value)) {
                    document.querySelector("#pw_").innerHTML = "8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";
                } else {
                    document.querySelector("#pw_").style.visibility = "hidden";
                    document.querySelector("#pw_").style.position = "absolute";
                }
            });
            document.querySelector("#pw2").addEventListener("focusout", function () {
                document.querySelector("#pw2_").style.visibility = "visible";
                document.querySelector("#pw2_").style.position = "relative";
                if (document.querySelector("#pw2").value == "") {
                    document.querySelector("#pw2_").innerHTML = "필수 정보 입니다.";
                } else if (document.querySelector("#pw").value != document.querySelector("#pw2").value) {
                    document.querySelector("#pw2_").innerHTML = "비밀번호가 일치하지 않습니다.";
                } else {
                    document.querySelector("#pw2_").style.visibility = "hidden";
                    document.querySelector("#pw2_").style.position = "absolute";
                }
            });
            document.querySelector("#email").addEventListener("focusout", function () {
                document.querySelector("#email_").style.visibility = "visible";
                document.querySelector("#email_").style.position = "relative";
                let regex = /^[a-z0-9\.\-_]+@([a-z0-9\-]+\.)+[a-z]{2,6}$/;
                if (document.querySelector("#email").value == "") {
                    document.querySelector("#email_").innerHTML = "필수 정보 입니다.";
                } else if (!regex.test(document.querySelector("#email").value)) {
                    document.querySelector("#email_").innerHTML = "이메일 형식이 올바르지 않습니다."
                } else {
                    document.querySelector("#email_").style.visibility = "hidden";
                    document.querySelector("#email_").style.position = "absolute";
                }
            });
            document.querySelector("#phone").addEventListener("focusout", function () {
                document.querySelector("#phone_").style.visibility = "visible";
                document.querySelector("#phone_").style.position = "relative";
                let regex = /^(\d{2,3}).-(\d{3,4}).-(\d{4})$/;
                if (document.querySelector("#phone").value == "") {
                    document.querySelector("#phone_").innerHTML = "필수 정보 입니다.";
                } else if (!regex.test(document.querySelector("#phone").value)) {
                    document.querySelector("#phone_").innerHTML = "전화번호 형식이 올바르지 않습니다."
                } else {
                    document.querySelector("#phone_").style.visibility = "hidden";
                    document.querySelector("#phone_").style.position = "absolute";
                }
            });

        }
    </script>
</head>

<body>
    <div class="login">
        <div id="logo">
            <img src="logo.png">
        </div>
        <form name="join">
            <div>
                <div><b>아이디</b></div>
                <input type="text" id="id" name="id" class="book" title="ID" required>
                <div id="id_" class="hidden_msg"></div>
            </div>
            <br>
            <div>
                <div><b>비밀번호</b></div>
                <input type="password" id="pw" name="pw" class="book" title="pw" required>
                <div id="pw_" class="hidden_msg">비밀번호를 입력해주세요</div>
            </div>
            <br>
            <div>
                <div><b>비밀번호재확인</b></div>
                <input type="password" id="pw2" name="pw2" class="book" title="pw" required>
                <div id="pw2_" class="hidden_msg">비밀번호를 입력해주세요</div>
            </div>
            <br>
            <div>
                <div><b>이름</b></div>
                <input type="text" id="name" name="name" class="book" title="name" required>
                <div id="name_" class="hidden_msg">이름을 입력해주세요</div>
            </div>
            <br>
            <div>
                <div><b>이메일</b></div>
                <input type="text" id="email" name="email" class="book" title="email" required>
                <div id="email_" class="hidden_msg">이메일을 입력해주세요</div>
            </div>
            <br>
            <div>
                <div><b>전화번호</b></div>
                <input type="text" id="phone" name="phone" class="book" title="number" oninput="autoHyphen(this)" maxlength="13" required>
                <div id="phone_" class="hidden_msg">번호를 입력해주세요</div>
            </div>
            <br>

            <div>
                <div><b>생년월일</b></div>
                <input type="date" id="birth" name="birth" class="book" title="date">
                <div id="birth_" class="hidden_msg">생년월일을 입력해주세요</div>
            </div>
            <br>

            <div>
                <div><b>성별</b></div>
                <input type="radio" name="gender" value="male" checked> 남자
                <input type="radio" name="gender" value="female"> 여자
            </div>
            <br>
            <div>
                <button id="join_btn" name="command" value="joinUp">가입하기</button>
            </div>
        </form>
        <div id="login_btn">
            <a href="login.jsp">로그인페이지로 이동</a>
        </div>
    </div>
    <script>
        let autoHyphen = (target) => {
            target.value = target.value.replace(/[^0-9]/g, "").replace(/^(\d{0,3})(\d{0,4})(\d{0,4})$/g, `$1-$2-$3`).replace(/(\-{1,2})$/g, "");
        };
        document.querySelector("#join_btn").addEventListener("click", function(){
            let join = document.join;
            join.method = "get";
            join.action = "pacebook";
            join.submit();
        });
    </script>
</body>
</html>