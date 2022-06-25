<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="util.SHA256"%>
<%@page import="javax.mail.Transport"%>

<%@page import="javax.mail.Message"%>

<%@page import="javax.mail.Address"%>

<%@page import="javax.mail.internet.InternetAddress"%>

<%@page import="javax.mail.internet.MimeMessage"%>

<%@page import="javax.mail.Session"%>

<%@page import="javax.mail.Authenticator"%>
<%@ page import="java.io.PrintWriter"%>
<%@page import="util.SHA256"%>
<%@ page import="java.util.Properties"%>
<%@page import="util.Gmail"%>
<%@ page import = "java.sql.*, java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%

	request.setCharacterEncoding("UTF-8");



    String name = null;
    String email = null;
    
    if(request.getParameter("name") != null) {

		name = (String) request.getParameter("name");

	}

	if(request.getParameter("email") != null) {

		email = (String) request.getParameter("email");

	}


	if (name == "" || email == "") {
		
		

		PrintWriter script = response.getWriter();

		script.println("<script>");

		script.println("alert('입력을 마저해주세요');");

		script.println("location.href='signForm.jsp'");

		script.println("</script>");

		script.close();		

	    return;

	}
	Class.forName("com.mysql.jdbc.Driver");
	   
	   String url = "jdbc:mysql://localhost:3306/dbmember";
	   Connection conn =DriverManager.getConnection(url,"member","apple");
	   
	   PreparedStatement pstmt1 = null;
	   
	   String strSQL ="SELECT * from gaipboard where email=?";
	   pstmt1 = conn.prepareStatement(strSQL);
	   pstmt1.setString(1, email);
	   ResultSet rs1= pstmt1.executeQuery();
	   if(rs1.next()==false){
		   rs1.close();
		   pstmt1.close();
		   conn.close();
		   
		   PrintWriter script = response.getWriter();

			script.println("<script>");

			script.println("alert('가입정보가 없습니다.');");

			script.println("location.href='signForm.jsp'");

			script.println("</script>");

			script.close();		

		    return;
		   
	   }
	   rs1.close();
	   pstmt1.close();
	   conn.close();
	  

	String host = "http://localhost:8080/EzJsp/WebMaker/";

	String from = "a20242560@gmail.com";

	String to = email;

	String subject = "아이디 찾기 메일 입니다.";

	String content = "링크는 다음과 같습니다." +

		"<a href='" + host + "emailCheckID.jsp?code=" + new SHA256().getSHA256(to) + "'>이메일 인증하기</a>";
		
		// SMTP에 접속하기 위한 정보를 기입합니다.

		Properties p = new Properties();

		p.put("mail.smtp.user", from);

		p.put("mail.smtp.host", "smtp.googlemail.com");

		p.put("mail.smtp.port", "465");

		p.put("mail.smtp.starttls.enable", "true");

		p.put("mail.smtp.auth", "true");

		p.put("mail.smtp.debug", "true");

		p.put("mail.smtp.socketFactory.port", "465");

		p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

		p.put("mail.smtp.socketFactory.fallback", "false");
		
		try{

		    Authenticator auth = new Gmail();

		    Session ses = Session.getInstance(p, auth);

		    ses.setDebug(true);

		    MimeMessage msg = new MimeMessage(ses); 

		    msg.setSubject(subject);

		    Address fromAddr = new InternetAddress(from);

		    msg.setFrom(fromAddr);

		    Address toAddr = new InternetAddress(to);

		    msg.addRecipient(Message.RecipientType.TO, toAddr);

		    msg.setContent(content, "text/html;charset=UTF-8");

		    Transport.send(msg);

		} catch(Exception e){

		    e.printStackTrace();

			PrintWriter script = response.getWriter();

			script.println("<script>");

			script.println("alert('오류가 발생했습니다..');");

			script.println("history.back();");

			script.println("</script>");

			script.close();		

		    return;

		}
		
         
         	

     

	
%>
<!DOCTYPE html>
<html>
   <head>
         <Meta charset="UTF-8">
         <link rel="preconnect" href="https://fonts.googleapis.com">
         <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
         <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
         <link rel="stylesheet" type="text/css" href="signInput.css?ver=111225">
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
      
            <div class="main_txt1">
            
             <h1>회원님의 이메일로 확인 메일이 전송되었습니다.</h1>
                 <h2>전송된 링크로 아이디를 찾으세요.</h2>
                 
             </div>
                 
            
      

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



