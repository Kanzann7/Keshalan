<?php
session_start();

require '../vendor/autoload.php';
require '../app/config.php';
require '../lib/functions.php';


$path = (str_replace(BASE_URL, '', $_SERVER['REQUEST_URI']));
$path = (str_replace('/index.php', '', $path));
$path = explode('?', $path)[0];

if ($path == "") {
    $path = "/";
}

// Routing
switch ($path) {
    case '/':
        require '../controllers/accueil.php';
        break;
    case '/blog':
        require '../controllers/blog.php';
        break;
        default:
        http_response_code(404);
        echo 'Erreur 404 : Page introuvable';
        exit;
}


