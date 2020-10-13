<?php 
require "connexion_BDD.php" ;
$ID_sous_classe=$_GET['Choix_sous_race'];
$requete=$db->prepare("SELECT tri_carac,cap_nom_capacite,cap_description from tribus join race on rac_ID=tri_rac_ID join capacite_race on rac_ID=cap_rac_ID where tri_ID=$ID_sous_classe and cap_tri_ID=$ID_sous_classe");
$requete->execute();

if (!$requete) 
        {
            $tableauErreurs = $db->errorInfo();
            echo $tableauErreur[2]; 
            die("Erreur dans la requête");
        }
        if ($requete->rowCount() == 0) 
        {
            // Pas d'enregistrement
            die("La table est vide");
        }   

$row=$requete->fetch(PDO::FETCH_OBJ);
$tri_carac=$row->tri_carac;
$cap_nom_capacite[]=$row->cap_nom_capacite;
$cap_description[]=$row->cap_description;

while ($row=$requete->fetch(PDO::FETCH_OBJ))
{
    $cap_nom_capacite[]=$row->cap_nom_capacite;
    $cap_description[]=$row->cap_description;
}

$resultat=['tri_carac'=>$tri_carac,'cap_nom_capacite'=>$cap_nom_capacite,'cap_description'=>$cap_description];
$requete->closeCursor();

echo json_encode($resultat);

?>