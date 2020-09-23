<?php
include("header.php");
$pageID = $_GET["IDpage"];
$requete="select * from classes where cla_ID=".$pageID;
$result=$db->query($requete);
$contenu=$result->fetch(PDO::FETCH_OBJ);
$moyDV=($contenu->cla_DV/2)+1;

$requete2="select * from evolution where evo_cla_ID=".$pageID;
$result2=$db->query($requete2);
$contenu2=$result2->fetch(PDO::FETCH_OBJ);
?>
    <!-- contenu de page -->
    <div class="container shadow bg-white">
        <div class="row">
            <div class="col-sm-12 mt-3">
                <img class="img-fluid float-right col-sm-4 d-none d-md-block" src="<?php echo $contenu->cla_image ?>" alt="<?php echo $contenu->cla_nom ?>">

                <h3> <?php echo $contenu->cla_nom ?></h3>
                <p><?php echo $contenu->cla_description ?></p>
                <hr>
                <h4>Capacités de classe</h4>
                <p class="Mepclasse mb-2"><b>Points de vie</b></p>
                <p><b>DV: </b> 1d<?php echo $contenu->cla_DV ?> par niveau de <?php echo $contenu->cla_nom ?>
                    <br><b>pv au niveau 1: </b> <?php echo $contenu->cla_DV ?>+modificateur de constitution
                    <br><b>pv aux niveaux suivants</b>1d<?php echo $contenu->cla_DV ?> (ou<?php echo $moyDV ?>) + votre modificateur de constitution</p>
                <p class="Mepclasse mb-2"><b>Maîtrises</b></p>
                <p><b>Armures: </b><?php echo $contenu->cla_armure ?><br>
                    <b>Armes: </b><?php echo $contenu->cla_arme ?> <br>
                    <b>Outils: </b><?php echo $contenu->cla_outil ?> <br>
                    <b>Jets de sauvegarde: </b> <?php echo $contenu->cla_save ?> <br>
                    <b>Compétences: </b><?php echo $contenu->cla_competences ?></p>
                <p class="Mepclasse mb-2"><b>Équipement</b></p>
                <p>Vous commencez avec l'équipement suivant, en plus de l'équipement accordé par votre historique: </p>
                <ul>
                    <?php echo $contenu->cla_equip ?>
                </ul>
                <hr>
                <table class="table table-borderless table-responsive Tabclasse text-center table-sm table-striped">
                    <thead >
                        <tr>
                        <th class="text-center p-0"></th>
                        <th class="text-center p-0"></th>
                        <th class="text-center p-0"></th>
                        <?php 
                          if ($contenu2->evo_artmart!=null){
                            echo "<th ></th>";}
                        if ($contenu2->evo_ki!=null){
                            echo "<th ></th>";}
                        if ($contenu2->evo_mvt!=null){
                            echo "<th ></th>";}
                        if ($contenu2->evo_sorcellerie!=null){
                            echo "<th ></th>";}
                        if ($contenu2->evo_sournoise!=null){
                            echo "<th ></th>";}
                        if ($contenu2->evo_rage!=null){
                            echo "<th ></th>";}
                        if ($contenu2->evo_degat!=null){
                            echo "<th ></th>";}
                        if ($contenu2->evo_sortconnu!=null){
                            echo "<th ></th>";}
                            if ($contenu2->evo_emp!=null){
                                echo "<th ></th>";}
                                if ($contenu2->evo_nvemp!=null){
                                    echo "<th ></th>";}
                                    if ($contenu2->evo_invoc!=null){
                                        echo "<th ></th>";}
                        if ($contenu2->evo_sortmin!=null){echo "<th class=\"text-center p-0\"></th>";}
                            if ($contenu2->evo_sort1!=null){echo "<th class=\"text-center p-0\" colspan=\"9\">Emplacements de sorts</th>";}?>
                        </tr>
                        <tr>
                            <th class="p-0">Niveau</th>
                            <th class="p-0">Bonus de <br>maîtrise</th>
                            <th class="p-0"> Capacités</th>
                            <?php
                            if ($contenu2->evo_artmart!=null){
                                echo "<th >Arts martiaux</th>";}
                            if ($contenu2->evo_ki!=null){
                                echo "<th >Ki</th>";}
                            if ($contenu2->evo_mvt!=null){
                                echo "<th >Mouvement</th>";}
                            if ($contenu2->evo_sorcellerie!=null){
                                echo "<th >points de sorcellerie</th>";}
                            if ($contenu2->evo_sournoise!=null){
                                echo "<th >Attaque sournoise</th>";}
                            if ($contenu2->evo_rage!=null){
                                echo "<th >Rage</th>";}
                            if ($contenu2->evo_degat!=null){
                                echo "<th >Dégats</th>";}
                            if ($contenu2->evo_sortconnu!=null){
                                echo "<th >Sorts connus</th>";}
                                if ($contenu2->evo_emp!=null){
                                    echo "<th >Emplacement<br>de sort</th>";}
                                    if ($contenu2->evo_nvemp!=null){
                                        echo "<th >niveau <br>d'emplacement </th>";}
                                        if ($contenu2->evo_invoc!=null){
                                            echo "<th >Invocation</th>";}
                            if ($contenu2->evo_sortmin!=null){echo "<th >Sorts mineurs<br>connus</th>";}
                            if ($contenu2->evo_sort1!=null and $contenu2->evo_sort6!=null){echo 
                            "<th >1</th>
                            <th >2</th>
                            <th >3</th>
                            <th >4</th>
                            <th >5</th> 
                            <th >6</th>
                            <th >7</th>
                            <th >8</th>
                            <th >9</th>";}
                            else if ($contenu2->evo_sort1!=null and $contenu2->evo_sort6==null){echo "<th >1</th>
                                <th >2</th>
                                <th >3</th>
                                <th >4</th>
                                <th >5</th>";}
                                
                            ?>
                        </tr>
                    </thead>
                    <tbody>
                    <?php 
                    echo"
                    <tr >
                        <td>".$contenu2->evo_niveau."</td>
                        <td>".$contenu2->evo_maitrise."</td>
                        <td>".$contenu2->evo_capacite."</td>";
                        if ($contenu2->evo_artmart!=null){
                            echo "<td>".$contenu2->evo_artmart."</td>";}
                        if ($contenu2->evo_ki!=null){
                            echo "<td>".$contenu2->evo_ki."</td>";}
                        if ($contenu2->evo_mvt!=null){
                            echo "<td>".$contenu2->evo_mvt."</td>";}
                        if ($contenu2->evo_sorcellerie!=null){
                            echo "<td>".$contenu2->evo_sorcellerie."</td>";}
                        if ($contenu2->evo_sournoise!=null){
                            echo "<td>".$contenu2->evo_sournoise."</td>";}
                        if ($contenu2->evo_rage!=null){
                            echo "<td>".$contenu2->evo_rage."</td>";}
                        if ($contenu2->evo_degat!=null){
                            echo "<td>".$contenu2->evo_degat."</td>";}
                        if ($contenu2->evo_sortmin!=null){
                            echo "<td>".$contenu2->evo_sortmin."</td>";}
                        if ($contenu2->evo_sortconnu!=null){
                            echo "<td>".$contenu2->evo_sortconnu."</td>";}
                            if ($contenu2->evo_emp!=null){
                                echo "<td>".$contenu2->evo_emp."</td>";}
                                if ($contenu2->evo_nvemp!=null){
                                    echo "<td>".$contenu2->evo_nvemp."</td>";}
                                    if ($contenu2->evo_invoc!=null){
                                        echo "<td>".$contenu2->evo_invoc."</td>";}
                            if ($contenu2->evo_sort1!=null and $contenu2->evo_sort6!=null){echo
                            "<td>".$contenu2->evo_sort1."</td>
                            <td>".$contenu2->evo_sort2."</td>
                            <td>".$contenu2->evo_sort3."</td>
                            <td>".$contenu2->evo_sort4."</td>
                            <td>".$contenu2->evo_sort5."</td>
                            <td>".$contenu2->evo_sort6."</td>
                            <td>".$contenu2->evo_sort7."</td>
                            <td>".$contenu2->evo_sort8."</td>
                            <td>".$contenu2->evo_sort9."</td>";}
                        else if ($contenu2->evo_sort1!=null and $contenu2->evo_sort6==null){echo
                            "<td>".$contenu2->evo_sort1."</td>
                            <td>".$contenu2->evo_sort2."</td>
                            <td>".$contenu2->evo_sort3."</td>
                            <td>".$contenu2->evo_sort4."</td>
                            <td>".$contenu2->evo_sort5."</td>";}
                   echo "</tr>";
                    while($contenu2=$result2->fetch(PDO::FETCH_OBJ)){
                        echo"
                        <tr >
                            <td>".$contenu2->evo_niveau."</td>
                            <td>".$contenu2->evo_maitrise."</td>
                            <td>".$contenu2->evo_capacite."</td>";
                            if ($contenu2->evo_artmart!=null){
                                echo "<td>".$contenu2->evo_artmart."</td>";}
                            if ($contenu2->evo_ki!=null){
                                echo "<td>".$contenu2->evo_ki."</td>";}
                            if ($contenu2->evo_mvt!=null){
                                echo "<td>".$contenu2->evo_mvt."</td>";}
                            if ($contenu2->evo_sorcellerie!=null){
                                echo "<td>".$contenu2->evo_sorcellerie."</td>";}
                            if ($contenu2->evo_sournoise!=null){
                                echo "<td>".$contenu2->evo_sournoise."</td>";}
                            if ($contenu2->evo_rage!=null){
                                echo "<td>".$contenu2->evo_rage."</td>";}
                            if ($contenu2->evo_degat!=null){
                                echo "<td>".$contenu2->evo_degat."</td>";}
                            if ($contenu2->evo_sortmin!=null){
                                echo "<td>".$contenu2->evo_sortmin."</td>";}
                            if ($contenu2->evo_sortconnu!=null){
                                echo "<td>".$contenu2->evo_sortconnu."</td>";}
                                if ($contenu2->evo_emp!=null){
                                    echo "<td>".$contenu2->evo_emp."</td>";}
                                    if ($contenu2->evo_nvemp!=null){
                                        echo "<td>".$contenu2->evo_nvemp."</td>";}
                                        if ($contenu2->evo_invoc!=null){
                                            echo "<td>".$contenu2->evo_invoc."</td>";}
                                if ($contenu2->evo_sort1!=null and $contenu2->evo_sort6!=null){echo
                                "<td>".$contenu2->evo_sort1."</td>
                                <td>".$contenu2->evo_sort2."</td>
                                <td>".$contenu2->evo_sort3."</td>
                                <td>".$contenu2->evo_sort4."</td>
                                <td>".$contenu2->evo_sort5."</td>
                                <td>".$contenu2->evo_sort6."</td>
                                <td>".$contenu2->evo_sort7."</td>
                                <td>".$contenu2->evo_sort8."</td>
                                <td>".$contenu2->evo_sort9."</td>";}
                            else if ($contenu2->evo_sort1!=null and $contenu2->evo_sort6==null){echo
                                "<td>".$contenu2->evo_sort1."</td>
                                <td>".$contenu2->evo_sort2."</td>
                                <td>".$contenu2->evo_sort3."</td>
                                <td>".$contenu2->evo_sort4."</td>
                                <td>".$contenu2->evo_sort5."</td>";}
                       echo "</tr>";}?>
                      
                    </tbody>
                </table>

            </div>

        </div>


        <!-- ---  -->
    </div>
    <?php
    include("footer.php");
    ?>