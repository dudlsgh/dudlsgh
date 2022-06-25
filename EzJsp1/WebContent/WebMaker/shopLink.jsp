<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page import = "java.sql.*, java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<HTML>
 <HEAD>
 <link rel="preconnect" href="https://fonts.googleapis.com">
 <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
 <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
 <link rel="stylesheet" type="text/css" href="shopLink.css?ver=11112">
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
                  <%
                  String id="";
                  try{
                  id=(String)session.getAttribute("id");
                  if(id==null||id.equals("")){
                	  
                  %>
					
					<li><div><p >MY</p></div>
					<ul>
					    <li><a href="login.jsp">LOGIN</a></li>
					    <li><a href="agree.jsp">SIGNUP</a></li>
					    <li><a href="signForm.jsp">FINDID</a></li>
					    <li><a href="signPass.jsp">FINDPW</a></li>
					  </ul>
					</li>
                  <%}else{%>
                      
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
                  <%}
                  }catch(Exception e){
                  e.printStackTrace();
                  }%>
                  
               </ul>
            </div>
            <div class="intro_txt">
                <h1>연필깎기의 정석</h1>
                <h4 class="contents1">-장인의 혼이 담긴 연필 깎기의 이론과 실제-</h4>
            </div>
        </div>
      
        
            <div class="main_txt1">
            
               
               <h1>구매 페이지</h1>
               
               <div class="kyobo">
               <button onclick="location.href='https://search.kyobobook.co.kr/web/search?vPstrKeyWord=9788998143107'"  class="kyoboBtn" type="button"  >
               
                   <span class="kyobo_img">
                     <img src="image/kyobo.png">
                    </span>
                    
                   <span class="kyoboSp1">교보문고</span>
                   
                   <span class="kyoboSp2">12,000 -> 10,800 10%할인!</span>
               </button>
               </div>
               
               <div class="aladin">
               <button onclick="location.href='https://www.aladin.co.kr/search/wsearchresult.aspx?SearchTarget=All&SearchWord=9788998143107'"  class="aladinBtn" type="button"  >
               
                   <span class="aladin_img">
                     <img src="image/aladin.png">
                    </span>
                    
                   <span class="aladinSp1">알라딘</span>
                   
                   <span class="aladinSp2">12,000 -> 10,800 10%할인!</span>
               </button>
               </div>
               
               <div class="yp">
               <button onclick="location.href='http://www.ypbooks.co.kr/search.yp?query=9788998143107'"  class="ypBtn" type="button"  >
               
                   <span class="yp_img">
                     <img src="image/yp.png">
                    </span>
                    
                   <span class="ypSp1">영풍문고</span>
                   
                   <span class="ypSp2">12,000 -> 10,800 10%할인!</span>
                   
               </button>
               </div>
               
               <div class="yes24">
               <button onclick="location.href='http://http://www.yes24.com/Product/Search?query=9788998143107'"  class="yes24Btn" type="button"  >
               
                   <span class="yes24_img">
                     <img src="image/yes24.png">
                    </span>
                    
                   <span class="yes24Sp1">yes24</span>
                   
                   <span class="yes24Sp2">12,000 -> 10,800 10%할인!</span>
                   
               </button>
               </div>
               
               <div class="inter">
               <button onclick="location.href='http://bsearch.interpark.com/dsearch/book.jsp?query=9788998143107'"  class="interBtn" type="button"  >
               
                   <span class="inter_img">
                     <img src="image/inter.png">
                    </span>
                    
                   <span class="interSp1">인터파크</span>
                   
                   <span class="interSp2">12,000 -> 10,800 10%할인!</span>
                   
               </button>
               </div>
               
               <div class="gmarket">
               <button onclick="location.href='http://browse.gmarket.co.kr/search?keyword=9788998143107'"  class="gmarketBtn" type="button"  >
               
                   <span class="gmarket_img">
                     <img src="image/gmarket.png">
                    </span>
                    
                   <span class="gmarketSp1">G마켓</span>
                   
                   <span class="gmarketSp2">12,000 -> 10,800 10%할인!</span>
                   
               </button>
               </div>
               
                 
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
