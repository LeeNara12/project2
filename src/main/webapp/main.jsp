<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="Service.*"
    import="Algorithm.*"
    import="VO.*" 
    import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>pacebook</title>
    <link rel="stylesheet" href="/project2/css/main.css">
    <script type="text/javascript" src="/project2/script/main.js"></script>
</head>

<body>
    <div id="top">
        <a href="/project2/pacebook/main" id="logo">PACEBOOK</a>
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
            <div id="top_profile" class="profile_div">
                <img class="profile" src="/project2/${sessionScope.puvo.user_profile }">
            </div>
        </div>
    </div>
    <div id="middle">
        <div id="side">
            <div id="profile_box">
                <div id="profile" class="profile_div">
                    <img class="profile" src="/project2/${sessionScope.puvo.user_profile }">
                </div>
                <div id="show_id">
                    <span>${sessionScope.puvo.user_id }</span>
                </div>
            </div>
            <div id="side_tool">
                <ul>
                    <li id="home_btn" class="side_btn" >
                        <a href="/project2/pacebook/main" class="side_atag">
                            <svg class="icon" xmlns="http://www.w3.org/2000/svg" width="22" height="22"
                                fill="currentColor" class="bi bi-house" viewBox="0 0 16 16">
                                <path
                                    d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L2 8.207V13.5A1.5 1.5 0 0 0 3.5 15h9a1.5 1.5 0 0 0 1.5-1.5V8.207l.646.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.707 1.5ZM13 7.207V13.5a.5.5 0 0 1-.5.5h-9a.5.5 0 0 1-.5-.5V7.207l5-5 5 5Z" />
                            </svg>
                            <span>???</span>
                        </a>
                    </li>
                    <li id="profile_btn" class="side_btn">
                        <a href="/project2/pacebook/profile?user_no=${sessionScope.puvo.user_no }" class="side_atag">
                            <svg class="icon" xmlns="http://www.w3.org/2000/svg" width="22" height="22"
                                fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
                                <path
                                    d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z" />
                            </svg>
                            <div class="side_btn_text">
                                <span>?????????</span>
                            </div>
                        </a>
                    </li>
                    <li id="notice_btn" class="side_btn">
                        <div>
                            <svg class="icon" xmlns="http://www.w3.org/2000/svg" width="22" height="22"
                                fill="currentColor" class="bi bi-bell" viewBox="0 0 16 16">
                                <path
                                    d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2zM8 1.918l-.797.161A4.002 4.002 0 0 0 4 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4.002 4.002 0 0 0-3.203-3.92L8 1.917zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 1 1 1.99 0A5.002 5.002 0 0 1 13 6c0 .88.32 4.2 1.22 6z" />
                            </svg>
                            <span>??????</span>
                        </div>
                    </li>
                    <li id="message_btn" class="side_btn">
                        <div>
                            <svg class="icon" xmlns="http://www.w3.org/2000/svg" width="22" height="22"
                                fill="currentColor" class="bi bi-chat" viewBox="0 0 16 16">
                                <path
                                    d="M2.678 11.894a1 1 0 0 1 .287.801 10.97 10.97 0 0 1-.398 2c1.395-.323 2.247-.697 2.634-.893a1 1 0 0 1 .71-.074A8.06 8.06 0 0 0 8 14c3.996 0 7-2.807 7-6 0-3.192-3.004-6-7-6S1 4.808 1 8c0 1.468.617 2.83 1.678 3.894zm-.493 3.905a21.682 21.682 0 0 1-.713.129c-.2.032-.352-.176-.273-.362a9.68 9.68 0 0 0 .244-.637l.003-.01c.248-.72.45-1.548.524-2.319C.743 11.37 0 9.76 0 8c0-3.866 3.582-7 8-7s8 3.134 8 7-3.582 7-8 7a9.06 9.06 0 0 1-2.347-.306c-.52.263-1.639.742-3.468 1.105z" />
                            </svg>
                            <span>?????????</span>
                        </div>
                    </li>
                    <li id="make_btn" class="side_btn">
                        <a href="/project2/pacebook/makeboard" class="side_atag">
                            <svg class="icon" xmlns="http://www.w3.org/2000/svg" width="22" height="22"
                                fill="currentColor" class="bi bi-plus-square" viewBox="0 0 16 16">
                                <path
                                    d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z" />
                                <path
                                    d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z" />
                            </svg>
                            <span>?????????</span>
                        </a>
                    </li>
                    <li id="set_btn" class="side_btn">
                        <a href="/project2/pacebook/setting" class="side_atag">
                            <svg class="icon" xmlns="http://www.w3.org/2000/svg" width="22" height="22"
                                fill="currentColor" class="bi bi-gear" viewBox="0 0 16 16">
                                <path
                                    d="M8 4.754a3.246 3.246 0 1 0 0 6.492 3.246 3.246 0 0 0 0-6.492zM5.754 8a2.246 2.246 0 1 1 4.492 0 2.246 2.246 0 0 1-4.492 0z" />
                                <path
                                    d="M9.796 1.343c-.527-1.79-3.065-1.79-3.592 0l-.094.319a.873.873 0 0 1-1.255.52l-.292-.16c-1.64-.892-3.433.902-2.54 2.541l.159.292a.873.873 0 0 1-.52 1.255l-.319.094c-1.79.527-1.79 3.065 0 3.592l.319.094a.873.873 0 0 1 .52 1.255l-.16.292c-.892 1.64.901 3.434 2.541 2.54l.292-.159a.873.873 0 0 1 1.255.52l.094.319c.527 1.79 3.065 1.79 3.592 0l.094-.319a.873.873 0 0 1 1.255-.52l.292.16c1.64.893 3.434-.902 2.54-2.541l-.159-.292a.873.873 0 0 1 .52-1.255l.319-.094c1.79-.527 1.79-3.065 0-3.592l-.319-.094a.873.873 0 0 1-.52-1.255l.16-.292c.893-1.64-.902-3.433-2.541-2.54l-.292.159a.873.873 0 0 1-1.255-.52l-.094-.319zm-2.633.283c.246-.835 1.428-.835 1.674 0l.094.319a1.873 1.873 0 0 0 2.693 1.115l.291-.16c.764-.415 1.6.42 1.184 1.185l-.159.292a1.873 1.873 0 0 0 1.116 2.692l.318.094c.835.246.835 1.428 0 1.674l-.319.094a1.873 1.873 0 0 0-1.115 2.693l.16.291c.415.764-.42 1.6-1.185 1.184l-.291-.159a1.873 1.873 0 0 0-2.693 1.116l-.094.318c-.246.835-1.428.835-1.674 0l-.094-.319a1.873 1.873 0 0 0-2.692-1.115l-.292.16c-.764.415-1.6-.42-1.184-1.185l.159-.291A1.873 1.873 0 0 0 1.945 8.93l-.319-.094c-.835-.246-.835-1.428 0-1.674l.319-.094A1.873 1.873 0 0 0 3.06 4.377l-.16-.292c-.415-.764.42-1.6 1.185-1.184l.292.159a1.873 1.873 0 0 0 2.692-1.115l.094-.319z" />
                            </svg>
                            <span>??????</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div id="main">
            <div id=notice_page>
                <div id="notice_top">
                    <div id="notice_top_text">
                        <span>??????</span>
                    </div>
                    <button id="notice_close">
                        <svg xmlns="http://www.w3.org/2000/svg" width="29" height="29" fill="currentColor"
                            viewBox="0 0 16 16">
                            <path
                                d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
                        </svg>
                    </button>
                </div>
                <ul id="notice_list">
                    <li id="notice">
                        <div id="notice_profile" class="profile_div">
                            <img class="profile" src="javascript:void(0);">
                        </div>
                        <span id="notice_text">
                            ??????????????? ????????? ????????????.
                        </span>
                        <div id="notice_check"></div>
                    </li>
                </ul>
            </div>
            <div id="main_top">
                <ul id="profile_list">
                	<c:forEach var="followUser" items="${followList }">
	                    <li id="pl" data-un="${followUser.user_no}">
	                        <div class="friend_profile_outline1">
		                    	<a href="/project2/pacebook/profile?user_no=${followUser.user_no }" class="friend_profile_a">
		                           	<div class="friend_profile_outline2">
		                                <div id="friend_profile" class="profile_div">
			                            	<img class="profile" src="/project2/${followUser.user_profile }">
		                     			</div>
		                            </div>
		                    	</a>
	                       	</div>
	                        <div id="friend_profile_name">
	                            <span>${followUser.user_name }</span>
	                        </div>
	                    </li>
                	</c:forEach>
                </ul>
            </div>
            <div id="main_middle">
                <div id="board_area">
                    <ul id="board_list">
                    <c:forEach var="board" items="${boardList }">
                    <c:set var="curBoard" value="${board }"/>
                    <%
                    	PaceService service = new PaceService();
                    	PaceBoardVO curPbvo = (PaceBoardVO) pageContext.getAttribute("curBoard");
                    	int boardUser_no = curPbvo.getUser_no();
                    	PaceUserVO boardPuvo = service.getUserInfo(boardUser_no);
                    	pageContext.setAttribute("boardPuvo", boardPuvo);
                    %>
                        <li id="board">
                            <div id="board_top">
                                <div id="board_top_left">
                                    <div id="board_profile" class="profile_div">
                                        <img class="profile" src="/project2/${boardPuvo.user_profile }">
                                    </div>
                                    <div id="board_id">
                                    	${boardPuvo.user_id }
                                    </div>
                                </div>
                                <button id="board_menu" class="board_btn">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="29" height="29" fill="currentColor"
                                        class="bi bi-list" viewBox="0 0 16 16">
                                        <path fill-rule="evenodd"
                                            d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z" />
                                    </svg>
                                </button>
                                <div id="board_menu_box">
                                    <div id="board_menu_arrow"></div>
                                    <c:if test="${sessionScope.user_no != boardPuvo.user_no}">
                                        <c:set var="service" value="<%= service %>"/>
                                        <button class="board_menus board_follow_btn" data-un="${boardPuvo.user_no }">
                                            <c:choose>
                                                <c:when test="${service.isFollow(sessionScope.user_no, boardPuvo.user_no)}">
                                                    <span>????????? ??????</span>
                                                </c:when>
                                                <c:otherwise>
                                                    <span>?????????</span>
                                                </c:otherwise>
                                            </c:choose>
                                        </button>
                                    </c:if>
                                    <button class="board_menus">
                                        ????????? ????????????
                                    </button>
                                </div>
                            </div>
                            <div id="board_image">
                                <img class="board_image" src="/project2/${board.board_url }">
                            </div>
                            <div id="board_tool">
                                <div id="board_tool_left">
                                    <button id="board_like_btn" class="board_btn">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="29" height="29"
                                            fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16">
                                            <path
                                                d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z" />
                                        </svg>
                                    </button>
                                    <button id="board_comment_btn" class="board_btn">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="29" height="29"
                                            fill="currentColor" class="bi bi-chat" viewBox="0 0 16 16">
                                            <path
                                                d="M2.678 11.894a1 1 0 0 1 .287.801 10.97 10.97 0 0 1-.398 2c1.395-.323 2.247-.697 2.634-.893a1 1 0 0 1 .71-.074A8.06 8.06 0 0 0 8 14c3.996 0 7-2.807 7-6 0-3.192-3.004-6-7-6S1 4.808 1 8c0 1.468.617 2.83 1.678 3.894zm-.493 3.905a21.682 21.682 0 0 1-.713.129c-.2.032-.352-.176-.273-.362a9.68 9.68 0 0 0 .244-.637l.003-.01c.248-.72.45-1.548.524-2.319C.743 11.37 0 9.76 0 8c0-3.866 3.582-7 8-7s8 3.134 8 7-3.582 7-8 7a9.06 9.06 0 0 1-2.347-.306c-.52.263-1.639.742-3.468 1.105z" />
                                        </svg>
                                    </button>
                                    <button id="board_share_btn" class="board_btn">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="29" height="29"
                                            fill="currentColor" class="bi bi-send" viewBox="0 0 16 16">
                                            <path
                                                d="M15.854.146a.5.5 0 0 1 .11.54l-5.819 14.547a.75.75 0 0 1-1.329.124l-3.178-4.995L.643 7.184a.75.75 0 0 1 .124-1.33L15.314.037a.5.5 0 0 1 .54.11ZM6.636 10.07l2.761 4.338L14.13 2.576 6.636 10.07Zm6.787-8.201L1.591 6.602l4.339 2.76 7.494-7.493Z" />
                                        </svg>
                                    </button>
                                </div>
                                <button id="board_save_btn" class="board_btn">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="29" height="29" fill="currentColor"
                                        class="bi bi-bookmark" viewBox="0 0 16 16">
                                        <path
                                            d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.777.416L8 13.101l-5.223 2.815A.5.5 0 0 1 2 15.5V2zm2-1a1 1 0 0 0-1 1v12.566l4.723-2.482a.5.5 0 0 1 .554 0L13 14.566V2a1 1 0 0 0-1-1H4z" />
                                    </svg>
                                </button>
                            </div>
                            <div id="board_bottom">
                                <div id="like_count">
                            	<c:choose>
                            		<c:when test="${board.board_like != 0 }">
                                    	<span>????????? ${board.board_like }???</span>
                                   	</c:when>
                                </c:choose>
                                </div>
                                <div class="board_content">
                                    <div class="board_content_text">
                                        <span>
                                            ${board.board_content }
                                        </span>
                                    </div>
                                    <span class="show_more_box">
                                        <span>... </span>
                                        <span class="show_more_btn">?????????</span>
                                    </span>
                                </div>
                                <%
                                	int curBoard_no = curPbvo.getBoard_no();
                                	List<PaceCommentVO> commentList = service.comment(curBoard_no);
                                	pageContext.setAttribute("commentList", commentList);
                                %>
                                <c:choose>
	                                <c:when test="${commentList.size() != 0}">
		                                <div id="comment_count">
		                                	<span class="show_comment" data-bon="${board.board_no }">?????? ${commentList.size() }??? ????????????</span>
                                		</div>
	                                </c:when>
	                                <c:when test="${commentList.size() == 0}">
		                                <div id="comment_count">
		                                	<span class="show_comment" data-bon="${board.board_no }">?????? ??????</span>
	                                	</div>
	                                </c:when>
                                </c:choose>
                                <div id="board_time">
                                    <span>
                                    	<c:set var="time" value="<%= new Time() %>"/>
                                    	${time.calculateTime(board.board_time) }
                                    </span>
                                </div>
                                <div id="board_comment_area">
                                    <ul id="comment_list">
                                    <c:forEach var="comment" items="${commentList }">
                                    <c:set var="curComment" value="${comment }"/>
                                    <% 
                                    	PaceCommentVO curPcvo = (PaceCommentVO)pageContext.getAttribute("curComment");
                                    	int cUserNo = curPcvo.getUser_no();
                                    	PaceUserVO cPuvo = service.getUserInfo(cUserNo);
                                    	pageContext.setAttribute("cPuvo", cPuvo);
                                    %>
                                        <li id="comment">
                                            <div id="comment_top">
                                                <div id="board_comment_profile" class="profile_div">
                                                    <img class="profile" src="/project2/${cPuvo.user_profile }">
                                                </div>
                                                <div>
                                                    <div class="comment_text_box_top">
                                                        <div class="comment_id">
                                                            <span>
                                                                ${cPuvo.user_id }
                                                            </span>
                                                        </div>
                                                        <div class="comment_time">
                                                            <span>${time.calculateTime(comment.comment_time) }</span>
                                                        </div>
                                                        <div class="comment_modify">
                                                        <c:if test="${comment.comment_modify != 0 }">
                                                            <span>(?????????)</span>
                                                        </c:if>
                                                        </div>
                                                    </div>
                                                    <div class="comment_text">
                                                        <div class="board_content_text">
                                                            <span>
                                                                ${comment.comment_content }
                                                            </span>
                                                        </div>
                                                        <span class="show_more_box">
                                                            <span>... </span>
                                                            <span class="show_more_btn">?????????</span>
                                                        </span>
                                                    </div>
                                                    <div class="comment_text_box_bottom">
                                                        <div>
                                                           	<span>????????? ${comment.comment_like }???</span>
                                                        </div>
                                                        <%
                                                        	int curComment_no = curPcvo.getComment_no();
                                                        	List<PaceCmCommentVO> cmCommentList = service.cmComment(curComment_no);
                                                       		pageContext.setAttribute("cmCommentList", cmCommentList);
                                                        %>
                                                        <div id="comment_comment">
                                                        	<c:choose>
                                                        		<c:when test="${cmCommentList.size() == 0 }">
		                                                            <span id="c_comment_btn" data-con="${comment.comment_no }">?????? ??????</span>
                                                        		</c:when>
                                                        		<c:when test="${cmCommentList.size() != 0 }">
		                                                            <span id="c_comment_btn" data-con="${comment.comment_no }">?????? ${cmCommentList.size() }??? ?????????</span>
                                                        		</c:when>
                                                       		</c:choose>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <ul id="c_comment_list">
                                            	<c:forEach var="cmComment" items="${cmCommentList }">
                                            	<c:set var="curCmComment" value="${cmComment }"/>
                                            	<%
	                                            	PaceCmCommentVO curPccvo = (PaceCmCommentVO)pageContext.getAttribute("curCmComment");
	                                            	int ccUserNo = curPccvo.getUser_no();
	                                            	PaceUserVO ccPuvo = service.getUserInfo(ccUserNo);
	                                            	pageContext.setAttribute("ccPuvo", ccPuvo);
                                            	%>
                                                <li id="c_comment">
                                                    <span id="c_commet_arrow">???</span>
                                                    <div id="board_comment_profile" class="profile_div">
                                                        <img class="profile" src="/project2/${ccPuvo.user_profile }">
                                                    </div>
                                                    <div>
                                                        <div class="comment_text_box_top">
                                                            <div class="comment_id">
                                                                <span>
                                                                    ${ccPuvo.user_id }
                                                                </span>
                                                            </div>
                                                            <div class="comment_time">
                                                                <span>${time.calculateTime(cmComment.cmComment_time) }</span>
                                                            </div>
                                                            <div class="comment_modify">
                                                            <c:choose>
                                                            	<c:when test="${cmComment.cmComment_modify != 0 }">
                                                                	<span>(?????????)</span>
                                                               	</c:when>
                                                            </c:choose>
                                                            </div>
                                                        </div>
                                                        <div class="comment_text">
                                                            <div class="board_content_text cct">
                                                                <span>
                                                                	${cmComment.cmComment_content }
                                                                </span>
                                                            </div>
                                                            <span class="show_more_box">
                                                                <span>... </span>
                                                                <span class="show_more_btn">?????????</span>
                                                            </span>
                                                        </div>
                                                        <div class="comment_text_box_bottom">
                                                            <div>
                                                                <span>
                                                                    ????????? ${cmComment.cmComment_like }???
                                                                </span>
                                                            </div>
                                                            <!-- <div id="comment_comment">
                                                                <span>
                                                                    ????????????
                                                                </span>
                                                            </div> -->
                                                        </div>
                                                    </div>
                                                </li>
                                                </c:forEach>
                                            </ul>
                                        </c:forEach>
                                        </li>
                                    </ul>
                                </div>
                                <form method="post" action="/project2/pacebook/bcomment">
                                    <div id="board_comment_box">
                                    	<input id="hidden_board_comment" type="hidden" name="no" value="${board.board_no }">
                                        <input id="board_comment" type="text" name="content">
                                        <input id="comment_btn" type="submit" value="??????">
                                    </div>
                                </form>
                            </div>
                        </li>
                    </c:forEach>
                    </ul>
                </div>
                <ul id="friend_list">
                    <c:forEach var="nfuser" items="${nfuList}">
                    <li id="friend">
                        <a href="/project2/pacebook/profile?user_no=${nfuser.user_no}" class="friend_box">
                            <div class="friend_profile_outline2">
                                <div id="right_profile" class="profile_div">
                                    <img class="profile" src="/project2/${nfuser.user_profile}">
                                </div>
                            </div>
                            <div id="right_name">
                                <span>${nfuser.user_id}</span>
                            </div>
                        </a>
                        <button class="nful_follow_btn follow_btn" data-un="${nfuser.user_no}">
                            ?????????
                        </button>
                    </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </div>
    <div id="message_room">
        <div id="message_room_top">
            <div id="message_room_top1">
                <div id="target_image" class="profile_div">
                    <img class="profile" src="http://127.0.0.1:8080/project2/image/slide1.jpg">
                </div>
                <div id="target_name">
                    <span>?????????</span>
                </div>
                <div id="message_room_btns">
                    <input type="checkbox" id="show_search_checkbox">
                    <label for="show_search_checkbox" id="show_search_btn" class="message_top_btns">
                        <svg class="message_icon" xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                            fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                            <path
                                d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                        </svg>
                    </label>
                    <input type="checkbox" id="show_menu_checkbox">
                    <label for="show_menu_checkbox" id="message_menu_btn" class="message_top_btns">
                        <svg class="message_icon" xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                            fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
                            <path fill-rule="evenodd"
                                d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z" />
                        </svg>
                    </label>
                    <button id="message_close_btn" class="message_top_btns">
                        <svg class="message_icon" xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                            fill="currentColor" class="bi bi-x-lg" viewBox="0 0 16 16">
                            <path
                                d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8 2.146 2.854Z" />
                        </svg>
                    </button>
                    <div id="message_menu">
                        <div id="message_arrow">
                        </div>
                        <div id="message_menu1" class="message_menu">
                            <span>???????????? ??????</span>
                        </div>
                        <div id="message_menu2" class="message_menu">
                            <span>????????? ?????????</span>
                        </div>
                    </div>
                </div>
            </div>
            <div id="message_room_top2">
                <div id="search_image">
                    <svg class="message_icon" xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                        fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                        <path
                            d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                    </svg>
                </div>
                <input type="text" id="message_search_text">
                <button id="message_search_btn">
                    ??????
                </button>
            </div>
        </div>
        <div id="message_room_middle">
            <ul id="message_list">
                <li class="target">
                    <div class="message">
                        <div class="target_arrow"></div>
                        <div class="target_message">
                            <span>hello wolrdhello wolrdhello wolrdhello wolrdhello wolrd</span>
                        </div>
                    </div>
                </li>
                <li class="me">
                    <div class="message">
                        <div class="me_message">
                            <span>hello wolrhellohello wolrhellohello wolrhellohello wolrhellohello wolrhellohello
                                wolrhello wolrdhello wolrdhello wolrdhello wolrdhello wolrdhello wolrdd</span>
                        </div>
                        <div class="me_arrow"></div>
                    </div>
                </li>
            </ul>
        </div>
        <div id="message_room_bottom">
            <div id="message_text_box">
                <textarea id="message_text">
                    </textarea>
            </div>
            <button id="message_text_btn">
                ??????
            </button>
        </div>
    </div>
</body>

</html>