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
textarea {
	resize: none;
	height: 120px;
}
td, th {
	font-family: "Roboto", sans-serif;
	text-align: center;
	font-size: 25px;
}
h1, h2 {
	font-family: "Roboto", sans-serif;
	text-align: center;
}

table {
	margin: 0 auto;
}

td {
	word-break: break-all;
	width: 15em;
}
input {
	font-family: "Roboto", sans-serif;
	background: #f2f2f2;
	width: 100%;
	border: 0;
	margin: 0 0 15px;
	padding: 15px;
	box-sizing: border-box;
	font-size: 14px;
}
.form input[type="submit"]:hover, .form input[type="submit"]:active,
	.form input[type="submit"]:focus {
	background: #43A047;
}
</style>
<title>Вопросы пользователей</title>
</head>
<body>
<body>
	<div class="page">
		<div class="header">
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
		</div>
		<div class="content">
			<div class="form">
				<h1>Ответить на вопросы</h1>
				<form action="/kr/AdminFeedback" method="POST" class="first"
					id="first">
					<input type="number" name="numberQuestion"
						placeholder="номер вопроса" required min="0" />
					<textarea placeholder="Ответ" name="Answer" required></textarea>
					<input type="submit" value="отправить" />
				</form>
			</div>
			<table class="table table-success table-striped">
				<th>номер вопроса</th>
				<th>имя</th>
				<th>email</th>
				<th>вопрос</th>
				<th>ответ</th>
				<c:forEach items="${feedbackList}" var="cell">
					<tr>
						<td align="center"><c:out value="${cell.ID}" /></td>
						<td align="center"><c:out value="${cell.name}" /></td>
						<td align="center"><c:out value="${cell.email}" /></td>
						<td align="center"><c:out value="${cell.question}" /></td>
						<td align="center"><c:out value="${cell.answer}" /></td>
					<tr>
				</c:forEach>
			</table>
		</div>
		<div class=" container-fluid p-1 bg-success text-center text-white">
<p>Zalilov A.M. IFST-31</p>
</div>
	</div>
</body>
</body>
</html>