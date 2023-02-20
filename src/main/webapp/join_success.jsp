<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/join_success.css">
    
    <script>
    window.onload = function(){
        document.querySelector(".myButton").addEventListener("click", function(){
            let login = document.login;
            login.method = "get";
            login.action = "/project2/login.jsp";
            login.submit();
        });
        document.querySelector(".follow").addEventListener("click", function(){
            let login = document.login;
            login.method = "post";
            login.action = "pacebook";
            login.submit();
        });
    }
    </script>
    

    <head>

    <body>
   <form name = "login">
        <!--컨텐츠 내용-->
        <div id="pacebook_contents">
			 <div id="content_wrap">
                <div id="top2">
                    <h1 id="wellcome">Pace Book에 오신 것을 환영합니다</h1>
                    ${abc }
                    <div id="wellcome1">

                        <p style="font-size: 27px;"><b>사진과 동영상을 보고 싶은 사람을 팔로우 해보세요</b></p>
                    </div>
                </div>

                <div class="bottom">
                    <div class="other_user">
                        <div class="user_section">
                            <div class="bname">
                                <p><b>메신저 닉네임</b></p>
                                <p><b>유저 이름</b></p>
                            </div>
                            <div class="src">
                                <img src="https://i.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U"
                                    alt="">
                            </div>
                        </div>
                        <div class="contact_section">
                            <!-- <img src="https://i.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U"
                                alt=""> -->
                            <img src="data:image/jpeg;base64,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"
                                alt="">
                            <img src="data:image/jpeg;base64,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"
                                alt="">
                        </div>
                        <div class="bottom_section">
                            <a href="#" class="follow">팔로우</a>
                        </div>
                    </div>

                    <div class="bottom">
                        <div class="other_user">
                            <div class="user_section">
                                <div class="bname1">
                                    <p><b>메신저 닉네임</b></p>
                                    <p><b>유저 이름</b></p>
                                </div>
                                <div class="src1">
                                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7yWNG_boOH4cgRzFeABhwl5JCQ3qdre4AcA&usqp=CAU"
                                        alt="">
                                </div>
                            </div>
                            <div class="contact_section">
                                <!-- <img src="https://i.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U"
                                    alt=""> -->
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHw-iYOtVm-urvEY8moMOKKJ5tQnNtq2w3HA&usqp=CAU"
                                    alt="">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQper1tIe_RRDm7cNmSMI_ohY_brl9y1-kwaNnsAe9XW8Mo-BN4uDn03k0XKt-m_up-eas&usqp=CAU"
                                    alt="">
                            </div>
                            <div class="bottom_section">
                                <a href="#" class="follow">팔로우</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="bottom2">
                    <footer id="join">
                        <a href="#" class="myButton">로그인 하러가기</a>
                    </footer>
                </div>
            </form>
</head>

</body>