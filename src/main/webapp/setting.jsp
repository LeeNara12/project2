<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>pacebook</title>
    <style>
        body{
    /* margin: 0; */
}
@font-face {
    font-family: 'RixInooAriDuriR';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2207-01@1.0/RixInooAriDuriR.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
/* 상단 */
#top{
    background-color: rgb(141, 141, 194);
    margin: 1px 0px;
    height: 80px;
    padding: 0px 20px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    border-radius: 5px;
    font-family: RixInooAriDuriR;
}
#logo{
    font-size: 40px;
    color: white;
}
#top_right{
    display: flex;
    align-items: center;
    justify-content: space-between;
    width:320px;
    height: 100%;
}
#search{
    display: flex;
    height:50%;
}
#search_btn{
    border: 1px solid white;
    box-sizing: border-box;
    height: 100%;
    color:white;
    background-color: rgb(141, 141, 194);
    width:45px;
}
#search_btn:hover{
    background-color: rgb(108, 108, 153);
}
#search_text{
    border: 1px solid white;
    box-sizing: border-box;
}
#top_profile{
    width:60px;
    height: 60px;
    border-radius: 50%;
    overflow: hidden;
    background-color: rgb(141, 141, 194);
    color: rgb(255, 255, 255);
}

/* 미들 */
#middle{
    height: 815px;
    display: flex;
}
/* 사이드 */
#side{
    display: inline-block;
    width: 20%;
    text-align: center;
    height:100%
}
#profile_box{
    color: white;
    background-color: rgb(141, 141, 194);
    height: 25%;
    box-sizing: border-box;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: space-around;
    border-radius: 5px;
}
#profile{
    overflow: hidden;
    border-radius: 50%;
    width: 100px;
    height: 100px;
}

#show_id{
    font-size: 2vh;
    padding-bottom: 30px;
}

#side_tool > ul > li{
    border: 1px solid rgb(170, 170, 170);
    border-top: 0;
    height: 70px;
    display: flex;
    align-items: center;
    font-size: 2vh;
    font-weight: bold;
    border-radius: 5px;
    padding-left: 30px;
    color:rgb(170, 170, 170);
}
#side_tool > ul > li:hover{
    background-color: rgb(230, 230, 230);
    color: rgb(141, 141, 194);
    border-left: 5px solid rgb(141, 141, 194);
}

/* 메인 */
/* 이쪽에서 작업하시면 됩니다.~!!! */
#main{
    /* border: 1px solid  rgb(141, 141, 194); */
    width: 60%;
    margin: 3%;
    margin-top: 1%;
}
#user_00 {
    /* border: 1px solid  rgb(141, 141, 194); */
    width: 25%;
    height: 30%;
    margin-left: 3%;
    margin-top: 1%;
}
/* 공용 */
ul{
    list-style: none;
    padding: 0;
    margin: 0;
}
input{
    outline: none;
}
.profile{
    width:100%;
    height: 100%;
    object-fit: cover;
}
.icon{
    color:rgb(141, 141, 194);
    vertical-align: top;
}
.back{
    border: 1px solid rgb(141, 141, 194);
    width: 98%;
    height: 70px;
    font-size: 30px;
    border-radius: 5px;
    padding-left: 15px;
    padding-top: 15px;
}
.lala{
    border: 1px solid rgb(141, 141, 194);
    width: 98%;
    height: 70px;
    border-radius: 5px;
    padding-left: 15px;
    padding-top: 15px;
}

