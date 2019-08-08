<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>theJeju</title>
	<link rel="stylesheet" href="../css/bootstrap/bootstrap.css">
	<link rel="stylesheet" href="../css/common/header.css">
	<link rel="stylesheet" href="../css/common/theJeju.css">
	<link rel="stylesheet" href="../css/club/clubBoard.css">
	<style>
		#footer {
			width: 100%;
			margin-top: 30px;
		}

		#footer>img {
			width: 100%;
			height: 100%;
		}

		footer {
			background-color: rgb(255,252,239);
			margin-top: 100px;
		}

		.loll{
			background-color: rgb(255,252,239);

		}

		h5{
			color: black;
			margin-bottom:0px;
			margin-top:0px;
		}

		.row {
			margin-right: 0px;
			margin-left: 0px;
		}

		div.row {
			margin-top: 2px;
			margin-bottom: 2px;
		}

		.staricon{
			width:20px;
			height:20px;

		}


		@media screen and (min-width:960px) {
			#moim1{
				display: block;
			}
			#moim2{
				display: none;
			}

		}

		@media screen and (min-width: 768px) and (max-width: 959px) {
			#moim1{
				display: block;
			}
		}

		@media screen and (max-width:767px) {
			#moim2{
				display: block;
			}

			#moim1{
				display: none;
			}

		}

		.content:hover{
			opacity: 0.5;
		}
		.content button:hover{
			opacity: 1;
			z-index: 10;
		}
		.content{
			z-index: 1;
		}
	</style>
</head>


<body class="loll">
<!-- header �κ�-->
<jsp:include page="../header.jsp"></jsp:include>

<!-- 1. Banner -->
<section id="banner" data-video="images/banner">
	<div class="inner">
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<a href="#main" class="more"></a>
	</div>
</section>
<br><br><br><br>
<!-- 2. Title -->
<div class="container" style="width:45%">
	<hr>
</div>
<div class="container" style=" flex-direction: row; width:65%">
	<br><h3 style="text-align: center; color:black;">������ �´� ������ ã��<br>
	sd������ ������ ����� �����غ����䤷��������������������</h3><br>
</div>
<div class="container" style="width:45%">
	<hr><br><br>
</div><br>


<div id="MoimButton" class="container" style="width:70%">
	<span style="margin-right : 20px;"><a href="#">��ȸ��</a></span>
	<span style="margin-right : 20px;"><a href="#">������</a></span>
	<span><a href="#">�ֽż�</a></span>
	<span id="moim1" style="float:right;">
		<a class="btn btn-default" href="clubWrite.html" role="button">���� �����ϱ�</a></span>
</div>

