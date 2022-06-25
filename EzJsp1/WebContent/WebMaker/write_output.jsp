<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page import = "java.sql.*, java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<HTML>
 <HEAD>
 <link rel="preconnect" href="https://fonts.googleapis.com">
 <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
 <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
 <link rel="stylesheet" type="text/css" href="write_output.css?ver=1122">
 <TITLE> 게시판 </TITLE>
 </HEAD>
 <BODY>

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
      
        
            <div class="main_txt1">
            
               
               <%
               String num = request.getParameter("num"); 
               String pageNum = request.getParameter("pageNum"); 
               
               
               Connection conn = null;
               PreparedStatement pstmt = null;
               ResultSet rs = null;
               try {
                    Class.forName("com.mysql.jdbc.Driver");
                    String url = "jdbc:mysql://localhost:3306/dbmember";
            	    conn=DriverManager.getConnection(url,"member","apple");
                    String strSQL = "SELECT * FROM tblboard WHERE num = ?";
                    pstmt = conn.prepareStatement(strSQL);
                    pstmt.setInt(1, Integer.parseInt(num));
                    rs = pstmt.executeQuery();
                    rs.next();
                    String id = rs.getString("id");
                    String title = rs.getString("title");
                    String contents = rs.getString("contents").trim();
                    contents=contents.replaceAll("\n", "<br>");
                    String writedate = rs.getString("writedate");
                    int readcount = rs.getInt("readcount");
               %>
               <h1>글 보기</h1>
               
               <div class="agreeId" >
                   <span class="spanId1">작성자&nbsp;&nbsp;&nbsp;&nbsp;</span>
                   <span class="spanId2"><%=id%></span>
                 </div>
                 
                 <div class="agreeDa">
                   <span class="spanDa1">작성일</span>
                   <span class="spanDa2"><%=writedate %></span>
                 </div>
                 
                 <div class="agreeRe">
                 
                   <span class="spanRe1">조회수</span>
                   
                   <span class="spanRe2"><%=readcount %></span>
                   
                 </div>
                 
                 <div class="agreeTi">
                   <span class="spanTi1">제목</span>
                   <span class="spanTi2"><%=title %></span>
                 </div>
               
               
               <div class="agreeAr">
                   <textarea  style="overflow:auto" wrap="virtual" name="contents" disabled><%=contents %></textarea>
                 </div>
               
               <div class="main_list">
                
                 <button onclick="location.href='listboard.jsp?pageNum=<%=pageNum %>'"  class="list" type="button"  >목록으로</button>
                
                 <button onclick="location.href='update.jsp?num=<%=num %>&pageNum=<%=pageNum %>'"  class="rewrite" type="button"  >수정하기</button>
                
                 <button onclick="location.href='delect.jsp?num=<%=num %>&pageNum=<%=pageNum %>'"  class="delete" type="button"  >삭제하기</button>
                 
                </div>
               
               <%
                    strSQL = "UPDATE tblboard SET readcount=readcount+1 WHERE num = ?";
                    pstmt = conn.prepareStatement(strSQL);
                    pstmt.setInt(1, Integer.parseInt(num));
                    pstmt.executeUpdate();
                   }catch(SQLException e){
                    out.print("SQL에러 " + e.toString());
                   }catch(Exception ex){
                       out.print("JSP에러 " + ex.toString());
                      }finally{   
                   	if (rs != null) try { rs.close(); } catch(SQLException ex) {}
                       if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
                       if (conn != null) try { conn.close(); } catch(SQLException ex) {}
   	               }
	            %>
               
               
                 
            </div>
      
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
 

	 </BODY>
	</HTML>
