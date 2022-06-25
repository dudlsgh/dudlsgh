<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
     <Html>
     <Head>
         <Meta charset="UTF-8">
         <link rel="preconnect" href="https://fonts.googleapis.com">
         <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
         <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
         <link rel="stylesheet" type="text/css" href="NewFile.css?vr=1123">
         <title>메인페이</title>
         <!-- 폰트와 css링크 -->
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
        <!-- 윗단 끝 -->
            <ul class="amount">
               <li>
                    <div class="contents1"><a href="#rink_book">책 소개</a></div>
               </li>
               <li>
                    <div class="contents1"><a href="#rink_writer">저자 소개</a></div>
               </li>
            </ul>
            <!-- 바로가기 끝 -->
            
            <div class="main_txt1"id="rink_main">
               <h1>이 책은....</h1>
               <div class="contents1">물론 연필깎는 법에 대한 책이다. 근데 그건 다들 아는 거 아닌가?</div>
               
               <ul class="icons">
          <li>
            <div class="icon_img">
              <img src="image/icon1.png"width=136px
               height=126px>
            </div>
            <div class="contents1_bold">올바른 연필깎기</div>
            <div class="contents2">
                지금까지 당신의 연필 깎는 법은 틀렸다.
            </div>
            <div class="contents2">
                준비운동은 제대로 하셨나요?
            </div>
          </li>

          <li>
            <div class="icon_img">
              <img src="image/icon2.png"width=136px
               height=126px>
            </div>
            <div class="contents1_bold">할리우드 유명인들의 추천</div>
            <div class="contents2">
                레오나르도 디카프리오, 엠마 왓슨<br>그리고... 옆집 아저씨?
            </div>
            <div class="contents2">
                더 이상 설명이 필요한가?
            </div>
          </li>

          <li>
            <div class="icon_img">
              <img src="image/icon3.png"width=136px
               height=126px>
            </div>
            <div class="contents1_bold">그 이면의 철학</div>
            <div class="contents2">
                연필 깎기는 사실 단순한 연필 깎기가 <br>아니였다?
            </div>
            <div class="contents2">
                연필을 마음으로 깎아보자
            </div>
          </li>
        </ul>
      </div>
      <!-- 책소개 끝 -->
      
      <div class="main_text0" id="rink_book">
      
        <h1>책은...</h1>
        <div class="contents1">문필가. 예술가, 건축가, 디자이너, 목수, 기술자<br>
        목수, 기술자, 공무원, 교사를 위한</div>
        
        <div class="service1">
           
          <div class="writer_photo1">
          </div>
           
          <div class="contents2">
              <h2>장인의 혼이 담긴 연필 깎기의 이론과 실제</h2>
              『연필 깎기의 정석』은 말 그대로 ‘연필 깎는 법’을 알려주는 책이다.<br>
              실제로 연필을 대신 깎아주는 서비스를 제공하기도 하는 뉴욕의 만화가이자<br>
              데이비드 리스는 이 책에서 주어진 도구로 가장 완벽하게 연필을 깎는 법을 설명한다.<br>
              주머니 칼을 사용한 방법을 비롯해 외날 휴대용 연필깎이, 다구형 휴대용 연필깎이,<br>
              이중날 회전식 연필깎이 같은 연필 깎는 도구를 이용한 방법까지도 총 망라한다.<br>
              그렇다면 과연 연필 깎는 법을 알아야 할 이유는 무엇일까? 저자는 연필을 깎는 행위는<br>
              자신의 일을 더 완벽하게 해내고 싶은 사람의 마음가짐의 표현이라 말한다.<br>
              연필 깎는 행위는 일을 본격적으로 시작하기 전,명상의 시간이기도 하기 때문이다.<br>
              타자의 눈에는 하찮은 기술로 보일 수도 있는 연필 깎이 기술을 오래 탐구한 끝에<br>
              그가 터득한 모든 것을 담고 있으며, 필요한 도구와 기술부터 철학까지 들여다볼 수 있다.<br>
          </div>
          
          
          
         
          
          
        </div>
        
        <hr color="#d3d3d3">

      <div class="main_text1" id="rink_writer">
        <h1>저자는...</h1>
        <div class="contents3">이 시대 최고의 연필 연마 장인 데이비드 리스</div>
        
        <div class="service2">
          <div class="contents4">
              <h2>"전동 연필깎이를 어찌 믿고 깎는단 말인가."</h2>
              부시 행정부 시절 친구들에게 이메일로 보낸<br>
              정치 풍자만화 ‘겟 유어 워 온’(Get Your War On)이 널리 퍼지면서 유명해졌다.<br>
              클립아트 이미지로 만든 그 만화는 이후 《롤링스톤》에 연재되고 3권의 책으로 출판되어 큰 성공을 거두었으며,<br>
              연극으로 각색돼 오프브로드웨이 무대에 오르기도 했다. <br>
              그 밖에 직장인의 생활을 풍자한 ‘나의 새로운 서류 정리 기술은 아무도 막을 수 없어’ 등의 만화집을 펴냈다.<br>
              현재 뉴욕 주 비컨에 거주하고 있다.<br>
              이제 그는 그 동안 남몰래 갈고 닦은 연필깎이 실력을 여러분께 선보이려 한다.<br>
          </div>
          
          <div class="writer_photo2">
          </div>
          
        </div>
        
      </div>
      <!-- 저자 소개 끝 -->
      <div class="main_text2">
        <ul>
          <li class="img3"></li>
          <li class="img4">
              <div class="text2">
               <div><h1>- How to Sharpen Pencils-</h1></div>
               <div>책에 대한 다른 정보를 찾아보고 싶으시다면 로그인을 해주세요</div>
               <a href="login.jsp"><div class="more2">Login</div></a>
              </div>
           </li>
        </ul>
      </div>
      <!-- 갤러리 끝! -->

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