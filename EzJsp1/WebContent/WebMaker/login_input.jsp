<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import = "java.sql.*, java.util.*" %>

<%@page import="util.SHA256"%>

<% request.setCharacterEncoding("UTF-8"); %>
   <%
   String id = request.getParameter("id"); 
   String pass = request.getParameter("pass");
   
   String agree = request.getParameter("agree");
   
   
   if(id==""){
	   out.println("<script>");
	   out.println("alert('아이디가 없습니다. 다시 입력해주세요')");
	   out.println("location.href='login.jsp'");
	   out.println("</script>");
   }else if(pass==""){
	   out.println("<script>");
	   out.println("alert('비밀번호가 없습니다. 다시 입력해주세요')");
	   out.println("location.href='login.jsp'");
	   out.println("</script>");
   }

   Cookie c=new Cookie("id",id);
   System.out.println(agree);
   if(agree!=null){
	   c.setMaxAge(60*60*24*7);
	   response.addCookie(c);
   }else{
	   c.setMaxAge(0);
	   response.addCookie(c);
   }
   String newPass=SHA256.getSHA256(pass);
   
   
   Class.forName("com.mysql.jdbc.Driver");
   
   String url = "jdbc:mysql://localhost:3306/dbmember";
   Connection conn =DriverManager.getConnection(url,"member","apple");
   
   PreparedStatement pstmt = null;
   
   String strSQL = "SELECT * from gaipboard where id=?";
   pstmt = conn.prepareStatement(strSQL);
   pstmt.setString(1, id);
   ResultSet rs= pstmt.executeQuery();
   String password="";
   if(rs.next()){
	   password=rs.getString("pass");   
   }
   
   rs.close();
   pstmt.close();
   conn.close();
   
   if(password.equals(newPass)){
	   //쿠키에 아이디추가-아이디저장
	   
	   //세션에 추가-로그인 로그아웃
	   session.setAttribute("id",id);
	   session.setAttribute("pass",pass);
	   out.println("<script>");
	   out.println("alert('로그인 되었습니다.')");
	   out.println("location.href='NewFile.jsp'");
	   out.println("</script>");
   }else{
	   out.println("<script>");
	   out.println("alert('로그인 정보가 없습니다. 다시 입력해주세요')");
	   out.println("location.href='login.jsp'");
	   out.println("</script>");
	   
   }
   %>
  