<?php
include("header.php");
?>
    <!-- contenu de page -->
    <div class="container shadow bg-white">
        <div class="row">
            <div class="col-sm-12 mt-3">
                <img class="img-fluid float-right col-sm-4 d-none d-md-block" src="src/img/cleric.jpg" alt="logo">

                <h3> Clerc</h3>
                <p>Les bras et les yeux levés en direction du soleil, une prière sur les lèvres, un elfe commence à
                    briller d'une lumière intérieure qui s'en va guérir ses compagnons usés par le combat. Chantant une
                    chanson de gloire, un nain fait osciller sa hache en de larges mouvements circulaires afin de couper
                    les rangs orques face à lui, criant des louanges aux dieux à chaque ennemi qui tombe. Jetant une
                    malédiction sur les morts-vivants qui s'avancent, un humain brandit son symbole sacré alors qu'une
                    lumière se libère de celui-ci pour repousser les zombis qui se pressaient sur ses compagnons.
<br><br>
                    Les clercs sont des intermédiaires entre le monde des mortels et les plans éloignés des dieux. Aussi
                    variés que les dieux qu'ils servent, les clercs s'efforcent d'incarner l'œuvre de leurs divinités.
                    Un clerc est imprégné de magie divine, ce n'est pas un religieux ordinaire.</p>
                <hr>
                <h4>Capacités de classe</h4>
                <p class="Mepclasse mb-2"><b>Points de vie</b></p>
                <p><b>DV: </b> 1d8 par niveau de clerc
                    <br><b>pv au niveau 1: </b> 8+modificateur de constitution
                    <br><b>pv aux niveaux suivants</b>1d8 (ou5) + votre modificateur de constitution</p>
                <p class="Mepclasse mb-2"><b>Maîtrises</b></p>
                <p><b>Armures: </b></Armures> armures légères et intermédiaires, boucliers <br>
                    <b>Armes: </b>armes courantes <br>
                    <b>Outils: </b>aucun <br>
                    <b>Jets de sauvegarde: </b> Sagesse, Charisme <br>
                    <b>Compétences: </b>choisissez deux compétences parmi Histoire, Médecine, Perspicacité, Persuasion
                    et
                    Religion</p>
                <p class="Mepclasse mb-2"><b>Équipement</b></p>
                <p>Vous commencez avec l'équipement suivant, en plus de l'équipement accordé par votre historique: </p>
                <ul>
                    <li> (a) une masse d'armes ou (b) un marteau de guerre (si vous le maîtrisez)</li>
                    <li>(a) une armure d'écailles ou (b) une armure de cuir ou (c) une cotte de mailles (si vous la
                        maîtrisez)</li>
                    <li>(a) une arbalète légère et 20 carreaux ou (b) une arme courante</li>
                    <li> (a) un sac d'ecclésiastique ou (b) un sac d'explorateur</li>
                    <li>un bouclier et un symbole sacré</li>
                </ul>
                <hr>
                <table class="table table-borderless table-responsive Tabclasse text-center table-sm table-striped">
                    <thead >
                        <tr>
                        <th class="text-center p-0"></th>
                        <th class="text-center p-0">Bonus de </th>
                        <th class="text-center p-0"></th>
                        <th class="text-center p-0"> Sorts mineurs</th>
                        <th class="text-center p-0" colspan="9">Emplacements de sorts</th>
                        </tr>
                        <tr>
                            <th class="p-0">Niveau</th>
                            <th class="p-0">maîtrise</th>
                            <th class="p-0"> Capacités</th>
                            <th class="p-0">connus</th>
                            <th class="p-0">1</th>
                            <th class="p-0">2</th>
                            <th class="p-0">3</th>
                            <th class="p-0">4</th>
                            <th class="p-0">5</th> 
                            <th class="p-0">6</th>
                            <th class="p-0">7</th>
                            <th class="p-0">8</th>
                            <th class="p-0">9</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr >
                            <td>1</td>
                            <td>+2</td>
                            <td>Incantations, Domaîne divin</td>
                            <td>3</td>
                            <td>2</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                        </tr>
                        <tr >
                            <td>2</td>
                            <td>+2</td>
                            <td>Canalisation d’énergie divine (1), Capacité de domaine divin</td>
                            <td>3</td>
                            <td>3</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                        </tr>
                        <tr >
                            <td>3</td>
                            <td>+2</td>
                            <td>-</td>
                            <td>3</td>
                            <td>4</td>
                            <td>2</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                        </tr>
                        <tr >
                            <td>4</td>
                            <td>+2</td>
                            <td>Amélioration de caractéristiques</td>
                            <td>4</td>
                            <td>4</td>
                            <td>3</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                        </tr>
                        <tr >
                            <td>5</td>
                            <td>+3</td>
                            <td>Destruction des morts-vivants (FP 1/2)</td>
                            <td>4</td>
                            <td>4</td>
                            <td>3</td>
                            <td>2</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                        </tr>
                    </tbody>
                </table>

            </div>

        </div>


        <!-- ---  -->
    </div>
    <?php
    include("footer.php");
    ?>