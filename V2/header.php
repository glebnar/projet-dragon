<!DOCTYPE php>
<php lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>L'antre de Glebnar</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="src/css/style.css">
<?php 
require "connexion_BDD.php" ;
$db=connexionbdd();
?>

</head>

<body>
    <!-- navigation -->
    <div class="row-fluid navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a href="index.php" class="navbar-brand col-sm-2 text-wrap text-center">L'antre de Glebnar</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarnav"
                aria-controls="navbarnav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse col-sm-10" id="navbarnav">
                <div class="navbar-nav">
                    <a href="index.php" class="nav-item nav-link">Accueil</a>
                    <div class="dropdown">
                        <a class="nav-item nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">
                            Races
                        </a>
                        <div class="dropdown-menu bg-dark ">
                            <?php
                            // rempli le menu race depuis la bdd
                            $requeteRace="select rac_nom, rac_ID from race";
                            $resultRace=$db->query($requeteRace);
                            while ($produitRace=$resultRace->fetch(PDO::FETCH_OBJ))
                            {
                                echo "<a class=\"dropdown-item nav-link\" href=race.php?IDpage=".$produitRace->rac_ID.">".$produitRace->rac_nom."</a>";
                            }
                            $resultRace->closeCursor();
                            ?>
                            <!-- ------------------------ -->
                        </div>
                    </div>
                    <div class="dropdown">
                        <a class="nav-item nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">
                            Classes
                        </a>
                        <div class="dropdown-menu bg-dark navbar-light">
                            <?php
                            // rempli le menu classe depuis la bdd
                                $requeteClasse="select cla_nom, cla_ID from classes";
                                $resultClasse=$db->query($requeteClasse);
                                while($produitClasse=$resultClasse->fetch(PDO::FETCH_OBJ))
                                {
                                  echo  "<a class=\"dropdown-item nav-link\" href=classe.php?IDpage=".$produitClasse->cla_ID.">".$produitClasse->cla_nom."</a>";
                                }
                                $resultClasse->closeCursor();


                            ?>
                            <!-- ------------------------ -->
                        </div>
                    </div>
                    <a href="sheet.php" class="nav-item nav-link">Créateur de personnage</a>

                </div>
            </div>
        </div>
    </div>
    <!-- --- -->
    <!-- banniere -->
    <div class="row-fluid">
        <img src="src/img/banner.jpg" alt="Banniere" class="img-fluid  p-0">
    </div>
    <!-- ---  -->