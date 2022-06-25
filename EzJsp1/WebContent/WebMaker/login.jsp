<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import = "java.sql.*, java.util.*" %>
<!DOCTYPE html>
<html>
   <head>
         <Meta charset="UTF-8">
         <link rel="preconnect" href="https://fonts.googleapis.com">
         <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
         <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
         <link rel="stylesheet" type="text/css" href="login.css?ver=011112">
         <!-- 폰트와 css링크 -->
         
         <title>로그인</title>
         
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
      
         <form name="login" Action="login_input.jsp" Method="post">
            <div class="main_txt1">
            
               <h1>로그인</h1>
               <!-- 쿠키값으로 id정보 받아오기 -->
	       <%
	         String c = "";
		      Cookie[] cookies = request.getCookies(); //쿠키생성
		         if(cookies !=null&& cookies.length > 0)
		         for (int i = 0; i < cookies.length; i++){
			     if (cookies[i].getName().equals("id")) { // 내가 원하는 쿠키명 찾아서 값 저장
				c = cookies[i].getValue();}}%>
                 <div class="agreeId" >
                   <span>아이디&nbsp;&nbsp;&nbsp;&nbsp;</span>
                   <input type="text"  value="<%=c%>" name="id">
                 </div>
                 
                 <div class="agreePs">
                   <span>비밀번호</span>
                   <input type="password"  name="pass">
                 </div>
                 
                 <div class="agreeDiv1">
                 
                <label for="agree"> 아이디 저장 &nbsp;&nbsp; </label><input type="checkbox" name="agree" id="agree" value="동의">
                 
                 </div>
                 
                 
                 <div class="main_text1">
                 <input type="submit"value="login">
                </div>
                
                <div class="main_text2">
                 <button onclick="location.href='agree.jsp'"  class="rewite" type="button"  >회원가입</button>
                 <a href="signForm.jsp">아이디/비밀번호를 잊어버리셨나요? 클릭하세요!</a>
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