
// récupére les champs de du formulaire
var Vclasse = document.getElementById("formclasse");
var Vhisto = document.getElementById("historique");
var Armure = document.getElementById("CA");
var init = document.getElementById("initiative");
var Vit = document.getElementById("vitesse");
var PV = document.getElementById("pv");
var DV = document.getElementById("dv");
var MsgComp = document.getElementById("msgcomp");
var DesCapa = document.getElementById("desccapa");
var labelssclasse = document.getElementById("labelclasse");
var BgFeuille = document.getElementById("bgfeuille");
var DivCapacite = document.getElementById("capacite");

// -------

var CheckComp = [];
var ValComp = [];
var TabCar = [];
var BonCar = [];
var BasCar = [];
var TotCar = [];
var BonClasse = [];
var DeVie = 0;
var maitrise = 2;
var TabBon = [];
// écoute élément en haut de tableau
Vhisto.addEventListener("input", Fhisto);


// emplacement de l'image
var IMG = document.getElementById("imgclasse");

// enregistre les empalcements du tableau de caractéristiques
for (i = 1; i <= 46; i++) {
    TabCar[i] = document.getElementById("carac" + i);
}
for (i = 1; i <= 6; i++) {
    TabCar[i].addEventListener("input", CalCarac);
    TabCar[i].addEventListener("input", FCheckComp);
}

// enregistre les emplacements du tableau de compétences
for (i = 1; i <= 18; i++) {
    CheckComp[i] = document.getElementById("comp" + i);
    ValComp[i] = document.getElementById("vcomp" + i);
}
// ---
var Reset = document.getElementById("reset");
Reset.addEventListener("click", Freset);

InitStat();
CalCarac();
FCheckComp()
// -----------------------------requetes AJAX---------------------------------------
// requete déclenchée par le choix de la race 
$("#formrace").on('input', function(){
    if ($("#formrace").val()!="defaut"){
        $.get(
            'script_liste_sous_race.php',
            {
                ChoixRace: $("#formrace").val(),
            },
            add_sous_race,
            'html'
            )
            $.get(
                'script_race.php',
                {
                    GetRace: $("#formrace").val(),
                },
                Frace,
                'json'
                
                )
            }
            else {
                $("#label_sous_race").attr('hidden','true');
                $("#SS_race").attr('hidden','true');
                $("#SS_race").empty();         
                $("#msgcomprace").empty();
                $("#msgCaracRace").empty();
                $("#imgclasse").attr('src','src/img/gold-dragon.jpg');
                $("#capacite_race").empty();
                $("#capacite_sous_race").empty();

                for (i = 1; i <= 6; i++) {
                    BonCar[i] = 0;
                }
                for (i = 1; i <= 18; i++) {
                    CheckComp[i].checked = false;
                }
                
                CalCarac();
                FCheckComp()
                
                
            }
        })
        // ------------------------------
        // requete gérant le choix de classe 
$("#formclasse").on('input', function(){
    if ($("#formclasse").val()!="defaut"){
        $.get(
                'script_liste_sous_classe.php',
                {
                    ChoixClasse: $("#formclasse").val(),
                },
                add_sous_classe,
                'html'
            )
        $.get(
            'script_classe.php',
            {
                ChoixClasse: $("#formclasse").val(),
            },
            Fclasse,
            'json'
        )
    }
    else {
            $("#bonus_sort").empty();
            $("#SS_classe").attr('hidden','true');
            $("#label_sous_classe").attr('hidden','true');
            $("#capacite_classe").empty();
            $("#msgcomp").empty();
            $("#pv").val("");
            $("#dv").val("");
         
    }
})
// --------------------------------------
$("#SS_race").on('input', function(){
    if ($("#SS_race").val()!="defaut"){
        $.get(
            'script_sous_race.php',
            {
                Choix_sous_race: $("#SS_race").val(),
            },
            fonction_sous_race,
            'json'
        )
    }
})
// -------------------------------------------------------------------
$("#SS_classe").on('input', function(){

    if ($("#SS_classe").val()!="defaut"){
        $.get(
            'script_sous_classe.php',
            {
                ChoixClasse: $("#SS_classe").val(),
            },
            fonction_sous_classe,
            'json'
        )

        $.get(
            'script_sort_bonus.php',
            {
                sousclasse:$("#SS_classe").val(),
            },
            function(data){    $("#bonus_sort").append(data);
        },
            'html'
        )
    }else{
        $("#bonus_sort").empty();

    }

})

// fonctions-------------------------------------------
function fonction_sous_classe(data){
    $("#capacite_sous_classe").empty();
    for (i=0;i<data.capcl_nom_capacite.length;i++){ 
        TitreCR = document.createElement("button");
        TitreCR.setAttribute("type", "button");

        TitreCR.setAttribute("class", " font-weight-bold text-reset btn btn-link  text-left d-block");
        TitreCR.setAttribute("data-toggle", "popover");
        TitreCR.setAttribute("data-content", data.capcl_description[i]);
        TitreCR.textContent = data.capcl_nom_capacite[i];
        $("#capacite_sous_classe").append(TitreCR);
        $(function () {
            $('[data-toggle="popover"]').popover()
        })

    }
}

