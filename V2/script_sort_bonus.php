<?php 
    require "connexion_BDD.php" ;
    $ID_classe=$_GET['sousclasse'];
    $requete=$db->prepare(" SELECT dom_niveau, dom_sort from domaine_sort
    where dom_sscl_ID=$ID_classe");
    $requete->execute();

    if ($requete->rowCount()!=0){
?>
<p class="h5">Sorts bonus</p>
<table class="table  table-sm">
<tbody>
    <?php
    while($row=$requete->fetch(PDO::FETCH_OBJ)){
    ?>
    <tr>
        <td><?php echo $row->dom_niveau ?></td>
        <td><?php echo $row->dom_sort ?></td>
    </tr>
    <?php }
}?>

