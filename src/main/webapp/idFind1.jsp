<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>아이디찾기1</title>
    <link rel="stylesheet" href="css/idFind1.css">
</head>
<style>

</style>

<body>
    <div id="wrap">

        <div id="top_box">
            <span id="margin_left">아이디찾기</span>
        </div>

        <div id="content">
            <div id="content_wrap">

                <div class="detail_wrap" id="margin_top">
                    <div class="name"> <span class="margin_left2">이름</span> <span class="star">*</span></div>
                    <div class="detail">
                        <input class="input_text" type="text" >
                    </div>
                </div>
                <div class="detail_wrap">
                    <div class="name"> <span class="margin_left2">생년월일</span> 
                        <span class="star">*</span>
                    </div>
                    <div class="detail">
                        <input class="input_text" type="text" >
                    </div>
                    <span id="margin_left2">예)19990101</span>
                </div>
                <div class="detail_wrap" id="border_bottom">
                    <div class="name"> <span class="margin_left2">휴대전화</span> <span class="star">*</span></div>
                    <div class="detail">
                        <input class="input_block" type="text" >
                        <span id="hyphen">-</span>
                        <input class="input_block" type="text" >
                        <span id="hyphen">-</span>
                        <input class="input_block" type="text" >
                    </div>
                </div>
                <div id="idFind_wrap">
                    <input id="idFind_btn" type="button" value="아이디찾기">
                    <span id="space"></span>
                    <a id="idFind_btn" href="login.jsp"><input id="idFind_btn1" type="button" value="로그인하러가기"></a>
                </div>

            </div>
           
        </div>

    </div>
</body>
</html>
</html>