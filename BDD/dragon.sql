-- --------------------------------------------------------
-- Hôte :                        localhost
-- Version du serveur:           5.7.24 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Listage de la structure de la base pour dragon
CREATE DATABASE IF NOT EXISTS `dragon` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dragon`;

-- Listage de la structure de la table dragon. capacite_classe
CREATE TABLE IF NOT EXISTS `capacite_classe` (
  `capcl_id` int(11) NOT NULL AUTO_INCREMENT,
  `capcl_cla_ID` int(11) NOT NULL DEFAULT '0',
  `capcl_sousclasse` varchar(30) DEFAULT NULL,
  `capcl_niveau` int(11) NOT NULL DEFAULT '0',
  `capcl_nom_capacite` text,
  `capcl_description` text,
  PRIMARY KEY (`capcl_id`),
  KEY `Index 2` (`capcl_cla_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

-- Listage des données de la table dragon.capacite_classe : ~11 rows (environ)
/*!40000 ALTER TABLE `capacite_classe` DISABLE KEYS */;
REPLACE INTO `capacite_classe` (`capcl_id`, `capcl_cla_ID`, `capcl_sousclasse`, `capcl_niveau`, `capcl_nom_capacite`, `capcl_description`) VALUES
	(1, 1, NULL, 1, 'Rage', 'En combat, vous vous battez avec une férocité bestiale. Durant votre tour, vous pouvez entrer en rage en utilisant une action bonus. En rage, vous gagnez les bénéfices suivants si vous ne portez pas d\'armure lourde :\r\n\r\nVous avez un avantage aux jets de Force et aux jets de sauvegarde de Force.\r\nQuand vous effectuez une attaque au corps à corps avec une arme utilisant la Force, vous gagnez un bonus aux jets de dégâts qui dépend de votre niveau de barbare, comme indiqué dans la colonne Dégâts de la table ci-dessus.\r\nVous avez la résistance aux dégâts contondants, perforants et tranchants.\r\nSi vous êtes capable de lancer des sorts, vous ne pouvez les lancer ou vous concentrer sur eux pour toute la durée de la rage.\r\n\r\nVotre rage dure 1 minute. Elle finit prématurément si vous devenez inconscient, ou si votre tour se termine et que vous n\'avez ni attaqué une créature hostile, ni subi des dégâts, depuis votre précédent tour. Vous pouvez également mettre fin à votre rage durant votre tour par une action bonus. Vous récupérez les utilisations de rage dépensées après avoir terminé un repos long.'),
	(2, 1, NULL, 1, 'Défense sans armure', 'Tant que vous ne portez pas d\'armure, votre classe d\'armure est égale à 10 + votre modificateur de Dextérité + votre modificateur de Constitution. Vous pouvez utiliser un bouclier et continuer de profiter de cette capacité.'),
	(3, 2, NULL, 1, 'Incantations', 'Vous avez appris à démêler et remodeler le tissu de la réalité en harmonie avec vos souhaits et vos rêves. Vos sorts font partie intégrante de votre vaste répertoire, une magie que vous pouvez accorder à différentes situations.'),
	(4, 2, NULL, 1, 'Sorts mineurs', 'Vous connaissez deux sorts mineurs de barde de votre choix. Vous apprendrez des sorts mineurs supplémentaires de votre choix aux niveaux supérieurs'),
	(5, 2, NULL, 1, 'Emplacements de sorts', 'La table du barde montre combien d\'emplacements de sorts vous avez pour lancer vos sorts de barde de niveau 1 et supérieur. Pour lancer un de ces sorts, vous devez dépenser un emplacement du niveau du sort ou supérieur. Vous regagner tous les emplacements de sorts dépensés lorsque vous terminez un repos long.\r\n\r\nPar exemple, si vous connaissez le sort de niveau 1 soins et qu\'il vous reste un emplacement de niveau 1 et un emplacement de niveau 2, vous pouvez lancer deux fois ce sort.'),
	(6, 2, NULL, 1, 'Sorts connus de niveau 1 et supérieur', 'Vous connaissez quatre sorts de niveau 1, à choisir dans la liste des sorts de barde. La colonne Sorts connus de la table ci-dessus indique les niveaux auxquels vous apprenez de nouveaux sorts de barde de votre choix. Chacun de ces sorts doit être d\'un niveau pour lequel vous possédez un emplacement de sort, comme indiqué dans la table. Par exemple, lorsque vous atteignez le niveau 3 de cette classe, vous pouvez apprendre un nouveau sort de niveau 1 ou 2. En outre, lorsque vous gagnez un niveau dans cette classe, vous pouvez choisir un sort de barde que vous connaissez et le remplacer par un autre sort choisi dans la liste de sorts de barde, celui devant également être d\'un niveau pour lequel vous possédez un emplacement de sort.'),
	(7, 2, NULL, 1, 'Caractéristique d\'incantation', 'Le Charisme est votre caractéristique d\'incantation pour vos sorts de barde, car le pouvoir de votre magie vient du cœur et de l\'âme que vous mettez lorsque jouez d\'un instrument ou lors de vos oraisons. Vous utilisez votre Charisme chaque fois qu\'un sort se réfère à votre capacité de lancer des sorts. En outre, vous utilisez votre modificateur de Charisme pour définir le DD du jet de sauvegarde d\'un sort de barde que vous lancez, ainsi que pour le jet d\'attaque de celui-ci.\r\n\r\nDD de sauvegarde des sorts = 8 + votre bonus de maîtrise + votre modificateur de Charisme\r\nModificateur aux attaques avec un sort = votre bonus de maîtrise + votre modificateur de Charisme'),
	(8, 2, NULL, 1, 'Rituel', 'Vous pouvez lancer nimporte quel sort de barde que vous connaissez comme un rituel si celui-ci possède l\'étiquette rituel.'),
	(9, 2, NULL, 1, 'Focaliseur de sort', 'Vous pouvez utiliser un instrument de musique comme focaliseur de sort pour vos sorts de barde.'),
	(10, 2, NULL, 1, 'Inspiration bardique', 'Vous pouvez inspirer les autres en maniant les mots ou la musique. Pour ce faire, utilisez une action bonus à votre tour pour choisir une créature autre que vous-même dans un rayon de 18 mètres autour de vous et qui peut vous entendre. Cette créature gagne un dé d\'Inspiration bardique (d6). Une fois dans les 10 minutes suivantes, la créature peut lancer le dé et ajouter le nombre obtenu à un jet de caractéristique, d\'attaque ou de sauvegarde qu\'elle vient de faire. La créature peut attendre de voir le résultat de jet de caractéristique, d\'attaque ou de sauvegarde avant de décider d\'appliquer le dé d\'Inspiration bardique, mais elle doit se décider avant que le MD ne dise si le jet est un succès ou un échec. Une fois le dé d\'Inspiration bardique lancé, il est consommé. Une créature ne peut avoir qu\'un seul dé d\'Inspiration bardique à la fois.\r\n\r\nVous pouvez utiliser cette capacité un nombre de fois égal à votre modificateur de Charisme (minimum 1). Vous regagnez vos dés d\'Inspiration bardique après avoir terminé un repos long. Votre dé d\'Inspiration bardique change lorsque vous atteignez certains niveaux dans cette classe. Le dé passe à un d8 au niveau 5, un d10 au niveau 10, et un d12 au niveau 15.'),
	(11, 3, NULL, 1, 'Incantations', 'En tant que conduit de la puissance divine, vous pouvez lancer des sorts de clerc.'),
	(12, 3, NULL, 1, 'Sorts mineurs', 'Au niveau 1, vous connaissez trois sorts mineurs de clerc de votre choix. Vous apprendrez des sorts mineurs supplémentaires de votre choix aux niveaux supérieurs, comme indiqué dans la colonne Sorts mineurs connus de la table ci-dessus.'),
	(13, 3, NULL, 1, 'Préparer et lancer des sorts', 'La table du clerc montre combien d\'emplacements de sorts vous avez pour lancer vos sorts de clerc de niveau 1 et supérieur. Pour lancer un de ces sorts, vous devez dépenser un emplacement du niveau du sort ou supérieur. Vous regagnez tous les emplacements de sorts dépensés lorsque vous terminez un repos long.\r\nVous devez préparer la liste des sorts de clerc qui vous sont disponibles pour les lancer. Pour ce faire, choisissez un nombre de sorts de clerc égal à votre modificateur de Sagesse + votre niveau de clerc (minimum un sort). Les sorts doivent être d\'un niveau pour lequel vous avez des emplacements de sorts. Par exemple, si vous êtes un clerc de niveau 3, vous avez suivant la table quatre emplacements de sorts de niveaux 1 et deux emplacements de sorts de niveau 2. Avec une Sagesse de 16, votre liste de sorts préparés peut inclure six sorts de niveau 1 et 2, selon n\'importe quelle combinaison. Si vous préparez le sort de niveau 1 soins, vous pouvez le lancer en utilisant un emplacement de niveau 1 ou de niveau 2. Lancer le sort ne le supprime pas de votre liste de sorts préparés.\r\nVous pouvez modifier votre liste de sorts préparés lorsque vous terminez un repos long. Préparer une nouvelle liste de sorts de clerc nécessite du temps pour prier et méditer : au moins 1 minute par niveau de sort pour chaque sort sur votre liste.'),
	(14, 3, NULL, 1, 'Caractéristique d\'incantation', 'La Sagesse est votre caractéristique d\'incantation pour vos sorts de clerc. La puissance de vos sorts vient de votre dévotion à votre dieu. Vous utilisez votre Sagesse chaque fois qu\'un sort se réfère à votre capacité de lancer des sorts. En outre, vous utilisez votre modificateur de Sagesse pour définir le DD du jet de sauvegarde d\'un sort de clerc que vous lancez ainsi que pour le jet d\'attaque de celui-ci.\r\n\r\nDD de sauvegarde des sorts = 8 + votre bonus de maîtrise + votre modificateur de Sagesse\r\nModificateur aux attaques avec un sort = votre bonus de maîtrise + votre modificateur de Sagesse'),
	(15, 3, NULL, 1, 'Rituel', 'Vous pouvez lancer un sort de clerc en tant que rituel si ce sort possède l\'étiquette rituel et si vous avez préparé le sort.'),
	(16, 3, NULL, 1, 'Focaliseur de sort', 'Vous pouvez utiliser un symbole sacré comme focaliseur de sort pour vos sorts de clerc.'),
	(17, 3, NULL, 1, 'Domaine divin', 'Choisissez un domaine lié à votre divinité : duperie, guerre, lumière, nature, savoir, tempête ou vie. Votre choix vous accorde des sorts de domaine et des capacités spéciales dès le niveau 1, puis de nouvelles aux niveaux 6, 8 et 17. Il vous octroie également des manières supplémentaires pour utiliser la Canalisation d’énergie divine du niveau 2.'),
	(18, 3, NULL, 1, 'Sorts de domaine', 'Chaque domaine possède une liste de sorts, les sorts de domaine, que vous gagnez au niveau de clerc indiqué dans la description du domaine. Une fois que vous gagnez un sort de domaine, il est toujours préparé, et ne compte pas dans le nombre de sorts que vous pouvez préparer chaque jour. Si vous gagnez un sort de domaine qui ne figure pas sur la liste de sorts de clerc, le sort est néanmoins un sort de clerc pour vous.'),
	(19, 1, NULL, 2, 'Attaque téméraire', 'À partir du niveau 2, vous pouvez mettre de côté votre défense pour attaquer avec toute la violence du désespoir. Lorsque vous effectuez la première attaque de votre tour, vous pouvez décider d\'effectuer une Attaque téméraire. Vous obtenez ainsi un avantage aux jets d\'attaque au corps à corps avec une arme utilisant la Force durant ce tour, mais les attaques effectuées contre vous ont également un avantage jusqu\'à votre prochain tour.'),
	(20, 1, NULL, 2, 'Sens du danger', 'Au niveau 2, vous ressentez une sensation étrange lorsque les choses qui vous entourent ne sont pas comme elles devraient être, vous donnant un avantage lorsque vous tentez de vous extirper du danger. Vous avez un avantage aux jets de sauvegarde de Dextérité contre les effets que vous pouvez voir, comme les pièges ou les sorts. Pour bénéficier de cet effet vous ne devez pas être aveuglé, assourdi ou incapable d\'agir.'),
	(21, 1, NULL, 3, 'Voie primitive', 'Au niveau 3, vous choisissez la voie par laquelle s\'exprime votre rage. Choisissez la voie du berserker ou la voie du guerrier totem, chacune étant détaillée ci-dessous. Votre choix vous accorde des capacités aux niveaux 3, 6, 10 et 14.'),
	(22, 1, NULL, 4, 'Amélioration de caractéristiques', 'Au niveau 4, puis par la suite aux niveaux 8, 12, 16 et 19, vous pouvez augmenter une valeur de caractéristique de votre choix de +2, ou bien augmenter deux valeurs de caractéristique de votre choix de +1. Vous ne pouvez cependant pas augmenter une caractéristique au-delà de 20 par ce biais.'),
	(23, 1, NULL, 5, 'Attaque supplémentaire', 'À partir du niveau 5, vous pouvez attaquer deux fois, au lieu d\'une seule, chaque fois que vous réalisez l\'action Attaquer durant votre tour.'),
	(24, 1, NULL, 5, 'Déplacement rapide', 'Au niveau 5, votre vitesse augmente de 3 mètres tant que vous ne portez pas d\'armure lourde.'),
	(25, 1, NULL, 7, 'Instinct sauvage', 'Au niveau 7, vos instincts sont si aiguisés que vous obtenez un avantage aux jets d\'initiative. De plus, si vous êtes surpris au début du combat et que vous n\'êtes pas incapable d\'agir, vous pouvez jouer normalement durant votre premier tour, mais seulement si vous entrez en rage avant de faire quoique ce soit d\'autre à ce tour.'),
	(26, 1, NULL, 9, 'Critique brutal', 'À partir du niveau 9, vous pouvez lancer un dé de dégâts de votre arme en plus lorsque vous déterminez les dégâts supplémentaires que vous infligez sur un coup critique réussi avec une attaque au corps à corps. Ce bonus aux dégâts passe à deux dés au niveau 13 et à trois dés au niveau 17.'),
	(27, 1, NULL, 11, 'Rage implacable', 'À partir du niveau 11, votre rage vous permet de continuer à combattre en dépit des graves blessures qui vous affectent. Si vous tombez à 0 point de vie pendant votre rage et que vous ne mourrez pas sur le coup, vous pouvez faire un jet de sauvegarde de Constitution DD 10. Si vous le réussissez, vous retournez immédiatement à 1 point de vie. Chaque fois que vous utilisez cette capacité après la première, le DD augmente de 5. Quand vous terminez un repos court ou long le DD retombe à 10.'),
	(28, 1, NULL, 15, 'Rage ininterrompue', 'En atteignant le niveau 15, votre rage est si intense qu\'elle ne s\'arrête prématurément qu\'à la condition que vous tombiez inconscient ou que vous choisissiez de l\'arrêter.'),
	(29, 1, NULL, 18, 'Puissance indomptable', 'Au niveau 18, si le résultat d\'un de vos jets de Force est inférieur à votre valeur de Force, vous pouvez utiliser votre valeur de Force à la place de votre résultat.'),
	(30, 1, NULL, 20, 'Champion primitif', 'Au niveau 20, vous êtes l\'incarnation de la puissance du monde sauvage. Vos valeurs de Force et de Constitution augmentent de 4. Votre maximum dans ces valeurs de caractéristique est maintenant de 24.');
