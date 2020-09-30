<?php
include("header.php");
echo "<script> ValeurRace=[];VitesseRace=[]; NomRace=[]; ImageRace=[];
NomClasse=[];
DvClasse=[];
CompClasse=[];
TabSaveClasse=[];
NomSSclasse=[];
ImageClasse=[];
CompRace=[];
</script>";
?>
    <!-- contenu de page -->
    <div class="container shadow bg-white " >
        <form action="http://bienvu.net/script.php" method="POST">
            <fieldset>

                <legend class="h2">Feuille de personnage</legend>
                <!-- partie supérieur de la Feuille -->
                <div class="row">
                    <div class="form-group col-sm-3">
                        <label for="nom">Nom: </label>
                        <input class="form-control " type="text" name="nom" id="nom">
                    </div>
                    <div class="form-group col-sm-3">
                        <label for="race">Race </label>
                        <select name="race" id="formrace" class="form-control">
                            <option value="">Choisissez</option>
                            <!-- crée les options pour la case race  -->
                            <?php 
                            $requetechoix1="select * from race";
                            $resultchoix1=$db->query($requetechoix1);
                            while ($produitchoix1=$resultchoix1->fetch(PDO::FETCH_OBJ))
                            {
                                // rempli les option pour le formulaire select race 
                                // enregistre les donnée necessaire dans des variables js depuis la bdd
                                echo  "<option value=\"race".$produitchoix1->rac_ID."\">".$produitchoix1->rac_nom."</option>
                                <script>
                                NomRace[".$produitchoix1->rac_ID."]=\"$produitchoix1->rac_nom\";
                                ValeurRace[".$produitchoix1->rac_ID."]=\"$produitchoix1->rac_carac\";
                                VitesseRace[".$produitchoix1->rac_ID."]=\"$produitchoix1->rac_vitesse\";
                                CompRace".$produitchoix1->rac_ID."=[];
                                NomCapaRace".$produitchoix1->rac_ID."=[];
                                DescCapaRace".$produitchoix1->rac_ID."=[];";

                            //    recupere le nom de l'image dans la bdd
                               $requeteimage="select * from article_race where artr_rac_ID=$produitchoix1->rac_ID";
                               $resultimage=$db->query($requeteimage);
                               $produitimage=$resultimage->fetch(PDO::FETCH_OBJ);
                                echo " ImageRace[".$produitchoix1->rac_ID."]=\"$produitimage->artr_image\";
                               </script>";

                            //    charge les capacités raciales
                                $bouclecaparace=0;
                                $requetecaparace="select * from capacite_race where cap_rac_ID=$produitchoix1->rac_ID";
                                $resultcaparace=$db->query($requetecaparace);
                                while ($produitcaparace=$resultcaparace->fetch(PDO::FETCH_OBJ))
                                {
                                    $bouclecaparace++;
                                    echo "<script>
                                    NomCapaRace".$produitchoix1->rac_ID."[$bouclecaparace]=\"$produitcaparace->cap_nom_capacite\";
                                    DescCapaRace".$produitchoix1->rac_ID."[$bouclecaparace]=\"$produitcaparace->cap_description\";
                                    CompRace".$produitchoix1->rac_ID."[$bouclecaparace]=\"$produitcaparace->cap_comp\";
                                    </script>";
                                }
                            }
                            $resultchoix1->closeCursor();
                            ?>
                            <!-- ---------------------------------- -->
                        </select>
                    </div>
                    <div class="form-group col-sm-3" id="labelclasse">
                        <label for="classe">Classe</label>
                        <select name="classe" id="formclasse" class="form-control">
                            <option value="">choisissez</option>
                            <!-- crée les options pour la case classes  -->
                            <?php 
                            $requetechoix2="select * from classes";
                            $resultchoix2=$db->query($requetechoix2);
                            while ($produitchoix2=$resultchoix2->fetch(PDO::FETCH_OBJ))
                            {
                                // rempli les option pour le formulaire select classe
                                // enregistre les donnée necessaire dans des variables js depuis la bdd

                                $boucleSSclasse=0;
                                echo  "<option value=\"classe".$produitchoix2->cla_ID."\">".$produitchoix2->cla_nom."</option>
                                <script>
                                var NomSSclasse".$produitchoix2->cla_ID."=[];
                                NomClasse[".$produitchoix2->cla_ID."]=\"$produitchoix2->cla_nom\";
                                DvClasse[".$produitchoix2->cla_ID."]=\"$produitchoix2->cla_DV\";
                                CompClasse[".$produitchoix2->cla_ID."]=\"$produitchoix2->cla_competences\";    
                                TabSaveClasse[".$produitchoix2->cla_ID."]=\"$produitchoix2->cla_savetab\";
                                ImageClasse[".$produitchoix2->cla_ID."]=\"$produitchoix2->cla_image\";";
                                
                                $requeteSSclasse="select * from ss_classe where sscl_cla_ID=$produitchoix2->cla_ID";
                                $resultSSclasse=$db->query($requeteSSclasse);
                                while ($produitSSclasse=$resultSSclasse->fetch(PDO::FETCH_OBJ)){
                                    $boucleSSclasse++;
                                echo "
                                NomSSclasse".$produitchoix2->cla_ID."[$boucleSSclasse]=\"$produitSSclasse->sscl_nom\";";
                            }
                                echo"
                                </script>";
                            }
                            $resultchoix2->closeCursor();
                            ?>
                            <!-- --------------------------------- -->
                        </select>
                        <label for="ssclasse" >Sous-classe</label>
                        <select name="ssclasse" id="formssclasse" class="form-control">
                        <option value="">Choisissez</option>
  
                        </select>
                    </div>
                    <div class="form-group col-sm-3">
                        <label for="historique">Historique</label>
                        <select name="historique" id="historique" class="form-control">
                            <option value="">Choisissez</option>
                            <option value="acolyte">Acolyte</option>
                            <option value="criminel">Criminel</option>
                            <option value="hero">Héros du peuple</option>
                            <option value="noble">Noble</option>
                            <option value="sage">Sage</option>
                            <option value="soldat">Soldat</option>
                        </select>
                    </div>
                </div>
                <!-- colonne carac  -->
            <div class="row">
                <div class="col-sm-12 col-lg-7" >
                <p class="text-danger mx-4" id="msgCaracRace"></p>

                        <table class="table table-responsive-lg table-sm">
                            <thead>
                                <tr>
                                    <th class="text-center">Caractéristique</th>
                                    <th class="text-center">Base</th>
                                    <th class="text-center">Bonus</th>
                                    <th class="text-center">Total</th>
                                    <th class="text-center">Modificateur</th>
                                    <th></th>
                                    <th class="text-center">Sauvegardes</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td> <label for="for">Force</label> </td>
                                    <td><input type="number" class="form-control p-0 text-center" name="for"
                                            id="carac1">
                                    </td>
                                    <td> <input type="text" class="form-control p-0 text-center" name="bfor"
                                            id="carac11" readonly></td>
                                    <td><input type="text" class="form-control p-0 text-center" name="tfor" id="carac21"
                                            readonly></td>
                                    <td><input type="text" name="mfor" id="carac31" class="form-control p-0 text-center"
                                            readonly></td>
                                    <td></td>
                                    <td><input type="text" class="form-control p-0 text-center" name="sfor" id="carac41"
                                            readonly>
                                    </td>

                                </tr>
                                <tr>
                                    <td> <label for="dex">Dextérité</label></td>
                                    <td><input type="number" name="dex" id="carac2"
                                            class="form-control p-0 text-center">
                                    </td>
                                    <td><input type="text" class="form-control p-0 text-center" name="bdex" id="carac12"
                                    readonly    ></td>
                                    <td><input type="text" name="tdex" id="carac22" class="form-control p-0 text-center"
                                            readonly></td>
                                    <td><input type="text" name="mdex" id="carac32" class="form-control p-0 text-center"
                                            readonly></td>
                                    <td></td>
                                    <td><input type="text" class="form-control p-0 text-center" name="sdex" id="carac42"
                                            readonly>
                                    </td>
                                </tr>
                                <tr>
                                    <td> <label for="con">Constitution</label></td>
                                    <td><input type="number" name="con" id="carac3"
                                            class="form-control p-0 text-center">
                                    </td>
                                    <td><input type="text" class="form-control p-0 text-center" name="bcon" id="carac13"
                                    readonly    ></td>
                                    <td><input type="text" name="tcon" id="carac23" class="form-control p-0 text-center"
                                            readonly></td>
                                    <td><input type="text" name="mcon" id="carac33" class="form-control p-0 text-center"
                                            readonly></td>
                                    <td></td>
                                    <td><input type="text" class="form-control p-0 text-center" name="scon" id="carac43"
                                            readonly>
                                    </td>
                                </tr>
                                <tr>
                                    <td> <label for="int">Intelligence</label></td>
                                    <td><input type="number" name="int" id="carac4"
                                            class="form-control p-0 text-center">
                                    </td>
                                    <td><input type="text" class="form-control p-0 text-center" name="bint" id="carac14"
                                    readonly    ></td>
                                    <td><input type="text" name="tint" id="carac24" class="form-control p-0 text-center"
                                            readonly></td>
                                    <td><input type="text" name="mint" id="carac34" class="form-control p-0 text-center"
                                            readonly></td>
                                    <td></td>
                                    <td><input type="text" class="form-control p-0 text-center" name="sint" id="carac44"
                                            readonly>
                                    </td>
                                </tr>
                                <tr>
                                    <td> <label for="sag">Sagesse</label></td>
                                    <td><input type="number" name="sag" id="carac5"
                                            class="form-control p-0 text-center">
                                    </td>
                                    <td><input type="text" class="form-control p-0 text-center" name="bsag" id="carac15"
                                    readonly    ></td>
                                    <td><input type="text" name="tsag" id="carac25" class="form-control p-0 text-center"
                                            readonly></td>
                                    <td><input type="text" name="msag" id="carac35" class="form-control p-0 text-center"
                                            readonly></td>
                                    <td></td>
                                    <td><input type="text" class="form-control p-0 text-center" name="ssag" id="carac45"
                                            readonly>
                                    </td>
                                </tr>
                                <tr>
                                    <td> <label for="cha">Charisme</label></td>
                                    <td><input type="number" name="cha" id="carac6"
                                            class="form-control p-0 text-center">
                                    </td>
                                    <td><input type="text" class="form-control p-0 text-center" name="bcha" id="carac16"
                                    readonly   ></td>
                                    <td><input type="text" name="tcha" id="carac26" class="form-control p-0 text-center"
                                            readonly></td>
                                    <td><input type="text" name="mcha" id="carac36" class="form-control p-0 text-center"
                                            readonly></td>
                                    <td></td>
                                    <td><input type="text" class="form-control p-0 text-center" name="scha" id="carac46"
                                            readonly>
                                    </td>
                                </tr>

                            </tbody>
                        </table>
                        <hr>
                        <!-- partie inférieur de la feuille  -->
                        <div class="row">
                            <p class="text-danger mx-4" id="msgcomp"></p>
                            <p class="text-danger mx-4" id="msgcomprace"></p>
                        </div>
                        <div class="row" id="bgfeuille">
                            <div class="col-sm-6 col-md-5"  >
                                <!-- -------------------------tableau des compétences--------------------  -->
                                <table class="table  table-sm">
                                    <thead>
                                        <tr>
                                            <th></th>
                                            <th>Compétences</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><input type="checkbox" name="ath" id="comp1" onclick="FCheckComp()">
                                            </td>
                                            <td><label for="ath">Athlétisme</label>
                                            </td>
                                            <td><input type="text" name="vath" id="vcomp1"
                                                    class=" form-control text-center " readonly></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="checkbox" name="dis" id="comp2" onclick="FCheckComp()">
                                            </td>
                                            <td>
                                                <label for="dis">Discrétion</label>
                                            </td>
                                            <td><input type="text" name="vdis" id="vcomp2"
                                                    class=" form-control text-center " readonly></td>
                                        </tr>
                                        <tr>
                                            <td><input type="checkbox" name="acro" id="comp3" onclick="FCheckComp()">
                                            </td>
                                            <td><label for="acro">Acrobatie</label></td>
                                            <td><input type="text" name="vacro" id="vcomp3"
                                                    class=" form-control text-center " readonly></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="checkbox" name="esc" id="comp4" onclick="FCheckComp()">
                                            </td>
                                            <td>
                                                <label for="esc">Escamotage</label>
                                            </td>
                                            <td><input type="text" name="vesc" id="vcomp4"
                                                    class=" form-control text-center " readonly></td>
                                        </tr>
                                        <tr>
                                            <td><input type="checkbox" name="arc" id="comp5" onclick="FCheckComp()">
                                            </td>
                                            <td><label for="arc">Arcane</label></td>
                                            <td><input type="text" name="varc" id="vcomp5"
                                                    class=" form-control text-center " readonly></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="checkbox" name="his" id="comp6" onclick="FCheckComp()">
                                            </td>
                                            <td>
                                                <label for="his">Histoire</label>
                                            </td>
                                            <td><input type="text" name="vhis" id="vcomp6"
                                                    class=" form-control text-center " readonly></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="checkbox" name="inv" id="comp7" onclick="FCheckComp()">
                                            </td>
                                            <td>
                                                <label for="inv">Investigation</label>
                                            </td>
                                            <td><input type="text" name="vinv" id="vcomp7"
                                                    class=" form-control text-center " readonly></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="checkbox" name="nat" id="comp8" onclick="FCheckComp()">
                                            </td>
                                            <td>
                                                <label for="nat">Nature</label>
                                            </td>
                                            <td><input type="text" name="vnat" id="vcomp8"
                                                    class=" form-control text-center " readonly></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="checkbox" name="rel" id="comp9" onclick="FCheckComp()">
                                            </td>
                                            <td>
                                                <label for="rel">Religion</label>
                                            </td>
                                            <td><input type="text" name="vrel" id="vcomp9"
                                                    class=" form-control text-center" readonly></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="checkbox" name="dre" id="comp10" onclick="FCheckComp()">
                                            </td>
                                            <td>
                                                <label for="dre">Dressage</label>
                                            </td>
                                            <td><input type="text" name="vdre" id="vcomp10"
                                                    class=" form-control text-center " readonly></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="checkbox" name="med" id="comp11" onclick="FCheckComp()">
                                            </td>
                                            <td>
                                                <label for="med">Médecine</label>
                                            </td>
                                            <td><input type="text" name="vmed" id="vcomp11"
                                                    class=" form-control text-center" readonly></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="checkbox" name="perc" id="comp12" onclick="FCheckComp()">
                                            </td>
                                            <td>
                                                <label for="perc">Perception</label>
                                            </td>
                                            <td><input type="text" name="vperc" id="vcomp12"
                                                    class=" form-control text-center" readonly></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="checkbox" name="persp" id="comp13" onclick="FCheckComp()">
                                            </td>
                                            <td>
                                                <label for="persp">Perspicacité</label>
                                            </td>
                                            <td><input type="text" name="vpersp" id="vcomp13"
                                                    class=" form-control text-center" readonly></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="checkbox" name="sur" id="comp14" onclick="FCheckComp()">
                                            </td>
                                            <td>
                                                <label for="sur">Survie</label>
                                            </td>
                                            <td><input type="text" name="vsur" id="vcomp14"
                                                    class=" form-control text-center" readonly></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="checkbox" name="inti" id="comp15" onclick="FCheckComp()">
                                            </td>
                                            <td>
                                                <label for="inti">Intimidation</label>
                                            </td>
                                            <td><input type="text" name="vinti" id="vcomp15"
                                                    class=" form-control text-center " readonly></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="checkbox" name="persu" id="comp16" onclick="FCheckComp()">
                                            </td>
                                            <td>
                                                <label for="persu">Persuasion</label>
                                            </td>
                                            <td><input type="text" name="vpersu" id="vcomp16"
                                                    class=" form-control text-center" readonly></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="checkbox" name="rep" id="comp17" onclick="FCheckComp()">
                                            </td>
                                            <td>
                                                <label for="rep">Representation</label>
                                            </td>
                                            <td><input type="text" name="vrep" id="vcomp17"
                                                    class=" form-control text-center " readonly></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="checkbox" name="tro" id="comp18" onclick="FCheckComp()">
                                            </td>
                                            <td>
                                                <label for="tro">Tromperie</label>
                                            </td>
                                            <td><input type="text" name="vtro" id="vcomp18"
                                                    class=" form-control text-center" readonly></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <!-- ------------------------CA/init/V -------------------- -->
                            <div class="col-sm-7" >
                                <div class="row">
                                    <div class="d-none d-md-block col-md-1"></div>
                                    <div class="col-sm-3">
                                        <label for="CA">CA</label>
                                        <input type="text" name="CA" id="CA" class="form-control">
                                    </div>
                                    <div class="col-sm-3">
                                        <label for="initiative" class="text-center">initiative</label>
                                        <input type="text" name="initiative" id="initiative" class="form-control">
                                    </div>
                                    <div class="col-sm-3">
                                        <label for="vitesse">Vitesse</label>
                                        <input type="text" name="vitesse" id="vitesse" class="form-control">
                                    </div>
                                </div>
                                <!-- hp et dv -->
                                <div class="row">
                                    <div class="col-sm-6">
                                        <label for="pv">PV</label>
                                        <input type="text" name="pv" id="pv" class="form-control ">
                                    </div>
                                    <div class="col-sm-6">
                                        <label for="dv">DV</label>
                                        <input type="text" name="dv" id="dv" class="form-control col-auto">
                                    </div>
                                </div>

                                <!-- Capacités---------------------------------------------------  -->
                                <div class="row pl-3 pt-2" >
                                                <p class="h5 col-sm-12">Capacités</p>
                                                <hr class="col-sm-12">
                                                <div id="capacite" class="col-sm-12"></div>
                               
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- image colonne de droite  -->
                    <div class="d-none d-lg-block col-lg-5 p-0">
                        <img src="src/img/gold-dragon.jpg" class="img-fluid" alt="illustration de la classe"
                            id="imgclasse">
                    </div>
                </div>
            </fieldset>
            <!-- boutons de validation/reset  -->
            <div class="row mx-auto pb-3" style="width: 200px">
                <button type="button" class="btn btn-dark mr-2 " id="envoyer">envoyer</button>
                <button type="button" class="btn btn-dark " id="reset">annuler</button>
            </div>
        </form>
    </div>
    </div>
    <?php
include("footer.php");
?>