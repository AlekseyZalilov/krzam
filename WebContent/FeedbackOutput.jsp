<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Ответы на вопросы</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<meta charset="utf-8" />
<style>
td, th {
	font-family: "Roboto", sans-serif;
	text-align: center;
	font-size: 25px;
}

table {
	margin: 0 auto;
}

td {
	word-break: break-all;
	width: 15em;
}
</style>
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
          <a class="nav-link active" aria-current="page" href="/Auth">Войти</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/RegUser">Регистрация</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/Feedback">Обратная связь</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="/FeedbackOutput">Заданные вопросы</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
		<div class="content">
			<h1 align="center">Вопросы</h1>
			<table class="table table-success table-striped">
				<th>номер вопроса</th>
				<th>имя спрашивающего</th>
				<th>вопрос</th>
				<th>ответ</th>
				<c:forEach items="${feedbackList}" var="cell">
					<tr>
						<td align="center"><c:out value="${cell.ID}" /></td>
						<td align="center"><c:out value="${cell.name}" /></td>
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
</html>