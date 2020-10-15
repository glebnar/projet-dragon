<?php 
require "connexion_BDD.php" ;
$ID_classe=$_GET['ChoixClasse'];
$requete=$db->prepare("SELECT capcl_nom_capacite,capcl_description from capacite_classe 
where capcl_sousclasse=$ID_classe and capcl_niveau=1");
$requete->execute();

if ($requete->rowCount()!=0){
    while($row=$requete->fetch(PDO::FETCH_OBJ)){
        $capcl_nom_capacite[]=$row->capcl_nom_capacite;
        $capcl_description[]=$row->capcl_description;
    }
    $resultat=['capcl_nom_capacite'=>$capcl_nom_capacite,'capcl_description'=>$capcl_description];
}
$requete->closeCursor();

echo json_encode($resultat);

?>