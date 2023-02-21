window.onload = function () {

    let searchCheckBox = document.querySelector("#show_search_checkbox");
    let menuCheckBox = document.querySelector("#show_menu_checkbox");

    document.querySelector("#notice_btn").addEventListener("click", function () {
        document.querySelector("#notice_page").style.visibility = "visible";
    })

    document.querySelector("#notice_close").addEventListener("click", function () {
        document.querySelector("#notice_page").style.visibility = "hidden";
    })

    document.querySelector("#message_btn").addEventListener("click", function () {
        document.querySelector("#message_room").style.visibility = "visible";
    })

    document.querySelector("#message_close_btn").addEventListener("click", function () {
        document.querySelector("#message_room").style.visibility = "hidden";
        document.querySelector("#message_room_top2").style.visibility = "hidden";
        searchCheckBox.checked = false;
        document.querySelector("#message_menu").style.visibility = "hidden";
        menuCheckBox.checked = false;
    })

    searchCheckBox.addEventListener("click", function () {
        if (searchCheckBox.checked) {
            document.querySelector("#message_room_top2").style.visibility = "visible";
        } else {
            document.querySelector("#message_room_top2").style.visibility = "hidden";
        }
    })

    menuCheckBox.addEventListener("click", function () {
        if (menuCheckBox.checked) {
            document.querySelector("#message_menu").style.visibility = "visible";
        } else {
            document.querySelector("#message_menu").style.visibility = "hidden";
        }
    })

    // 메세지창 드래그
    let msg_room = document.querySelector("#message_room");

    document.addEventListener("mousedown", dragStart);
    document.addEventListener("mousemove", drag);
    document.addEventListener("mouseup", dragEnd);

    let mouseX = 0;
    let mouseY = 0;
    let itemX;
    let itemY;
    let m_moveX;
    let m_moveY;
    let dragging = false;
    function dragStart(e){
        console.log(e);
        if(e.target == document.querySelector("#message_room_top1")){
            document.querySelector("body").setAttribute("style", "user-select:none");
            mouseX = e.clientX;
            mouseY = e.clientY;
            itemX = msg_room.offsetLeft;
            itemY = msg_room.offsetTop;
            dragging = true;
            return false;
        }
    }
    function drag(e){
        if(dragging){
            m_moveX = e.clientX - mouseX;
            m_moveY = e.clientY - mouseY;
            msg_room.style.left = itemX + m_moveX +"px";
            msg_room.style.top = itemY + m_moveY + "px";
        }
    }
    function dragEnd(e){
        document.querySelector("body").removeAttribute("style");
        dragging = false;
    }
    msg_room.ondragstart = function(e){
        return false;
    }

    // 내용이 길면 더보기 버튼 생기기
    let smx = document.querySelectorAll(".show_more_box");
    smx.forEach(function(box){
        if(box.previousElementSibling.clientWidth >= 255){
            box.style.display = "initial";
        } else {
            box.style.display = "none";
        }
    })

    // 게시글 내용, 댓글 더보기 버튼
    let moreBtn = document.querySelectorAll(".show_more_btn");
    
    moreBtn.forEach(function(btn){
        btn.addEventListener("click", function(e){
            e.target.parentNode.previousElementSibling.classList.remove("board_content_text");
            e.target.parentNode.style.display = "none";
        })
    })

    //게시글 댓글 모두보기 버튼
    let cmb = document.querySelectorAll("#comment_count");
    cmb.forEach(function(btn){
        let beforeText;
        btn.addEventListener("click", function(e){
            if(e.target.innerHTML.indexOf("모두보기") != -1){
                beforeText = e.target.innerHTML;
                e.target.innerHTML = "댓글 더보기 닫기";
                e.target.style.color = "rgb(170, 170, 170)";
                e.target.parentElement.nextElementSibling.nextElementSibling.style.visibility = "visible";
                e.target.parentElement.nextElementSibling.nextElementSibling.style.position = "relative";
            } else if(e.target.innerHTML == "댓글 더보기 닫기"){
                e.target.innerHTML = beforeText;
                e.target.style.color = "black";
                e.target.parentElement.nextElementSibling.nextElementSibling.style.visibility = "hidden";
                e.target.parentElement.nextElementSibling.nextElementSibling.style.position = "absolute";
            } else if(e.target.innerHTML == "댓글 달기"){
                e.target.parentElement.parentElement.lastElementChild.firstElementChild.firstElementChild.focus();
            }
        })
    })
    
    //답글 달기 버튼 
    let ccbtn = document.querySelectorAll("#c_comment_btn");

    ccbtn.forEach(function(btn){
        let beforeText;
        btn.addEventListener("click", function(e){
            if(e.target.offsetParent.nextElementSibling.action.indexOf("board") != -1){
                beforeText = e.target.innerHTML;
                e.target.offsetParent.nextElementSibling.action 
                = "/project2/pacebook/commentcomment";
                e.target.parentElement.parentElement.parentElement.parentElement.nextElementSibling
                .style.visibility = "visible";
                e.target.parentElement.parentElement.parentElement.parentElement.nextElementSibling
                .style.position = "relative";
                e.target.innerHTML = "답글 닫기";
            } else {
                e.target.offsetParent.nextElementSibling.action 
                = "/project2/pacebook/boardcomment";
                e.target.parentElement.parentElement.parentElement.parentElement.nextElementSibling
                .style.visibility = "hidden";
                e.target.parentElement.parentElement.parentElement.parentElement.nextElementSibling
                .style.position = "absolute";
                e.target.innerHTML = beforeText;
            }
        })
    })
}