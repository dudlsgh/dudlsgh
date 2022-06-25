<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import = "java.sql.*, java.util.*" %>
<%@ page import="util.SHA256"%>
<%@ page import="java.io.PrintWriter"%>

<!DOCTYPE html>
<html>
   <head>
         <Meta charset="UTF-8">
         <link rel="preconnect" href="https://fonts.googleapis.com">
         <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
         <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
         <link rel="stylesheet" type="text/css" href="signForm.css?ver=1121225">
         <!-- 폰트와 css링크 -->
         
         <title>아이디 찾기</title>
         
   </head>
   <body>
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
					
					<li><div><p >MY</p></div>
					<ul>
					    <li><a href="login.jsp">LOGIN</a></li>
					    <li><a href="agree.jsp">SIGNUP</a></li>
					    <li><a href="signForm.jsp">FINDID</a></li>
					    <li><a href="signPass.jsp">FINDPW</a></li>
					  </ul>
					</li>
                  
               </ul>
            </div>
            <div class="intro_txt">
                <h1>연필깎기의 정석</h1>
                <h4 class="contents1">-장인의 혼이 담긴 연필 깎기의 이론과 실제-</h4>
            </div>
        </div>
        
        <!-- 윗단 끝 -->
            <ul class="amount">
               <li>
                    <div class="contents1"><a href="signForm.jsp">아이디 찾기</a></div>
               </li>
               <li>
                    <div class="contents1"><a href="signPass.jsp">비밀번호 찾기</a></div>
               </li>
            </ul>
            <!-- 바로가기 끝 -->
      
         <form name="sign" Action="signPWInput.jsp" Method="post">
            <div class="main_txt1">
            
               <h1>비밀번호 찾기</h1>
	       
                 <div class="agreeId" >
                   <span>아이디</span>
                   <input type="text" name="id">
                 </div>
                 
                
                 
                 <div class="agreeEm" >
                   <span>이메일</span>
                   <input type="text" name="email"  >
                 </div>
                 
                 
                 <div class="main_text1">
                 <input type="submit"value="비밀번호 찾기">
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
    

   </body>
</html>