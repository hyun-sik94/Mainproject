<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.css"> -->
<link rel="stylesheet" href="./resources/css/bootstrap.css">  
<script type="text/javascript" src="./resources/js/userForm_validation.js"></script>
<title>Welcome</title>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<div class="jumbotron">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3">
					<form action="/webmarket/signup.do" method="post" name="signFrm">
						<h3>회원가입</h3>
						<h4>회원님의 가입을 축하드립니다 ^^</h4>

						<input type="text" name="name" value=""
							class="form-control input-lg" placeholder="이름">
						<input type="text" id="id" name="id" value=""
							class="form-control input-lg" placeholder="ID">
						<input type="password" id="pass" name="pass" value=""
							class="form-control input-lg" placeholder="비밀번호">
						<input type="password" id="confirm_pass" name="confirm_pass" value=""
							class="form-control input-lg" placeholder="비밀번호 확인">
						<input type="text" id= "nickname" name="nickname" value=""
							class="form-control input-lg" placeholder="닉네임">
						<input type="text" name="zipCode" value=""
							class="form-control input-lg" placeholder="우편번호">
						<input type="text" name="address" value=""
							class="form-control input-lg" placeholder="배송 주소">
						<input type="email" id="email" name="email" value=""
							class="form-control input-lg" placeholder="Email">
						<input type="text" id="phoneNum" name="phoneNum" value=""
							class="form-control input-lg" placeholder="핸드폰 번호 ex) 010-0000-0000">
						<span class="help-block">[가입완료] 버튼을 클릭하여 회원가입을 완료하십시오.</span>
						<input type ="submit" class="btn btn-primary" value="가입완료" onclick="return CheckUserForm()">
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="text-center">
			<h3></h3>
		</div>
	</div>
	<div class="text-center"></div>
	<%@ include file="footer.jsp"%>
</body>
</html>