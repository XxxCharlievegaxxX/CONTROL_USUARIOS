<?php


require_once "models/gestorArticulos.php";
require_once "models/gestorMensajes.php";

require_once "controllers/template.php";
require_once "controllers/gestorArticulos.php";;
require_once "controllers/gestorMensajes.php";

$template = new TemplateController();
$template -> template();