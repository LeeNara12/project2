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

        /* 아래부분 - 컨텐츠부분 - 위 */
        #pacebook_contents{
            border: 1px solid rgb(0, 162, 255);
            width: 60%;
            
            display: inline-flex;
            vertical-align: top;
            justify-content: center;
            padding-top: 66px;
            
        }
        #content_wrap{
            display: flex;
            flex-wrap: wrap;
            justify-content: space-evenly;
            
        }
        #top2{
        border:1px solid blue;
            
        }
        /* 아래부분 - 컨텐츠부분 - 위 끝 */

        /* 아래부분 - 컨텐츠부분 -아래 */
     #bottom{
        border:1px solid red;
        width:758px;
        height: 400px;
        display: inline-flex;

     }
     #other_user{
        width:50%;
        height: 100%;
        border: 1px solid green;
     }
     #main_page{
        border:1px solid blue;
        width: 800px;
     }
     


       
    </style>
</head>
<body>
    <!--위-->
    <div id="top"> 
        <div id="logo">
            <img src="logo.png" width="100px" height="30px">
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
                <div  id="top2">
                    <h1 id="wellcome">Pace Book에 오신 것을 환영합니다</h1>
                    <p>사진과 동영상을 보고 싶은 사람을 팔로우 해보세요 </p>
                </div>
                <div id="bottom">
                    <div id="other_user">추천친구</div>
                    <div id="other_user">추천친구</div>
                </div>

            </div>

            <!-- <div id="main_page">
                <button>메인화면으로 가기</button>
            </div> -->

        </div>
        <!--컨텐츠 내용 끝-->