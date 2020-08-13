<?php

session_start();

if(!$_SESSION["validar"]){

	header("location:ingreso");

	exit();

}

include "views/modules/botonera.php";
include "views/modules/cabezote.php";

?>

<!--=====================================
INICIO       
======================================-->

<div id="inicio" class="col-lg-10 col-md-10 col-sm-9 col-xs-12">
 
	<div class="jumbotron">
	    <h1>Bienvenidos</h1>
	    <p>Bienvenidos al panel de control.</p>
	</div>

		<hr>
	
	<ul>

		

		<li class="botonesInicio">
		
			<a href="articulos">
			<div style="background:#1f862f">
			<span class="fa fa-file-text-o"></span>
			<p>FORMULARIO</p>
			</div>
			</a>

		</li>

		

		</li>

		<?php 

	  	if($_SESSION["rol"] == 0){

			echo '<li class="botonesInicio">
			
				<a href="suscriptores">
				<div style="background:#1f4386">
				<span class="fa fa-users"></span>
				<p>SOLICITUDES</p>
				</div>
				</a>

			</li>';

		}
		?>

	</ul>

</div>


<!--====  Fin de INICIO  ====-->