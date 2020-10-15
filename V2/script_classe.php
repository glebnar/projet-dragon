<?php
require "connexion_BDD.php" ;
$ID_classe=$_GET['ChoixClasse'];
$requete=$db->prepare("SELECT cla_DV,cla_competences,cla_savetab,capcl_nom_capacite,capcl_description from classes join capacite_classe on cla_ID=capcl_cla_ID where cla_ID=$ID_classe and capcl_niveau=1 and capcl_sousclasse is null");
$requete->execute();
   

$row=$requete->fetch(PDO::FETCH_OBJ);

$cla_DV=$row->cla_DV;
$cla_competences=$row->cla_competences;
$cla_savetab=$row->cla_savetab;
$capcl_nom_capacite[]=$row->capcl_nom_capacite;
$capcl_description[]=$row->capcl_description;

while ($row=$requete->fetch(PDO::FETCH_OBJ))
{
    $capcl_nom_capacite[]=$row->capcl_nom_capacite;
    $capcl_description[]=$row->capcl_description;    
}
$requete->closeCursor();

$resultat=['cla_DV'=>$cla_DV,'cla_competences'=>$cla_competences,'cla_savetab'=>$cla_savetab,'capcl_nom_capacite'=>$capcl_nom_capacite,'capcl_description'=>$capcl_description];
echo json_encode($resultat);

?>