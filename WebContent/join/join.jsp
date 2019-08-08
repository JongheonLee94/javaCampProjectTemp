<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>register</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>register</title>
	<link rel="stylesheet" href="../css/bootstrap/bootstrap.css">
	<link rel="stylesheet" href="../css/common/catchReview.css">
	<link rel="stylesheet" href="../css/common/header.css">
	<link rel="stylesheet" href="../css/common/footer.css">
	<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">

	<link rel="stylesheet" href="../css/join/registerForm.css">
</head>
<body>

	<!------ Include the above in your HEAD tag ---------->


	<div id="section-1" class="container">

		<div class="card bg-light">
			<article class="card-body mx-auto">
				<h4 class="card-title mt-3 text-center">Create Account</h4>
				<p class="text-center">Get started with your free account</p>


				<p class="divider-text">
					<span class="bg-light">OR</span>
				</p>
				<form id="join" action="/JSP/join.do" method="post">
					<div class="form-group input-group" style="margin-bottom : 0px;">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-envelope"></i>
							</span>
						</div>
						<input id="email" name="email" class="form-control"
						placeholder="Email address" type="email" onblur="checkEmail()">
						<button type="button" class="btn btn-primary btn-block"
						onclick="checkEmail()" style="width: 23%">중복확인</button>
					</div>
					<p id="checkEmail" class="checkResult"></p>
					<!-- form-group// -->
					<div class="form-group input-group" style="margin-bottom : 0px;">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-lock"></i>
							</span>
						</div>
						<input id="password" name="pw" class="form-control"
						placeholder="Create password" type="password" onblur="checkPassword()">
					</div>
					<p id="checkPassword" class="checkResult"></p>
					<!-- form-group// -->
					<div class="form-group input-group" style="margin-bottom : 0px;">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-lock"></i>
							</span>
						</div>
						<input id="password2" class="form-control"
						placeholder="Repeat password" type="password" onblur="checkPassword2()">
					</div>
					<p id="checkPassword2" class="checkResult"></p>
					<!-- form-group// -->
					<div class="form-group input-group" style="margin-bottom : 0px;">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-user"></i>
							</span>
						</div>
						<input id="name" name="name" class="form-control"
						placeholder="Full name" type="text" onblur="checkName()">
					</div>
					<p id="checkName" class="checkResult"></p>
					<!-- form-group// -->
					<div class="form-group input-group" style="margin-bottom : 0px;">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-phone"></i>
							</span>
						</div>
						<input id="phone" name="phone" class="form-control"
						placeholder="not include '-'" type="text" onblur="checkPhone()">
						<button type="button" id="btn-certi"
						class="btn btn-primary btn-block" style="width: 23%" onclick="certificationUser()">본인인증</button>
					</div>
					<p id="checkPhone" class="checkResult"></p>
					<!-- form-group// -->
					

					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-building"></i>
							</span>
						</div>


						<div class="input-group-prepend" style="width:65%">
							<input type="text" id="datepicker" class="form-control" placeholder="input age">
						</div>

						<div class="input-group-prepend radio" style="margin-top: 0px; margin-left:20px;">
							<label class="radio-inline">
								<input type="radio" name="gender" value="0">
								M
							</label>
							<label class="radio-inline">
								<input type="radio" name="gender" value="1">
								W
							</label>
						</div>


					</div>

					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-building"></i>
							</span>
						</div>
						<input id="address1" name="addr1"
						class="form-control" placeholder="address" type="text">
						<button type="button" class="btn btn-primary btn-block"
						style="width: 23%" onclick="sample6_execDaumPostcode()">주소검색</button>
					</div>
					

					<!-- form-group end.// -->
					<div class="form-group input-group">
						<div class="input-group-prepend" style="margin-right: 25px;">
						</div>
						<input id="address2" name="addr2"
						class="form-control" placeholder="detail-address" type="text">
					</div>
					<!-- form-group end.// -->
					<div class="form-group">
						<input type="submit"/>
						<button type="button" onclick="join()" class="btn btn-primary btn-block"
						style="width: 100%">Create Account</button>
					</div>
					<!-- form-group// -->
					<p class="text-center">
						Have an account? <a href="../login/loginForm.jsp">Log In</a>
					</p>
				</form>
			</article>
		</div>
		<!-- card.// -->

	</div>

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="../js/bootstrap.js"></script>
	<script type="text/javascript"
	src="http://t1.daumcdn.net/postcode/api/core/190107/1546836247227/190107.js"></script>
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script>
		function sample6_execDaumPostcode() {
			new daum.Postcode({
				oncomplete : function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

				// 각 주소의 노출 규칙에 따라 주소를 조합한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var addr = ''; // 주소 변수

				//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
				if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
					addr = data.roadAddress;
				} else { // 사용자가 지번 주소를 선택했을 경우(J)
					addr = data.jibunAddress;
				}

				document.getElementById("address1").value = addr;
				document.getElementById("address2").focus();
			}
		}).open();
		}

	</script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="../js/join/join.js"></script>
</body>
</html>