<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
   <head>
         <Meta charset="UTF-8">
         <link rel="preconnect" href="https://fonts.googleapis.com">
         <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
         <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
         <link rel="stylesheet" type="text/css" href="gaipwon.css?ver=2111">
         <!-- 폰트와 css링크 -->
         
         <title>가입완료</title>
         
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
                    <div class="contents1">약관 동의</div>
               </li>
               
               <li>
                    <div class="contents1">회원 정보</div>
               </li>
               
               <li class="last">
                    <div class="contents1">가입 완료</div>
               </li>
            </ul>
            
            <!-- 바로가기 끝 -->
      
         <form name="gaip"Action="login.jsp"Method="post" >
            <div class="main_txt1"id="rink_main">
            
               <h1>가입완료를 축하드립니다!</h1>
                 
                 <div class="main_text1">
                 <input type="submit"value="로그인 페이지로 넘어가기 ">
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