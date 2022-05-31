<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Shopping malls</title>
</head>
<body>
	<jsp:include page="./includes/header.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 정보</h1>
		</div>
	</div>
	
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h3>LG Gram 17Z90Q-EA76K</h3>
				<p>
				<p> <b>화면 크기:  </b> </span> 17인치
				<p> <b>Cpu: </b> Intel i7
				<p> <b>저장용량: </b> 512GB
				<p> <b>운영체제: </b> 윈도우11 Home
				<p> <b>저장장치 종류: </b> SSD
				<p> <b>해상도: </b> 2560X1600
				<p> <b>RAM용량: </b> 16GB
				<h4>₩2,609,000</h4>
				<p> <a href="#" class="btn btn-info"> 상품 주문 &raquo;</a>
					<a href="./products.jsp" class="btn btn-secondary">상품목록 &raquo;</a>
			</div>
		</div>
	</div>
	
	
	<jsp:include page="./includes/footer.jsp" />

</body>
</html>