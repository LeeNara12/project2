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
            padding: 2%;
            font-size: 24px;
            text-align: center;
        }
        #text_boxes{
            text-align: center;
        }

        .box {
            text-align: left;
            display: inline-block;
            margin:10px;
            width:40%;
        }

        .book {
            width: 100%;
            height: 40px;
            font-size: 16px;
            border: 1px solid #3169f6;
            outline: none;
        }

        .book:focus {
            border: 1px solid #F39C12;
        }

        #date {
            font-size: 16px;
        }

        #join_btn {
            width:40%;
            background-color: #F39C12;
            height: 40px;
            font-size: 16px;
            margin: 40px;
        }

        #join_btn:hover {
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
            margin-bottom: 10px;
        }
        input[type=radio]{
            display: none;
        }
        input[type=radio]+label{
            border:1px solid #3169f6;
            cursor:pointer;
        }
        input[type=radio]:checked+label{
            background-color: #3169f6;
            color: #fff;
        }
        input[type=radio]:hover+label{
            background-color: #3169f6;
        }
        
    </style>
    <script>
        window.onload = function () {
            let id_regex = /^[A-Za-z]{1}[A-Za-z0-9]{3,19}$/;
            let id = document.querySelector("#id");
            id.addEventListener("focusout", function () {
                document.querySelector("#id_").style.visibility = "visible";
                document.querySelector("#id_").style.position = "relative";
                if (id.value == "") {
                    document.querySelector("#id_").innerHTML = "필수 정보 입니다.";
                } else if (!id_regex.test(id.value)) {
                    document.querySelector("#id_").innerHTML = "4~20자의 영문 소문자, 대문자, 숫자만 사용 가능합니다.";
                } else {
                    document.querySelector("#id_").style.visibility = "hidden";
                    document.querySelector("#id_").style.position = "absolute";
                }
            });
            let pw_regex = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/;
            let pw = document.querySelector("#pw");
            pw.addEventListener("focusout", function () {
                document.querySelector("#pw_").style.visibility = "visible";
                document.querySelector("#pw_").style.position = "relative";
                if (pw.value == "") {
                    document.querySelector("#pw_").innerHTML = "필수 정보 입니다.";
                } else if (!pw_regex.test(pw.value)) {
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
                } else if (pw.value != document.querySelector("#pw2").value) {
                    document.querySelector("#pw2_").innerHTML = "비밀번호가 일치하지 않습니다.";
                } else {
                    document.querySelector("#pw2_").style.visibility = "hidden";
                    document.querySelector("#pw2_").style.position = "absolute";
                }
            });
            let email_regex = /^[a-z0-9\.\-_]+@([a-z0-9\-]+\.)+[a-z]{2,6}$/;
            let email = document.querySelector("#email");
            email.addEventListener("focusout", function () {
                document.querySelector("#email_").style.visibility = "visible";
                document.querySelector("#email_").style.position = "relative";
                if (email.value == "") {
                    document.querySelector("#email_").innerHTML = "필수 정보 입니다.";
                } else if (!email_regex.test(email.value)) {
                    document.querySelector("#email_").innerHTML = "이메일 형식이 올바르지 않습니다."
                } else {
                    document.querySelector("#email_").style.visibility = "hidden";
                    document.querySelector("#email_").style.position = "absolute";
                }
            });
            let phone_regex = /^(\d{2,3}).-(\d{3,4}).-(\d{4})$/;
            let phone = document.querySelector("#phone");
            phone.addEventListener("focusout", function () {
                document.querySelector("#phone_").style.visibility = "visible";
                document.querySelector("#phone_").style.position = "relative";
                if (phone.value == "") {
                    document.querySelector("#phone_").innerHTML = "필수 정보 입니다.";
                } else if (!phone_regex.test(phone.value)) {
                    document.querySelector("#phone_").innerHTML = "전화번호 형식이 올바르지 않습니다."
                } else {
                    document.querySelector("#phone_").style.visibility = "hidden";
                    document.querySelector("#phone_").style.position = "absolute";
                }
            });
            document.querySelector("#join_btn").addEventListener("click", function () {
                debugger
                let join = document.join;
                let ready = [];
                let istrue = false;
                if(id_regex.test(id.value)){
                    ready[0] = true;
                } else {
                    ready[0] = false;
                    id.value = "";
                    id.parentElement.lastElementChild.style.visibility = "visible";
                }
                if(pw_regex.test(pw.value)){
                    ready[1] = true;
                } else {
                    ready[1] = false;
                    pw.value = "";
                    pw.parentElement.lastElementChild.style.visibility = "visible";
                }
                if(email_regex.test(email.value)){
                    ready[2] = true;
                } else {
                    ready[2] = false;
                    email.value = "";
                    email.parentElement.lastElementChild.style.visibility = "visible";
                }
                if(phone_regex.test(phone.value)){
                    ready[3] = true;
                } else {
                    ready[3] = false;
                    phone.value = "";
                    phone.parentElement.lastElementChild.style.visibility = "visible";
                }
                for(i of ready){
                    if(i==false){
                        istrue = false;
                        break;
                    } else {
                        istrue = true;
                    }
                }
                if(istrue == true){
                    join.method = "post";
                    join.action = "pacebook/join";
                    join.submit();
                }
           });

        }
    </script>
</head>

<body>
    <div class="login">
        <div id="logo">
            <img src="/project2/image/logo.png">
        </div>
        <form name="join">
            <div id="text_boxes">
                <div class="box">
                    <div><b>아이디</b></div>
                    <input type="text" id="id" name="id" class="book" id="ID" required>
                    <div id="id_" class="hidden_msg"></div>
                </div>
                <br>
                <div class="box">
                    <div><b>비밀번호</b></div>
                    <input type="password" id="pw" name="pw" class="book" title="pw" required>
                    <div id="pw_" class="hidden_msg">비밀번호를 입력해주세요</div>
                </div>
                <br>
                <div class="box">
                    <div><b>비밀번호재확인</b></div>
                    <input type="password" id="pw2" name="pw2" class="book" title="pw" required>
                    <div id="pw2_" class="hidden_msg">비밀번호를 입력해주세요</div>
                </div>
                <br>
                <div class="box">
                    <div><b>이름</b></div>
                    <input type="text" id="name" name="name" class="book" title="name" required>
                    <div id="name_" class="hidden_msg">이름을 입력해주세요</div>
                </div>
                <br>
                <div class="box">
                    <div><b>이메일</b></div>
                    <input type="text" id="email" name="email" class="book" title="email" required>
                    <div id="email_" class="hidden_msg">이메일을 입력해주세요</div>
                </div>
                <br>
                <div class="box">
                    <div><b>전화번호</b></div>
                    <input type="text" id="phone" name="phone" class="book" title="number" oninput="autoHyphen(this)"
                        maxlength="13" required>
                    <div id="phone_" class="hidden_msg">번호를 입력해주세요</div>
                </div>
                <br>
                <div class="box">
                    <div><b>생년월일</b></div>
                    <input type="date" id="birth" name="birth" class="book" title="date">
                    <div id="birth_" class="hidden_msg">생년월일을 입력해주세요</div>
                </div>
                <br>
                <div class="box">
                    <div><b>성별</b></div>
                    <input id="radio1" type="radio" name="gender" value="male" checked><label for="radio1">남자</label>
                    <input id="radio2" type="radio" name="gender" value="female"><label for="radio2">여자</label>
                </div>
                <br>
                <div>
                    <button id="join_btn">가입하기</button>
                </div>
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
    </script>
</body>
</html>