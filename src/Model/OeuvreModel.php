<?php

namespace App\Model;

use App\Core\AbstractModel;
use App\Entity\Oeuvre;


class OeuvreModel extends AbstractModel
{




    /**
     * Sélectionne tous les articles
     */
    function getAllOeuvres()
    {


        $sql = 'SELECT * 
                FROM oeuvres ';

        $results = $this->db->getAllResults($sql);

        $oeuvres = [];
        foreach ($results as $result) {
           
            $oeuvres[] = new Oeuvre($result);
        }
        return $oeuvres;
    }
    // Sélectionne une oeuvre à partir de son id

    function getOneOeuvre(int $idOeuvres)
    {


        $sql = 'SELECT *
            FROM oeuvres WHERE id = ?
            ';



        $result = $this->db->getOneResult($sql, [$idOeuvres]);
        if (empty($result)) {
            return null;
        }

        
        return new Oeuvre($result);
    }
}
