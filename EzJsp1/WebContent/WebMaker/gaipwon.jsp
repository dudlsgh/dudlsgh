<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
   <head>
         <Meta charset="UTF-8">
         <link rel="preconnect" href="https://fonts.googleapis.com">
         <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
         <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
         <link rel="stylesheet" type="text/css" href="gaipwon.css?ver=2111">
         <!-- ��Ʈ�� css��ũ -->
         
         <title>���ԿϷ�</title>
         
   </head>
   <body>
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
					
					<li><div><p >MY</p></div>
					<ul>
					    <li><a href="login.jsp">LOGIN</a></li>
					    <li><a href="agree.jsp">SIGNUP</a></li>
					    <li><a href="signForm.jsp">FINDID</a></li>
					    <li><a href="signPass.jsp">FINDPW</a></li>
					  </ul>
					</li>
                  
               </ul>
            </div>
            <div class="intro_txt">
                <h1>���ʱ���� ����</h1>
                <h4 class="contents1">-������ ȥ�� ��� ���� ����� �̷а� ����-</h4>
            </div>
        </div>
        
        <!-- ���� �� -->
        
            <ul class="amount">
            
               <li>
                    <div class="contents1">��� ����</div>
               </li>
               
               <li>
                    <div class="contents1">ȸ�� ����</div>
               </li>
               
               <li class="last">
                    <div class="contents1">���� �Ϸ�</div>
               </li>
            </ul>
            
            <!-- �ٷΰ��� �� -->
      
         <form name="gaip"Action="login.jsp"Method="post" >
            <div class="main_txt1"id="rink_main">
            
               <h1>���ԿϷḦ ���ϵ帳�ϴ�!</h1>
                 
                 <div class="main_text1">
                 <input type="submit"value="�α��� �������� �Ѿ�� ">
                </div>
                 
            </div>
       </form>
      
      <!-- ���� �Ұ� �� -->
      

      <div class="footer">
        <div>���� : How to Sharpen Pencils</div>
        <div>
          ����. ����ȣ <br>
          010 - **** -**** <br>
          COPYRIGHT 2021
        </div>
      </div>
      
      <!-- �ϴ� �� -->
     </div>
    

   </body>
</html>