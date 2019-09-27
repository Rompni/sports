<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head th:replace="layout/base::head(Sportapp,estilos)">

	
</head>
<body>
<header th:replace="layout/base::header('Registro de usuario')">

</header>
<div class="wrapper">
<div class="container-fluid py-5">
	
		
		
    <div class="row">
        <div class="col-md-12">
            
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <div class="card border-secondary">
                        <div class="card-header">
                            <h3 class="mb-0 my-2">Ingrese sus datos</h3>
                        </div>
                        <div class="card-body">
                            <form class="form" th:action="@{/registro}" th:object="${usuario}" role="form" autocomplete="off" method="post">
                                <div class="form-group">
                                    <label for="inputUsernaName">Nombre de usuario</label>
                                    <input type="text" th:field="*{username}" class="form-control" id="inputUsernaName" placeholder="Nombre de usuario">
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3">Correo electr&oacute;nico</label>
                                    <input type="email" th:field="*{email}" class="form-control" id="inputEmail3" placeholder="email@corre.com" required="">
                                </div>
                                 <div class="form-group">
                                    <label for="inputNombre">Nombres</label>
                                    <input type="text" th:field="*{nombre}" class="form-control" id="inputNombre" placeholder="Nombres" required="">
                                </div>
                                <div class="form-group">
                                    <label for="inputApellidos">Apellidos</label>
                                    <input type="text" th:field="*{apellidos}" class="form-control" id="inputApellidos" placeholder="Apellidos" required="">
                                </div>
                                <div class="form-group">
                                    <label for="inputPassword3">Contrase&ntilde;a</label>
                                    <input type="password" th:field="*{password}" class="form-control" id="inputPassword3" placeholder="password" title="At least 6 characters with letters and numbers" required="">
                                </div>
                                 
                                <div class="form-group">
                                    <button type="submit" class="btn btn-success btn-lg float-right">Registrarse</button>
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
</div>

<footer th:replace="layout/base::footer()"></footer>

</body>
</html>