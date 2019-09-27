<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head th:replace="layout/base::head('Crear partida','estilos')">

</head>
<body>
	<header th:replace="layout/base::header('Crear partida')"></header>
	<div class="wrapper">
		<div class="container-fluid py-5">
			<div class="row">
				<div class="col-md-12">

					<div class="row">
						<div class="col-md-6 mx-auto">
							<div class="card border-secondary">
								<div class="card-header">
									<h3 class="mb-0 my-2">Crear partidas</h3>
								</div>
								<div class="card-body">
									<form id="myform" class="form" th:action="@{/crear-partida}"
										th:object="${partida}" role="form" autocomplete="off"
										method="post">
										<div class="form-group">
											<label for="inputCreador">Creador</label> <input
												type="text" th:field="*{creador}" class="form-control"
												id="inputCreador" name="creador" placeholder="Creador" readOnly>
										</div>
										<!--  
										<div class="form-group">
											<label for="inputDeporte">Deporte</label> <input
												type="text" th:field="*{deporte}" name="deporte" class="form-control"
												id="inputDeporte" placeholder="Deporte" required>
										</div>
										-->
										
										<div class="form-group">
										  <label for="inputDeporte">Deportes</label>
										  <select class="form-control" id="inputDeporte" th:field="*{deporte}" name="deporte" placeholder="Deportes" required >
										    <option th:value="futbol" th:text="Futbol"></option>
										    <option th:value="Basquetball"th:text="Basketball"></option>
										    <option th:value="Beisbol" th:text="Beisbol"></option>
										    <option th:value="tenis" th:text="Tenis"></option>
										  </select>
										</div>
										
										
										
										
										
										<div class="form-group">
											<label for="inputCiudad">Ciudad</label> <input type="text"
												th:field="*{ciudad}" name="ciudad" class="form-control" id="inputCiudad"
												placeholder="Ciudad" required="">
										</div>
										<div class="form-group">
											<label for="inputDepartamento">Departamento</label> <input
												type="text" th:field="*{departamento}" name="departamento" class="form-control"
												id="inputDepartamento" placeholder="Departamento" required="">
										</div>
										<div class="form-group">
											<label for="inputFecha">Fecha</label> <input
												type="date" th:field="*{fecha}" class="form-control"
												id="inputFecha" placeholder="Fecha"
												title=""
												required="">
										</div>
										<div class="form-group">
											<label for="inputHComienzo">Hora de inicio</label> <input
												type="text" th:field="*{horaComienzo}" name="horaComienzo" class="form-control"
												id="inputHComienzo" placeholder="00:00 - 23:59"
												title="hh:mm:ss"
												pattern="([01]?[0-9]|2[0-3]):[0-5][0-9](:[0-5][0-9])?">
										</div>
										<div class="form-group">
											<label for="inputHFin">Hora Final</label> <input
												type="text" th:field="*{horaFin}" name="horaFin" class="form-control"
												id="inputHFin" placeholder="00:00 - 23:59"
												title="hh:mm:ss"
												pattern="([01]?[0-9]|2[0-3]):[0-5][0-9](:[0-5][0-9])?">
										</div>
										<div class="form-group">
											<label for="inputParticipantes">Participantes</label> <input
												type="number" th:field="*{participantes}" name="participantes" class="form-control"
												id="inputParticipantes" placeholder="Numero participantes"
												title=""
												required="">
										</div>
										<div class="form-group">
											<label for="inputSuplentes">Suplentes</label> <input
												type="number" th:field="*{suplentes}" name="suplentes" class="form-control"
												id="inputSuplentes" placeholder="Numero suplentes"
												title=""
												required="">
										</div>
										<div class="form-group">
											<label for="inputDescripcion">Descripcion</label> <textarea
												 th:field="*{descripcion}" name="descripcion" class="form-control"
												id="inputDescripcion" placeholder="Descripción"
												title=""
												required=""></textarea>
										</div>
										<div class="form-group">
											<button type="submit"
												class="btn btn-success btn-lg float-right">Crear partida</button>
										</div>
									</form>
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
		<script type="text/javascript">
			$(function() {
		    	$("#myform").validator();
			});
		</script>

	</div>

	<footer th:replace="layout/base::footer()"></footer>
</body>
</html>