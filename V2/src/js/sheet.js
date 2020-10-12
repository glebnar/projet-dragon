
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
// fonctions-------------------------------------------
// requete déclenchée par le choix de la race 
$("#formrace").on('input', function(){
    if ($("#formrace").val()!="defaut"){
        $.get(
        'script_liste_sous_race.php',
            {
                ChoixRace: $("#formrace").val(),
            },
        // fonction_sous_race,
        fonction_sous_race,
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
        $("#div_sous_race").empty();
        $("#msgcomprace").empty();
        $("#msgCaracRace").empty();
        $("#imgclasse").attr('src','src/img/gold-dragon.jpg');
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
// genere le champs de choix de la sous classe 
$("#formclasse").on('input', function(){
    if ($("#formclasse").val()!=""){
        $.get(
        'script_liste_sous_classe.php',
            {
                ChoixClasse: $("#formclasse").val(),
            },
        fonction_sous_classe,
        'html'
        )
    }
    else {
        $("#div_sous_classe").empty();     
    }
})
function fonction_sous_classe(data){
    $("#div_sous_classe").empty();
    $("#div_sous_classe").append(data);
}
function fonction_sous_race(data){  
        // affiche les sous-races 
        if (CheckssRace[$("#formrace").val()]==1){
            $("#div_sous_race").empty();     
            $("#div_sous_race").append(data);
            }
            else {
                $("#div_sous_race").empty();     
            }
    
}
// ------------------------------
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

    // calcul des PV 
    if (Vclasse.value != "") {
        PV.value = parseInt(DeVie) + parseInt(TabCar[33].value);
        DV.value = "D" + DeVie;
    }
    else {
        PV.value = "";
        DV.value = "";
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
    DivCapacite.innerHTML = "";
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
            DivCapacite.append(TitreCR);
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

// choix classe
function Fclasse() {

    for (i = 1; i <= 6; i++) {
        BonClasse[i] = 0;
    }
    // affichage dynamique de l'image de classe
    RangClasse = Vclasse.value.replace("classe", "");
    ImageBgClasse = ImageClasse[RangClasse].replace(NomClasse[RangClasse], NomClasse[RangClasse] + 2);
    BgFeuille.style.backgroundImage = "url(" + ImageBgClasse + ")";
    BgFeuille.style.backgroundPosition = "center bottom";
    BgFeuille.style.backgroundRepeat = "no-repeat";
    BgFeuille.style.backgroundSize = "auto 100%";

    // attribut les bonus de sauvegarde
    var TestSaveClasse = TabSaveClasse[RangClasse].split("/");
    for (i = 0; i < 6; i++) {
        if (TestSaveClasse[i] == "true") {

            BonClasse[i + 1] = maitrise;
        }
    }

    MsgComp.innerHTML = CompClasse[RangClasse];




    // switch (Vclasse.value) {
    //     case "clerc":
    //         for (i = 1; i <= 6; i++) {
    //             BonClasse[i] = 0;
    //         }
    //         BonClasse[5] = 2;
    //         BonClasse[6] = 2;
    //         DeVie = 8;
    //         MsgComp.innerHTML = "choisissez deux compétences parmi Histoire, Médecine, Perspicacité, Persuasion et Religion"
    //         break;
    //     case "guerrier":
    //         for (i = 1; i <= 6; i++) {
    //             BonClasse[i] = 0;
    //         }
    //         BonClasse[1] = 2;
    //         BonClasse[3] = 2;
    //         DeVie = 10;
    //         MsgComp.innerHTML = "choisissez deux compétences parmi Acrobaties, Athlétisme, Dressage, Histoire, Intimidation, Perception, Perspicacité et Survie"

    //         break;
    //     case "magicien":
    //         for (i = 1; i <= 6; i++) {
    //             BonClasse[i] = 0;
    //         }
    //         BonClasse[4] = 2;
    //         BonClasse[5] = 2;
    //         DeVie = 6;
    //         MsgComp.innerHTML = "choisissez deux compétences parmi Arcanes, Histoire, Investigation, Médecine, Perspicacité et Religion"

    //         break;
    //     case "roublard":
    //         for (i = 1; i <= 6; i++) {
    //             BonClasse[i] = 0;
    //         }
    //         BonClasse[2] = 2;
    //         BonClasse[4] = 2;
    //         DeVie = 8;
    //         MsgComp.innerHTML = "choisissez quatre compétences parmi Acrobaties, Athlétisme, Discrétion, Escamotage, Intimidation, Investigation, Perception, Perspicacité, Persuasion, Représentation et Tromperie"

    //         break;
    //     case "":
    //         for (i = 1; i <= 6; i++) {
    //             BonClasse[i] = 0;
    //             MsgComp.innerHTML = "";
    //         }
    //         break;

    // }
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


