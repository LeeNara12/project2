<%@ page import="project2.*" %>
<%@page import="java.util.*"%>
<%@page import = "java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page buffer="8kb" autoFlush="true"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>pacebook</title>
   <style>
        body{
            margin: 0px;
        }
        /* /////////////상단 바 /////////////////////*/
        #top{
            box-shadow: 1px 1px 2px 2px grey;
            border-bottom: 1px solid #F39C12;
            display: flex;
            justify-content: space-between;
            width:100%;
            position: fixed;
            z-index: 4;
            background-color: white;
            height: 91px;
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
            border:1px solid  #F39C12;
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
            border:1px solid #F39C12;
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
<<<<<<< HEAD
        #profile_top{
        	
        	object-fit: cover;
        	width:74px;
        	height:74px;
        	
        
        }

=======
>>>>>>> 2d7d20fc5ae52e6bfe4e1f380be8db4e3898a14c
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
            border-right:1px solid  #F39C12;
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
            border-bottom:1px solid  #F39C12;
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
            border-top:1px solid #F39C12;
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
            border-right:1px solid #F39C12;
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
<<<<<<< HEAD
        #show_boards {
            /*height: 100%;*/
=======
        #show_boards{
            height:100%;
>>>>>>> 2d7d20fc5ae52e6bfe4e1f380be8db4e3898a14c
            list-style: none;
            padding: 0px;
            width: 500px;
            max-width: 500px;
            box-sizing: border-box;
        }
        /* 보드 css */
        .board{
            box-sizing: border-box;
<<<<<<< HEAD
            border: 1px solid #3169f6;
            min-height: 600px;
            height: fit-content;
=======
            border:1px solid #F39C12;
            height:600px;
            max-height: 600px;
>>>>>>> eae4cb46a806b67cef22a100dc7ebc99b1a888b7
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
            paddig: 0px
        }
        
        #board_profile_img{
	        width: 50px;
	    	height: 50px;
	    	object-fit: cover;
	    	
        
        
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
<<<<<<< HEAD
        .board_img_box{
            border-top: 1px solid black;
=======
        .board_img{
            border-top:1px solid black;
>>>>>>> eae4cb46a806b67cef22a100dc7ebc99b1a888b7
            border-bottom: 1px solid black;
            min-height: 400px;
            box-sizing: border-box;
            background-color: black;
            display:flex;
            justify-content: center;
            align-items: center;
        }
        /* 게시글 이미지 */
        .board_img{
        	max-width: 100%; 
        	max-height: 400px;
        	vertical-align: bottom;
        }
<<<<<<< HEAD
        
        #board_url{
        	object-fit: contain;
        	width: 498px;
        	height: 356.797px;
        
        
        }

