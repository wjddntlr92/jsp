<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<nav> <!-- 네비게이션 -->
		<div>		
			<button>				
				<span>-</span>				
			</button>			
			<a href="main.jsp">JSP 게시판 웹 사이트</a>
		</div>
		<!-- 게시판 제목 이름 옆에 나타나는 메뉴 영역 -->
		<div>
			<ul>
				<li><a href="main.jsp">메인</a></li>
				<li><a href="bbs.jsp">게시판</a></li>
			</ul>
			
			<ul >
				<li >
					<a href="#">접속하기<span></span></a>					
					<ul >
						<li class="active"><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
	<div>		
		<div >			
			<div style="padding-top: 20px;">
				<form method="post" action="joinAction.jsp">
					<h3 >로그인 화면</h3>
					<div >
						<input type="text" placeholder="아이디" name="userID" maxlength="20">
					</div>
					<div >
						<input type="password" placeholder="비밀번호" name="userPassword" maxlength="20">
					</div>
					<div  >
						<input type="text"  placeholder="이름" name="userName" maxlength="20">
					</div>
					<div >
						<div  data-toggle="buttons">
							<label>
								<input type="radio" name="userGender" autocomplete="off" value="남자" checked>남자
							</label>
							<label >
								<input type="radio" name="userGender" autocomplete="off" value="여자" checked>여자
							</label>
						</div>
					</div>
					<div  >
						<input type="email"  placeholder="이메일" name="userEmail" maxlength="20">
					</div>
					<div>
						<input type="submit"  value="회원가입" >
					</div>
					
					
				</form>
			</div>
		</div>	
	</div>
	
	

</body>
</html>