.look{
    border: 1px solid rgb(141, 141, 194);
    width: 98%;
    height: 70px;
    border-radius: 5px;
    padding-left: 15px;
}
.out{
    border: 1px solid rgb(141, 141, 194);
    width: 98%;
    height: 70px;
    border-radius: 5px;
    padding-left: 15px;
}
.a{
    border: 1px solid rgb(141, 141, 194);
    width: 98%;
    height: 70px;
    border-radius: 5px;
    padding-left: 15px;
}
.a1{
    border: 1px solid rgb(141, 141, 194);
    width: 98%;
    height: 70px;
    border-radius: 5px;
    padding-left: 15px;
}
.a2{
    border: 1px solid rgb(141, 141, 194);
    width: 98%;
    height: 70px;
    border-radius: 5px;
    padding-left: 15px;
}
.a3 {
    border: 1px solid rgb(141, 141, 194);
    width: 98%;
    height: 70px;
    font-size: 30px;
    color:rgb(141, 141, 194) ;
    border-radius: 5px;
    padding-left: 15px;
    padding-top: 15px;
}
.a4{
    border: 1px solid rgb(141, 141, 194);
    width: 98%;
    height: 70px;
    border-radius: 5px;
    padding-left: 15px;
}
.a5{
    border: 1px solid rgb(141, 141, 194);
    width: 98%;
    height: 70px;
    border-radius: 5px;
    padding-left: 15px;
    padding-top: 15px;
}
.user_01{
    border: 1px solid rgb(141, 141, 194);
    width: 90%;
    height: 50px;
    text-align:right;
    font-size: 23px;
    border-radius: 5px;
    padding-right: 15px;
   
}
.user_02{
    border: 1px solid rgb(141, 141, 194);
    width: 90%;
    height: 50px;
    text-align:right;
    font-size: 23px;
    border-radius: 5px;
    padding-right: 15px;
}
.user_03{
    border: 1px solid rgb(141, 141, 194);
    width: 90%;
    height: 50px;
    text-align:right;
    font-size: 23px;
    border-radius: 5px;
    padding-right: 15px;
}
.user_04{
    border: 1px solid rgb(141, 141, 194);
    width: 90%;
    height: 50px;
    text-align:right;
    font-size: 23px;
    border-radius: 5px;
    padding-right: 15px;
}
.user_05{
    border: 1px solid rgb(141, 141, 194);
    width: 90%;
    height: 50px;
    text-align:right;
    font-size: 23px;
    border-radius: 5px;
    padding-right: 15px;
}
.circle{
    color: rgb(141, 141, 194);
    background-color: rgb(251, 251, 251);
    padding-top: 8px;
   
}
#friend_list{
    border-left: 1px solid rgb(170, 170, 170);
    width:25%;
    height:100%;
    overflow-y:scroll;
}
#friend{
    border:1px solid white;
    height: 10%;
    box-sizing: border-box;
    display: flex;
    align-items: center;
    padding: 0px 30px;
    background-color: rgb(141, 141, 194);
    color: white;
    width:100%;
}
#friend:hover{
    background-color: rgb(108, 108, 153);
}
#right_profile{
    width: 50px;
    height: 50px;
}
#right_name{
    margin-left: 20px;
    width: 150px;
    max-width: 150px;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}
#right_online_mark{
    margin-left: 10px;
    background-color: lawngreen;
    width:10px; height:10px;
    border-radius: 50%;
}
.profile{
    width:100%;
    height: 100%;
    object-fit: cover;
}
.profile_div{
    border-radius: 50%;
    overflow: hidden;
}
::-webkit-scrollbar{
    width:10px;
}
*::-webkit-scrollbar-thumb{
    height: 10%;
    background-color: rgb(141, 141, 194);
    border-radius: 10px;;
}
*::-webkit-scrollbar-track{
    background-color: none;
} */

    </style>
