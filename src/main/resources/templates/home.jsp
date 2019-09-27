<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>Sports</title>

<!-- Bootstrap CSS CDN -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
	integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4"
	crossorigin="anonymous">
<!-- Our Custom CSS -->
<link rel="stylesheet" th:href="@{/css/estilos.css}">

<!-- Font Awesome JS -->
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js"
	integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ"
	crossorigin="anonymous"></script>
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js"
	integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY"
	crossorigin="anonymous"></script>
</head>

<body>
	<div class="wrapper">


		<!-- Sidebar -->
		<nav id="sidebar">
			<div class="sidebar-header">
				<h3>Sports</h3>
			</div>

			<ul class="list-unstyled components">
				<li><a href="/home"><i class="fas fa-home"></i> Home</a></li>
				<li><a href="#"><i class="fas fa-address-card"></i> Mi
						perfil</a></li>
				<li><a href="#" th:href="@{/crear-partida}"><i class="fas fa-cogs"></i> Crear partida</a></li>
				<li><a th:href="@{/buscar-partidas}"><i class="fas fa-search"></i> Buscar
						partidas</a></li>
				<li><a th:href="@{/mis-partidas}"><i class="fas fa-edit"></i> Mis partidas</a></li>
				<li><a href="#"><i class="fas fa-comments"></i> Mis
						Mensajes</a></li>
				<li><a href="#"><i class="fas fa-comment-dots"></i>
						Sugerencias</a></li>
				<li><a th:href="@{/logout}"><i class="fas fa-power-off"></i> Cerrar
						sesi&oacute;n</a></li>

			</ul>
		</nav>


		<!-- Page Content -->
		<div id="content">
			<div class="container-fluid">

				<button type="button" id="sidebarCollapse" class="btn btn-info">
					<i class="fas fa-align-left"></i>
				</button>

			</div>
		</div>
	</div>

	<!-- jQuery CDN - Slim version (=without AJAX) -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<!-- Popper.JS -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"
		integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ"
		crossorigin="anonymous"></script>
	<!-- Bootstrap JS -->
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"
		integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm"
		crossorigin="anonymous"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#sidebarCollapse').on('click', function() {
				$('#sidebar').toggleClass('active');
			});
		});
	</script>
</body>

</html>