<?php

class Conexion{

	public function conectar(){

		$link = new PDO("mysql:host=localhost;dbname=control_usuarios","root","");
		return $link;

	}

}