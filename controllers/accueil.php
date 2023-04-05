<?php

use App\Model\OeuvreModel;
use App\Model\ArticleModel;

$articleModel = new ArticleModel();
$articles = $articleModel->getAllArticles();


$oeuvreModel = new OeuvreModel();

$idOeuvre1 = 1;
$oeuvre1 = $oeuvreModel->getOneOeuvre($idOeuvre1);

$idOeuvre2 = 2;
$oeuvre2 = $oeuvreModel->getOneOeuvre($idOeuvre2);

$idOeuvre3 = 3;
$oeuvre3 = $oeuvreModel->getOneOeuvre($idOeuvre3);

$idOeuvre4 = 4;
$oeuvre4 = $oeuvreModel->getOneOeuvre($idOeuvre4);

$idOeuvre5 = 5;
$oeuvre5 = $oeuvreModel->getOneOeuvre($idOeuvre5);

$idOeuvre6 = 6;
$oeuvre6 = $oeuvreModel->getOneOeuvre($idOeuvre6);

$idOeuvre7 = 7;
$oeuvre7 = $oeuvreModel->getOneOeuvre($idOeuvre7);

$idOeuvre8 = 8;
$oeuvre8 = $oeuvreModel->getOneOeuvre($idOeuvre8);

$idOeuvre9 = 9;
$oeuvre9 = $oeuvreModel->getOneOeuvre($idOeuvre9);

$idOeuvre10 = 10;
$oeuvre10 = $oeuvreModel->getOneOeuvre($idOeuvre10);



$template = 'accueil';
include '../templates/base.phtml';
