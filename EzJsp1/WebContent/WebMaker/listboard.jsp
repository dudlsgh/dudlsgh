<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ page import="java.sql.*, java.util.*"%>
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
<link rel="stylesheet" type="text/css" href="listboard.css?ver=112211">

<title>게시판</title>
</head>
<body>
	<%
	String pageNum = request.getParameter("pageNum");

	if (pageNum == null) {
		pageNum = "1";
	}
	int pageInt = Integer.parseInt(pageNum);
	int start = (pageInt - 1) * 10 + 1;
	int end = pageInt * 10;
	int x = 0;

	String url = "jdbc:mysql://localhost:3306/dbmember";
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	try {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, "member", "apple");
		pstmt = conn.prepareStatement("SELECT * FROM tblboard ORDER BY num DESC limit ?,?");
		pstmt.setInt(1, start - 1);
		pstmt.setInt(2, end);
		rs = pstmt.executeQuery();
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
		</div>


		<div class="main_txt1">

			<h1>게시판</h1>

			<center>
				<TABLE clas="table_main" border='0' cellspacing=1 cellpadding=2
					width='600'>

					<TR bgcolor='cccccc'>

						<TD><font size=2><center>
									<b>번호</b>
								</center></font></TD>
						<TD><font size=2><center>
									<b>글 제목</b>
								</center></font></TD>
						<TD><font size=2><center>
									<b>작성자</b>
								</center></font></TD>
						<TD><font size=2><center>
									<b>작성일</b>
								</center></font></TD>
						<TD><font size=2><center>
									<b>조회</b>
								</center></font></TD>
					</TR>

					<%
					while (rs.next()) {
						int num = rs.getInt("num");
						String id = rs.getString("id");
						String title = rs.getString("title");
						String writedate = rs.getString("writedate");
						int readcount = rs.getInt("readcount");
					%>

					<TR bgcolor='ededed'>

						<TD align=center><font size=2 color='black'><%=num%></font></TD>

						<TD align=left><a
							href="write_output.jsp?num=<%=num%>&pageNum=<%=pageInt%>">
								<font size=2 color="black"><%=title%></font>
						</a></TD>

						<TD align=center><font size=2 color="black"><%=id%></font></a></TD>

						<TD align=center><font size=2><%=writedate%></font></TD>

						<TD align=center><font size=2> <%=readcount%></font></TD>
					</TR>
					<%
					}
					%>
				</TABLE>
				<%
				pstmt = conn.prepareStatement("SELECT count(*) FROM tblboard");
				rs = pstmt.executeQuery();
				if (rs.next()) {
					x = rs.getInt(1);
				}
				if (x == 0) {
				%>
				쓰여진 리뷰가 없습니다.

				<%
				} else {
				int pageCount = x / 10 + (x % 10 == 0 ? 0 : 1);
				int startPage = 1;

				if (pageInt % 10 != 0)
					startPage = (int) (pageInt / 10) * 10 + 1;
				else
					startPage = ((int) (pageInt / 10) - 1) * 10 + 1;

				int pageBlock = 10;
				int endPage = startPage + pageBlock - 1;
				if (endPage > pageCount)
					endPage = pageCount;

				if (startPage > 10) {
				%>
				<a href="listboard.jsp?pageNum=<%=startPage - 10%>">[이전]</a>
				<%
				}

				for (int i = startPage; i <= endPage; i++) {
				if (i == pageInt) {
				%>
				<a href="listboard.jsp?pageNum=<%=i%>"><b>[<%=i%>]
				</b></a>
				<%
				} else {
				%>
				<a href="listboard.jsp?pageNum=<%=i%>">[<%=i%>]
				</a>
				<%
				}
				}

				if (endPage < pageCount) {
				%>
				<a href="listboard.jsp?pageNum=<%=startPage + 10%>">[다음]</a>
				<%
				}
				}

				} catch (Exception ex) {
				ex.printStackTrace();
				} finally {
				if (rs != null)
				try {
				rs.close();
				} catch (SQLException ex) {
				}
				if (pstmt != null)
				try {
				pstmt.close();
				} catch (SQLException ex) {
				}
				if (conn != null)
				try {
				conn.close();
				} catch (SQLException ex) {
				}
				}
				%>

				<TABLE border='0' width='600' cellpadding='0' cellspacing='0'>
					<TR>
						<TD><hr size='1' noshade></TD>
					</TR>
				</TABLE>

			</center>
			
			<div class="main_list">

				<button onclick="location.href='write.jsp'" class="list" id="list"
					type="button">글쓰기</button>

			</div>



		</div>

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