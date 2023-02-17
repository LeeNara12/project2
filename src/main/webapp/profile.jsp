<%@page import="VO.PaceUserVO"%>
<%@page import="project2.PaceService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>pacebook2_profile</title>
     <link rel="stylesheet" href="/project2/css/profile.css">
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>pacebook</title>
        <link rel="stylesheet" href="css/main2.css">
    </head>

<body>
<%-- <%
	int user_no = (int)request.getAttribute("user_no");
	PaceService ps = new PaceService();
	PaceUserVO vo = new PaceUserVO();
	vo = ps.getProfile(user_no);
	String profile = vo.getUser_profile();
	String name = vo.getUser_name();
%>  --%>
    <div id="top">
        <div id="logo">PACEBOOK</div>
        <div id="top_right">
            <div id="search">
                <button id="search_btn">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                        class="bi bi-search" viewBox="0 0 16 16">
                        <path
                            d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                    </svg>
                </button>
                <input id="search_text" type="text">
            </div>
            <div id="top_profile">
                <img class="profile"
                    src="http://image.dongascience.com/Photo/2022/06/6982fdc1054c503af88bdefeeb7c8fa8.jpg">
            </div>
        </div>
    </div>
    <div id="middle">
        <div id="side">
            <div id="profile_box">
                <div id="profile">
                    <img class="profile"
                        src="http://image.dongascience.com/Photo/2022/06/6982fdc1054c503af88bdefeeb7c8fa8.jpg">
                </div>
                <div id="show_id">
                    <span>강아지</span>
                </div>
                <div id="followme">
                    <a href="#" class="follow">게시물</a>
                    <a href="#" class="follow">팔로우000</a>
                    <a href="#" class="follow">팔로워000</a>
                </div>

            </div>
            <div id="side_tool">
                <ul>
                    <li>
                        <div id="home_btn">
                            <svg class="icon" xmlns="http://www.w3.org/2000/svg" width="22" height="22"
                                fill="currentColor" class="bi bi-house" viewBox="0 0 16 16">
                                <path
                                    d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L2 8.207V13.5A1.5 1.5 0 0 0 3.5 15h9a1.5 1.5 0 0 0 1.5-1.5V8.207l.646.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.707 1.5ZM13 7.207V13.5a.5.5 0 0 1-.5.5h-9a.5.5 0 0 1-.5-.5V7.207l5-5 5 5Z" />
                            </svg>
                            <span>홈</span>
                        </div>
                    </li>
                    <li>
                        <div id="profile_btn">
                            <svg class="icon" xmlns="http://www.w3.org/2000/svg" width="22" height="22"
                                fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
                                <path
                                    d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z" />
                            </svg>
                            <span>프로필</span>
                        </div>
                    </li>
                    <li>
                        <div id="notice_btn">
                            <svg class="icon" xmlns="http://www.w3.org/2000/svg" width="22" height="22"
                                fill="currentColor" class="bi bi-bell" viewBox="0 0 16 16">
                                <path
                                    d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2zM8 1.918l-.797.161A4.002 4.002 0 0 0 4 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4.002 4.002 0 0 0-3.203-3.92L8 1.917zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 1 1 1.99 0A5.002 5.002 0 0 1 13 6c0 .88.32 4.2 1.22 6z" />
                            </svg>
                            <span>알림</span>
                        </div>
                    </li>
                    <li>
                        <div id="message_btn">
                            <svg class="icon" xmlns="http://www.w3.org/2000/svg" width="22" height="22"
                                fill="currentColor" class="bi bi-chat" viewBox="0 0 16 16">
                                <path
                                    d="M2.678 11.894a1 1 0 0 1 .287.801 10.97 10.97 0 0 1-.398 2c1.395-.323 2.247-.697 2.634-.893a1 1 0 0 1 .71-.074A8.06 8.06 0 0 0 8 14c3.996 0 7-2.807 7-6 0-3.192-3.004-6-7-6S1 4.808 1 8c0 1.468.617 2.83 1.678 3.894zm-.493 3.905a21.682 21.682 0 0 1-.713.129c-.2.032-.352-.176-.273-.362a9.68 9.68 0 0 0 .244-.637l.003-.01c.248-.72.45-1.548.524-2.319C.743 11.37 0 9.76 0 8c0-3.866 3.582-7 8-7s8 3.134 8 7-3.582 7-8 7a9.06 9.06 0 0 1-2.347-.306c-.52.263-1.639.742-3.468 1.105z" />
                            </svg>
                            <span>메세지</span>
                        </div>
                    </li>
                    <li>
                        <div id="make_btn">
                            <svg class="icon" xmlns="http://www.w3.org/2000/svg" width="22" height="22"
                                fill="currentColor" class="bi bi-plus-square" viewBox="0 0 16 16">
                                <path
                                    d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z" />
                                <path
                                    d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z" />
                            </svg>
                            <span>만들기</span>
                        </div>
                    </li>
                    <li>
                        <div id="set_btn">
                            <svg class="icon" xmlns="http://www.w3.org/2000/svg" width="22" height="22"
                                fill="currentColor" class="bi bi-gear" viewBox="0 0 16 16">
                                <path
                                    d="M8 4.754a3.246 3.246 0 1 0 0 6.492 3.246 3.246 0 0 0 0-6.492zM5.754 8a2.246 2.246 0 1 1 4.492 0 2.246 2.246 0 0 1-4.492 0z" />
                                <path
                                    d="M9.796 1.343c-.527-1.79-3.065-1.79-3.592 0l-.094.319a.873.873 0 0 1-1.255.52l-.292-.16c-1.64-.892-3.433.902-2.54 2.541l.159.292a.873.873 0 0 1-.52 1.255l-.319.094c-1.79.527-1.79 3.065 0 3.592l.319.094a.873.873 0 0 1 .52 1.255l-.16.292c-.892 1.64.901 3.434 2.541 2.54l.292-.159a.873.873 0 0 1 1.255.52l.094.319c.527 1.79 3.065 1.79 3.592 0l.094-.319a.873.873 0 0 1 1.255-.52l.292.16c1.64.893 3.434-.902 2.54-2.541l-.159-.292a.873.873 0 0 1 .52-1.255l.319-.094c1.79-.527 1.79-3.065 0-3.592l-.319-.094a.873.873 0 0 1-.52-1.255l.16-.292c.893-1.64-.902-3.433-2.541-2.54l-.292.159a.873.873 0 0 1-1.255-.52l-.094-.319zm-2.633.283c.246-.835 1.428-.835 1.674 0l.094.319a1.873 1.873 0 0 0 2.693 1.115l.291-.16c.764-.415 1.6.42 1.184 1.185l-.159.292a1.873 1.873 0 0 0 1.116 2.692l.318.094c.835.246.835 1.428 0 1.674l-.319.094a1.873 1.873 0 0 0-1.115 2.693l.16.291c.415.764-.42 1.6-1.185 1.184l-.291-.159a1.873 1.873 0 0 0-2.693 1.116l-.094.318c-.246.835-1.428.835-1.674 0l-.094-.319a1.873 1.873 0 0 0-2.692-1.115l-.292.16c-.764.415-1.6-.42-1.184-1.185l.159-.291A1.873 1.873 0 0 0 1.945 8.93l-.319-.094c-.835-.246-.835-1.428 0-1.674l.319-.094A1.873 1.873 0 0 0 3.06 4.377l-.16-.292c-.415-.764.42-1.6 1.185-1.184l.292.159a1.873 1.873 0 0 0 2.692-1.115l.094-.319z" />
                            </svg>
                            <span>설정</span>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <div id="main">
            <div id="main_profile">
                <div>
                    <form>
                        <div id="show_boards">
                            <a href="#" class="myButton">게시물</a>
                            <a href="#" class="myButton">저장됨</a>
                            <a href="#" class="myButton">태그됨</a>
                        </div>
                        <div id="image_box">
                            <div>
                                <div class="contact_section">
                                    <a href="naver"><img style="width: 300px;height: 300px;border-radius: 30px;"
                                            src="http://image.dongascience.com/Photo/2022/06/6982fdc1054c503af88bdefeeb7c8fa8.jpg"
                                            alt=""></a>
                                    <a href="naver"><img style="width: 300px;height: 300px;border-radius: 30px;"
                                            src="http://image.dongascience.com/Photo/2022/06/6982fdc1054c503af88bdefeeb7c8fa8.jpg"
                                            alt=""></a>
                                    <a href="naver"><img style="width: 300px;height: 300px;border-radius: 30px;"
                                            src="http://image.dongascience.com/Photo/2022/06/6982fdc1054c503af88bdefeeb7c8fa8.jpg"
                                            alt=""></a>
                                </div>
                            </div>
                            <div class="contact_section">
                                <a href="naver"><img style="width: 300px;height: 300px;border-radius: 30px;"
                                        src="http://image.dongascience.com/Photo/2022/06/6982fdc1054c503af88bdefeeb7c8fa8.jpg"
                                        alt=""></a>
                                <a href="naver"><img style="width: 300px;height: 300px;border-radius: 30px;"
                                        src="http://image.dongascience.com/Photo/2022/06/6982fdc1054c503af88bdefeeb7c8fa8.jpg"
                                        alt=""></a>
                                <a href="naver"><img style="width: 300px;height: 300px;border-radius: 30px;"
                                        src="http://image.dongascience.com/Photo/2022/06/6982fdc1054c503af88bdefeeb7c8fa8.jpg"
                                        alt=""></a>
                            </div>

                            <div class="contact_section">
                                <a href="naver"><img style="width: 300px;height: 300px;border-radius: 30px;"
                                        src="http://image.dongascience.com/Photo/2022/06/6982fdc1054c503af88bdefeeb7c8fa8.jpg"
                                        alt=""></a>
                                <a href="naver"><img style="width: 300px;height: 300px;border-radius: 30px;"
                                        src="http://image.dongascience.com/Photo/2022/06/6982fdc1054c503af88bdefeeb7c8fa8.jpg"
                                        alt=""></a>
                                <a href="naver"><img style="width: 300px;height: 300px;border-radius: 30px;"
                                        src="http://image.dongascience.com/Photo/2022/06/6982fdc1054c503af88bdefeeb7c8fa8.jpg"
                                        alt=""></a>
                            </div>
                            <div class="contact_section">
                                <a href="naver"><img style="width: 300px;height: 300px;border-radius: 30px;"
                                        src="http://image.dongascience.com/Photo/2022/06/6982fdc1054c503af88bdefeeb7c8fa8.jpg"
                                        alt=""></a>
                                <a href="naver"><img style="width: 300px;height: 300px;border-radius: 30px;"
                                        src="http://image.dongascience.com/Photo/2022/06/6982fdc1054c503af88bdefeeb7c8fa8.jpg"
                                        alt=""></a>
                                <a href="naver"><img style="width: 300px;height: 300px;border-radius: 30px;"
                                        src="http://image.dongascience.com/Photo/2022/06/6982fdc1054c503af88bdefeeb7c8fa8.jpg"
                                        alt=""></a>
                            </div>
                            <div class="contact_section">
                                <a href="naver"><img style="width: 300px;height: 300px;border-radius: 30px;"
                                        src="http://image.dongascience.com/Photo/2022/06/6982fdc1054c503af88bdefeeb7c8fa8.jpg"
                                        alt=""></a>
                                <a href="naver"><img style="width: 300px;height: 300px;border-radius: 30px;"
                                        src="http://image.dongascience.com/Photo/2022/06/6982fdc1054c503af88bdefeeb7c8fa8.jpg"
                                        alt=""></a>
                                <a href="naver"><img style="width: 300px;height: 300px;border-radius: 30px;"
                                        src="http://image.dongascience.com/Photo/2022/06/6982fdc1054c503af88bdefeeb7c8fa8.jpg"
                                        alt=""></a>
                            </div>
                            <div class="contact_section">
                                <a href="naver"><img style="width: 300px;height: 300px;border-radius: 30px;"
                                        src="http://image.dongascience.com/Photo/2022/06/6982fdc1054c503af88bdefeeb7c8fa8.jpg"
                                        alt=""></a>
                                <a href="naver"><img style="width: 300px;height: 300px;border-radius: 30px;"
                                        src="http://image.dongascience.com/Photo/2022/06/6982fdc1054c503af88bdefeeb7c8fa8.jpg"
                                        alt=""></a>
                                <a href="naver"><img style="width: 300px;height: 300px;border-radius: 30px;"
                                        src="http://image.dongascience.com/Photo/2022/06/6982fdc1054c503af88bdefeeb7c8fa8.jpg"
                                        alt=""></a>
                            </div>
                        </div>
                </div>
                </form>
            </div>
        </div>
    </div>
    </div>
</body>

</html>