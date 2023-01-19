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
<<<<<<< HEAD

=======
>>>>>>> c867fd5e07d01132ecc4876b73af356aa24bf820
  <div class="login">
     <div id="logo">
     <h1><img src="logo.png" width="50%" height="20%"></h1>
  </div>
    <from>
      <div>  
        <div><b>아이디</b></div>
        <input type="email" id="id" name="id" class="book" title="ID">
      </div>
      <br>
<<<<<<< HEAD

    <div>
        <h1>Pacebook</h1>
        <p> 친구들과 사진과 동영상 보려면 가입하세요</p>
        <div id='btn_kakao_login'>
            <img id='kakao' src="https://play-lh.googleusercontent.com/Ob9Ys8yKMeyKzZvl3cB9JNSTui1lJwjSKD60IVYnlvU2DsahysGENJE-txiRIW9_72Vd" width="30px">카톡으로 로그인
        </div>
        <br>
        <div id="hr">
        --------------------또는-----------------------
        </div>
        <br>
        <form name="join">
	        <div class="join_input">
	            <input type="text" name="id" placeholder="아이디" size="30px" ><br>
	            <input type="text" name="pw" placeholder="비밀번호" size="30px"><br>
	            <input type="text" name="nick" placeholder="사용자이름" size="30px"><br>
	        </div>
	        <div>
	            <p id='description'>저희 서비스를 이용하는 사람이 회원님의 연락처 정보를</p>
	            <p id='description'>PACEBOOK에 업로드했을 수도 있습니다. <a href="">더알아보기</a></p>
	        </div>
	        <div id="div_submit">
	            <button id="join" name="command" value="joinUp">회원가입</button>
	       	</div>
        </form>
        <div>
            <p id="description_login">계정이 있으신가요? <a href="login.jsp">로그인</a></p>
        </div>

=======
>>>>>>> c867fd5e07d01132ecc4876b73af356aa24bf820

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
    </from>
    <div>
      <button class="button"><b>가입하기</b></button>
    </div>
            
    
</body>
</html>