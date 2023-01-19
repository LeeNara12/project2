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
                height:25px;
                font-size:16px;

  }
  #date{
    font-size: 16px;;
  }
  .button{
    width: 53%;
    background-color: darkorange;
    height: 40px;
    font-size: 16px;
    
  }

    </style>
</head>
<body>
  <div class="login">
     <div id="logo">
     <h1><img src="logo.png" width="50%" height="20%"></h1>
     </div>
  
    <form>
      <div>  
        <div><b>아이디</b></div>
        <input type="email" id="id" name="id" class="book" title="ID">
      </div>
      <br>

      <div>
        <div><b>비밀번호</b></div>
        <input type="text" id="pw" name="pw" class="book" title="pw">
      </div>
      <br>

      <div>
        <div><b>비밀번호재확인</b></div>
        <input type="text" id="pw" name="pw" class="book" title="pw">
      </div>
      <br>

      <div>
        <div><b>이름</b></div>
        <input type="text" id="name" name="name" class="book" title="name">
      </div>
      <br>

      <div>
        <div><b>이메일</b></div>
        <input type="email" id="email" name="email" class="book" title="email">
      </div>
      <br>

      <div>
        <div><b>전화번호</b></div>
        <input type="tel" id="number" name="number" class="book" title="number">
      </div>
      <br>

      <div>
        <div><b>생년월일</b></div>
        <input type="date" id="date" name="date" class="book" title="date">
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