</head>
<body>
    <div id="top">
        <div id="logo">PACEBOOK</div>
        <div id="top_right">
            <div id="search">
                <button id="search_btn">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                        <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                    </svg>
                </button>
                <input id="search_text" type="text">
            </div>
            <div id="top_profile">
                <svg xmlns="http://www.w3.org/2000/svg" width="60" height="60" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                  </svg>
            </div>
        </div>
    </div>
    <div id="middle">
        <div id="side">
            <div id="profile_box">
                <div id="profile">
                    <img class="profile" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3N3Txd_kLDuwVSFGXEszhwRPpbKeyhkqDrZTPZLFHV1mgM-vNWka7Vq9-zz_SLihKU_s&usqp=CAU">
                </div>
                <div id="show_id">
                    <span>user_id</span>
                </div>
            </div>

            <div id="side_tool">
                <ul>
                    <li>
                        <div id="home_btn">
                            <svg class="icon" xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor" class="bi bi-house" viewBox="0 0 16 16">
                                <path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L2 8.207V13.5A1.5 1.5 0 0 0 3.5 15h9a1.5 1.5 0 0 0 1.5-1.5V8.207l.646.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.707 1.5ZM13 7.207V13.5a.5.5 0 0 1-.5.5h-9a.5.5 0 0 1-.5-.5V7.207l5-5 5 5Z"/>
                            </svg>
                            <span>홈</span>
                        </div>
                    </li>
                    <li>
                        <div id="profile_btn">
                            <svg class="icon" xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
                                <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z"/>
                            </svg>
                            <span>프로필</span>
                        </div>
                    </li>
                    <li>
                        <div id="notice_btn">
                            <svg class="icon" xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor" class="bi bi-bell" viewBox="0 0 16 16">
                                <path d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2zM8 1.918l-.797.161A4.002 4.002 0 0 0 4 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4.002 4.002 0 0 0-3.203-3.92L8 1.917zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 1 1 1.99 0A5.002 5.002 0 0 1 13 6c0 .88.32 4.2 1.22 6z"/>
                            </svg>
                            <span>알림</span>
                        </div>
                    </li>
                    <li>
                        <div id="message_btn">
                            <svg class="icon" xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor" class="bi bi-chat" viewBox="0 0 16 16">
                                <path d="M2.678 11.894a1 1 0 0 1 .287.801 10.97 10.97 0 0 1-.398 2c1.395-.323 2.247-.697 2.634-.893a1 1 0 0 1 .71-.074A8.06 8.06 0 0 0 8 14c3.996 0 7-2.807 7-6 0-3.192-3.004-6-7-6S1 4.808 1 8c0 1.468.617 2.83 1.678 3.894zm-.493 3.905a21.682 21.682 0 0 1-.713.129c-.2.032-.352-.176-.273-.362a9.68 9.68 0 0 0 .244-.637l.003-.01c.248-.72.45-1.548.524-2.319C.743 11.37 0 9.76 0 8c0-3.866 3.582-7 8-7s8 3.134 8 7-3.582 7-8 7a9.06 9.06 0 0 1-2.347-.306c-.52.263-1.639.742-3.468 1.105z"/>
                            </svg>
                            <span>메세지</span>
                        </div>
                    </li>
                    <li>
                        <div id="make_btn">
                            <svg class="icon" xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor" class="bi bi-plus-square" viewBox="0 0 16 16">
                                <path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
                                <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
                            </svg>
                            <span>만들기</span>
                        </div>
                    </li>
                    <li>
                        <div id="set_btn">
                            <svg class="icon" xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor" class="bi bi-gear" viewBox="0 0 16 16">
                                <path d="M8 4.754a3.246 3.246 0 1 0 0 6.492 3.246 3.246 0 0 0 0-6.492zM5.754 8a2.246 2.246 0 1 1 4.492 0 2.246 2.246 0 0 1-4.492 0z"/>
                                <path d="M9.796 1.343c-.527-1.79-3.065-1.79-3.592 0l-.094.319a.873.873 0 0 1-1.255.52l-.292-.16c-1.64-.892-3.433.902-2.54 2.541l.159.292a.873.873 0 0 1-.52 1.255l-.319.094c-1.79.527-1.79 3.065 0 3.592l.319.094a.873.873 0 0 1 .52 1.255l-.16.292c-.892 1.64.901 3.434 2.541 2.54l.292-.159a.873.873 0 0 1 1.255.52l.094.319c.527 1.79 3.065 1.79 3.592 0l.094-.319a.873.873 0 0 1 1.255-.52l.292.16c1.64.893 3.434-.902 2.54-2.541l-.159-.292a.873.873 0 0 1 .52-1.255l.319-.094c1.79-.527 1.79-3.065 0-3.592l-.319-.094a.873.873 0 0 1-.52-1.255l.16-.292c.893-1.64-.902-3.433-2.541-2.54l-.292.159a.873.873 0 0 1-1.255-.52l-.094-.319zm-2.633.283c.246-.835 1.428-.835 1.674 0l.094.319a1.873 1.873 0 0 0 2.693 1.115l.291-.16c.764-.415 1.6.42 1.184 1.185l-.159.292a1.873 1.873 0 0 0 1.116 2.692l.318.094c.835.246.835 1.428 0 1.674l-.319.094a1.873 1.873 0 0 0-1.115 2.693l.16.291c.415.764-.42 1.6-1.185 1.184l-.291-.159a1.873 1.873 0 0 0-2.693 1.116l-.094.318c-.246.835-1.428.835-1.674 0l-.094-.319a1.873 1.873 0 0 0-2.692-1.115l-.292.16c-.764.415-1.6-.42-1.184-1.185l.159-.291A1.873 1.873 0 0 0 1.945 8.93l-.319-.094c-.835-.246-.835-1.428 0-1.674l.319-.094A1.873 1.873 0 0 0 3.06 4.377l-.16-.292c-.415-.764.42-1.6 1.185-1.184l.292.159a1.873 1.873 0 0 0 2.692-1.115l.094-.319z"/>
                            </svg>
                            <span>설정</span>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <div id="main">
            <div class="back">
            <button>
                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-arrow-90deg-left" viewBox="0 0 16 16">
                <path fill-rule="evenodd" d="M1.146 4.854a.5.5 0 0 1 0-.708l4-4a.5.5 0 1 1 .708.708L2.707 4H12.5A2.5 2.5 0 0 1 15 6.5v8a.5.5 0 0 1-1 0v-8A1.5 1.5 0 0 0 12.5 5H2.707l3.147 3.146a.5.5 0 1 1-.708.708l-4-4z"/>
              </svg>
             </button> 
              설정
            </div>
            <div class="lala">- 계정<br>
                활성화<input type="radio">
                비활성화<input type="radio" >
            </div>
            <div class="look"><br>- 게시글 저장 페이지 보기</div>
            <div class="out"><br>- 로그아웃</div>
            <div class="a"><br>- 휴면계정</div>
            <div class="a1"><br>- 계정탈퇴</div>
            <div class="a2"><br>- 개인정보 변경</div>
            <div class="a3">PACEBOOK</div>
            <div class="a4"><br>계정 센터</div>
            <div class="a5"> 계정 및 게시글 작성 페이지 보기, 로그아웃, 휴면계정, 
                                    <br> 계정탈퇴, 개인정보 변경을 관리 하새요.
            </div>
        </div>
        <ul id="friend_list">
            <li id="friend">
                <div id="right_profile"class="profile_div">
                    <img class="profile" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3N3Txd_kLDuwVSFGXEszhwRPpbKeyhkqDrZTPZLFHV1mgM-vNWka7Vq9-zz_SLihKU_s&usqp=CAU">
                </div>
                <div id="right_name">
                    <span>user_ko</span>
                </div>
                <div id="right_online_mark">
                </div>
            </li>
            <li id="friend">
                <div id="right_profile"class="profile_div">
                    <img class="profile" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3N3Txd_kLDuwVSFGXEszhwRPpbKeyhkqDrZTPZLFHV1mgM-vNWka7Vq9-zz_SLihKU_s&usqp=CAU">
                </div>
                <div id="right_name">
                    <span>user_ao</span>
                </div>
                <div id="right_online_mark">
                </div>
            </li>
            <li id="friend">
                <div id="right_profile"class="profile_div">
                    <img class="profile" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3N3Txd_kLDuwVSFGXEszhwRPpbKeyhkqDrZTPZLFHV1mgM-vNWka7Vq9-zz_SLihKU_s&usqp=CAU">
                </div>
                <div id="right_name">
                    <span>user_so</span>
                </div>
                <div id="right_online_mark">
                </div>
            </li>
            <li id="friend">
                <div id="right_profile"class="profile_div">
                    <img class="profile" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3N3Txd_kLDuwVSFGXEszhwRPpbKeyhkqDrZTPZLFHV1mgM-vNWka7Vq9-zz_SLihKU_s&usqp=CAU">
                </div>
                <div id="right_name">
                    <span>user_do</span>
                </div>
                <div id="right_online_mark">
                </div>
            </li>
        </ul>
        
        <!-- <ul id="friend_list1">
            <li id="friend1">
                <div id="right_profile"class="profile_div1">
                    <img class="profile" src="assets/image/background.png">
                </div>
                <div id="right_name">
                    <span>user_ko</span>
                </div>
                <div id="right_online_mark">
                </div>
            </li>
        </ul>
        <ul id="friend_list2">
            <li id="friend2">
                <div id="right_profile"class="profile_div2">
                    <img class="profile" src="assets/image/background.png">
                </div>
                <div id="right_name2">
                    <span>user_ko</span>
                </div>
                <div id="right_online_mark2">
                </div>
            </li>
        </ul>
        <ul id="friend_list3">
            <li id="friend3">
                <div id="right_profile"class="profile_div3">
                    <img class="profile" src="assets/image/background.png">
                </div>
                <div id="right_name3">
                    <span>user_ko</span>
                </div>
                <div id="right_online_mark3">
                </div>
            </li>
        </ul> -->
        <!-- <div id="user_00">
            <div class="user_01">
                    <svg xmlns="http://www.w3.org/2000/svg" width="27" height="27" fill="currentColor" class="circle" viewBox="0 0 16 16">
                        <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                        <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                    </svg>
                <span class="user_pw">user_pw</span>
            </div>
            <div class="user_02">
                <svg xmlns="http://www.w3.org/2000/svg" width="27" height="27" fill="currentColor" class="circle" viewBox="0 0 16 16">
                    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                </svg>
                <span>user_ki</span>
            </div>
            <div class="user_03">
                <svg xmlns="http://www.w3.org/2000/svg" width="27" height="27" fill="currentColor" class="circle" viewBox="0 0 16 16">
                    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                </svg>
                <span> user_po</span>
            </div>
            <div class="user_04">
                <svg xmlns="http://www.w3.org/2000/svg" width="27" height="27" fill="currentColor" class="circle" viewBox="0 0 16 16">
                    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                </svg>
                <span>user_lo</span>
            </div>
            <div class="user_05">
                <svg xmlns="http://www.w3.org/2000/svg" width="27" height="27" fill="currentColor" class="circle" viewBox="0 0 16 16">
                    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                </svg>
                <span>user_ie</span>
            </div>
        </div> -->
    </div>
</body>
</html>