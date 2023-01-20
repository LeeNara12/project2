<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>pacebook2</title>
    <style>
        body{
            margin: 0px;
        }
        /* /////////////상단 바 /////////////////////*/
        #top{
            border-bottom: 1px solid #3169f6;
            display: flex;
            justify-content: space-between;
            width:100%;
            position: fixed;
            z-index: 4;
            background-color: white;
        }
        #logo{
            margin: 10px 20px;
        }
        #top_right{
            width: 400px;
            align-items: center;
            display: flex;
            margin-right: 20px;
            justify-content: space-between;
        }
        #search_box{
            width:300px;
            height:40px;
            display: flex;
        }
        #search_btn{
            flex-grow: 1;
            border:1px solid #3169f6;
            color:#F39C12;
            background-color: white;
            font-weight: bolder;
        }
        #search_btn:hover{
            background-color: #F39C12;
            color: white;
            border-color: #F39C12;
        }
        #search_text{
            flex-grow: 2;
            border:1px solid #3169f6;
            border-left: 0px;
            outline: none;
        }
        #my_profile{
            border:2px solid gray;
            width: 70px;
            height: 70px;
            border-radius: 50%;
            overflow: hidden;
        }
        /* fixed된 상단영역 대체 */
        .top{
            box-sizing: border-box;
            height:91px;
            position: relative;
        }

        /* /////////////////////////////////////// */
        #center{
            display: flex;
        }
        #side_tool{
            background-color: white;
            top:91px;
            /* border-right:1px solid rgb(167, 167, 167); */
            border-right:1px solid #3169f6;
            box-sizing: border-box;
            display: flex;
            width:20%;
            height: 90%;
            flex-direction: column;
            justify-content: space-between;
            position:fixed;
            z-index: 3;
        }
        #tool_list{
            margin:0;
            box-sizing: border-box;
            list-style: none;
            padding:0;
            display: flex;
            flex-direction: column;
        }
        .tool_btn{
            width:100%;
            height:100px;
            border: 0px;
            border-bottom:1px solid #3169f6;
            cursor: pointer;
            color: #F39C12;
            font-weight: bolder;
            background-color: white;
            text-align: start;
            padding-left: 30px;
        }
        .tool_btn:hover{
            color:white;
            background-color: #F39C12;
        }
        .side_more{
            border-top:1px solid #3169f6;
        }
        /* fixed된 사이드 영역을 대체 */
        .side_tool{
            box-sizing: border-box;
            width:20%;
            height:900px;
            position: relative;
            display: inline-block;
        }
        /* ////////////////////////////////////// */
        #center_box{
            border-right:1px solid #3169f6;
            box-sizing: border-box;
            width:60%;
            min-width: 835px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        #friend_pofiles{
            margin: 0px;
            box-sizing: border-box;
            width:100%;
            height: 15%;
            padding:15px 50px;
            overflow-x: scroll;
            white-space: nowrap;
        }
        .friend_pf{
            border:2px solid gray;
            border-radius: 50%;
            width:70px;
            height: 70px;
            margin:0px 10px;
            display: inline-block;
            overflow: hidden;
        }
        ::-webkit-scrollbar{
            display: none;
        }
        
        /* 게시글이 보이는 영역 */
        #show_boards{
            height:100%;
            list-style: none;
            padding: 0px;
            width: 500px;
            max-width: 500px;
            box-sizing: border-box;
        }
        /* 보드 css */
        .board{
            box-sizing: border-box;
            border:1px solid #3169f6;
            height:600px;
            max-height: 600px;
            margin-bottom: 40px;
        }
        .board_top{
            height:10%;
            display: flex;
            align-items: center;
        }
        .board_top_left{
            flex-grow:3;
            height: 100%;
            box-sizing: border-box;
            display: flex;
            align-items: center;
        }
        .board_profile{
            border:2px solid gray;
            border-radius: 50%;
            width:50px;
            height: 50px;
            min-width: 50px;
            min-height: 50px;
            margin: 10px;
            overflow: hidden;
        }


        .profile_img{
            width:100%;
            height:100%;
            background-size: cover;
            border: none;
            cursor: pointer;
        }
        


        .board_top_content{
            box-sizing: border-box;
            height: 100%;
            width: 100%;
            max-width: 400px;
            display: flex;
            flex-direction: column;
        }
        .btc{
            box-sizing: border-box;
            min-width: fit-content;
            white-space: nowrap;
            overflow: hidden;
            max-width: 300px;
            min-width: 300px;
        }
        .btc_id{
            flex-grow: 4;
            font-weight: bolder;
        }
        .btc_email{
            flex-grow: 1;
            color: gray;
            max-width: 300px;
        }
        .board_top_right{
            box-sizing: border-box;
            flex-grow: 1;
            height: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        
        /* 게시글 이미지박스 */
        .board_img{
            border-top:1px solid black;
            border-bottom: 1px solid black;
            height: 60%;
            box-sizing: border-box;
        }
        /* 이미지아래 전체박스 */
        .board_content{
            box-sizing: border-box;
            height: 30%;
            padding: 10px;
        }
        /* 게시글 아래 버튼 영역 */
        .content_top{
            display: flex;
            justify-content: space-between;
            box-sizing: border-box;
        }
        /* 왼쪽버튼 박스 */
        .content_top_left{
            display: flex;
            box-sizing: border-box;
            justify-content: space-between;
            flex-grow: 1;
        }
        /* 오른쪽 버튼 박스 */
        .content_top_right{
            flex-grow: 5;
            justify-content: right;
            display: flex;
            box-sizing: border-box;
        }
        .board_btn{
            display: inline-block;
            width:30px;
            height: 30px;
            box-sizing: border-box;
            cursor:pointer;
        }
        .board_btn:hover{
            box-shadow: 0px 1px 5px 1px gray, 2px 2px 5px gray;
        }
        /* 아이디 들어가는곳 */
        .board_id{
            display: inline-block;
            margin-top:10px;
        }
        /* 내용 들어가는 곳 */
        .content{
            margin-top: 10px;
            width: 100%;
            height: 50%;
            display: block;
        }
    </style>
    <script>
<<<<<<< HEAD
    	window.onload = function(){
    		document.querySelector("#board_btn").addEventListener("click", function(){
    			let board = document.board;
    			board.method = "get";
    			board.action = "pacebook";
    			board.submit();
    		});	
    		document.querySelector("#logout_btn").addEventListener("click", function(){
    			let logout = document.logout;
    			logout.method = "get";
    			logout.action = "pacebook";
    			logout.submit();
    		});	
    	}
    	
    	
=======
>>>>>>> 2e07445d58cc2eed9baf05e86a2780a9de483f8b
    </script>
</head>
<body>
    <div id="top">
        <div id="logo">
            <img src="logo.png">
        </div>
        <div id="top_right">
            <form name="search">
                <div id="search_box">
                    <button type="submit" id="search_btn" name="main_page" value="search"
                        formmethod="get" formaction="pacebook2">
                        검색
                    </button>
                    <input type="text" id="search_text" name="search_content">
                </div>
            </form>
            <form name="my_profile">
                <div id="my_profile">
                        <button class="profile_img" type="submit" name="main_page" value="my_profile" style="background-image:url('assets/image/background.png')"
                        formmethod="get" formaction="pacebook2">
                    </button>
                </div>
            </form>
        </div>
    </div>
    <div class="top"></div>
    <div id="center">
        <form name="side">
            <div id="side_tool">
                <ul id="tool_list">
                    <li>
                        <button type="submit" class="tool_btn  side_home" name="main_page" value="home"
                            formmethod="get" formaction="pacebook2">
                            홈
                        </button>
                    </li>
                    <li>
                        <button type="submit" class="tool_btn  side_profile" name="main_page" value="my_profile"
                            formmethod="get" formaction="pacebook2">
                            프로필
                        </button>
                    </li>
                    <li>
                        <button type="submit" class="tool_btn  side_notice" name="main_page" value="notice"
                            formmethod="get" formaction="pacebook2">
                            알림
                        </button>
                    </li>
                    <li>
                        <button type="submit" class="tool_btn  side_message" name="main_page" value="message"
                            formmethod="get" formaction="pacebook2">
                            메시지
                        </button>
                    </li>
                    <li>
                        <button type="submit" class="tool_btn  side_make" name="main_page" value="make"
                            formmethod="get" formaction="pacebook2">
                            만들기
                        </button>
                    </li>
                </ul>
                <button type="submit" class="tool_btn  side_more" name="main_page" value="more"
                        formmethod="get" formaction="pacebook2">
                        더보기
                </button>
            </div>
        </form>
        <div class="side_tool"></div>
        <div id="center_box" >
            <ul id="friend_pofiles">
                <form name="friend">
                <!-- 데이터베이스에서 가져와서 친구표시 -->
                <li class="friend_pf">
                    <button class="profile_img" type="submit" name="main_page" value="fr_profile" 
                    formmethod="get" formaction="pacebook2"style="background-image:url('assets/image/background.png')">
                    </button>
                </li>
                <!-- 친구표시 -->
                </form>
            </ul>
            <form>
            <ul id="show_boards">
                <!-- 게시글 시작 데이터베이스에서 가져와서 for문으로 표시 -->
                <li class="board">
                    <div class="board_top">
                        <div class="board_top_left">
                            <div class="board_profile">
                                <button class="profile_img" type="submit" name="main_page" value="bd_profile" 
                                    formmethod="get" formaction="pacebook2"style="background-image:url('assets/image/background.png')">
                                </button>
                            </div>
                            <div class="board_top_content">
                                <div class="btc_id btc">아이디 및 생성 날짜</div>
                                <div class="btc_email btc">이메일</div>
                            </div>
                        </div>
                        <div class="board_top_right">
                            <div class="board_more board_btn ">
                                <button class="profile_img" type="submit" name="main_page" value="bd_more" 
                                    formmethod="get" formaction="pacebook2"style="background-image:url('assets/image/more_btn.png')">
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="board_img">
                        <img src="">
                    </div>
                    <div class="board_content">
                        <div class="content_top">
                            <div class="content_top_left">
                                <div class="board_like board_btn ">
                                    <button class="profile_img" type="submit" name="main_page" value="like" 
                                    formmethod="get" formaction="pacebook2"style="background-image:url('assets/image/like_btn.png')">
                                    </button>
                                </div>
                                <div class="board_comment board_btn ">
                                    <button class="profile_img" type="submit" name="main_page" value="comment" 
                                    formmethod="get" formaction="pacebook2"style="background-image:url('assets/image/comment_btn.png')">
                                    </button>
                                </div>
                                <div class="board_share board_btn ">
                                    <button class="profile_img" type="submit" name="main_page" value="share" 
                                    formmethod="get" formaction="pacebook2"style="background-image:url('assets/image/share_btn.png')">
                                    </button>
                                </div>
                            </div>
                            <div class="content_top_right">
                                <div class="board_record board_btn ">
                                    <button class="profile_img" type="submit" name="main_page" value="record" 
                                    formmethod="get" formaction="pacebook2"style="background-image:url('assets/image/record_btn.png')">
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="board_id">
                            @아이디
                        </div>
                        <p class="content">
                            내용
                        </p>
                    </div>
                </li>
                <!-- 게시글 끝 -->
            </ul>
            </form>
        </div>
    </div>
    <div id="bottom">

    </div>
</body>
</html>