<%@page import="java.io.PrintWriter"%>
<%@ page import = "java.sql.*, java.util.*" %>
<%@page import="util.SHA256"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%

	request.setCharacterEncoding("UTF-8");

	String code = request.getParameter("code");
	
	 String id=null;
	

	   Class.forName("com.mysql.jdbc.Driver");
	   
	   String url = "jdbc:mysql://localhost:3306/dbmember";
	   Connection conn =DriverManager.getConnection(url,"member","apple");
	   
	   PreparedStatement pstmt1 = null;
	   
	   String strSQL ="SELECT * from gaipboard where emilHash=?";
	   pstmt1 = conn.prepareStatement(strSQL);
	   pstmt1.setString(1, code);
	   ResultSet rs1= pstmt1.executeQuery();
	   if(rs1.next()!=true){
		   rs1.close();
		   pstmt1.close();
		   conn.close();
		   out.println("<script>");
		   out.println("alert('유효하지않은 코드입니다.')");
		   out.println("location.href='NewFile.jsp'");
		   out.println("</script>");
	   }else{
		   id= rs1.getString("id");
		   rs1.close();
		   pstmt1.close();
		   conn.close();
	   }
%>
<!DOCTYPE html>
<html>
   <head>
         <Meta charset="UTF-8">
         <link rel="preconnect" href="https://fonts.googleapis.com">
         <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
         <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
         <link rel="stylesheet" type="text/css" href="emailCheck.css?ver=21">
         <!-- 폰트와 css링크 -->
         
         <title>아이디찾기</title>
         
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
      
         <form name="gaip"Action="login.jsp"Method="post" >
            <div class="main_txt1"id="rink_main">
            
               <h1>이메일을 인증 받았습니다.</h1>
               아이디는 <%=id %>입니다.
                 
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