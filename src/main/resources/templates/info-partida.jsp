<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head th:replace="layout/base::head('Mi partida','estilos')">

</head>
<body>
<header th:replace="layout/base::header('Mi partida')"></header>
<div class="wrapper">
<div class="container-fluid">
<div class="row">
<div class="col-md-12">

<div class="row">
<div class="col-md-8 mx-auto">
<div class="card border-secondary">
<div class="card-header">
<h3 class="mb-0 my-2">Informacion de la partida</h3>
</div>
<div class="card-body">

<div th:switch="${mipartida}">
<h2 th:case="null">No se encuentra esta partida</h2>
<div th:case="*">
<table class="table table-striped">
<thead>
<tr>
<th scope="col">Creador</th>
<th scope="col">Deporte</th>
<th scope="col">Ciudad</th>
<th scope="col">Fecha</th>
<th scope="col">Hora de comienzo</th>
<th scope="col">Hora de finalizar</th>
<th scope="col">Participantes</th>
<th scope="col">Suplentes</th>
</tr>
</thead>
<tbody>
<tr>
<td th:text="${mipartida.creador}"></td>
<td th:text="${mipartida.deporte}"></td>
<td th:text="${mipartida.ciudad}"></td>
<td th:text="${mipartida.fecha}"></td>
<td th:text="${mipartida.horaComienzo}"></td>
<td th:text="${mipartida.horaFin}"></td>
<td><span class="badge badge-pill badge-warning" th:text="${#sets.size(mipartida.usuariosParticipantes)+'/'+mipartida.participantes}"></span></td>
<!-- https://github.com/waylau/thymeleaf-tutorial/blob/master/docs/expression-utility-objects.md -->
<td><span class="badge badge-pill badge-warning" th:text="${mipartida.suplentes}"></span></td>
</tr>
</tbody>
</table>

</div>
</div>
</div>
</div>
</div>
</div>
<!--/row-->

<div class="row">
	<div class="col-md-8 mx-auto">
		<div class="card border-secondary">
			<div class="card-header">
			<h3 class="mb-0 my-2">Comentarios</h3>
			</div>
			<div class="card-body">	
			<span class="" th:text="${mipartida.descripcion}"></span>	
			</div>
		</div>
	</div>
</div>
<!--/row-->

</div>
<!--/col-->
</div>
<!--/row-->
</div>
<!--/container-->

</div>

<footer th:replace="layout/base::footer()"></footer>
</body>
</html>