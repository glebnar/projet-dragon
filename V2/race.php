<?php
include("header.php");
$pageID = $_GET["IDpage"];
$requeteArt="select artr_titre,artr_contenu,artr_image from article_race where artr_rac_ID=".$pageID;
$resultArt=$db->query($requeteArt);

$contArt=$resultArt->fetch(PDO::FETCH_OBJ);
?>
    <!-- contenu de page -->
    <div class="container shadow bg-white">
        <div class="row">
            <div class="col-sm-12 mt-3">
                <h3><?php echo $contArt->artr_titre; ?> </h3>
                <p><?php echo $contArt->artr_contenu; ?></p>
            </div>
            <div class="col-sm-12 ">
                <?php echo"<img class=\"img-fluid float-right col-sm-4 d-none d-md-block\" src=\"".$contArt->artr_image."\" alt=\"logo\">"?>
                <h5></h5>
                <p></h5>
                
            </div>
        </div>
        
            <!-- ---  -->
        </div>
        <?php
include("footer.php");
?>