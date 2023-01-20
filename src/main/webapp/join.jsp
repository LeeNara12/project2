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
.login{
        display: flex;
        justify-content: center;
        flex-direction: column;
        padding: 2% ;
        padding-left: 35%;
        width: 50%;
        font-size: 24px;
    }
    .book{
        width:50%;
        height:30px;
        font-size:16px;
        border: 1px solid #3169f6;
        outline: none;
    }
    .book:focus{
        border: 1px solid #F39C12;
    }
    #date{
      font-size: 16px;;
    }
    .button{
        width: 53%;
        background-color: #F39C12;
        height: 40px;
        font-size: 16px;
        margin-bottom: 40px;
    }
    .hidden_msg{
        position: absolute;
        visibility: hidden;
        color: red;
        font-size: 20px;
    }
    /* .book:valid{
        background-color: green;
    }
    .book:invalid{
        background-color: blue;
    } */

</style>
<script>
    window.onload = function(){
        document.querySelector("#id").addEventListener("focusout", function(){
            document.querySelector("#id_").style.visibility = "visible";            
            document.querySelector("#id_").style.position = "relative";
            let regex =  /^[A-Za-z]{1}[A-Za-z0-9]{3,19}$/;
            if(document.querySelector("#id").value == ""){
                document.querySelector("#id_").innerHTML = "필수 정보 입니다.";
            } else if(!regex.test(document.querySelector("#id").value)){
                document.querySelector("#id_").innerHTML = "4~20자의 영문 소문자, 대문자, 숫자만 사용 가능합니다.";
            } else {
                document.querySelector("#id_").style.visibility = "hidden";
                document.querySelector("#id_").style.position = "absolute";
            }
        });
        document.querySelector("#pw").addEventListener("focusout", function(){
            document.querySelector("#pw_").style.visibility = "visible";
            document.querySelector("#pw_").style.position = "relative";
            let regex = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/;
            if(document.querySelector("#pw").value == ""){
                document.querySelector("#pw_").innerHTML = "필수 정보 입니다.";
            } else if(!regex.test(document.querySelector("#pw").value)){
                document.querySelector("#pw_").innerHTML = "8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";
            } else {
                document.querySelector("#pw_").style.visibility = "hidden";
                document.querySelector("#pw_").style.position = "absolute";
            }
        });
        document.querySelector("#pw2").addEventListener("focusout", function(){
            document.querySelector("#pw2_").style.visibility = "visible";
            document.querySelector("#pw2_").style.position = "relative";
            if(document.querySelector("#pw2").value == ""){
                document.querySelector("#pw2_").innerHTML = "필수 정보 입니다.";
            } else if(document.querySelector("#pw").value != document.querySelector("#pw2_".value)){
                document.querySelector("#pw2_").innerHTML = "비밀번호가 일치하지 않습니다.";
            } else {
                document.querySelector("#pw2_").style.visibility = "hidden";
                document.querySelector("#pw2_").style.position = "absolute";
            }
        });
        document.querySelector("#email").addEventListener("focusout", function(){
            document.querySelector("#email_").style.visibility = "visible";
            document.querySelector("#email_").style.position = "relative";
            let regex = /^[a-z0-9\.\-_]+@([a-z0-9\-]+\.)+[a-z]{2,6}$/;
            if(document.querySelector("#email").value == ""){
                document.querySelector("#email_").innerHTML = "필수 정보 입니다.";
            } else if(!regex.test(documetn.querySelector("#email").value)){
                document.querySelector("#email_").innerHTML = "이메일 형식이 올바르지 않습니다."
            } else {
                document.querySelector("#email_").style.visibility = "hidden";
                document.querySelector("#email_").style.position = "absolute";
            }
        });
        document.querySelector("#cell").addEventListener("focusout", function(){
            document.querySelector("#cell_").style.visibility = "visible";
            document.querySelector("#cell_").style.position = "relative";
            let regex =   /(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/;
            if(document.querySelector("#cell").value == ""){
                document.querySelector("#cell_").innerHTML = "필수 정보 입니다.";
            } else if(!regex.test(documetn.querySelector("#cell").value)){
                document.querySelector("#cell_").innerHTML = "전화번호 형식이 올바르지 않습니다."
            } else {
                document.querySelector("#cell_").style.visibility = "hidden";
                document.querySelector("#cell_").style.position = "absolute";
            }
        });
    }
</script>
</head>
<body>
    <div class="login">
      <div id="logo">
          <img src="assets/image/PACEBOOK.png">
      </div>
    <form>
        <div>  
        <div><b>아이디</b></div>
            <input type="text" id="id" name="id" class="book" title="ID" required>
            <div id="id_" class="hidden_msg"></div>
        </div>
      <br>
      <div>
        <div><b>비밀번호</b></div>
            <input type="password" id="pw" name="pw" class="book" title="pw" 
                pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,16}$" required>
            <div id="pw_" class="hidden_msg">비밀번호를 입력해주세요</div>
        </div>
      <br>
      <div>
        <div><b>비밀번호재확인</b></div>
        <input type="password" id="pw2" name="pw2" class="book" title="pw"
            pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,16}$" required>
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
        <input type="text" id="email" name="email" class="book" title="email" pattern="[a-zA-Z0-9]{}"required>
        <div id="email_" class="hidden_msg">이메일을 입력해주세요</div>
      </div>
      <br>
      <div>
        <div><b>전화번호</b></div>
        <input type="tel" id="cell" name="cell" class="book" title="number" pattern="^\d{3}-\d{3,4}-\d{4}$" required>
        <div id="cell_" class="hidden_msg">번호를 입력해주세요</div>
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
    </form>
    <div>
      <button class="button"><b>가입하기</b></button>
    </div>
</div>       
    
</body>
</html>