<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head th:replace="layout/base::head('Buscar partida','estilos')">

</head>
<body>
	<header th:replace="layout/base::header('Buscar partida')"></header>

	<div class="wrapper">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="row">
						<div class="col-md-8 mx-auto">
							<div class="card">
								<div class="card-header">
									<h3 class="mb-0 my-2">Buscar partidas</h3>
								</div>
								<div class="card-body">
									<form th:action="@{/buscar-partidas}" method="post">
																		
										<div class="form-group row">
										  <label for="inputDeporte" class="col-sm-2 col-form-label">Deportes</label>
										  <div class="col-sm-10">
										  <select class="form-control" id="inputDeporte"  name="deporte" placeholder="Deportes" required >
										    <option value="futbol">Futbol</option>
										    <option value="Basquetball">Basketball</option>
										    <option value="Beisbol">Beisbol</option>
										    <option value="tenis">Tenis</option>
										  </select>
											</div>
										</div>
										
										<div class="form-group row">
											<label for="inputCiudad" class="col-sm-2 col-form-label">Ciudad</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="inputCiudad"
													name="ciudad" placeholder="Ciudad">
											</div>
										</div>
										<div class="form-group row">
											<label for="inputDepto" class="col-sm-2 col-form-label">Departamento</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="inputDepto"
													name="dpto" placeholder="Departamento">
											</div>
										</div>
										<div class="form-group row">
											<div class="col-sm-10">
												<button type="submit" class="btn btn-primary">Buscar</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8 mx-auto">


					<div class="card">
						<div class="card-header">
							<h3 class="mb-0 my-2">Resultados de la busqueda</h3>
						</div>
						<div class="card-body">
							<table class="table table-striped">
								<thead>
									<tr>
										<th scope="col">Partida</th>
										<th scope="col">Deporte</th>
										<th scope="col">Ciudad</th>
										<th scope="col">Fecha</th>
										<th scope="col">Hora comienzo</th>
										<th scope="col">Participantes</th>
										<th scope="col">Comentarios</th>
										<th scope="col">Acci&oacute;n</th>
									</tr>
								</thead>
								<tbody>
									<tr th:each="partida : ${partidas}">
										<td th:text="${partida.id}"></td>
												 	<td th:text="${partida.deporte}"></td>
												 	<td th:text="${partida.ciudad}"></td>
												 	<td th:text="${partida.fecha}"></td>
												 	<td th:text="${partida.horaComienzo}"></td>
												 	<td th:text="${partida.participantes}"></td>
												 	<td th:text="${partida.descripcion}"></td>
												 	<td><a th:href="@{/unirse-partida/{id}(id=${partida.id})}"  class="btn btn-success btn-sm active" role="button" aria-pressed="true">Unirse</a></td>
												
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>