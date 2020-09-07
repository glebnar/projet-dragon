var Vrace = document.getElementById("race");
var Vclasse = document.getElementById("classe");
var Vhisto = document.getElementById("historique");
var Force = document.getElementById("for");
var Dext = document.getElementById("dex");
var Cons = document.getElementById("con");
var Inte = document.getElementById("int");
var Sage = document.getElementById("sag");
var Char = document.getElementById("cha");
var CheckComp = [];
var ValComp = [];
var TabCar = [];
var BonCar = [];
var BasCar = [];
var TotCar = [];
var BonClasse = [];

// emplacement élément en haut de tableau
var Vrace = document.getElementById("race");
Vrace.addEventListener("click", Frace);
var Vclasse = document.getElementById("classe");
Vclasse.addEventListener("click", Fclasse);
var Vhisto = document.getElementById("historique");

// emplacement de l'image
var IMG = document.getElementById("imgclasse");

// enregistre les empalcements du tableau de caractéristiques
for (i = 1; i <= 46; i++) {
    TabCar[i] = document.getElementById("carac" + i);
}

// enregistre les emplacements du tableau de compétences
for (i = 0; i < 19; i++) {
    CheckComp[i] = document.getElementById("comp" + i);
    ValComp[i] = document.getElementById("vcomp" + i);
}

// initialisation des stats 
for (i = 1; i <= 6; i++) {
    BasCar[i] = 8;
    BonCar[i] = 0;
    TabCar[i].value = BasCar[i];
    BonClasse[i] = 0;
}

// fonctions-------------------------------------------
function FCheckComp(TestComp) {
    if (CheckComp[TestComp].checked == true) {
        ValComp[TestComp].value += 2;
        console.log(ValComp[TestComp]);
    }
    else {
        ValComp[TestComp].value -= 2;

    }
}
function CalCarac() {
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
}

// choix de la race 
function Frace() {
    switch (Vrace.value) {
        case "elfe":
            for (i = 1; i <= 6; i++) {
                BonCar[i] = 0;
            }
            BonCar[2] = 2;
            BonCar[4] = 1;
            IMG.src = "src/img/scout.jpg"
            break;
        case "halfelin":
            for (i = 1; i <= 6; i++) {
                BonCar[i] = 0;
            }
            BonCar[2] = 2;
            BonCar[3] = 1;
            IMG.src = "src/img/halfelin.jpg"
            break;
        case "humain":
            for (i = 1; i <= 6; i++) {
                BonCar[i] = 1;
            }
            IMG.src = "src/img/humain.jpg"

            break;
        case "nain":
            for (i = 1; i <= 6; i++) {
                BonCar[i] = 0;
            }
            BonCar[1] = 1;
            BonCar[3] = 2;
            IMG.src = "src/img/nain.jpg"

            break;
        case "":
            for (i = 1; i <= 6; i++) {
                BonCar[i] = 0;
            }
            IMG.src = "src/img/gold-dragon.jpg"
            
            
        }
        CalCarac();
}
function Fclasse() {
    switch (Vclasse.value) {
        case "clerc":
            for (i = 1; i <= 6; i++) {
                BonClasse[i] = 0;
            }
            BonClasse[5] = 2;
            BonClasse[6] = 2;
            break;
        case "guerrier":
            for (i = 1; i <= 6; i++) {
                BonClasse[i] = 0;
            }
            BonClasse[1] = 2;
            BonClasse[3] = 2;
            break;
        case "magicien":
            for (i = 1; i <= 6; i++) {
                BonClasse[i] = 0;
            }
            BonClasse[4] = 2;
            BonClasse[5] = 2;
            break;
        case "roublard":
            for (i = 1; i <= 6; i++) {
                BonClasse[i] = 0;
            }
            BonClasse[2] = 2;
            BonClasse[4] = 2;
            break;
        case "":
            for (i = 1; i <= 6; i++) {
                BonClasse[i] = 0;
            }
            break;

    }
    CalCarac();
}
console.log(TabCar[42]);
CalCarac();