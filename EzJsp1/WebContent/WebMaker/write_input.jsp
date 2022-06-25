<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import = "java.sql.*, java.util.*" %>

<% request.setCharacterEncoding("UTF-8"); %>
   <%
   String id = request.getParameter("id"); 
   String pass = request.getParameter("pass"); 
   String title = request.getParameter("title");
   String contents = request.getParameter("contents");
   
   if(id==""){
	   out.println("<script>");
	   out.println("alert('아이디가 없습니다. 다시 입력해주세요')");
	   out.println("location.href='gaimp_input.jsp'");
	   out.println("</script>");
   }else if(pass==""){
	   out.println("<script>");
	   out.println("alert('비밀번호가 없습니다. 다시 입력해주세요')");
	   out.println("location.href='gaimp_input.jsp'");
	   out.println("</script>");
   }else if(title==""){
	   out.println("<script>");
	   out.println("alert('글제목이 없습니다. 다시 입력해주세요')");
	   out.println("location.href='gaimp_input.jsp'");
	   out.println("</script>");
   }else if(contents==""){
	   out.println("<script>");
	   out.println("alert('글내용이 없습니다. 다시 입력해주세요')");
	   out.println("location.href='gaimp_input.jsp'");
	   out.println("</script>");
   }
   
   Class.forName("com.mysql.jdbc.Driver");
   
   String url = "jdbc:mysql://localhost:3306/dbmember";
   Connection conn =DriverManager.getConnection(url,"member","apple");
   
   PreparedStatement pstmt = null;
   
   Calendar dateIn = Calendar.getInstance();
   String indate = Integer.toString(dateIn.get(Calendar.YEAR)) + "-";
   indate = indate + Integer.toString(dateIn.get(Calendar.MONTH)+1) + "-";
   indate = indate + Integer.toString(dateIn.get(Calendar.DATE)) + " ";
   indate = indate + Integer.toString(dateIn.get(Calendar.HOUR_OF_DAY)) + ":";
   indate = indate + Integer.toString(dateIn.get(Calendar.MINUTE)) + ":";
   indate = indate + Integer.toString(dateIn.get(Calendar.SECOND));
   
   String strSQL = "INSERT INTO tblboard(id, pass, title, contents, writedate, readcount)";
   strSQL = strSQL + "VALUES (?, ?, ?, ?, ?, ?)";
   pstmt = conn.prepareStatement(strSQL);
   pstmt.setString(1, id);
   pstmt.setString(2, pass);
   pstmt.setString(3, title);
   pstmt.setString(4, contents);
   pstmt.setString(5, indate);
   pstmt.setInt(6, 0);
   pstmt.executeUpdate();
   
   pstmt.close();
   conn.close();
   
   response.sendRedirect("listboard.jsp");
   %>
  /html>