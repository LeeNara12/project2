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
            box.style.display = "inline";
        } else {
            if((box.previousElementSibling.className.indexOf("cct") != -1)){
                if(box.previousElementSibling.clientWidth >= 196){
                    box.style.display = "inline";
                } else {
                    box.style.display = "none";
                }
            } else {
                box.style.display = "none";
            }
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
    let cmbArrayB = new Array(); // 게시글 댓글 더보기 버튼 담는 배열
    let cmbArrayC = new Array(); // 댓글 답글 더보기 버튼 담는 배열
    
    let bcs = document.querySelectorAll("#comment_top");   

    let cmb = document.querySelectorAll(".show_comment");
    cmb.forEach(function(btn){
        btn.addEventListener("click", function(e){
            e.target.parentElement.parentElement.lastElementChild.action 
            = "/project2/pacebook/bcomment";
            let number = e.target.getAttribute("data-bon");
            if(e.target.innerHTML.indexOf("모두보기") != -1){
                let cmbObject = {number, bftext: e.target.innerHTML};
                cmbArrayB = cmbArrayB.filter(e => e.number !== number);
                cmbArrayB.push(cmbObject);
                e.target.innerHTML = "댓글 더보기 닫기";
                e.target.style.color = "rgb(170, 170, 170)";
                e.target.parentElement.nextElementSibling.nextElementSibling.style.visibility = "visible";
                e.target.parentElement.nextElementSibling.nextElementSibling.style.position = "relative";
            } else if(e.target.innerHTML == "댓글 더보기 닫기"){
                let curbtn = cmbArrayB.find(e => e.number === number);
                e.target.innerHTML = curbtn.bftext;
                e.target.style.color = "black";
                e.target.parentElement.nextElementSibling.nextElementSibling.style.visibility = "hidden";
                e.target.parentElement.nextElementSibling.nextElementSibling.style.position = "absolute";
                bcs.forEach((e) => {
                    e.style.backgroundColor = "white";
                })
            } else if(e.target.innerHTML == "댓글 달기"){
                e.target.parentElement.parentElement.lastElementChild[1].focus();
            }
            e.target.parentElement.parentElement.lastElementChild.firstElementChild
            .firstElementChild.value = number;
        })
    })
    
    //답글 달기 버튼 
    let ccbtn = document.querySelectorAll("#c_comment_btn");
    ccbtn.forEach(function(btn){
        btn.addEventListener("click", function(e){
            bcs.forEach((e) => {
                e.style.backgroundColor = "white";
            })
            e.target.offsetParent.nextElementSibling.action 
            = "/project2/pacebook/ccomment";
            let number = e.target.getAttribute("data-con");
            if(e.target.innerHTML == "답글 달기"){
                e.target.parentElement.parentElement.parentElement.parentElement.style.backgroundColor = "rgb(230, 230, 230)";
                e.target.offsetParent.parentElement.lastElementChild[0].value = number;
            } else {
                if(e.target.innerHTML.indexOf("더보기") != -1){
                    let cmbObject = {number, bftext: e.target.innerHTML};
                    cmbArrayC = cmbArrayC.filter(e => e.number !== number);
                    cmbArrayC.push(cmbObject);
                    e.target.parentElement.parentElement.parentElement.parentElement.nextElementSibling
                    .style.visibility = "visible";
                    e.target.parentElement.parentElement.parentElement.parentElement.nextElementSibling
                    .style.position = "relative";
                    e.target.innerHTML = "답글 닫기";
                    e.target.parentElement.parentElement.parentElement.parentElement.style.backgroundColor = "rgb(230, 230, 230)";
                    e.target.offsetParent.parentElement.lastElementChild[0].value = number;
                } else {
                    e.target.parentElement.parentElement.parentElement.parentElement.nextElementSibling
                    .style.visibility = "hidden";
                    e.target.parentElement.parentElement.parentElement.parentElement.nextElementSibling
                    .style.position = "absolute";
                    let curbtn = cmbArrayC.find(e => e.number === number);
                    e.target.innerHTML = curbtn.bftext;
                    e.target.offsetParent.parentElement.lastElementChild[0].value = 
                    e.target.offsetParent.parentElement.children[2].firstElementChild.getAttribute("data-bon");
                    e.target.offsetParent.nextElementSibling.action 
                    = "/project2/pacebook/bcomment";
                }
            }
            // e.target.offsetParent.nextElementSibling.firstElementChild.children[1].focus();
        })
    })


    // let commentBtns = document.querySelectorAll("#comment_btn");

    // commentBtns.forEach((btn) => {
    //     btn.addEventListener("click", function(){
    //         // let frm = this.parentElement.parentElement;
    //         // commentButton(frm);
    //     })
    // })

    // function commentButton(frm){
    //     let xhr = new XMLHttpRequest();
    //     let no = frm.querySelector("#hidden_board_comment").value;
    //     let content = frm.querySelector("#board_comment").value;
    //     xhr.open("post", frm.action+"?no="+no+"&content="+content);
    //     xhr.setRequestHeader("Content-type", "application/json");
    //     xhr.send();
    // }
}