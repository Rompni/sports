<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head th:replace="layout/base::head('Login','login')">

</head>
<body>
	<header th:replace="layout/base::header('Ingreso de usuario')"></header>

	<div class="wrapper">
		<div class="container">
			<div class="justify-content-center">
				<div th:if="${param.error}" class="alert alert-danger" role="alert">
					Usuario o contrase&ntilde;a inv&aacute;lido.</div>
				<div th:if="${param.logout}" class="alert alert-success"
					role="alert">Tu has cerrado sesi&oacute;n.</div>
			</div>
			<div class="d-flex justify-content-center h-100">
				<div class="card">
					<div class="card-header">
						<h3>Datos del usuario</h3>

					</div>
					<div class="card-body">
						<form th:action="@{/login}" method="post">
							<div class="input-group form-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fas fa-user"></i></span>
								</div>
								<input type="text" class="form-control" name="username"
									placeholder="username">

							</div>
							<div class="input-group form-group">
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fas fa-key"></i></span>
								</div>
								<input type="password" class="form-control" name="password"
									placeholder="password">
							</div>
							<div class="row align-items-center remember">
								<input type="checkbox">Remember Me
							</div>
							<div class="form-group">
								<input type="submit" value="Ingresar"
									class="btn float-right login_btn">
							</div>


						</form>

					</div>
					<div class="card-footer">
						<div class="d-flex justify-content-center links">
							No tienes una cuenta?<a th:href="@{/registro}">Registrate</a>
						</div>

					</div>

				</div>

			</div>
			
		</div>
	</div>
	</div>

	<footer th:replace="layout/base::footer()"></footer>
</body>
</html>