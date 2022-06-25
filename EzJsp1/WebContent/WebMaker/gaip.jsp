<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import = "java.sql.*, java.util.*" %>
<%@ page import="util.SHA256"%>

<% request.setCharacterEncoding("UTF-8"); %>
   <%
   String id = request.getParameter("id"); 
   String pass = request.getParameter("pass");  
   String name = request.getParameter("name");
   String email = request.getParameter("email");
   
   
   if(request.getParameter("id") != null) {

		id = (String) request.getParameter("id");

	}

	if(request.getParameter("pass") != null) {

		pass = (String) request.getParameter("pass");

	}
	if(request.getParameter("name") != null) {

		name = (String) request.getParameter("name");

	}

	if(request.getParameter("email") != null) {

		email = (String) request.getParameter("email");

	}


	if (id == null  || pass == null || name == null || email == null) {

		 out.println("<script>");
		 out.println("alert('다시 입력해주세요')");
		 out.println("location.href='gaimp_input.jsp'");
		 out.println("</script>");
	}
   
   
   Class.forName("com.mysql.jdbc.Driver");
   
   String url = "jdbc:mysql://localhost:3306/dbmember";
   Connection conn =DriverManager.getConnection(url,"member","apple");
   
   PreparedStatement pstmt1 = null;
   
   String strSQL ="SELECT * from gaipboard where id=?";
   pstmt1 = conn.prepareStatement(strSQL);
   pstmt1.setString(1, id);
   ResultSet rs1= pstmt1.executeQuery();
   if(rs1.next()==true){
	   //아이디가 중복되었을 경우
	   rs1.close();
	   pstmt1.close();
	   conn.close();
	   out.println("<script>");
	   out.println("alert('아이디가 중복되었습니다.')");
	   out.println("location.href='gaimp_input.jsp'");
	   out.println("</script>");
   }else{
	   //아이디가 중복되지 않았을 경우
	   rs1.close();
	   pstmt1.close();
	   
	   
	   PreparedStatement pstmt2 = null;
	   String strSQL2 ="SELECT * from gaipboard where email=?";
	   pstmt2 = conn.prepareStatement(strSQL2);
	   pstmt2.setString(1, email);
	   ResultSet rs2= pstmt2.executeQuery();
	   if(rs2.next()==true){
		   //이메일이 중복되었을 경우
		   rs2.close();
		   pstmt2.close();
		   conn.close();
		   out.println("<script>");
		   out.println("alert('이메일이 중복되었습니다.')");
		   out.println("location.href='gaimp_input.jsp'");
		   out.println("</script>");
		   
	   }else{
		   //이메일이 중복되지 않았을 경우
		   rs2.close();
		   pstmt2.close();
		   String newPass  = SHA256.getSHA256(pass);
		   
		   String emailHash  = SHA256.getSHA256(email);
		   
		   
		   PreparedStatement pstmt3 = null;
		   String strSQL3 = "INSERT INTO gaipboard(id, pass, name, email,emilHash)";
		   strSQL3 = strSQL3 + "VALUES (?, ?, ?, ?,?)";
		   pstmt3 = conn.prepareStatement(strSQL3);
		   pstmt3.setString(1, id);
		   pstmt3.setString(2, newPass);
		   pstmt3.setString(3, name);
		   pstmt3.setString(4, email);
		   pstmt3.setString(5, emailHash);
		   pstmt3.executeUpdate();
		   
		   pstmt3.close();
		   conn.close();
		   
		   response.sendRedirect("gaipwon.jsp");
		   
		   
	   }
	   
	   
	   
   }
   
  
   %>
  