=======
>>>>>>> 2d7d20fc5ae52e6bfe4e1f380be8db4e3898a14c
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
            min-height: 100px;
            height: fit-content;
            display: block;
            word-wrap: break-word;
        }
        
        #side_comment {
            border: 1px solid #3169f6;
            position: fixed;
            z-index: 100;
            right: 0px;
            box-sizing: border-box;
            height: fit-content;
            height: 822px;
        }

        #comment_area {
            height: 90%;
            box-sizing: border-box;
            background-color: rgb(214, 214, 214);
            overflow: auto;
        }

        .comment_profile {
            border: 1px solid black;
            border-radius: 50%;
            width: 50px;
            height: 50px;
            min-width: 50px;
            min-height: 50px;
            overflow: hidden;
            text-align: center;
            box-sizing: border-box;
            margin: 20px 20px;
            display: inline-block;
            vertical-align: top;
        }

        .comment_box {
            border-bottom: 1px solid #999;
            align-items: center;
            height: fit-content;
            display: flex;
        }

        .comment_info {
            font-size: 1.5vh;
            width: 84%;
            box-sizing: border-box;
            padding: 10px 10px;
            display: inline-block;
        }

        .comment_top {
            white-space: nowrap;
            overflow: hidden;
            display: flex;
        }

        .comment_id {
            vertical-align: top;
            box-sizing: border-box;
            width: fit-content;
            display: inline-block;
        }
        #comment_close_form{
        	display:inline-block;
        	width: 100%;
        }
        .comment_close_btn {
            border: 1px solid #999;
            float: right;
            box-sizing: border-box;
            width: 20px;
            height: 20px;
            text-align: center;
            background-color: rgb(214, 214, 214);
            padding: 0px;
        }

        .comment_close_btn:hover {
            background-color: #999;
        }

        .comment {
            box-sizing: border-box;
            margin: 5px 0px;
            font-size: 2vh;
        }

        #chat_area {
            box-sizing: border-box;
            background-color: #999;
            height: 10%;
            display: flex;
            align-items: center;
        }

        .chat_area_right {
            height: 100%;
            display: flex;
            flex-grow: 10;
            align-items: center;
            justify-content: center;
            padding: 0px 20px;
        }

        .comment_text {
            border: 1px solid black;
            outline: none;
            border-radius: 50px 0px 0px 50px;
            height: 50%;
            padding: 0px 20px;
            box-sizing: border-box;
            background-color: rgb(214, 214, 214);
            flex-grow: 10;
            font-size: 2vh;
        }

        .comment_btn {
            flex-grow: 1;
            border: 1px solid black;
            border-left: 0px;
            border-radius: 0px 50px 50px 0px;
            height: 50%;
            box-sizing: border-box;
            background-color: rgb(214, 214, 214);
            font-weight: bolder;
        }

        .comment_btn:hover {
            background-color: #999;
        }

        #comment_close {
            border: 1px solid #999;
            border-left: none;
            background: none;
            position: absolute;
            top: 40%;
            left: 10px;
            width: 50px;
            height: 100px;
            font-size: 4vh;
            color: #999;
        }

        @keyframes wobble-horizontal {
            16.65% {
                transform: translateX(8px);
            }

            33.3% {
                transform: translateX(-6px);
            }

            49.95% {
                transform: translateX(4px);
            }

            66.6% {
                transform: translateX(-2px);
            }

            83.25% {
                transform: translateX(1px);
            }

            100% {
                transform: translateX(0);
            }
        }

        #comment_close:hover {
            animation-name: wobble-horizontal;
            animation-duration: 1s;
            animation-timing-function: ease-in-out;
            animation-iteration-count: 1;
        }


        ul {
            list-style: none;
            margin: 0px;
            padding: 0px;
        }
    </style>
</head>
<<<<<<< HEAD
<body>
    <div id="top">
        <div id="logo">
        	<a href="main.jsp">
	            <img src="logo.png">
        	</a>
=======

	<%
	PaceDAO dao = new PaceDAO();
	
	HttpSession se = request.getSession();
	int user_no = (int)se.getAttribute("user_no");
	
	String profile_top = dao.profile(user_no);
	%>

<body>
    <div id="top">
        <div id="logo">

        	<a href="main.jsp">
	            <img src="logo.png">
        	</a>

           <a href="main.jsp">
               <img src="logo.png">
           </a>

>>>>>>> eae4cb46a806b67cef22a100dc7ebc99b1a888b7
        </div>
        <div id="top_right">
            <form name="search" method="get" action="main.jsp">
                <div id="search_box">
                    <button type="submit" id="search_btn" name="main_page" value="search">
                        검색
                    </button>
                    <input type="text" id="search_text" name="search_content">
                </div>
            </form>
            <form name="my_profile">
                <div id="my_profile">
<<<<<<< HEAD
                    <button class="profile_img" type="submit" name="main_page" value="my_profile">
=======
                	
                	<img id='profile_top' src=<%=profile_top %>>
                	
                    <button class="profile_img" type="submit" name="main_page" value="my_profile"
                        style="background-image:url('assets/image/background.png')" formmethod="get"
                        formaction="pacebook2">
                    	
>>>>>>> eae4cb46a806b67cef22a100dc7ebc99b1a888b7
                    </button>
                </div>
            </form>
        </div>
    </div>
    <div class="top"></div>
    <div id="center">
