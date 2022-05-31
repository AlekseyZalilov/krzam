<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${empty email || empty password  || role!='admin'}">
	<c:redirect url="/Auth" />
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<style>
.form {
	background: #FFFFFF;
	width: 250px;
	margin: 2em;
	padding: 1em;
	text-align: center;
	box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0
		rgba(0, 0, 0, 0.24);
}
input {
	font-family: "Roboto", sans-serif;
	background: #f2f2f2;
	width: 100%;
	border: 0;
	margin: 0 0 15px;
	padding: 10px;
	box-sizing: border-box;
	font-size: 14px;
}

.form input[type="submit"]:hover, .form input[type="submit"]:active,
	.form input[type="submit"]:focus {
	background: #43A047;
}

.form .first p {
	font-family: "Roboto", sans-serif;
	font-size: 14px;
	margin: 0;
}
</style>
<title>Изменить врача</title>
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
          <a class="nav-link active" aria-current="page" href="MainPage.html">Главная страница</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/AdminFeedback">Ответить на вопросы</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/NewTarif">Добавить врача</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/ChangeTarif">Изменить врача</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/DeleteTarif">Удалить врача</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="/Logout">Выйти</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
		<div class="content">
			<div class="allTarifes">
				<c:forEach items="${TarifList}" var="cell">
					<div class="form">
						<form action="/ChangeTarif" method="POST" class="first"
							id="first">
							<p>ID врача</p>
							<input type="text" name="id" placeholder="ID врача" readonly
								value=<c:out value="${cell.ID}"/>>
							<p>Имя врача</p>
							<input type="text" name="name"
								placeholder="Имя Врача" required
								value=<c:out value="${cell.name}" />>
							<p>Табельный номер</p>
							<input type="number" name="speed"
								placeholder="Табельный номер" required
								min="1" value=<c:out value="${cell.speed}"/>>
							<p>Номер телефона</p>
							<input type="number" name="price"
								placeholder="Номер телефона" required min="1"
								value=<c:out value="${cell.price}"/>> <input
								type="submit" value="Изменить" />
						</form>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class=" container-fluid p-1 bg-success text-center text-white">
<p>Zalilov A.M. IFST-31</p>
</div>
	</div>
</body>
</html>