// affiche les sous classes
function add_sous_classe(data){
    $("#label_sous_classe").removeAttr('hidden');
    $("#SS_classe").removeAttr('hidden');
    $("#SS_classe").empty();
    $("#SS_classe").append(data);
}
// -------------------------------
// affiche les sous-races 
function add_sous_race(data){  
    if (CheckssRace[$("#formrace").val()]==1){
        $("#label_sous_race").removeAttr('hidden');
        $("#SS_race").removeAttr('hidden');
        $("#SS_race").empty();     
        $("#SS_race").append(data);
    }
    else {
        $("#label_sous_race").attr('hidden','true');
        $("#SS_race").attr('hidden','true');
        $("#SS_race").empty(); 
    }                
}

            // ------------------------------------------

// initialisation des stats 
function InitStat() {
    for (i = 1; i <= 6; i++) {
        BasCar[i] = 8;
        BonCar[i] = 0;
        TabCar[i].value = BasCar[i];
        BonClasse[i] = 0;
    }
}
// fonction gérant les compétences
function FCheckComp() {
    for (i = 1; i <= 18; i++) {
        if (i == 1) {
            ValComp[i].value = TabCar[31].value;
        }
        else if (i >= 2 && i <= 4) {
            ValComp[i].value = TabCar[32].value;
        }
        else if (i >= 5 && i <= 9) {
            ValComp[i].value = TabCar[34].value;
        }
        else if (i >= 10 && i <= 14) {
            ValComp[i].value = TabCar[35].value;
        }
        else if (i >= 15 && i <= 18) {
            ValComp[i].value = TabCar[36].value;
        }
        if (CheckComp[i].checked == true) {
            ValComp[i].value = parseInt(ValComp[i].value) + parseInt(maitrise);
        }
    }
}

// fonction gérant les caractéristiques, les PV, la Ca et l'initiative
function CalCarac() {
    for (i = 1; i <= 6; i++) {
        BasCar[i] = TabCar[i].value;
        if (BasCar[i]==""){
            BasCar[i]=0;
            TabCar[i].value=0;
        }
    }
    // calcul du total
    for (i = 1; i <= 6; i++) {
        TotCar[i] = parseInt(BasCar[i]) + parseInt(BonCar[i]) - .01;
    }
    // affichage du bonus
    for (i = 1; i <= 6; i++) {
        TabCar["1" + i].value = BonCar[i];

    }
    // affichage du total
    for (i = 1; i <= 6; i++) {
        TabCar["2" + i].value = Math.round(TotCar[i]);
    }
    // calcul et affichage du modificateur
    for (i = 1; i <= 6; i++) {
        TabCar["3" + i].value = Math.round((TotCar[i] - 10) / 2);
    }
    // calcul et affichage des sauvegardes
    for (i = 1; i <= 6; i++) {
        TabCar["4" + i].value = Math.round(((TotCar[i] - 10) / 2) + BonClasse[i]);
    }
    // calcul et affichage des capacités
    for (i = 1; i <= 18; i++) {

    }

    // armure et initiative 
    Armure.value = 10 + parseInt(TabCar[32].value);
    init.value = TabCar[32].value;
}

// choix de la race 
function Frace(data) {
    // affiche les éléments spécifiques aux demi-elfes 
    if ($("#formrace").val() == 5) {
        $("#msgcomprace").text("Vous gagnez la maîtrise de deux compétences de votre choix.");
        $("#msgCaracRace").text("Choisissez deux caractéristiques (autre que le charisme) à augmenter de 1");
    } else {
        $("#msgcomprace").empty();
        $("#msgCaracRace").empty();

    }
    // ----------------
    // réinitialise les champs spécifique aux races 
    for (i = 1; i <= 18; i++) {
        CheckComp[i].checked = false;
    }
    for (i = 1; i <= 6; i++) {
        BonCar[i] = 0;
    }
    $("#capacite_race").empty();
    $("#capacite_sous_race").empty(); 
       
    if ($("#formrace").val() == "defaut") {
        for (i = 1; i <= 6; i++) {
            BonCar[i] = 0;
        }
    }

    // découpe la chaine contenu dans la table pour extraire les valeurs de caractéristique
    if ($("#formrace").val() != "defaut") {
        TabCaracRace = data.rac_carac.split("/");}
    // enregistre les caractéristiques 
    for (i = 0; i < 6; i++) {
        BonCar[i + 1] = TabCaracRace[i];
    }
    
    // coche la case compétence conrrespondant à une capacite raciale
    if (data.cap_comp!= undefined)
    {for (i = 0; i < data.cap_comp.length; i++) {
        if (data.cap_comp[i] != undefined && data.cap_comp[i] != "") {
                CheckComp[data.cap_comp[i]].checked = true;
        }
    }}

    // affichage des capacités raciales
    if ($("#formrace").val()!=3)
    {   
        for (i = 0; i < data.cap_nom_capacite.length; i++) {
            TitreCR = document.createElement("button");
            TitreCR.setAttribute("type", "button");

            TitreCR.setAttribute("class", " font-weight-bold text-reset btn btn-link  text-left d-block");
            TitreCR.setAttribute("data-toggle", "popover");
            TitreCR.setAttribute("data-content", data.cap_description[i]);
            TitreCR.textContent = data.cap_nom_capacite[i];
            $("#capacite_race").append(TitreCR);
            $(function () {
                $('[data-toggle="popover"]').popover()
            })

        }   
    }



    // donne la vitesse du personnage
    $("#vitesse").val(data.rac_vitesse);
    $("#imgclasse").attr("src","src/img/"+data.artr_image);
    CalCarac();
    FCheckComp();
}

