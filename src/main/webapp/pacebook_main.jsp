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


       /* top부분 */
        #top{
            
            display: flex;  
            justify-content: space-between;
        }
        #logo{
            padding-top: 10px;
            width: 300px;
        }
        #top_search{
            width: 270px;
            display: flex;
            justify-content: space-between;
        }

       
        #search_div{
            display: flex;
            align-items: center;
        }
        
        #user_page{
            width: 50px; height: 50px;
            background-color: gray;
            border-radius: 50%;
        }
        hr{
            margin: 0px;
        }

        /* ============================================ */



        /* 아래부분- 사이드 네비게이션 부분 */
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
        .btn{
            border: 1px solid #CCCCCC;
            text-align: center;
        }
        /* ============================================== */

        /* 아래부분 - 컨텐츠부분  */
        #pacebook_contents{
            border: 1px solid blue;
            width: 60%;
            height: 100%;
            display: inline-flex;
            vertical-align: top;
            justify-content: center;
            
        }
        #content_wrap{
            display: flex;
            flex-wrap: wrap;
            justify-content: space-evenly;
            width: 100%;
        }


        /* 아래부분- 컨텐츠부분- 친구목록 */
        #user_tab{
            border: 1px solid #CCCCCC;
         
            width: 100%;
            height: 60px;
            padding-top: 6px;
            padding-bottom: 15px;
            border: 1px solid green;
            
            display: inline-flex;
            justify-content: space-evenly;
            vertical-align: top;
            margin: 0 auto;
        }

        .other_user{
            width: 50px; height: 50px;
            background-color: gray;
            border-radius: 50%;
        }
        /* ============================================ */
       

        /* 아래부분 - 컨텐츠부분 - 게시글목록 */
 
       #content2{
        border: 1px solid red;
        width: 60%;
        height: 400px;
       }
       #photo{
        width: 100%;
        height: 50%;
        border: 1px solid blue;
       }
       #tool{
        width: 100%;
        height: 30px;
        border: 1px solid red;
        display: inline-flex;
        flex-wrap: wrap;
        justify-content: space-between;
        align-content: center;
       }
       #like{
        width: 100%;
        height: 20px;
        border: 1px solid blue;
       }
       #comment{
        width: 100%;
        height: 20px;
        border: 1px solid blue;
       }
       #comments_open{
        width: 100%;
        height: 20px;
        border: 1px solid blue;
       }
       #time{
        width: 100%;
        height: 20px;
        border: 1px solid blue;
        padding-bottom: 45px;
        
       } 
       #comment_add{
        width: 90%;
        height: 30px;
        border: 1px solid blue;
       }

        /* ======================================= */
       
    </style>
</head>
<body>
    <!--위-->
    <div id="top"> 
        <div id="logo">
            <img src="logo.png">
        </div>
        <div id="top_search">
            <div id="search_div">
            <input type="text"> <input type="button" value="검색">
            </div>
            <div id="user_page"> </div>
        </div>
    </div>
    <br>
    <hr size="1px" color="#CCCCCC">
    <!--위 끝-->

    <!--아래-->
    <div>
        <!--사이드 네비게이션바-->
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
        <!--사이드 네비게이션바 끝-->

        <!--컨텐츠 내용-->
        <div id="pacebook_contents"> 

            <div id="content_wrap">
                <!-- 친구목록 -->
                <div id="user_tab">
                    <div class="other_user"></div>
                    <div class="other_user"> </div>
                    <div class="other_user"> </div>
                    <div class="other_user"> </div>
                    <div class="other_user"> </div>
                    <div class="other_user"> </div>
                </div>
                <!-- 친구목록 끝 -->
    
    
                <!-- 게시글 내용 -->
                	 <!--id =content2는 게시글 폼입니다-->
                    <div id="content2">
                        <div id="photo">사진, 동영상넣기</div>
                        <div id="tool">
                            <!-- 종아요, 메시지, 공유-------저장 -->
                            <div>
                                <button>좋아요</button>
                                <button>메시지</button>
                                <button>공유</button>
                            </div>
                            <div>
                                <button>저장</button>
                            </div>    
                        </div>
                        <div id="like">좋아요 ??개</div>
                        <div id="comment">게시글 미리보기....</div>
                        <div id="comments_open">댓글 ??개 모두보기</div>
                        <div id="time"><br> ?시간전</div>
                        <input id="comment_add" type="text" placeholder="댓글을 입력">
                    </div>
                <!-- 게시글 내용 끝 -->
            </div>
            
        </div>
        <!--컨텐츠 내용 끝-->
   
   
    </div>  
    <!--아래 끝--> 

</body>
</html>