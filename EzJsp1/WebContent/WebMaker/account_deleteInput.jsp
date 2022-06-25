<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import = "java.sql.*, java.util.*" %>
<%@ page import="java.io.PrintWriter"%>
<% request.setCharacterEncoding("utf-8"); %>


        <%
        String id = "";
        
        if(request.getParameter("id") != null) {

    		id = (String) request.getParameter("id");

    	}


    	if (id == "") {
    		PrintWriter script = response.getWriter();
    		
    		script.println("<script>");

    		script.println("alert('로그인해주세요.');");

    		script.println("location.href='pass_chageForm.jsp'");

    		script.println("</script>");

    		script.close();		

    	    return;
    	} 

    	   Connection conn =null;
    	   PreparedStatement pstmt = null;
    	   ResultSet rs= null;
    	   String dbPasswd="";
    	   String url=null;
    	   String strSQL=null;
    	   int x=0;
    	   
    	   
    	
    	

    	   try{
    		   Class.forName("com.mysql.jdbc.Driver");
    		   url = "jdbc:mysql://localhost:3306/dbmember";
    		   conn =DriverManager.getConnection(url,"member","apple");
    		   
    		   strSQL = "Select * FROM tblboard where id=?";
    		   pstmt = conn.prepareStatement(strSQL);
    		   pstmt.setString(1,id);
    		   rs= pstmt.executeQuery();
    		   
    		   if(rs.next()){
    				   strSQL="delete from  tblboard where id=?";
    				   pstmt=conn.prepareStatement(strSQL);
    				   pstmt.setString(1,id);
    				   pstmt.executeUpdate();
    			   }
           
    	      
    	     }catch(Exception ex){
    		   ex.printStackTrace();
    	     }finally{
    		   if (rs != null) try { rs.close(); } catch(SQLException ex) {}
    	       if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
    	       if (conn != null) try { conn.close(); } catch(SQLException ex) {}
    	     }
    	   
    	   
    	   
    	   try{
    		   Class.forName("com.mysql.jdbc.Driver");
    		   url = "jdbc:mysql://localhost:3306/dbmember";
    		   conn =DriverManager.getConnection(url,"member","apple");
    		   
    				   strSQL="delete from  gaipboard where id=?";
    				   pstmt=conn.prepareStatement(strSQL);
    				   pstmt.setString(1,id);
    				   pstmt.executeUpdate();   
    				   
    				   session.invalidate();
    				   
    				   
    	    			   PrintWriter script = response.getWriter();
    	    	    		
    	    	    		script.println("<script>");

    	    	    		script.println("alert('회원 탈퇴되었습니다. 그 동안 이용해주셔서 감사합니다');");

    	    	    		script.println("location.href='NewFile.jsp'");

    	    	    		script.println("</script>");

    	    	    		script.close();		

    	    	    	    return;
    			   
           
    	      
    	     }catch(Exception ex){
    		   ex.printStackTrace();
    	     }finally{
    		   if (rs != null) try { rs.close(); } catch(SQLException ex) {}
    	       if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
    	       if (conn != null) try { conn.close(); } catch(SQLException ex) {}
    	     }
    	   
    	  
      %>