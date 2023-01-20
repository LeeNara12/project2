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
  

    /* 아래부분 - 컨텐츠부분 - 위 */
    #pacebook_contents {
      /* border: 1px solid rgb(0, 162, 255); */
      width: 60%;
      height: 100%;

      display: inline-block;
      vertical-align: top;
      justify-content: center;
      padding-top: 7%;
      margin-left: 19%;
    

    }

    #content_wrap {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-evenly;

    }

    #top2 {
      /* border: 1px solid blue; */
      height: 224px;

    }

    /* 아래부분 - 컨텐츠부분 - 위 끝 */

    /* 아래부분 - 컨텐츠부분 -아래 */
    .bottom {
      /* border: 1px solid red; */
      width: 100%;
      height: 400px;
      display:flex;

    }

    .other_user {
      width: 100%;
      height: 100%;
      border: 5px solid  #0c0905;
      display: inline-block;
      margin: 0 5px;
    }

    .user_section {
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      margin-top: 16%;
    }

    .user_section p {
      margin: 0;
    }

    .user_section img {
      width: 50px;
      height: 50px;
      border-radius: 50%;
    }

    .contact_section {
      display: flex;
      justify-content: space-between;
      width: 100%;
    }

    .contact_section img {
      width: 33%;
      height: 100px;
    }

    .bottom_section {
      display: flex;
      justify-content: center;
    }

    .main_page {
      /* border: 1px solid blue; */
      width: 100%;
      margin: 50%;
    }

    #wellcome {
      font-size: 50px;
      color: #F39C12
     }

    #wellcome1 {
      padding-left: 10%;

    }

    #button {
      font-size: 155%;
      width: 100%;
      background-color: #F39C12;
      color: black
    }
   
    #main_button{
    height: 39px;
    float: left;
    width: 125px;
    display: block;
    background-color: #F39C12;
    margin-left: 326%;
    margin-top: 8%;
    font-size: 17px
}
    
    #bottom2{
        /* border: 1px solid blue; */
        float: right;

    }


  </style>
<head>

<body>
  
    <!--컨텐츠 내용-->
    <div id="pacebook_contents">
       

      <div id="content_wrap">
        <div id="top2">
          <h1 id="wellcome">Pace Book에 오신 것을 환영합니다</h1>
          <div id="wellcome1">
            
            <p style="font-size: 27px;"><b>사진과 동영상을 보고 싶은 사람을 팔로우 해보세요</b></p>
          </div>
        </div>

        <div class="bottom">
          <div class="other_user">
            <div class="user_section">
              <p>메신저 닉네임</p>
              <p>유저 이름</p>
              <div>
                <img src="https://i.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U"
                  alt="">
              </div>
            </div>
            <div class="contact_section">
              <img src="https://i.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U"
                alt="">
              <img src="https://i.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U"
                alt="">
              <img src="https://i.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U"
                alt="">
            </div>
            <div class="bottom_section">
              <button>팔로우</button>
            </div>
          </div>
          
          <div class="bottom">
            <div class="other_user">
              <div class="user_section">
                <p>메신저 닉네임</p>
                <p>유저 이름</p>
                <div>
                  <img src="https://i.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U"
                    alt="">
                </div>
              </div>
              <div class="contact_section">
                <img src="https://i.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U"
                  alt="">
                <img src="https://i.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U"
                  alt="">
                <img src="https://i.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U"
                  alt="">
              </div>
              <div class="bottom_section">
                <button>팔로우</button>
              </div>
            </div>
        </div>
    </div>    
    <div id="bottom2">
        <footer id="join">
            <button id="main_button" >로그인하기</button>
        </footer>
    </div>
            
        </head>

    </body>

       