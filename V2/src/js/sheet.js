// récupére les champs de du formulaire
var Vrace = document.getElementById("race");
var Vclasse = document.getElementById("classe");
var Vhisto = document.getElementById("historique");
var Armure = document.getElementById("CA");
var init = document.getElementById("initiative");
var Vit = document.getElementById("vitesse");
var PV = document.getElementById("pv");
var DV = document.getElementById("dv");
var MsgComp = document.getElementById("msgcomp");
var DesCapa = document.getElementById("desccapa");
// -------

var CheckComp = [];
var ValComp = [];
var TabCar = [];
var BonCar = [];
var BasCar = [];
var TotCar = [];
var BonClasse = [];
var DeVie = 0;
// emplacement élément en haut de tableau
var Vrace = document.getElementById("race");
Vrace.addEventListener("click", Frace);
var Vclasse = document.getElementById("classe");
Vclasse.addEventListener("click", Fclasse);
var Vhisto = document.getElementById("historique");
Vhisto.addEventListener("click", Fhisto);

// emplacement de l'image
var IMG = document.getElementById("imgclasse");

// enregistre les empalcements du tableau de caractéristiques
for (i = 1; i <= 46; i++) {
    TabCar[i] = document.getElementById("carac" + i);
}
for (i = 1; i <= 6; i++) {
    TabCar[i].addEventListener("focusout", CalCarac);
    TabCar[i].addEventListener("focusout", FCheckComp);
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
            ValComp[i].value = parseInt(ValComp[i].value) + 2;
        }
    }


}

// fonction gérant les caractéristiques, les PV, la Ca et l'initiative
function CalCarac() {
    for (i = 1; i <= 6; i++) {
        BasCar[i] = TabCar[i].value;
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
function Frace() {
    switch (Vrace.value) {
        case "elfe":
            for (i = 1; i <= 6; i++) {
                BonCar[i] = 0;
            }
            BonCar[2] = 2;
            BonCar[4] = 1;
            IMG.src = "src/img/scout.jpg"
            Vit.value = "9m";
            DesCapa.innerHTML = "";

            var NomCapa1 = document.createElement("b");
            NomCapa1.textContent = "Nom capacité e";
            DesCapa.append(NomCapa1);
            var Capa1 = document.createElement("p");
            Capa1.textContent = " bla bla bla";
            DesCapa.append(Capa1);

            break;
        case "halfelin":
            for (i = 1; i <= 6; i++) {
                BonCar[i] = 0;
            }
            BonCar[2] = 2;
            BonCar[3] = 1;
            IMG.src = "src/img/halfelin.jpg"
            Vit.value = "7,5m";
            DesCapa.innerHTML = "";

            var NomCapa1 = document.createElement("b");
            NomCapa1.textContent = "Nom capacité ha";
            DesCapa.append(NomCapa1);
            var Capa1 = document.createElement("p");
            Capa1.textContent = " bla bla bla";
            DesCapa.append(Capa1);

            break;
        case "humain":
            for (i = 1; i <= 6; i++) {
                BonCar[i] = 1;
            }
            IMG.src = "src/img/humain.jpg"
            Vit.value = "9m";
            DesCapa.innerHTML = "";

            var NomCapa1 = document.createElement("b");
            NomCapa1.textContent = "Nom capacité hu";
            DesCapa.append(NomCapa1);
            var Capa1 = document.createElement("p");
            Capa1.textContent = " bla bla bla";
            DesCapa.append(Capa1);
            break;
        case "nain":
            for (i = 1; i <= 6; i++) {
                BonCar[i] = 0;
            }
            BonCar[1] = 1;
            BonCar[3] = 2;
            IMG.src = "src/img/nain.png"
            Vit.value = "7,5m";
            DesCapa.innerHTML = "";

            var NomCapa1 = document.createElement("b");
            NomCapa1.textContent = "Nom capacité n";
            DesCapa.append(NomCapa1);
            var Capa1 = document.createElement("p");
            Capa1.textContent = " bla bla bla";
            DesCapa.append(Capa1);
            break;
        case "":
            for (i = 1; i <= 6; i++) {
                BonCar[i] = 0;
            }
            IMG.src = "src/img/gold-dragon.jpg"
            DesCapa.innerHTML = "";



    }
    CalCarac();
    FCheckComp();
}

// choix classe
function Fclasse() {
    switch (Vclasse.value) {
        case "clerc":
            for (i = 1; i <= 6; i++) {
                BonClasse[i] = 0;
            }
            BonClasse[5] = 2;
            BonClasse[6] = 2;
            DeVie = 8;
            MsgComp.innerHTML = "choisissez deux compétences parmi Histoire, Médecine, Perspicacité, Persuasion et Religion"
            break;
        case "guerrier":
            for (i = 1; i <= 6; i++) {
                BonClasse[i] = 0;
            }
            BonClasse[1] = 2;
            BonClasse[3] = 2;
            DeVie = 10;
            MsgComp.innerHTML = "choisissez deux compétences parmi Acrobaties, Athlétisme, Dressage, Histoire, Intimidation, Perception, Perspicacité et Survie"

            break;
        case "magicien":
            for (i = 1; i <= 6; i++) {
                BonClasse[i] = 0;
            }
            BonClasse[4] = 2;
            BonClasse[5] = 2;
            DeVie = 6;
            MsgComp.innerHTML = "choisissez deux compétences parmi Arcanes, Histoire, Investigation, Médecine, Perspicacité et Religion"

            break;
        case "roublard":
            for (i = 1; i <= 6; i++) {
                BonClasse[i] = 0;
            }
            BonClasse[2] = 2;
            BonClasse[4] = 2;
            DeVie = 8;
            MsgComp.innerHTML = "choisissez quatre compétences parmi Acrobaties, Athlétisme, Discrétion, Escamotage, Intimidation, Investigation, Perception, Perspicacité, Persuasion, Représentation et Tromperie"

            break;
        case "":
            for (i = 1; i <= 6; i++) {
                BonClasse[i] = 0;
                MsgComp.innerHTML = "";
            }
            break;

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
    Vit.value="";
    InitStat();
    CalCarac();
    FCheckComp()

}

