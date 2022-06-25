<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

    <!DOCTYPE html>

     <Html>

     <Head>

         <meta charset="UTF-8">
         
         <link rel="preconnect" href="https://fonts.googleapis.com">
         <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
         <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
         <link rel="stylesheet" type="text/css" href="write.css?ver=2121">

         <Title>게시판</title>
   </Head>

   <Body>
         <%
           String id="";
           id=(String)session.getAttribute("id");
          %>
     <div class="wrap">
        <div class="intro_bg">
            <div class="header">
             <div class="searchArea">
             </div>
               <ul class="nav">
				
					<li><div><p>HOME</p></div>
					  <ul>
					    <li><a href="NewFile.jsp">MAIN</a></li>
					  </ul>
					</li>
					
					<li><div><p>LINK</p></div>
					<ul>
					    <li><a href="shopLink.jsp">SHOP</a></li>
					  </ul>
					</li>
					
					  <li><div><p>COMMUNITY</p></div>
					<ul>
					    <li><a href="listboard.jsp">BOARD</a></li>
					    <li><a href="write.jsp">WRITE</a></li>
					  </ul>
					</li>
					
					<li><div><p >MY</p></div>
					<ul>
					    <li><a href="logout.jsp">LOGOUT</a></li>
					    <li><a href="pass_chageForm.jsp">PASS</a></li>
					    <li><a href="account_deleteForm.jsp">DELETE</a></li>
					  </ul>
					</li>
					
				</ul>
            </div>
            <div class="intro_txt">
                <h1>연필깎기의 정석</h1>
                <h4 class="contents1">-장인의 혼이 담긴 연필 깎기의 이론과 실제-</h4>
            </div>
        </div>
      
         <form name="login" Action="write_input.jsp" Method="post">
            <div class="main_txt1">
            
               <h1>글쓰기</h1>
                 <div class="agreeId" >
                   <span>아이디&nbsp;&nbsp;&nbsp;&nbsp;</span>
                   <input type="text"  value="<%=id%>" name="id"readonly>
                 </div>
                 
                 <div class="agreePs">
                   <span>비밀번호</span>
                   <input type="password"  name="pass">
                 </div>
                 
                 <div class="agreeTi">
                   <span>제목</span>
                   <input type="text" name="title">
                 </div>
                 
                 <div class="agreeAr">
                   <textarea  style="overflow:auto" wrap="virtual" name="contents"></textarea>
                 </div>
                 
                 <div class="main_text1">
                 <input type="submit"value="작성 완료">
                </div>
                
                <div class="main_list">
                
                 <button onclick="location.href='listboard.jsp'"  class="list" type="button"  >목록으로</button>
                 
                </div>
                 
            </div>
       </form>
      
      <!-- 저자 소개 끝 -->
      

      <div class="footer">
        <div>원서 : How to Sharpen Pencils</div>
        <div>
          제작. 여인호 <br>
          010 - **** -**** <br>
          COPYRIGHT 2021
        </div>
      </div>
      
      <!-- 하단 끝 -->
     </div>
     
     

         

  </Body>

  </Html>