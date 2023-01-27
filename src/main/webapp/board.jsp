<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시글 작성</title>
    <style>
        /* 로고가 들어가 있는 큰박스 */
        #top { 
            padding : auto;
            padding: 4px;
        }
        .logo{
            width: 300px;
            margin-bottom: 10px;
            cursor: pointer; 
        }
        /* 게시글 작성 큰박스 */
        #content{
            margin-top:30px;
            box-sizing: border-box;
            border:1px solid #F39C12;
            height:700px;
            border-left: 0px;
            background-size: 1200px;
            border-radius: 0px 10px 10px 0px;
            padding:10px 0px;
            font-size: 0px;
        }
        /* 책 왼쪽 */
        #book_left{
            vertical-align: top;
            border: 1px solid #3169f6;
            width:27%;
            height: 95%;
            display: inline-block;
            border-radius: 0px 20px 0px 0px;
            border-top-right-radius: 50px 20px;
            border-top-left-radius: 0px 20px;
            background-color: white;
            background-size: cover;
            border-left: 0px;
            margin-top:20px;
        }
        /* //////////////////////////////////////////////////////////// */
        /* 책 오른쪽 */
        #book_right{
            margin-top:20px;
            border: 1px solid #3169f6;
            border-left: 0px;
            background-color: white;
            width:50%;
            height: 95%;
            display: inline-block;
            border-top-right-radius: 100px 10px;
            border-top-left-radius: 50px 20px;
            background-size: cover;
            font-size: 10px;
        }
        /* //////////////////////////////////////////////////////////// */
        /* 게시글 작성버튼이 들어가 있는 책 위쪽부분 */
        #br_top{
            text-align: left;
        }
        #cancell_btn{
            height:40px;
            margin: 20px 10px;
            border: 1px solid #3169f6;
            color: #F39C12;
            font-weight: bolder;
            font-size: 2vh;
            background-color: white;
        }
        #board_btn{
            height:40px;
            margin: 20px 10px;
            border: 1px solid #3169f6;
            color: #F39C12;
            font-weight: bolder;
            font-size: 2vh;
            background-color: white;
            float:right;
        }
        #br_top>button:hover{
            background-color: #F39C12;
            color:aliceblue;
            border-color: #F39C12;
        }
        /* //////////////////////////////////////////////////////////// */
        /* 사진이 올라가는 박스 */
        #img_box{ 
            box-sizing: border-box;
            border:1px solid #3169f6;
            box-sizing: border-box;
            margin: 10px;
            height:400px;
            padding: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction:column;
            flex-wrap: wrap;
            /* cursor:pointer; */
            font-size:2vh;
            font-weight: bolder;
            color:#F39C12;
            
        }
        #img_show{
            position: fixed; 
            z-index: 99;
            object-fit: contain;
            width: 589.5px;
            height: 378px;
            

        }
        #url_input_box{
            width: 100%;
            height: 9%;
            display: flex;
            justify-content: center;
            
        }
        #url_address_out{
            width: 70%;
            height: 95%;
            border: 1px solid #F39C12;
            display: inline-flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            margin-right: 4px;
           
           
        }
        #url_address_in{
            width: 86%;
            height: 71%;
            border: 1px solid #ffffff;
            outline: none;
           
         
        }
        #btn_url{
            border: 1px solid #F39C12;
            background-color: white;
            color: #F39C12;
            font-weight:bolder;
        }
        #btn_url:active{
            background-color: #F39C12;
            color: white;
        }
       

        /* //////////////////////////////////////////////////////////// */
        /* 오른쪽 책 아래부분 아이디,제목,내용이 들어가는 박스 */
        #br_bottom{
            height: 120px;
            padding: 10px;
        }
        /* 아이디랑 타이틀 박스 */
        #br_bottom_top{
            display: flex;
            align-items: center;
        }
        #title_id{
            display: inline-block;
            width:fit-content;
            height: fit-content;
            font-size: 2vh;
            padding-left: 10px;
        }
        /* //////////////////////////////////////////////////////////// */
        /* 내용 */
        #content_text{
            border:0px;
            width: 98%;
            padding-left: 10px;
            height: 60px;
            overflow:hidden;
            resize: none;
        }
        textarea:focus{
            outline: none;
        }
        select:focus{
            outline: none;
        }
    </style>
    <script>
        window.onload = function(){
        	
       	
            //게시판 작성버튼
        	 document.querySelector("#board_btn").addEventListener("click", function(){
                 let board = document.board;
                 board.method = "get";
                 board.action = "pacebook";
                 board.submit();
             });
             //게시판 뒤로가기 버튼
             document.querySelector("#cancell_btn").addEventListener("click", function(){
                 let board = document.board;
                 board.method = "get";
                 board.action = "main.jsp"
                 board.submit();
             })
             //url 확인버튼 => url 이미지삽입
             document.querySelector("#btn_url").addEventListener("click", function(e){
                e.stopPropagation();
                let url = document.querySelector('#url_address_in');
               
                if(url != null){
                    document.url.src = url.value;
                }
                document.querySelector('#img_show').style.display = 'block';
                document.querySelector('#img_show').style.visibility = 'visible';
             })

           
             
            
        }

        //url 없애고, 이미지 취소
        function url_cancle(){
        let cancle = document.querySelector('#img_show')
        console.log(cancle.style.display);
            if(cancle.style.display === 'block'){
                let url = document.querySelector('#url_address_in');
                document.url.src = '';
                cancle.style.visibility = 'hidden';
            }
        }

        
 

    
       

    </script>
</head>
<body>
	<%
		HttpSession se = request.getSession();
		String id = (String)se.getAttribute("user_id");
	
	%>
    <div id="top">
    	<a href='main.jsp'>
        	<img class="logo" src="logo.png">
    	</a>
    </div>
    <hr color = "#3169f6" size="1px">
    <div id="content"> 
        <div id="book_left"></div>
        <div id="book_right"> 
            <form name="board"> 
                <div id="br_top">
                    <button id="cancell_btn">뒤로가기</button>
                    <button id="board_btn"  type="button">게시글 작성</button>
                    <input type="hidden" name="command" value="board" >
                </div>
                
                <div id="img_box" onclick="url_cancle()">
                	
                    <div>url을 입력해주세요</div>
                    <br>
                    <div id="url_input_box">
                        <div id="url_address_out">
                            <input id="url_address_in" type="text"  name="url" >
                        </div>
                        <input id="btn_url"  type="button" value="확인">
                    </div>
                    <img id='img_show' name='url' hidden >
                </div>
                    
                <div id="br_bottom">
                    <div id="br_bottom_top">
                        <div id="title_id"><%=id %></div>
                    </div>
                    <br>
                    <textarea id="content_text"  placeholder="내용을 적어주세요" name="content" ></textarea>
                </div>
            </form>
        </div>
    </div>
</body>
</html>