<?php 
require "connexion_BDD.php" ;
$ID_race=$_GET['ChoixRace'];
$requete_ss_race=$db->prepare("SELECT * FROM tribus where tri_rac_ID=$ID_race");
$requete_ss_race->execute();
?>


<label for="SS_race">Sous-races</label>
    <select name="SS_race" id="SS_race" class="form-control">
        <option value="">Choisissez</option>
    <?php  
    while ($option_ss_race=$requete_ss_race->fetch(PDO::FETCH_OBJ))
        { ?>

        <option value="<?php echo $option_ss_race->tri_ID ?>"><?php echo $option_ss_race->tri_nom ?></option>


      <?php  } ?>
    </select>
        