<!-- 3. Main -->
<div id="main">



	<div class="inner">

		<div class="thumbnails">
			<div class="box" style="position: relative;">
				<button id="btn_regist"class="btn btn-warning btn-lg"style="position: absolute; top: 140px; left: 120px; z-index: 1000; display: none;">��û�ϱ�</button>
				<div class="content">



					<a href="clubDetail.html" id="lol" class="image fit"><img src="../images/windsurfing.jpg" alt="" /></a>
					<div class="inner text_box">
						<div class="row" >
							<div class="col-md-7" style="padding-right: 1px; padding-left: 15px;">
								<span style="color:black; float:left; font-size: 25px" >����</span>
							</div>
							<div class="col-md-5" style="padding-right: 1px; padding-left: 1px;">
								<div class="col" style="padding-right: 18px; padding-top:8px;">
									<h5 style="text-align: right;">
										<img class="staricon" src="../images/star.png"></img> 4.5</h5></div>
								<div class="col" style="padding-right: 18px;">
									<h5 style="color: black; font-size:10pt; margin-bottom:0px; text-align: right;">07.11 ~ 07.22</h5></div>
							</div>
						</div>

					</div>

				</div>
			</div>

			<div class="box">
				<a href="https://youtu.be/s6zR2T9vn2c" class="image fit"><img src="../images/mara.jpg" alt="" /></a>
				<div class="inner text_box">
					<div class="row" >
						<div class="col-md-7" style="padding-right: 1px; padding-left: 15px;">
							<span style="color:black; float:left; font-size: 25px" >�����</span>
						</div>
						<div class="col-md-5" style="padding-right: 1px; padding-left: 1px;">
							<div class="col" style="padding-right: 18px; padding-top:8px;">
								<h5 style="text-align: right;">
									<img class="staricon" src="../images/star.png"></img> 4.5</h5></div>
							<div class="col" style="padding-right: 18px;">
								<h5 style="color: black; font-size:10pt; margin-bottom:0px; text-align: right;">07.11 ~ 07.22</h5></div>
						</div>
					</div>

				</div>
			</div>

			<div class="box">
				<a href="https://youtu.be/s6zR2T9vn2c" class="image fit"><img src="../images/bicycle.jpg" alt="" /></a>
				<div class="inner text_box">
					<div class="row" >
						<div class="col-md-7" style="padding-right: 1px; padding-left: 15px;">
							<span style="color:black; float:left; font-size: 25px" >������</span>
						</div>
						<div class="col-md-5" style="padding-right: 1px; padding-left: 1px;">
							<div class="col" style="padding-right: 18px; padding-top:8px;">
								<h5 style="text-align: right;">
									<img class="staricon" src="../images/star.png"></img> 4.5</h5></div>
							<div class="col" style="padding-right: 18px;">
								<h5 style="color: black; font-size:10pt; margin-bottom:0px; text-align: right;">07.11 ~ 07.22</h5></div>
						</div>
					</div>

				</div>
			</div>

			<div class="box">
				<a href="https://youtu.be/s6zR2T9vn2c" class="image fit"><img src="../images/soccer.jpg" alt="" /></a>
				<div class="inner text_box">
					<div class="row" >
						<div class="col-md-7" style="padding-right: 1px; padding-left: 15px;">
							<span style="color:black; float:left; font-size: 25px" >�����౸ȸ</span>
						</div>
						<div class="col-md-5" style="padding-right: 1px; padding-left: 1px;">
							<div class="col" style="padding-right: 18px; padding-top:8px;">
								<h5 style="text-align: right;">
									<img class="staricon" src="../images/star.png"></img> 4.5</h5></div>
							<div class="col" style="padding-right: 18px;">
								<h5 style="color: black; font-size:10pt; margin-bottom:0px; text-align: right;">07.11 ~ 07.22</h5></div>
						</div>
					</div>

				</div>
			</div>

			<div class="box">
				<a href="https://youtu.be/s6zR2T9vn2c" class="image fit"><img src="../images/boardgame.jpg" alt="" /></a>
				<div class="inner text_box">
					<div class="row" >
						<div class="col-md-7" style="padding-right: 1px; padding-left: 15px;">
							<span style="color:black; float:left; font-size: 25px" >�������</span>
						</div>
						<div class="col-md-5" style="padding-right: 1px; padding-left: 1px;">
							<div class="col" style="padding-right: 18px; padding-top:8px;">
								<h5 style="text-align: right;">
									<img class="staricon" src="../images/star.png"></img> 4.5</h5></div>
							<div class="col" style="padding-right: 18px;">
								<h5 style="color: black; font-size:10pt; margin-bottom:0px; text-align: right;">07.11 ~ 07.22</h5></div>
						</div>
					</div>

				</div>
			</div>

			<div class="box">
				<a href="https://youtu.be/s6zR2T9vn2c" class="image fit"><img src="../images/mountaineer.jpg" alt="" /></a>
				<div class="inner text_box">
					<div class="row" >
						<div class="col-md-7" style="padding-right: 1px; padding-left: 15px;">
							<span style="color:black; float:left; font-size: 25px" >���ȸ</span>
						</div>
						<div class="col-md-5" style="padding-right: 1px; padding-left: 1px;">
							<div class="col" style="padding-right: 18px; padding-top:8px;">
								<h5 style="text-align: right;">
									<img class="staricon" src="../images/star.png"></img> 4.5</h5></div>
							<div class="col" style="padding-right: 18px;">
								<h5 style="color: black; font-size:10pt; margin-bottom:0px; text-align: right;">07.11 ~ 07.22</h5></div>
						</div>
					</div>

				</div>
			</div>

			<div class="box">
				<a href="https://youtu.be/s6zR2T9vn2c" class="image fit"><img src="../images/tabletennis.jpg" alt="" /></a>
				<div class="inner text_box">
					<div class="row" >
						<div class="col-md-7" style="padding-right: 1px; padding-left: 15px;">
							<span style="color:black; float:left; font-size: 25px" >������Ȳ��</span>
						</div>
						<div class="col-md-5" style="padding-right: 1px; padding-left: 1px;">
							<div class="col" style="padding-right: 18px; padding-top:8px;">
								<h5 style="text-align: right;">
									<img class="staricon" src="../images/star.png"></img> 4.5</h5></div>
							<div class="col" style="padding-right: 18px;">
								<h5 style="color: black; font-size:10pt; margin-bottom:0px; text-align: right;">07.11 ~ 07.22</h5></div>
						</div>
					</div>

				</div>
			</div>

			<div class="box">
				<a href="https://youtu.be/s6zR2T9vn2c" class="image fit"><img src="../images/photographer.jpg" alt="" /></a>
				<div class="inner text_box">
					<div class="row" >
						<div class="col-md-7" style="padding-right: 1px; padding-left: 15px;">
							<span style="color:black; float:left; font-size: 25px" >�ھƸ� ã��</span>
						</div>
						<div class="col-md-5" style="padding-right: 1px; padding-left: 1px;">
							<div class="col" style="padding-right: 18px; padding-top:8px;">
								<h5 style="text-align: right;">
									<img class="staricon" src="../images/star.png"></img> 4.5</h5></div>
							<div class="col" style="padding-right: 18px;">
								<h5 style="color: black; font-size:10pt; margin-bottom:0px; text-align: right;">07.11 ~ 07.22</h5></div>
						</div>
					</div>

				</div>
			</div>
			<div class="box">
				<a href="https://youtu.be/s6zR2T9vn2c" class="image fit"><img src="../images/billiards.jpg" alt="" /></a>
				<div class="inner text_box">
					<div class="row" >
						<div class="col-md-7" style="padding-right: 1px; padding-left: 15px;">
							<span style="color:black; float:left; font-size: 25px" >�Ӹ����</span>
						</div>
						<div class="col-md-5" style="padding-right: 1px; padding-left: 1px;">
							<div class="col" style="padding-right: 18px; padding-top:8px;">
								<h5 style="text-align: right;">
									<img class="staricon" src="../images/star.png"></img> 4.5</h5></div>
							<div class="col" style="padding-right: 18px;">
								<h5 style="color: black; font-size:10pt; margin-bottom:0px; text-align: right;">07.11 ~ 07.22</h5></div>
						</div>
					</div>

				</div>
			</div>

		</div>
	</div>
</div>
<div id="MoimButton" class="container" style="width:70%">
	<span id="moim2" style="float:right;">
		<a class="btn btn-default btn-lg" href="clubWrite.html" role="button">���� �����ϱ�</a></span>
</div>

<footer class="page-footer font-small indigo">
	<div id="footer" class="container" style="width: 70%">
		<img src="../images/footer1.png">
	</div>

</footer>

<div class="container-fluid">
	<img src="../images/footer2.png" style="width: 100%">
</div>



<!-- �������� �ڹٽ�ũ��Ʈ �߰��ϱ� -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<!-- ��Ʈ��Ʈ�� �ڹٽ�ũ��Ʈ �߰��ϱ� -->
<script src="js/bootstrap.js"></script>
<script type="text/javascript" src="./js/index/mapStoreList.js"></script>
<script>

	$('.content').hover(function(){
		$('#btn_regist').css("display","none");
	});

	$('.content').mouseover(function() {
		$('#btn_regist').css("display","block");
	});


</script>
</body>
</html>