<<<<<<< HEAD
   		<div id="side_tool">
        	<ul id="tool_list">
            	<li>
	            	<a href="main.jsp">
	                <button type="submit" class="tool_btn  side_home">
	                     홈
	                </button>
	                </a>
	             </li>
	             <li>
	             	<form>
		                <button type="submit" class="tool_btn  side_profile" name="main_page" value="my_profile"
		                    formmethod="get" formaction="pacebook2">
		                    프로필
		                </button>
	                </form>
	             </li>
	             <li>
	                <button type="submit" class="tool_btn  side_notice">
	                    알림
	                </button>
	             </li>
	             <li>
	                <button type="submit" class="tool_btn side_message" name="main_page" value="message">
	                    메시지
	                </button>
	             </li>
	             <li>
	             	<form>
		                <button type="submit" class="tool_btn  side_make" name="main_page" value="make" formmethod="get"
		                    formaction="pacebook2">
		                    만들기
		                </button>
	                </form>
	             </li>
        	</ul>
	        <button type="submit" class="tool_btn  side_more">
	            더보기
	        </button>
     	</div>
=======
        <form name="side">
            <div id="side_tool">
                <ul id="tool_list">
                    <li>
                        <button type="submit" class="tool_btn  side_home" name="main_page" value="home" formmethod="get"
                            formaction="pacebook2">
                           <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-house" viewBox="0 0 16 16">
                                <path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L2 8.207V13.5A1.5 1.5 0 0 0 3.5 15h9a1.5 1.5 0 0 0 1.5-1.5V8.207l.646.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.707 1.5ZM13 7.207V13.5a.5.5 0 0 1-.5.5h-9a.5.5 0 0 1-.5-.5V7.207l5-5 5 5Z"/>
                              </svg>홈
                        </button>
                    </li>
                    <li>
                       <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                                <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                              </svg>프로필
                        </button>
                    </li>
                    <li>
                        <button type="submit" class="tool_btn  side_notice" name="main_page" value="notice"
                            formmethod="get" formaction="pacebook2">
                           <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-bell" viewBox="0 0 16 16">
                                <path d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2zM8 1.918l-.797.161A4.002 4.002 0 0 0 4 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4.002 4.002 0 0 0-3.203-3.92L8 1.917zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 1 1 1.99 0A5.002 5.002 0 0 1 13 6c0 .88.32 4.2 1.22 6z"/>
                              </svg>알림
                        </button>
                    </li>
                    <li>
                        <button type="submit" class="tool_btn  side_message" name="main_page" value="message"
                            formmethod="get" formaction="pacebook2">
                         <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-envelope-at" viewBox="0 0 16 16">
                            <path d="M2 2a2 2 0 0 0-2 2v8.01A2 2 0 0 0 2 14h5.5a.5.5 0 0 0 0-1H2a1 1 0 0 1-.966-.741l5.64-3.471L8 9.583l7-4.2V8.5a.5.5 0 0 0 1 0V4a2 2 0 0 0-2-2H2Zm3.708 6.208L1 11.105V5.383l4.708 2.825ZM1 4.217V4a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v.217l-7 4.2-7-4.2Z"/>
                            <path d="M14.247 14.269c1.01 0 1.587-.857 1.587-2.025v-.21C15.834 10.43 14.64 9 12.52 9h-.035C10.42 9 9 10.36 9 12.432v.214C9 14.82 10.438 16 12.358 16h.044c.594 0 1.018-.074 1.237-.175v-.73c-.245.11-.673.18-1.18.18h-.044c-1.334 0-2.571-.788-2.571-2.655v-.157c0-1.657 1.058-2.724 2.64-2.724h.04c1.535 0 2.484 1.05 2.484 2.326v.118c0 .975-.324 1.39-.639 1.39-.232 0-.41-.148-.41-.42v-2.19h-.906v.569h-.03c-.084-.298-.368-.63-.954-.63-.778 0-1.259.555-1.259 1.4v.528c0 .892.49 1.434 1.26 1.434.471 0 .896-.227 1.014-.643h.043c.118.42.617.648 1.12.648Zm-2.453-1.588v-.227c0-.546.227-.791.573-.791.297 0 .572.192.572.708v.367c0 .573-.253.744-.564.744-.354 0-.581-.215-.581-.8Z"/>
                          </svg>메시지
                        </button>
                    </li>
                    <li>
                        <button type="submit" class="tool_btn  side_make" name="main_page" value="make" formmethod="get"
                            formaction="pacebook2">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-file-plus" viewBox="0 0 16 16">
                                <path d="M8.5 6a.5.5 0 0 0-1 0v1.5H6a.5.5 0 0 0 0 1h1.5V10a.5.5 0 0 0 1 0V8.5H10a.5.5 0 0 0 0-1H8.5V6z"/>
                                <path d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V2zm10-1H4a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1z"/>
                              </svg>만들기
                        </button>
                    </li>
                </ul>
                <button type="submit" class="tool_btn  side_more" name="main_page" value="more" formmethod="get"
                    formaction="pacebook2">
                   <path d="M14 1a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1h-2.5a2 2 0 0 0-1.6.8L8 14.333 6.1 11.8a2 2 0 0 0-1.6-.8H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h2.5a1 1 0 0 1 .8.4l1.9 2.533a1 1 0 0 0 1.6 0l1.9-2.533a1 1 0 0 1 .8-.4H14a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
                        <path d="M5 6a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"/>
                      </svg>더보기
                </button>
            </div>
        </form>
