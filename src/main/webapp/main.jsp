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
     
        #top{
            
            display: flex;  
            justify-content: space-between;
        }
        #top_search{
            width: 270px;
            display: flex;
            justify-content: space-between;
        }
        h1{
            margin: 0px;
            color:#F39C12;
        }
        #search_div{
            display: flex;
            align-items: center;
        }
        #search{

        }
        #user_page{
            width: 50px; height: 50px;
            background-color: gray;
            border-radius: 50%;
        }
        hr{
            margin: 0px;
        }
        #pacebook_content{
           border: 1px solid red;
        }
        #nav_bar{
            display: inline-block;
            justify-content: space-evenly;
            border: 1px solid blue;
            width: 100px;
            height: 500px;
        }
        #nav_bar2{
            width: 100%;
            height: 332px;
            display: inline-block;
            border: 1px solid purple;
           

        }
        #nav_bar3{
            width: 100%;
            display: inline-block;
            border: 1px solid green;
            margin-top: 110px;
            
        }


        #content{
            border: 1px solid #CCCCCC;
            width: 85%;
            height: 100%;
            border: 1px solid orange;
            display: inline-block;
        }
        .btn{
            border: 1px solid #CCCCCC;
            text-align: center;
        }
        .oher_user{

        }
        

    </style>
    <script>
	    window.onload = function(){
	    	document.querySelector("#board_btn").addEventListener("click", function(){
	    		let board = document.board;
	    		board.method = "get";
	    		board.action = "pacebook";
	    		board.submit();
	    	});
	    }
    </script>
</head>
<body>
    <div id="top">
        <h1 >PaceBook</h1> 
        <div id="top_search">
            <div id="search_div">
            <input id='search' type="text"> <input type="button" value="검색">
            </div>
            <div id="user_page"> </div>
        </div>
        <form id="board">
	        <button id="board_btn" name="command" value="board">게시글 작성</button>
        </form>
    </div>
    <hr size="1px" color="#CCCCCC">
    <div id="pacebook_content">    
        <div id="nav_bar">
            <div id="nav_bar2">
                <div class="btn">
                    <p>홈</p>
                </div>
                <div class="btn">
                    <p>검색</p>
                </div>
                <div class="btn">
                    <p>메시지</p>
                </div>
                <div class="btn">
                    <p>알림</p>
                </div>
                <div class="btn">
                    <p>만들기</p>
                </div>
                <div class="btn">
                    <p>프로필</p>
                </div>
            </div>
            <div id="nav_bar3">
                <div  class="btn">
                    <p>더보기</p>
                </div>
            </div>
        </div>

        
        <div id="content">
            <div class="other_user"> </div>
            <div class="other_user"> </div>
            <div class="other_user"> </div>
            <div class="other_user"> </div>
            <div class="other_user"> </div>
        </div>
    </div>
</body>
</html>