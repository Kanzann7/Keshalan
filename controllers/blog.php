<?php

use App\Model\ArticleModel;
use App\Model\CommentModel;

//Validation du paramètre id de l'URl

if (!array_key_exists('id', $_GET) || !$_GET['id'] || !ctype_digit($_GET['id'])) {
    http_response_code(404);
    echo 'Article introuvable';
    exit; // Fin de l'exécution du script PHP
}

// Récupération du paramètre id de l'URL
$idArticle = (int) $_GET["id"];
$articleModel = new ArticleModel();

$articles = $articleModel->getAllArticles();




$commentModel = new CommentModel();
if (!empty($_POST)) {

    // 1. Récupération des donnnées du formulaire et sécurisation des données entrées
    $nickname = htmlspecialchars($_POST['nickname']) ;
    $content = htmlspecialchars($_POST['comment']) ;

    // 2. Validation des données

    $errors = validateCommentForm($nickname, $content);

    // 3. Traitements des données
    if (!$errors) {

        // Insertion des données

        $commentModel->addComment($nickname, $content, $idArticle);

        //message flash
        $_SESSION['flashbag'] = "Votre commentaire a bien été ajouté";

        //Redirection vers la page article 
        header('Location: ' . constructUrl('/blog', ['id' => $idArticle]));
        exit;
    }
}

// Sélection des commentaires associés à l'article pour les afficher

$comments = $commentModel->getCommentsByArticleId($idArticle);


if (array_key_exists('flashbag', $_SESSION) && $_SESSION['flashbag']) {
    $flashMessage = $_SESSION['flashbag'];
    $_SESSION['flashbag'] = null;
}












$template = 'blog';

include '../templates/base.phtml';
