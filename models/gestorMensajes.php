<?php

require_once "backend/models/conexion.php";

class MensajesModel{

	#REGISTRO MENSAJES
	#-----------------------------------------------------------

	public function registroMensajesModel($datos, $tabla){

		$stmt = Conexion::conectar()->prepare("INSERT INTO $tabla (nombre, identificacion, telefono, email, profesion, perfil, cargo, vinculacion, dependencia, unidad, extension, fecha) VALUES (:nombre, :identificacion, :telefono, :email, :profesion, :perfil, :cargo, :vinculacion, :dependencia, :unidad, :extension)");

		$stmt -> bindParam(":nombre", $datosModel["nombre"], PDO::PARAM_STR);
		$stmt -> bindParam(":identificacion", $datosModel["identificacion"], PDO::PARAM_INT);
		$stmt -> bindParam(":telefono", $datosModel["telefono"], PDO::PARAM_INT);
		$stmt -> bindParam(":email", $datosModel["email"], PDO::PARAM_STR);
		$stmt -> bindParam(":profesion", $datosModel["profesion"], PDO::PARAM_STR);
		$stmt -> bindParam(":perfil", $datosModel["perfil"], PDO::PARAM_STR);
		$stmt -> bindParam(":cargo", $datosModel["cargo"], PDO::PARAM_STR);
		$stmt -> bindParam(":vinculacion", $datosModel["vinculacion"], PDO::PARAM_STR);
		$stmt -> bindParam(":dependencia", $datosModel["dependencia"], PDO::PARAM_STR);
		$stmt -> bindParam(":unidad", $datosModel["unidad"], PDO::PARAM_STR);
		$stmt -> bindParam(":extension", $datosModel["extension"], PDO::PARAM_INT);
		

		if($stmt->execute()){

			return "ok";
		}
		else{

			return "error";
		}

		$stmt->close();

	}

	#REGISTRO SUSCRIPTORES
	#-----------------------------------------------------------

	public function registroSuscriptoresModel($datos, $tabla){

		$stmt = Conexion::conectar()->prepare("INSERT INTO $tabla (nombre, email) VALUES (:nombre, :email)");

		$stmt -> bindParam(":nombre", $datos["nombre"], PDO::PARAM_STR);
		$stmt -> bindParam(":identificacion", $datosModel["identificacion"], PDO::PARAM_INT);
		$stmt -> bindParam(":email", $datos["email"], PDO::PARAM_STR);

		if($stmt->execute()){

			return "ok";
		}
		else{

			return "error";
		}

		$stmt->close();

	}

	#VALIDAR SUSCRIPTOR EXISTENTE
	#-------------------------------------
	public function revisarSuscriptorModel($datosModel, $tabla){

		$stmt = Conexion::conectar()->prepare("SELECT email FROM $tabla WHERE email = :email");
		
		$stmt->bindParam(":email", $datosModel, PDO::PARAM_STR);
		
		$stmt->execute();
		
		return $stmt->fetch();
		
		$stmt->close();

	}

}