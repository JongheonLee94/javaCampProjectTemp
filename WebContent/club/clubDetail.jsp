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
	<style>
		@import url(fonts.googleapis.com/earlyaccess/jejugothic.css);

		h1 {
			color: black;
			font-family: 'Jeju Gothic', sans-serif;
		}

		@media screen and (min-width:960px) {
			#shedule {
				width: 90%;
				margin: 0;
				margin-left: 100px;
				margin-top: 100px;
			}
			.jumbotron {
				width: 600px;
				height: 456px;
				margin-left: 40px;
			}
			#mapsection {
				width: 980px;
				height: 400px;
				margin-top: 100px;
			}
			.box {
				background-color: red;
				width: 55px;
				height: 55px;
				position: absolute;
				left: -80px;
				border-radius: 100px;
			}

		}

		@media screen and (min-width: 768px) and (max-width: 959px) {
			#mapsection {
				width: 700px;
				height: 300px;
				margin-top: 100px;
			}
			.box {
				background-color: red;
				width: 55px;
				height: 55px;
				position: absolute;
				left: -80px;
				border-radius: 100px;
			}
		}

		@media screen and (max-width:767px) {
			#shedule {
				margin-left: 40px;
				margin-top : 50px;
			}
			.jumbotron {
				width: 450px;
				height: 300px;
				padding: 0px;
			}
			#mapsection {
				width: 450px;
				height: 300px;
				margin-top: 30px;
			}
			.box {
				background-color: red;
				width: 35px;
				height: 35px;
				position: absolute;
				left: -35px;
				border-radius: 100px;
			}
		}

		.jumbotron {
			padding: 0px;
		}

		.jumbotron>img {
			width: 100%;
			height: 100%;
		}

		#footer {
			width: 100%;
			margin-top: 30px;
		}

		#footer>img {
			width: 100%;
			height: 100%;
		}

		footer {
			background-color: #404040;
			margin-top: 100px;
		}

		#map {
			width: 300px;
			height: 300px;
		}

		.box > img{
			width:100%;
			height:100%;
			border-radius: 100px;
		}

		#flag{
			width: 30px;
			height: 30px;
			position: relative;
			top : 54px;
			left : -10px;
		}

		#flag img{
			width:100%;
			height: 100%;
		}

		.modal td{
			border-top-width: 0ch
			!important;
		}
	</style>
</head>
<body>
<!-- header �κ�-->
<jsp:include page="../header.jsp"></jsp:include>


<br>

<!-- 2. Main -->
<div class="container" style="margin-top: 20px;">
	<div class="container" style="position: relative;">
		<div id="flag">
			<img id="flagImg" src="../images/flag1.png">
		</div>
		<h2 style="margin-left: 30px;">The JEJU</h2>
	</div>

	<div class="row" style="margin-top : 30px;">
		<div class="col-md-5" id="text_box">
			<table class="table">
				<tbody>
				<tr>
					<td><p>Mento</p></td>
					<td><p>Price</p></td>
				</tr>
				<tr>
					<td><p>sDate</p></td>
					<td><p>eDate</p></td>
				</tr>
				<tr>
					<td colspan="2" style="padding-bottom: 200px;">
						<p>Content</p>
					</td>
				</tr>
				<tr>
					<td><p>entryNum</p></td>
					<td><p>addr</p></td>
				</tr>
				<tr>
					<td colspan="2">
						<p class="text-center" style="margin-top: 20px;">
							<a class="btn btn-warning btn-lg" data-target="#modal"
							   data-toggle="modal" style="width:100%">��û�ϱ�</a>
						</p>
					</td>
				</tr>
				</tbody>
			</table>
		</div>
		<div class="col-sm-7">
			<div class="jumbotron" style="padding: 0px;">
				<img src="../images/jejuimg01.png">
			</div>
		</div>
	</div>

	<div id="shedule" class="container" style="position : relative;">
		<div class="box" style="top:-10px;">
			<img src="../images/icon/beach.png">
		</div>
		<div class="box" style="top:90px;">
			<img src="../images/icon/orange.png">
		</div>
		<div class="box" style="top:190px;">
			<img src="../images/icon/palm.png">
		</div>
		<table class="table table-striped table-hover">
			<tbody>
			<tr>
				<td>1Day</td>
				<td style="width: 40%">Contents</td>
				<td>�ֿ�</td>
				<td>70,000</td>
				<td>2��</td>
			</tr>
			<tr>

				<td colspan="3" style="padding: 30px;"></td>
			</tr>
			<tr>
				<td>2Day</td>
				<td style="width: 40%">Contents</td>
				<td>�ֿ�</td>
				<td>70,000</td>
				<td>2��</td>
			</tr>
			<tr>
				<td colspan="3" style="padding: 30px;"></td>
			</tr>
			<tr>
				<td>3Day</td>
				<td style="width: 40%">Contents</td>
				<td>�ֿ�</td>
				<td>70,000</td>
				<td>2��</td>
			</tr>
			</tbody>
		</table>
	</div>

	<div id="mapsection" class="container">
		<div id="map" style="width: 100%; height: 100%"></div>
	</div>


