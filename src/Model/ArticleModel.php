<?php

namespace App\Model;

use App\Core\AbstractModel;
use App\Entity\Article;


class ArticleModel extends AbstractModel
{




    /**
     * Sélectionne tous les articles
     */
    function getAllArticles()
    {


        $sql = 'SELECT * 
                FROM article ';

        $results = $this->db->getAllResults($sql);

        $articles = [];
        foreach ($results as $result) {
           
            $articles[] = new Article($result);
        }
        return $articles;
    }
    // Sélectionne une article à partir de son id

    function getOneArticle(int $idArticles)
    {


        $sql = 'SELECT *
            FROM article WHERE id = ?
            ';



        $result = $this->db->getOneResult($sql, [$idArticles]);
        if (empty($result)) {
            return null;
        }

        
        return new Article($result);
    }
}
