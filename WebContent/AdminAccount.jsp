<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${empty email || empty password  || role!='admin'}">
	<c:redirect url="/Auth" />
</c:if>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Личный кабинет</title>
</head>
<body>
	<div class="page">
		<nav class="navbar navbar-expand-lg navbar-dark bg-success">
  <div class="container-fluid">
    <a class="navbar-brand" href="MainPage.html"><i class="fa fa-hospital-o" aria-hidden="true"></i>Больница</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="AdminAccount.jsp">Страница Администратора</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="AdminFeedback">Ответить на вопросы</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="NewTarif">Добавить врача</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="ChangeTarif">Изменить врача</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="DeleteTarif">Удалить врача</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="Logout">Выйти</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
		<div class="content">
			<%
			Cookie cookie = null;
			Cookie[] cookies = null;
			cookies = request.getCookies();
			String Username = "";
			if (cookies != null) {
				for (int i = 0; i < cookies.length; i++) {
					cookie = cookies[i];
					if (cookie.getName().equals("name")) {
				Username = cookie.getValue().toString();
				break;
					}
				}
			}
			%>
			<h1 align="center">
				Добро пожаловать,
				<%=Username%></h1>
		</div>
		<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/welcome.jpg" class="d-block w-100" alt="..." height ="500px">
    </div>
    <div class="carousel-item">
      <img src="img/admin.PNG" class="d-block w-100" alt="..."height ="500px">
    </div>
    <div class="carousel-item">
      <img src="img/slide1.jpg" class="d-block w-100" alt="..."height ="500px">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
		<div class=" container-fluid p-1 bg-success text-center text-white">
<p>Zalilov A.M. IFST-31</p>
</div>
	</div>
</body>
</html>