function fonction_sous_race(data){
    $("#capacite_sous_race").empty();
     // découpe la chaine contenu dans la table pour extraire les valeurs de caractéristique
     CaracSousRace = data.tri_carac.split("/");
     // enregistre les caractéristiques 
        for (i = 0; i < 6; i++) {
            BonCar[i + 1] = TabCaracRace[i];
            BonCar[i + 1]=parseInt(BonCar[i + 1]) + parseInt(CaracSousRace[i]);
        }
    // affiche les capacités des sous-races 
        for (i = 0; i < data.cap_nom_capacite.length; i++) {
            TitreCR = document.createElement("button");
            TitreCR.setAttribute("type", "button");
            
            TitreCR.setAttribute("class", " font-weight-bold text-reset btn btn-link  text-left d-block");
            TitreCR.setAttribute("data-toggle", "popover");
            TitreCR.setAttribute("data-content", data.cap_description[i]);
            TitreCR.textContent = data.cap_nom_capacite[i];
            $("#capacite_sous_race").append(TitreCR);
            $(function () {
                $('[data-toggle="popover"]').popover()
            })

        }   
        CalCarac();
}

// choix classe
function Fclasse(data) {
    $("#bonus_sort").empty();

    for (i = 1; i <= 6; i++) {
        BonClasse[i] = 0;
    }

    // attribut les bonus de sauvegarde
    var TestSaveClasse = data.cla_savetab.split("/");
    for (i = 0; i < 6; i++) {
        if (TestSaveClasse[i] == "true") {

            BonClasse[i + 1] = maitrise;
        }
    }
    $("#msgcomp").text(data.cla_competences);
    // calcul des PV 
    if ($("#formclass").val() != "defaut") {
       $("#pv").val(parseInt(data.cla_DV) + parseInt(TabCar[33].value));
        $("#dv").val("D" + parseInt(data.cla_DV));
    }

// capacités de classe 
$("#capacite_classe").empty();
    for (i = 0; i < data.capcl_nom_capacite.length; i++) {
        TitreCR = document.createElement("button");
        TitreCR.setAttribute("type", "button");

        TitreCR.setAttribute("class", " font-weight-bold text-reset btn btn-link  text-left d-block");
        TitreCR.setAttribute("data-toggle", "popover");
        TitreCR.setAttribute("data-content", data.capcl_description[i]);
        TitreCR.textContent = data.capcl_nom_capacite[i];
        $("#capacite_classe").append(TitreCR);
        $(function () {
            $('[data-toggle="popover"]').popover()
        })

    }   



    CalCarac();
    FCheckComp();
}
function Fhisto() {
    switch (Vhisto.value) {
        case "acolyte":
            for (i = 1; i <= 18; i++) {
                CheckComp[i].checked = false;
            }
            CheckComp[9].checked = true;
            CheckComp[13].checked = true;
            break;
        case "criminel":
            for (i = 1; i <= 18; i++) {
                CheckComp[i].checked = false;
            }
            CheckComp[2].checked = true;
            CheckComp[18].checked = true;
            break;
        case "hero":
            for (i = 1; i <= 18; i++) {
                CheckComp[i].checked = false;
            }
            CheckComp[14].checked = true;
            CheckComp[10].checked = true;
            break;
        case "noble":
            for (i = 1; i <= 18; i++) {
                CheckComp[i].checked = false;
            }
            CheckComp[16].checked = true;
            CheckComp[6].checked = true;
            break;
        case "sage":
            for (i = 1; i <= 18; i++) {
                CheckComp[i].checked = false;
            }
            CheckComp[5].checked = true;
            CheckComp[6].checked = true;
            break;
        case "soldat":
            for (i = 1; i <= 18; i++) {
                CheckComp[i].checked = false;
            }
            CheckComp[1].checked = true;
            CheckComp[15].checked = true;
            break;
        case "":
            for (i = 1; i <= 18; i++) {
                CheckComp[i].checked = false;
            }

            break;

    }
    CalCarac();
    FCheckComp();
}
function Freset() {
    for (i = 1; i <= 18; i++) {
        CheckComp[i].checked = false;
    }
    Vrace.selectedIndex = "";
    Vclasse.selectedIndex = "";
    Vhisto.selectedIndex = "";
    IMG.src = "src/img/gold-dragon.jpg";
    DesCapa.innerHTML = "";
    MsgComp.innerHTML = "";
    Vit.value = "";
    InitStat();
    CalCarac();
    FCheckComp()

}


