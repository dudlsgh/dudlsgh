<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import = "java.sql.*, java.util.*" %>

<% request.setCharacterEncoding("UTF-8"); %>
   <%
   int num=Integer.parseInt(request.getParameter("num")); 
   String pageNum=request.getParameter("pageNum");
   String passWd=request.getParameter("pass");
   
   Connection conn =null;
   PreparedStatement pstmt = null;
   ResultSet rs= null;
   String dbPasswd="";
   String url=null;
   String strSQL=null;
   int x=-1;
   
   if(passWd==""){
	   out.println("<script>");
	   out.println("alert('아이디가 없습니다. 다시 입력해주세요')");
	   out.println("location.href='gaimp_input.jsp'");
	   out.println("</script>");
   }
   
   
   try{
	   Class.forName("com.mysql.jdbc.Driver");
	   url = "jdbc:mysql://localhost:3306/dbmember";
	   conn =DriverManager.getConnection(url,"member","apple");
	   
	   strSQL = "Select pass FROM tblboard where num=?";
	   pstmt = conn.prepareStatement(strSQL);
	   pstmt.setInt(1,num);
	   rs= pstmt.executeQuery();
	   
	   if(rs.next()){
		   dbPasswd=rs.getString("pass");
		   if(dbPasswd.equals(passWd)){
			   strSQL="delete from  tblboard where num=?";
			   pstmt=conn.prepareStatement(strSQL);
			   pstmt.setInt(1,num);
			   pstmt.executeUpdate();
			   x=1;//글삭제 성공
		   }else
			   x=0;//비번 틀림
		   
	   }
      
     }catch(Exception ex){
	   ex.printStackTrace();
     }finally{
	   if (rs != null) try { rs.close(); } catch(SQLException ex) {}
       if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
       if (conn != null) try { conn.close(); } catch(SQLException ex) {}
     }
   if(x==1){
   %>
   <script>
    alert("삭제 되었습니다.")
   </script>
   
    <meta http-equiv="Refresh"content="0;url=listboard.jsp?pageNum=<%=pageNum%>">
   <%}else{ %>
   <script type="text/javascript">
    <!--
    alert("비밀번호가 맞지 않습니다");
    history.go(-1);
    -->
   </script>
   <% }%>