/*!40000 ALTER TABLE `capacite_classe` ENABLE KEYS */;

-- Listage de la structure de la table dragon. capacite_race
CREATE TABLE IF NOT EXISTS `capacite_race` (
  `cap_ID` int(11) NOT NULL AUTO_INCREMENT,
  `cap_rac_nom` varchar(50) NOT NULL,
  `cap_nom_capacite` varchar(50) NOT NULL,
  `cap_description` text NOT NULL,
  PRIMARY KEY (`cap_ID`,`cap_rac_nom`),
  KEY `Index 2` (`cap_rac_nom`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- Listage des données de la table dragon.capacite_race : ~27 rows (environ)
/*!40000 ALTER TABLE `capacite_race` DISABLE KEYS */;
REPLACE INTO `capacite_race` (`cap_ID`, `cap_rac_nom`, `cap_nom_capacite`, `cap_description`) VALUES
	(1, 'elfe', 'Vision dans le noir.', 'Vous pouvez voir à 18 mètres dans une lumière faible comme vous verriez avec une lumière vive, et dans le noir comme vous verriez avec une lumière faible. Dans le noir, vous ne discernez pas les couleurs, uniquement des nuances de gris.'),
	(2, 'elfe', 'Sens aiguisés.', 'Vous maîtrisez la compétence Perception.'),
	(3, 'elfe', 'Ascendance féerique.', 'Vous avez un avantage aux jets de sauvegarde contre les effets de charme et la magie ne peut pas vous endormir.'),
	(4, 'elfe', 'Transe', 'Les elfes n\'ont pas besoin de dormir. Au lieu de cela, ils méditent profondément, restant à demi conscients, 4 heures par jour (le mot commun pour désigner cette méditation est « transe »). En méditant, vous pouvez rêver, tant bien que mal ; ces rêves sont en fait des exercices mentaux qui deviennent un réflexe après des années de pratique. Après un repos de ce type, vous obtenez les mêmes avantages qu\'un humain après 8 heures de sommeil.'),
	(5, 'halfelin', 'Chanceux.', 'Lorsque vous obtenez un 1 au dé d\'un jet d\'attaque, de caractéristique ou de sauvegarde, vous pouvez relancer le dé et devez alors utiliser ce nouveau résultat.'),
	(6, 'halfelin', 'Vaillant.', 'Vous avez un avantage aux jets de sauvegarde pour ne pas être effrayé.'),
	(7, 'halfelin', 'Agilité halfeline.', 'Vous pouvez passer dans l\'espace de toute créature d\'une taille supérieure à la vôtre.'),
	(8, 'nain', 'Résistance naine.', ' Vous avez un avantage aux jets de sauvegarde contre le poison et obtenez la résistance contre les dégâts de poison.'),
	(9, 'nain', 'Entraînement aux armes naines.', 'Vous obtenez la maîtrise des hachettes, des haches d\'armes, des marteaux légers et des marteaux de guerre.'),
	(10, 'nain', 'Maîtrise des outils.', 'Vous obtenez la maîtrise d\'un des outils d\'artisan suivant au choix : outils de forgeron, outils de brasseur ou outils de maçon.'),
	(11, 'nain', 'Connaissance de la pierre.', 'Chaque fois que vous effectuez un jet d\'Intelligence (Histoire) en relation avec l\'origine d\'un travail lié à la pierre, considérez que vous maîtrisez la compétence Histoire et ajoutez le double de votre bonus de maîtrise au jet, au lieu du bonus de maîtrise normal.'),
	(12, 'demi-elfe', 'Polyvalence.', 'Vous gagnez la maîtrise de deux compétences de votre choix.'),
	(13, 'demi-orque', 'Menaçant', 'Vous gagnez la maîtrise de la compétence Intimidation.'),
	(14, 'demi-orque', 'Endurance implacable. ', 'Lorsque vous tombez à 0 point de vie, mais que vous n\'êtes pas tué sur le coup, vous pouvez passer à 1 point de vie à la place. Vous devez terminer un repos long avant de pouvoir utiliser cette capacité de nouveau.'),
	(15, 'demi-orque', 'Attaques sauvages.', 'Lorsque vous réalisez un coup critique lors d\'une attaque au corps à corps avec une arme, vous pouvez jeter l\'un des dés de dégâts de l\'arme une deuxième fois et l\'ajouter aux dégâts supplémentaires du coup critique.'),
	(16, 'drakeide', 'Ascendance draconique.', ' Vous avez une ascendance draconique. Choisissez un type de dragon, votre souffle et votre résistance aux dégâts sont déterminés par le type de dragon'),
	(17, 'drakeide', 'Souffle.', 'Vous pouvez utiliser votre action pour expirer une énergie destructrice. Votre ascendance draconique détermine la taille, la forme et le type de dégâts de votre souffle. Lorsque vous utilisez votre souffle, toute créature dans la zone de l\'expiration doit faire un jet de sauvegarde, dont le type est déterminé par votre ascendance draconique. Le DD de ce jet de sauvegarde est égal à 8 + votre modificateur de Constitution + votre bonus de maîtrise. En cas d\'échec, la créature subit 2d6 dégâts, et la moitié en cas de réussite. Les dégâts augmentent à 3d6 au niveau 6, 4d6 au niveau 11, et 5d6 au niveau 16. Après avoir utilisé votre souffle, vous devez terminer un repos court ou long pour pouvoir l\'utiliser à nouveau.'),
	(18, 'drakeide', 'Résistance aux dégâts.', 'Vous obtenez la résistance au type de dégâts associé à votre ascendance draconique.'),
	(19, 'gnome', 'Ruse gnome.', 'Vous avez un avantage aux jets de sauvegarde d\'Intelligence, de Sagesse et de Charisme contre la magie.'),
	(20, 'tieffelin', 'Résistance infernale.', 'Vous avez la résistance aux dégâts de feu.'),
	(21, 'tieffelin', 'Ascendance infernale.', ' Vous connaissez le sort mineur thaumaturgie. Quand vous atteignez le niveau 3, vous pouvez lancer le sort représailles infernales comme un sort de niveau 2 une fois avec ce trait et regagnez cette capacité lorsque vous terminez un repos long. Quand vous atteignez le niveau 5, vous pouvez lancer le sort ténèbres une fois avec ce trait et regagnez cette capacité lorsque vous terminez un repos long. Le Charisme est votre caractéristique d\'incantation pour ces sorts.'),
	(22, 'nain\r\n', 'Vision dans le noir.', 'Vous pouvez voir à 18 mètres dans une lumière faible comme vous verriez avec une lumière vive, et dans le noir comme vous verriez avec une lumière faible. Dans le noir, vous ne discernez pas les couleurs, uniquement des nuances de gris.'),
	(24, 'demi-elfe', 'Vision dans le noir.', 'Vous pouvez voir à 18 mètres dans une lumière faible comme vous verriez avec une lumière vive, et dans le noir comme vous verriez avec une lumière faible. Dans le noir, vous ne discernez pas les couleurs, uniquement des nuances de gris.'),
	(25, 'demi-orque', 'Vision dans le noir.', 'Vous pouvez voir à 18 mètres dans une lumière faible comme vous verriez avec une lumière vive, et dans le noir comme vous verriez avec une lumière faible. Dans le noir, vous ne discernez pas les couleurs, uniquement des nuances de gris.'),
	(26, 'gnome', 'Vision dans le noir.', 'Vous pouvez voir à 18 mètres dans une lumière faible comme vous verriez avec une lumière vive, et dans le noir comme vous verriez avec une lumière faible. Dans le noir, vous ne discernez pas les couleurs, uniquement des nuances de gris.'),
	(27, 'tieffelin', 'Vision dans le noir.', 'Vous pouvez voir à 18 mètres dans une lumière faible comme vous verriez avec une lumière vive, et dans le noir comme vous verriez avec une lumière faible. Dans le noir, vous ne discernez pas les couleurs, uniquement des nuances de gris.'),
	(28, 'demi-elfe', 'Ascendance féerique', 'Vous avez un avantage aux jets de sauvegarde contre les effets de charme et la magie ne peut pas vous endormir.');
/*!40000 ALTER TABLE `capacite_race` ENABLE KEYS */;

-- Listage de la structure de la table dragon. classes
CREATE TABLE IF NOT EXISTS `classes` (
  `cla_ID` int(11) NOT NULL,
  `cla_nom` varchar(30) NOT NULL,
  `cla_DV` int(11) NOT NULL,
  `cla_competences` text NOT NULL,
  `cla_save` text NOT NULL,
  `cla_outil` text NOT NULL,
  `cla_armure` text NOT NULL,
  `cla_arme` text NOT NULL,
  PRIMARY KEY (`cla_ID`),
  CONSTRAINT `classes_ibfk_1` FOREIGN KEY (`cla_ID`) REFERENCES `capacite_classe` (`capcl_cla_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Listage des données de la table dragon.classes : ~12 rows (environ)
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
REPLACE INTO `classes` (`cla_ID`, `cla_nom`, `cla_DV`, `cla_competences`, `cla_save`, `cla_outil`, `cla_armure`, `cla_arme`) VALUES
	(1, 'barbare', 12, 'choisissez deux competences parmi Athletisme, Dressage, Intimidation, Nature, Perception et Survie', 'force,constitution', 'aucun', 'armures legeres, armures intermediaires, boucliers', 'armes courantes, armes de guerre'),
	(2, 'barde', 8, 'choisissez trois competences de votre choix', 'dexterite, charisme', 'trois instruments de musique de votre choix', 'armures légères', 'armes courantes, arbalète de poing, épée longue, épée courte, rapière'),
	(3, 'clerc', 8, 'choisissez deux competences parmi Histoire, Médecine, Perspicacite, Persuasion et Religion', 'sagesse, charisme', 'aucun', 'armures légères et intermédiaires, boucliers', 'armes courantes'),
	(4, 'druide', 8, 'choisissez deux competences parmi Arcanes, Dressage, Médecine, Nature, Perception, Perspicacite, Religion et Survie', 'intelligence,sagesse', 'kit d\'herboriste', 'armures légères et intermédiaires, boucliers (un druide n\'utilisera pas d\'armure ou de bouclier en métal)', 'gourdin, dague, fléchette, javeline, masse d\'armes, bâton, cimeterre, fronde, serpe, lance'),
	(5, 'ensorceleur', 6, 'choisissez deux competences parmi Arcanes, Intimidation, Perspicacite, Persuasion, Religion et Tromperie', 'constitution,charisme', 'aucun', 'aucune', 'dague, fléchette, fronde, bâton, arbalète légère'),
	(6, 'guerrier', 10, 'choisissez deux competences parmi Acrobaties, Athlétisme, Dressage, Histoire, Intimidation, Perception, Perspicacite et Survie', 'force,constitution', 'aucun', 'toutes les armures, boucliers', 'armes courantes, armes de guerre'),
	(7, 'magicien', 6, 'choisissez deux competences parmi Arcanes, Histoire, Investigation, Médecine, Perspicacite et Religion', 'intelligence,sagesse', 'aucun', 'aucune', 'dague, fléchettes, fronde, bâton, arbalète légère'),
	(8, 'moine', 8, 'choisissez deux competences parmi Acrobaties, Athletisme, Discretion, Histoire, Perspicacite et Religion', 'force,dextérité', 'un outil d\'artisan ou un instrument de musique de votre choix', 'aucune', 'armes courantes, épée courte'),
	(9, 'paladin', 10, 'choisissez deux competences parmi Athletisme, Intimidation, Medecine, Perspicacite, Persuasion et Religion', 'sagesse,charisme', 'aucun', 'toutes les armures, boucliers', 'armes courantes, armes de guerre'),
	(10, 'rodeur', 10, 'choisissez trois competences parmi Athletisme, Discretion, Dressage, Investigation, Nature, Perception, Perspicacite et Survie', 'force,dexterite', 'aucun', 'armures légères et intermédiaires, boucliers', 'armes courantes, armes de guerre'),
	(11, 'roublard', 8, 'choisissez quatre competences parmi Acrobaties, Athletisme, Discretion, Escamotage, Intimidation, Investigation, Perception, Perspicacite, Persuasion, Representation et Tromperie', 'dexterite,intelligence', 'outils de voleur', 'armures légères', 'armes courantes, arbalète de poing, épée courte, épée longue, rapière'),
	(12, 'sorcier', 8, 'choisissez deux competences parmi Arcanes, Histoire, Intimidation, Investigation, Nature, Religion et Tromperie', 'sagesse,charisme', 'aucun', 'armures légères', 'armes courantes');
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;

-- Listage de la structure de la table dragon. historique
CREATE TABLE IF NOT EXISTS `historique` (
  `his_ID` int(11) NOT NULL AUTO_INCREMENT,
  `his_nom` varchar(30) DEFAULT NULL,
  `his_capacite` varchar(30) DEFAULT NULL,
  `his_equipement` varchar(30) DEFAULT NULL,
  `his_competences` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`his_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Listage des données de la table dragon.historique : ~0 rows (environ)
/*!40000 ALTER TABLE `historique` DISABLE KEYS */;
/*!40000 ALTER TABLE `historique` ENABLE KEYS */;

-- Listage de la structure de la table dragon. race
CREATE TABLE IF NOT EXISTS `race` (
  `rac_ID` int(11) NOT NULL,
  `rac_nom` varchar(50) NOT NULL,
  `rac_vitesse` decimal(10,1) NOT NULL DEFAULT '0.0',
  `rac_langue` varchar(50) NOT NULL,
  `rac_carac` varchar(30) NOT NULL,
  PRIMARY KEY (`rac_ID`),
  KEY `FK_race_capacite_race` (`rac_nom`),
  CONSTRAINT `FK_race_capacite_race` FOREIGN KEY (`rac_nom`) REFERENCES `capacite_race` (`cap_rac_nom`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Listage des données de la table dragon.race : ~9 rows (environ)
/*!40000 ALTER TABLE `race` DISABLE KEYS */;
REPLACE INTO `race` (`rac_ID`, `rac_nom`, `rac_vitesse`, `rac_langue`, `rac_carac`) VALUES
	(1, 'elfe', 9.0, 'elfe,commun', '0/2/0/1/0/0'),
	(2, 'halfelin', 7.5, 'halfelin,commun', '0/2/0/0/0/1'),
	(3, 'humain', 9.0, 'commun, une langue supplémentaire au choix', '1/1/1/1/1/1'),
	(4, 'nain', 7.5, 'nain,commun', '1/0/2/0/0/0'),
	(5, 'demi-elfe', 9.0, 'elfe, commun et une langue supplémentaire au choix', '1/1/0/0/0/2'),
	(6, 'demi-orque', 9.0, 'orque, commun', '2/0/1/0/0/0'),
	(7, 'drakeide', 9.0, 'draconique, commun', '2/0/0/0/0/1'),
	(8, 'gnome', 7.5, 'gnome, commun', '0/0/1/2/0/0'),
	(9, 'tieffelin', 9.0, 'infernal, commun', '0/0/0/1/0/2');
/*!40000 ALTER TABLE `race` ENABLE KEYS */;

-- Listage de la structure de la table dragon. ss_classe
CREATE TABLE IF NOT EXISTS `ss_classe` (
  `sscl_ID` int(11) NOT NULL AUTO_INCREMENT,
  `sscl_cla_ID` int(11) NOT NULL,
  `sscl_nom` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`sscl_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

-- Listage des données de la table dragon.ss_classe : ~43 rows (environ)
/*!40000 ALTER TABLE `ss_classe` DISABLE KEYS */;
REPLACE INTO `ss_classe` (`sscl_ID`, `sscl_cla_ID`, `sscl_nom`) VALUES
	(1, 1, 'voie du berserker'),
	(2, 1, 'voie du guerrier totem'),
	(3, 1, 'voie de la magie sauvage'),
	(4, 2, 'collège du savoir'),
	(5, 2, 'Collège de la vaillance'),
	(6, 3, 'Domaine de la duperie'),
	(7, 3, 'Domaine de la guerre'),
	(8, 3, 'Domaine de la lumière'),
	(9, 3, 'Domaine de la nature'),
	(10, 3, 'Domaine du savoir'),
	(11, 3, 'Domaine de la tempête'),
	(12, 3, 'Domaine de la vie'),
	(13, 3, 'Domaine de la forge'),
	(14, 4, 'Cercle de la lune'),
	(15, 4, 'Cercle de la terre'),
	(16, 5, 'Lignéée draconique'),
	(17, 5, 'Magie sauvage'),
	(18, 6, 'Maître de guerre'),
	(19, 6, 'Chevalier occulte'),
	(20, 7, 'Ecole d\'abjuration'),
	(21, 7, 'Ecole de divination'),
	(22, 7, 'Ecole d\'enchantement'),
	(23, 7, 'Ecole d\'évocation'),
	(24, 7, 'Ecole d\'illusion'),
	(25, 7, 'Ecole d\'invocation'),
	(26, 7, 'Ecole de nécromancie'),
	(27, 7, 'Ecole de transmutation'),
	(28, 8, 'Voie de la main ouverte'),
	(29, 8, 'Voie de l\'ombre'),
	(30, 8, 'Voie des quatres éléments'),
	(31, 9, 'Serment de dévotion'),
	(32, 9, 'Serment des anciens'),
	(33, 9, 'Serment de vengeance'),
	(34, 10, 'Chasseur'),
	(35, 10, 'Maître des bêtes'),
	(36, 11, 'Assassin'),
	(37, 11, 'Voleur'),
	(38, 11, 'Escroc arcanique'),
	(39, 11, 'Conspirateur'),
	(40, 12, 'L\'archifée'),
	(41, 12, 'Le fiélon'),
	(42, 12, 'Le grand ancien'),
	(43, 12, 'Le génie');
/*!40000 ALTER TABLE `ss_classe` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