>>>>>>> eae4cb46a806b67cef22a100dc7ebc99b1a888b7
        <div class="side_tool"></div>
        <div id="center_box">
            <ul id="friend_profiles">
	            <!-- 데이터베이스에서 가져와서 친구표시 -->
	            <li class="friend_pf">
	                <button class="profile_img" type="submit" name="main_page" value="fr_profile" formmethod="get"
	                    formaction="pacebook2" style="background-image:url('assets/image/background.png')">
	                </button>
	            </li>
	            <!-- 친구표시 -->
            </ul>
<<<<<<< HEAD
            <ul id="show_boards">
            <%
            PaceDAO dao = new PaceDAO();
            HttpSession se = request.getSession();
            int user_no = (int)se.getAttribute("user_no");
            %>
            <%
            List<PaceBoardVO> boardList = null;
            if("search".equals(request.getParameter("main_page"))){
            	boardList = dao.search(request.getParameter("search_content"));
            } else {
	            boardList = dao.getBoard();
            }
           	for(PaceBoardVO pbvo : boardList){
           		int boardUserNo = pbvo.getUser_no();
           		PaceUserVO puvo = dao.getUserInfo(boardUserNo);
           		String id = puvo.getId();
           		String email = puvo.getEmail();
           		
           		String picture = pbvo.getBoard_url();
           		String content = pbvo.getBoard_content();
           		
           		int board_no = pbvo.getBoard_no();
=======
            
            
            <%
    		
    		
    		int count = dao.BoardCount(user_no);
    		
    		HashMap <Integer, List> map = dao.BoardContent(user_no);
    		List <PaceUserVO> getPuvo = map.get(1); 
    		List <PaceBoardVO> getPbvo = map.get(2);
    		
    		
    		
               
            for(int i = 0; i<count; i++ ){
              
               System.out.println(i);
               System.out.println(getPuvo.get(i));
               
               String id= getPuvo.get(i).getId();
               String email = getPuvo.get(i).getEmail();
               String profile = getPuvo.get(i).getProfile();
               
               java.sql.Date board_time = getPbvo.get(i).getBoard_time();//sql
               
               String borad_time2 = dao.time(board_time);
               //String time= format.format(board_time);
               //System.out.println(time);
               
               
               String board_url = getPbvo.get(i).getBoard_url();
               String board_content = getPbvo.get(i).getBoard_content();
               System.out.println(board_content);
              
              
               
>>>>>>> eae4cb46a806b67cef22a100dc7ebc99b1a888b7
            %>
            <form>
            <ul id="show_boards">
                
                <li class="board">
                    <div class="board_top">
                        <div class="board_top_left">
                            <div class="board_profile">
<<<<<<< HEAD
                                <button class="profile_img" name="main_page" value="bd_profile"
=======
                            	<img id='board_profile_img' src=<%=profile %>>
                                <button class="profile_img" type="submit" name="main_page" value="bd_profile"
                                    formmethod="get" formaction="pacebook"
>>>>>>> eae4cb46a806b67cef22a100dc7ebc99b1a888b7
                                    style="background-image:url('assets/image/background.png')">
                                    
                                </button>
                            </div>
                            <div class="board_top_content">
                                <div class="btc_id btc"><%=id+" "+borad_time2 %> 작성시간</div>
                                <div class="btc_email btc"><%=email %>이메일</div>
                            </div>
                        </div>
                        <div class="board_top_right">
                            <div class="board_more board_btn">
                            	<% if(user_no == boardUserNo){ %>
                                <button class="profile_img" name="main_page" value="del_board">
                                    <svg width="16" height="16">
                                        <path d="M14 1a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H4.414A2 2 0 0 0 3 11.586l-2 2V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12.793a.5.5 0 0 0 .854.353l2.853-2.853A1 1 0 0 1 4.414 12H14a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
                                        <path d="M5 6a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"/>
                                    </svg>
                                </button>
                                <input type="hidden" name="board_no" value="<%= boardUserNo %>">
                                <% } %>
                            </div>
                        </div>
                    </div>
<<<<<<< HEAD
                    <div class="board_img_box">
                        <img class="board_img" src="<%=picture%>">
=======
                    <div class="board_img">
                        <img id='board_url' src=<%=board_url %>>
>>>>>>> eae4cb46a806b67cef22a100dc7ebc99b1a888b7
                    </div>
                    <div class="board_content">
                        <div class="content_top">
                            <div class="content_top_left">
                                <div class="board_like board_btn ">
                                    <button class="profile_img" name="main_page" value="like">
                                        <svg width="16" height="16">
                                         <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
                                        </svg>
                                    </button>
                                </div>
                                <div class="board_comment board_btn">
                                	<form method="get" action="main.jsp">
	                                    <button id="board_comment_btn" class="profile_img" name="board_no" value="<%= board_no %>"> 
	                                        <svg width="16" height="16">
	                                            <path d="M2.678 11.894a1 1 0 0 1 .287.801 10.97 10.97 0 0 1-.398 2c1.395-.323 2.247-.697 2.634-.893a1 1 0 0 1 .71-.074A8.06 8.06 0 0 0 8 14c3.996 0 7-2.807 7-6 0-3.192-3.004-6-7-6S1 4.808 1 8c0 1.468.617 2.83 1.678 3.894zm-.493 3.905a21.682 21.682 0 0 1-.713.129c-.2.032-.352-.176-.273-.362a9.68 9.68 0 0 0 .244-.637l.003-.01c.248-.72.45-1.548.524-2.319C.743 11.37 0 9.76 0 8c0-3.866 3.582-7 8-7s8 3.134 8 7-3.582 7-8 7a9.06 9.06 0 0 1-2.347-.306c-.52.263-1.639.742-3.468 1.105z"/>
	                                        </svg>
	                                    </button>
                                	</form>
                                </div>
                                <div class="board_share board_btn ">
                                    <button class="profile_img">
                                        <svg width="16" height="16">
                                            <path d="M15.854.146a.5.5 0 0 1 .11.54l-5.819 14.547a.75.75 0 0 1-1.329.124l-3.178-4.995L.643 7.184a.75.75 0 0 1 .124-1.33L15.314.037a.5.5 0 0 1 .54.11ZM6.636 10.07l2.761 4.338L14.13 2.576 6.636 10.07Zm6.787-8.201L1.591 6.602l4.339 2.76 7.494-7.493Z"/>
                                        </svg>
                                    </button>
                                </div>
                            </div>
                            <div class="content_top_right">
                                <div class="board_record board_btn ">
                                    <button class="profile_img">
                                         <svg width="16" height="16">
                                            <path d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.777.416L8 13.101l-5.223 2.815A.5.5 0 0 1 2 15.5V2zm2-1a1 1 0 0 0-1 1v12.566l4.723-2.482a.5.5 0 0 1 .554 0L13 14.566V2a1 1 0 0 0-1-1H4z"/>
                                            <path d="M8 4a.5.5 0 0 1 .5.5V6H10a.5.5 0 0 1 0 1H8.5v1.5a.5.5 0 0 1-1 0V7H6a.5.5 0 0 1 0-1h1.5V4.5A.5.5 0 0 1 8 4z"/>
                                         </svg>
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="board_id">
                            @<%=id %>
                        </div>
                        <p class="content">
<<<<<<< HEAD
                            <%= content %>
=======
                            <%=board_content %>게시글내용
>>>>>>> eae4cb46a806b67cef22a100dc7ebc99b1a888b7
                        </p>
                    </div>
                </li>
                <% } %>
                <!-- 게시글 끝 -->
            </ul>
        </div>
       	<% 
       		int board_no = 0;
       		if(request.getParameter("board_no") != null){
               	board_no = Integer.parseInt(request.getParameter("board_no"));
       		}
       		String visibility = "hidden";
       		System.out.println(board_no);
       		if(board_no != 0){
       			visibility = "visible";
       		}
       	%>
        <div id="side_comment" style="visibility:<%= visibility %>">
            <ul id="comment_area">
                <!-- 댓글 -->
                <%
             		List<PaceCommentVO> commentList = dao.Comment(board_no);
                	if(commentList != null){
              			for(PaceCommentVO pcvo : commentList){
	                    	int c_user_no = pcvo.getUser_no();
	                    	PaceUserVO c_puvo = dao.getUserInfo(c_user_no);
	                    	String id = c_puvo.getId();
                 %>
                <li class="comment_box">
                    <div class="comment_profile">
                        <button class="profile_img" type="submit" name="main_page" value="fr_profile" formmethod="get"
                            formaction="pacebook" style="background-image:url('assets/image/background.png')">
                        </button>
                    </div>
                    <div class="comment_info">
                        <div class="comment_top">
                            <div class="comment_id">
                                <%= id %>
                            </div>
                            <span class="comment_modify">
                                <% int comment_modify = pcvo.getComment_modify();
                                if(comment_modify == 1){ %>
                                   (수정됨)
                                <% } %>
                            </span>
                            <% if(user_no == c_user_no){ %>
                            <form id="comment_close_form"method="get" action="pacebook2">
                            <% int comment_no = pcvo.getComment_no(); %>
                            <button class="comment_close_btn" name="main_page" value="comment_del">
	                            	<input type="hidden" name="comment_no" value="<%= comment_no %>">
	                            	<input type="hidden" name="board_no" value="<%= board_no %>">
	                                X
                            </button>
                            </form>
                            <% } %>
                        </div>
                        <div class="comment">
                            <% String comment = pcvo.getComment_content(); %>
                            <%= comment %>
                        </div>
                    </div>
                </li>
                <% } %>
                <%} %>
                <!-- 댓글 끝 -->
            </ul>
            <button id="comment_close">></button>
            <div id="chat_area">
                <div class="profile_img comment_profile" style="background-image:url('assets/image/background.png')">
                </div>
               	<form class="chat_area_right" method="get" action="pacebook2">
                    <input type="text" class="comment_text" name="comment_content">
                    <button type="submit" class="comment_btn" name="main_page" value="comment">
                    	게시
                    	<input type="hidden" name="board_no" value="<%= board_no %>">
                    </button>
               	</form>
            </div>
        </div>
    </div>
    <script>
	    let comment_btns = document.querySelectorAll("#board_comment_btn");
	    comment_btns.forEach( (btn) => {
	        document.querySelector("#comment_close").addEventListener("click", function(){
	            document.querySelector("#side_comment").style.visibility = "hidden";
	        });
	    });
    </script>
</body>
</html>