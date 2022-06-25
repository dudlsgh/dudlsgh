<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ page import="java.sql.*, java.util.*"%>
<%@ page import="java.io.PrintWriter"%>

<%
request.setCharacterEncoding("UTF-8");
%>
<html>
<head>


<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="pass_chagerForm.css?ver=112211">

<title>패스워드 변경</title>
</head>
<body>
	<%
	String id =null;
	try{
        id=(String)session.getAttribute("id");
        if(id==null||id.equals("")){
        	
        	PrintWriter script = response.getWriter();
    		
    		script.println("<script>");

    		script.println("alert('로그인해주세요');");

    		script.println("location.href='login.jsp'");

    		script.println("</script>");

    		script.close();		

    	    return;
        }
        
	}catch(Exception e){
            e.printStackTrace();
           }
        	
	%>
	<div class="wrap">
		<div class="intro_bg">
			<div class="header">
				<div class="searchArea"></div>
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

 <form name="login" Action="passChage.jsp" Method="post">
		<div class="main_txt1">

			<h1>패스워드 변경</h1>
               <div class="agreeId" >
                   <span>현재 비밀번호</span>
                   <input type="pass" name="pass">
                 </div>
                 
                 <div class="agreePs">
                   <span>바꿀 비밀번호</span>
                   <input type="password"  name="newPass">
                 </div>
                 <input type="hidden" name=id value=<%=id %>>
                 
			<div class="main_list">
			 <input type="submit" value="변경하기" class="list" id="list">


			</div>



		</div>
		</form>

		<!-- 저자 소개 끝 -->


		<div class="footer">
			<div>원서 : How to Sharpen Pencils</div>
			<div>
				제작. 여인호 <br> 010 - **** -**** <br> COPYRIGHT 2021
			</div>
		</div>

		<!-- 하단 끝 -->
	</div>

</body>
</html>