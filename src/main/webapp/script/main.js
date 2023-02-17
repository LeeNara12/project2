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
}