<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>pacebook</title>
    <link rel="stylesheet" href="css/board.css">
</head>
<body>
    <div id="top">
        <div id="logo">PACEBOOK</div>
        <div id="top_right">
            <button id="back_btn" class="top_btn">
                <svg class="icon" xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-arrow-left-circle" viewBox="0 0 16 16">
                    <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-4.5-.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H11.5z"/>
                </svg>
                <span class="btn_text">뒤로가기</span>
            </button>
            <button id="file_upload_btn" class="top_btn">
                <svg class="icon" xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-folder2-open" viewBox="0 0 16 16">
                    <path d="M1 3.5A1.5 1.5 0 0 1 2.5 2h2.764c.958 0 1.76.56 2.311 1.184C7.985 3.648 8.48 4 9 4h4.5A1.5 1.5 0 0 1 15 5.5v.64c.57.265.94.876.856 1.546l-.64 5.124A2.5 2.5 0 0 1 12.733 15H3.266a2.5 2.5 0 0 1-2.481-2.19l-.64-5.124A1.5 1.5 0 0 1 1 6.14V3.5zM2 6h12v-.5a.5.5 0 0 0-.5-.5H9c-.964 0-1.71-.629-2.174-1.154C6.374 3.334 5.82 3 5.264 3H2.5a.5.5 0 0 0-.5.5V6zm-.367 1a.5.5 0 0 0-.496.562l.64 5.124A1.5 1.5 0 0 0 3.266 14h9.468a1.5 1.5 0 0 0 1.489-1.314l.64-5.124A.5.5 0 0 0 14.367 7H1.633z"/>
                </svg>
                <span class="btn_text">파일 업로드</span>
            </button>
            <button id="make_board_btn" class="top_btn">
                <svg class="icon" xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-plus-square" viewBox="0 0 16 16">
                    <path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
                    <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
                  </svg>
                <span class="btn_text">게시글 작성</span>
            </button>
        </div>
    </div>
    <div id="main">
        <div id="main_left">
            <div id="left_box">
                <div id="profile_box">
                    <div id="profile_top">
                        <div id="profile" class="profile_div">
                            <img class="profile" src="image/20230213_101810.png">
                        </div>
                        <div id="id">
                            <span>user_id</span>
                        </div>
                    </div>
                    <div id="profile_middle">
                        <div id="follow">
                            <span>follow</span>
                        </div>
                        <div id="follow_count">
                            <span>5</span>
                        </div>
                    </div>
                    <div id="profile_bottom">
                        <div id="following">
                            <span>following</span>
                        </div>
                        <div id="following_count">
                            <span>5</span>
                        </div>
                    </div>
                </div>
                <div id="friend_box">
                    <div id="friend_box_top">
                        <span>친구 목록</span>
                    </div>
                    <ul id="friend_list">
                        <li id="friend">
                            <div id="friend_profile" class="profile_div">
                                <img class="profile" src="image/20230213_101810.png">
                            </div>
                            <div id="friend_name">
                                <span>서한수</span>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div id="main_center">
            <div id="center_box">
                <div id="image_box">
                    <ul>
                        <!-- <div id="file_none">
                            <svg class="icon" xmlns="http://www.w3.org/2000/svg" width="100" height="100" fill="currentColor" class="bi bi-plus-square" viewBox="0 0 16 16">
                                <path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
                                <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
                            </svg>
                        </div> -->
                        <li>
                            <img class="image" src="image/20230213_101810.png">
                        </li>
                    </ul>
                </div>
                <div id="content_box">
                    <textarea id="board_content" placeholder="내용을 입력해 주세요">
                    </textarea>
                </div>
            </div>
        </div>
        <div id="main_right">
            <div id="right_box">
                <div id="right_box_top">
                    <span>내 게시글 목록</span>
                </div>
                <table id="my_board_list">
                    <tr>
                        <td id="my_board">
                            <img class="image" src="image/20230213_101810.png">
                        </td>
                        <td id="my_board">
                            <img class="image" src="image/20230213_101810.png">
                        </td>
                        <td id="my_board">
                            <img class="image" src="image/like_btn.png">
                        </td>
                    </tr>
                    <tr>
                        <td id="my_board">
                            <img class="image" src="image/background.png">
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</body>
</html>