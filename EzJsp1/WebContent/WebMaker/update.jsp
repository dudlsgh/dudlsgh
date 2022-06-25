<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import = "java.sql.*, java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

    <!DOCTYPE html>

     <Html>

     <Head>

         <meta charset="UTF-8">
         
         <link rel="preconnect" href="https://fonts.googleapis.com">
         <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
         <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
         <link rel="stylesheet" type="text/css" href="update.css?ver=2211">

         <Title>리뷰수정</title>

       

   </Head>

   <Body>
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
        </div>
        <%
               String num = request.getParameter("num"); 
               String pageNum = request.getParameter("pageNum"); 
               
               Connection conn=null;
               PreparedStatement pstmt = null;
               ResultSet rs = null;
               try {
            	    Class.forName("com.mysql.jdbc.Driver");
                    String url = "jdbc:mysql://localhost:3306/dbmember";
                    conn = DriverManager.getConnection(url,"member","apple");
                    String strSQL = "SELECT * FROM tblboard WHERE num = ?";
                    pstmt = conn.prepareStatement(strSQL);
                    pstmt.setInt(1, Integer.parseInt(num));
                    rs = pstmt.executeQuery();
                    if(rs.next()){
                    	String id = rs.getString("id");
                        String title = rs.getString("title");
                        String contents = rs.getString("contents").trim();
                        contents=contents.replaceAll("\n", "<br>");
                        String writedate = rs.getString("writedate");
                        int readcount = rs.getInt("readcount");	
                    
                    
         %>
            <form name="login" Action="updateForm.jsp?pageNum=<%=pageNum %>" Method="post">
            <div class="main_txt1">
            
            
               <h1>리뷰 수정</h1>
                 <div class="agreeId" >
                   <span>아이디&nbsp;&nbsp;&nbsp;&nbsp;</span>
                   <input type="text"  value="<%=id%>" name="id"readonly>
                    <input type="hidden"  name="num" value="<%=num%>">
                 </div>
                 
                 <div class="agreePs">
                   <span>비밀번호</span>
                   <input type="password"  name="pass">
                 </div>
                 
                 <div class="agreeTi">
                   <span>제목</span>
                   <input type="text" value="<%=title%>"name="title" readonly>
                 </div>
                 
                 <div class="agreeAr">
                   <textarea  style="overflow:auto" wrap="virtual"name="contents"> <%=contents%></textarea>
                 </div>
                 
                <div class="main_list">
                 <input type="submit"   class="rewrite" value="수정하기"  >
                 <input type="reset"   class="reset" value="다시작성"  >
                 <button onclick="location.href='listboard.jsp?pageNum=<%=pageNum%>'"  class="list" type="button"  >목록으로</button>
                 
                </div>
                 
            </div>
            </form>
                <%
                    }
               }catch(Exception ex){
               	ex.printStackTrace();
          }finally{   
               	if (rs != null) try { rs.close(); } catch(SQLException ex) {}
                   if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
                   if (conn != null) try { conn.close(); } catch(SQLException ex) {}
	               } %>
                
                
       
      
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
     
     

         

  </Body>

  </Html>