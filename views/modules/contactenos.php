<footer class="row" id="contactenos">

	<hr>
	
	<h1 class="text-center text-info"><b>FORMULARIO ACTIVACIÓN</b></h1>

	<hr>
	
	
	<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" id="formulario" >




			<form method="post" onsubmit="return validarMensaje()">



			    <input type="text" class="form-control" id="nombre" name="nombre"  placeholder="Nombre Completo" required>

			    <input type="number" class="form-control" id="identificacion" name="nombre"  placeholder="N° Identificación" required>

			    <input type="number" class="form-control" id="telefono" name="nombre"  placeholder="Teléfono" required>


			    <input type="email" class="form-control" id="email" name="email" placeholder="Email" required>

			     <input type="text" class="form-control" id="profesion" name="nombre"  placeholder="Profesión/Especialidad" required>


			     <select type="text" id="perfil"  class="form-control" placeholder=" Tipo de perfil" required>
			      <option></option>
                  <option>Administrativo</option>
                  <option>Asistencial</option>
                  <option>Especialidad</option>

                 </select>


                  <input type="text" class="form-control" id="cargo" name="cargo"  placeholder="Cargo a Desempeñar" required>

                  <select type="text" id="vinculacion"  class="form-control" placeholder="Tipo de Vinculación" required>
			      <option></option>
                    <option>Planta</option>
                    <option>Contrato</option>
                    <option>Residente</option>
                    <option>Interno</option>
                    <option>Pasantía</option>
                    <option>Otro</option> 

                 </select>

              

                 <input type="text" class="form-control" id="dependencia" name="nombre"  placeholder="Nombre Dependencia" required>

                 <select type="text" id="unidad"  class="form-control" placeholder="Unidad Funcional" required>
			      <option></option>
                  <option>Samaritana Bogota</option>
                  <option>Hospital Regional de Zipaquira</option>
                  <option>Unidad Funcional de Zipaquira</option>

                 </select>


                 <input type="number" class="form-control" id="extension" name="nombre"  placeholder="Extensión de Contacto" required>



     

			 
			  	<input type="submit" class="btn btn-success" value="Enviar">
		</form>

		<?php

		$formulario_activacion = new MensajesController();
		$formulario_activacion -> registroMensajesController();

		?>
				
	</div>

</footer>
