<?php 
require "connexion_BDD.php" ;
$ID_race=$_GET['GetRace'];

if ($ID_race!=3)
{
    // va chercher les spécificitée de la race selectionnée si elle a des capacités raciales
        $requete_race=$db->prepare("SELECT DISTINCT rac_carac,rac_vitesse,cap_nom_capacite,cap_description,cap_comp FROM race 
        join capacite_race on rac_ID=cap_rac_ID where rac_ID=$ID_race and cap_tri_ID is null");
        $requete_race->execute();

        if (!$requete_race) 
        {
            $tableauErreurs = $db->errorInfo();
            echo $tableauErreur[2]; 
            die("Erreur dans la requête");
        }
        if ($requete_race->rowCount() == 0) 
        {
            // Pas d'enregistrement
            die("La table est vide");
        }    

        $row=$requete_race->fetch(PDO::FETCH_OBJ);
        $rac_carac=$row->rac_carac;
        $rac_vitesse=$row->rac_vitesse;
        $NomCapaRace[]=$row->cap_nom_capacite;
        $DescCapaRace[]=$row->cap_description;
        $CompRace[]=$row->cap_comp;

while ($row=$requete_race->fetch(PDO::FETCH_OBJ))
{
    $NomCapaRace[]=$row->cap_nom_capacite;
    $DescCapaRace[]=$row->cap_description;
    $CompRace[]=$row->cap_comp;
}
$requete_race->closeCursor();

// va chercher l'image associée à la race 
$requete_image=$db->prepare("SELECT distinct artr_image from article_race where artr_rac_ID=$ID_race");
$requete_image->execute();
    if (!$requete_image) 
    {
        $tableauErreurs = $db->errorInfo();
        echo $tableauErreur[2]; 
        die("Erreur dans la requête");
    }
    if ($requete_image->rowCount() == 0) 
    {
        // Pas d'enregistrement
        die("La table est vide");
    }
$row_image=$requete_image->fetch(PDO::FETCH_OBJ);
$artr_image=$row_image->artr_image;
$requete_image->closeCursor();
// --------------

$resultat=['rac_carac'=>$rac_carac,'rac_vitesse'=>$rac_vitesse,
'cap_nom_capacite'=>$NomCapaRace,'cap_description'=>$DescCapaRace,'cap_comp'=>$CompRace,'artr_image'=>$artr_image];
echo json_encode($resultat);}
    // va chercher les spécificitée de la race selectionnée si elle n'a pas de capacités raciales

else {
    $requete_race=$db->prepare("SELECT DISTINCT rac_carac,rac_vitesse FROM race  where rac_ID=$ID_race");
    $requete_race->execute();

    if (!$requete_race) 
    {
        $tableauErreurs = $db->errorInfo();
        echo $tableauErreur[2]; 
        die("Erreur dans la requête");
    }
    if ($requete_race->rowCount() == 0) 
    {
        // Pas d'enregistrement
        die("La table est vide");
    }  

    $row=$requete_race->fetch(PDO::FETCH_OBJ);
    $rac_carac=$row->rac_carac;
    $rac_vitesse=$row->rac_vitesse;
    $requete_race->closeCursor();

    // va chercher l'image associée à la race 
$requete_image=$db->prepare("SELECT distinct artr_image from article_race where artr_rac_ID=$ID_race");
$requete_image->execute();
    if (!$requete_image) 
    {
        $tableauErreurs = $db->errorInfo();
        echo $tableauErreur[2]; 
        die("Erreur dans la requête");
    }
    if ($requete_image->rowCount() == 0) 
    {
        // Pas d'enregistrement
        die("La table est vide");
    }
$row_image=$requete_image->fetch(PDO::FETCH_OBJ);
$artr_image=$row_image->artr_image;
$requete_image->closeCursor();
// --------------

    $resultat=['rac_carac'=>$rac_carac,'rac_vitesse'=>$rac_vitesse,'artr_image'=>$artr_image];
    echo json_encode($resultat);
}
    



?>
