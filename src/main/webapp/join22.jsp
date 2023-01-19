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
        body{
            display: flex;
            justify-content: center;

        }
        h1{
            text-align: center;
            color: #F39C12;
        }
        #btn_kakao_login{
            text-align: center;
            width: 300px;
            background-color: #F1C40F;
            color: white;
        }
        
        .join_input{
            text-align: center;
            /* width: 500px; */
        }
        #description{
            text-align: center;
            font-size: 5px;
            color: #8E8E8E;
        }
        #join{
            
            background-color: #3498DB;
            color: white;
            width: 200px;
        }
       #div_submit{
        text-align: center;
       }
      
       #description_login{
        text-align: center;
        font-size: 5px;
       }

        
    </style>
    <script>
    	window.onload = function(){
	    	document.querySelector("#join").addEventListener("click", function(){
	    		let join = document.join;
	    		join.method = "post";
	    		join.action = "pacebook";
	    		join.submit();
	    	})
    	}
    </script>
</head>

<body>
    <div>
        <h1>pacebook</h1>
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

    </div>
</body>
</html>