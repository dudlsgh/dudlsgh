<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import = "java.sql.*, java.util.*" %>
<%@ page import="java.io.PrintWriter"%>
<%@page import="util.SHA256"%>
<% request.setCharacterEncoding("utf-8"); %>


        <%
        String id = "";
        String pass = "";
        String newPass="";
        
        if(request.getParameter("id") != null) {

    		id = (String) request.getParameter("id");

    	}

    	if(request.getParameter("pass") != null) {

    		pass = (String) request.getParameter("pass");

    	}
    	if(request.getParameter("newPass") != null) {

    		newPass = (String) request.getParameter("newPass");

    	}


    	if (id == "") {
    		PrintWriter script = response.getWriter();
    		
    		script.println("<script>");

    		script.println("alert('로그인해주세요');");

    		script.println("location.href='pass_chageForm.jsp'");

    		script.println("</script>");

    		script.close();		

    	    return;
    	} 
    	if (pass == "") {
    		PrintWriter script = response.getWriter();
    		
    		script.println("<script>");

    		script.println("alert('현재 비번 입력을 마저 해주세요.');");

    		script.println("location.href='pass_chageForm.jsp'");

    		script.println("</script>");

    		script.close();		

    	    return;
    	} 
    	if (newPass == "") {
    		PrintWriter script = response.getWriter();
    		
    		script.println("<script>");

    		script.println("alert('바꿀 비번입력을 마저 해주세요.');");

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
    	   int x=-1;
    	   String pass1=SHA256.getSHA256(pass);
    	   String newPass1=SHA256.getSHA256(newPass);
    	   
    	
    	

    	   try{
    		   Class.forName("com.mysql.jdbc.Driver");
    		   url = "jdbc:mysql://localhost:3306/dbmember";
    		   conn =DriverManager.getConnection(url,"member","apple");
    		   
    		   strSQL = "Select pass FROM gaipboard where id=?";
    		   pstmt = conn.prepareStatement(strSQL);
    		   pstmt.setString(1,id);
    		   rs= pstmt.executeQuery();
    		   
    		   if(rs.next()){
    			   dbPasswd=rs.getString("pass");
    			   if(dbPasswd.equals(pass1)){
    				   strSQL="update gaipboard set pass=? where id=?";
    				   pstmt=conn.prepareStatement(strSQL);
    				   pstmt.setString(1,newPass1);
    				   pstmt.setString(2,id);
    				   pstmt.executeUpdate();
    				   x=1;
    			   }
    			   
    		   }
    		   if(x==1){
    			   PrintWriter script = response.getWriter();
    	    		
    	    		script.println("<script>");

    	    		script.println("alert('비밀번호가 수정되었습니다.');");

    	    		script.println("location.href='NewFile.jsp'");

    	    		script.println("</script>");

    	    		script.close();		

    	    	    return;
        	   }else{
        		   PrintWriter script = response.getWriter();
   	    		
   	    		script.println("<script>");

   	    		script.println("alert('비밀번호가 틀렸습니다.');");

   	    		script.println("history.back();");

   	    		script.println("</script>");

   	    		script.close();		

   	    	    return;
        		   
        	   }
           
    	      
    	     }catch(Exception ex){
    		   ex.printStackTrace();
    	     }finally{
    		   if (rs != null) try { rs.close(); } catch(SQLException ex) {}
    	       if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
    	       if (conn != null) try { conn.close(); } catch(SQLException ex) {}
    	     }
    	   
    	  
      %>