</div>
<footer class="page-footer font-small indigo">
	<div id="footer" class="container" style="width: 70%">
		<img src="../images/footer1.png">
	</div>

</footer>

<div class="container">
	<img src="../images/footer2.png" style="width: 100%">
</div>



<!-- ���â -->
<div class="modal" id="modal" tabindex="-1">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				�ֿ������� �Ѷ��.
				<button class="close" data-dismiss="modal">&times;</button>
			</div>
			<div class="modal-body" style="text-align: center;">
				<div class="row">
					<div class="col-sm-12">

						<table class="table" style="margin-bottom: 60px;">
							<tr style="border:0;">
								<td><input type="checkbox" disabled></td>
								<td style="width:75%; text-align: left;">1����</td>
								<td>��15,000</td>
							</tr>
							<tr style="border:0;">
								<td><input type="checkbox"></td>
								<td style="width:75%; text-align: left;">2����</td>
								<td>��15,000</td>
							</tr>
							<tr style="border:0;">
								<td><input type="checkbox"></td>
								<td style="width:75%; text-align: left;">3����</td>
								<td>��15,000</td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td style="width:75%; text-align: left;">3����</td>
								<td>15,000</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="row" style="margin-bottom: 12px;">
					<div class="col-sm-12">
						�� �ݾ�&nbsp;&nbsp;&nbsp;&nbsp;
						<span style="text-decoration: underline;">$12,000</span>
					</div>
				</div>
				<div class="row" style="margin-bottom: 15px;">
					<div class="col-sm-12">
						<span style="text-decoration: underline;">������</span>�� ��û�Ͻðڽ��ϱ�? <input type="button" class="btn btn-default" value="��û�ϱ�" style="margin-left: 30px;">
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<!-- �������� �ڹٽ�ũ��Ʈ �߰��ϱ� -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<!-- ��Ʈ��Ʈ�� �ڹٽ�ũ��Ʈ �߰��ϱ� -->
<script src="../js/bootstrap.js"></script>
<script type="text/javascript"
    src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e0853fb58f3f6c7a181c9ca5c58735af&libraries=services"></script>
<script>
    var mapContainer = document.getElementById('map'), // ������ ǥ���� div
    mapOption = {
        center : new daum.maps.LatLng(33.450701, 126.570667), // ������ �߽���ǥ
        level : 5
    // ������ Ȯ�� ����
    };

    //������ �����մϴ�
    var map = new daum.maps.Map(mapContainer, mapOption);
</script>
<script>
	//����
	var i = 0;
	$('#flag').on('click', function() {

		i++;
		if (i % 2 == 0) {
			$('#flagImg').attr("src", "../images/flag1.png");
		} else {
			$('#flagImg').attr("src", "../images/flag2.png");
		}
	});
</script>
</body>
</html>
<!--
https://fonts.google.com/
https://fonts.google.com/earlyaccess
-->