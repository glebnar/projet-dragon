<?php 
require "connexion_BDD.php" ;
$ID_classe=$_GET['ChoixClasse'];
$requete_sous_classe=$db->prepare("SELECT * FROM ss_classe where sscl_cla_ID=$ID_classe");
$requete_sous_classe->execute();
?>


<label for="SS_race">Sous-races</label>
    <select name="SS_race" id="SS_race" class="form-control">
        <option value="">Choisissez</option>
    <?php  
    while ($option_sous_classe=$requete_sous_classe->fetch(PDO::FETCH_OBJ))
        { ?>

        <option value="<?php echo $option_sous_classe->sscl_ID ?>"><?php echo $option_sous_classe->sscl_nom ?></option>


      <?php  } ?>
    </select>