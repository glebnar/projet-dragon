-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 30 sep. 2020 à 14:48
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `dragon`
--

-- --------------------------------------------------------

--
-- Structure de la table `article_race`
--

DROP TABLE IF EXISTS `article_race`;
CREATE TABLE IF NOT EXISTS `article_race` (
  `artr_ID` int(11) NOT NULL AUTO_INCREMENT,
  `artr_rac_ID` int(11) NOT NULL,
  `artr_titre` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `artr_contenu` text COLLATE utf8_unicode_ci NOT NULL,
  `artr_image` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`artr_ID`),
  KEY `artr_rac_ID` (`artr_rac_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `article_race`
--

INSERT INTO `article_race` (`artr_ID`, `artr_rac_ID`, `artr_titre`, `artr_contenu`, `artr_image`) VALUES
(1, 1, 'Elfe', 'Les elfes sont des créatures magiques d\'une extraordinaire grâce, habitant le monde sans en faire totalement partie. Ils vivent dans des lieux d\'une beauté éthérée, au cœur d\'anciennes forêts ou dans des tours scintillantes d\'une lumière féerique, là où une douce musique flotte dans l\'air et où de subtils effluves embaument la brise. Les elfes aiment la nature et la magie, l\'art et l\'artisanat, la musique et la poésie, et les bonnes choses de ce monde.', 'src/img/scout.jpg'),
(2, 1, 'Sveltes et gracieux', 'Avec leur grâce surnaturelle et leurs traits fins, les elfes paraissent d\'une beauté envoûtante aux yeux des humains et des membres des autres races. Ils sont légèrement plus petits qu\'un humain moyen. Leur taille varie entre 1,50 m et 1,80 m. Ils sont plus sveltes que les humains, pesant entre 45 et 65 kg. Hommes et femmes sont de tailles similaires et les hommes sont à peine plus massifs que les femmes. La couleur de peau des elfes comprend les variantes humaines ainsi que des teintes de cuivre, de bronze et une couleur blanche bleutée. Les cheveux peuvent être verts ou bleus, et les yeux comme des bassins d\'or ou d\'argent liquide. Les elfes sont glabres et imberbes. Ils privilégient les vêtements élégants de couleurs vives et apprécient le port de bijoux à la fois simples et jolis.', ''),
(3, 1, 'Une perspective intemporelle', 'Les elfes peuvent vivre plus de 700 ans, ce qui leur donne une large perspective sur les événements qui ont bouleversé l\'existence des peuples à l\'espérance de vie plus courte. Ils sont plus souvent amusés qu\'excités et plus enclins à la curiosité qu\'à l\'avidité. Ils ont tendance à rester distants et imperturbables lors d\'incidents mineurs. Toutefois, lorsqu\'ils poursuivent un objectif, lors d\'une aventure ou dans l\'apprentissage d\'une nouvelle compétence artistique, les elfes peuvent se montrer tenaces et déterminés. Ils sont lents à former de nouvelles amitiés ou inimitiés, mais encore plus lents à les oublier. Ils répliquent aux insultes anodines par le dédain et aux insultes sérieuses par la vengeance. Comme les rameaux d\'un jeune arbre, les elfes sont flexibles face aux dangers. Ils comptent sur la diplomatie et le compromis pour résoudre les conflits avant qu\'ils prennent de l\'ampleur. Ils sont réputés pour se retirer dans leurs domaines forestiers lors d\'intrusion, confiants qu\'ils peuvent simplement attendre le repli des envahisseurs. Mais lorsque le besoin se fait sentir, les elfes dévoilent leurs rigoureuses compétences martiales, en maniant habilement l\'épée, l\'arc et la stratégie.', ''),
(4, 1, 'Des royaumes forestiers cachés', 'La plupart des elfes demeurent dans de petits villages forestiers camouflés à travers les arbres. Les elfes chassent le gibier, font la cueillette et cultivent les légumes. Leurs compétences et leur magie leur permettent de vivre en autarcie sans avoir à défricher et labourer la terre. Ce sont des artisans doués qui fabriquent des vêtements finement tissés et des objets d\'art. Les contacts avec le monde extérieur sont ordinairement limités bien qu\'un petit nombre d\'elfes gagnent leur vie en échangeant des oeuvres artisanales contre des métaux (l\'exploitation minière ne les intéresse pas). Les elfes rencontrés hors de leurs propres territoires sont habituellement des ménestrels, des artistes ou des érudits. La noblesse humaine s\'arrache les services de tuteurs elfiques pour l\'enseignement de l\'escrime ou de la magie à leur progéniture.', ''),
(5, 2, 'Halfelin', 'Le confort à la maison est ce à quoi aspirent la plupart des halfelins : un endroit où s’installer dans une paix sereine, loin des monstres errants et des confrontations armées ; un feu ardent et un repas copieux ; un breuvage fin et une conversation raffinée. Bien que certains halfelins vivent leurs jours isolés dans des communautés agricoles, d’autres forment des bandes nomades en constant déplacement, attirés par les grands chemins et les vastes horizons pour découvrir les merveilles de nouvelles terres et de nouveaux peuples. Mais même ces itinérants aiment la paix, la nourriture, un foyer et un chez-soi, même si ce chez-soi est un chariot cahotant sur une route poussiéreuse ou un radeau flottant au gré du courant.', 'src/img/halfelin.jpg'),
(6, 2, 'Petits et pragmatiques', 'Les tout petits halfelins survivent dans un monde rempli de créatures plus grandes qu’eux en évitant d’être remarqués ou en évitant les offenses. Mesurant près de 90 cm., ils paraissent plutôt inoffensifs et ainsi, ils ont réussi à survivre depuis des siècles à l’ombre des empires et en marge des guerres et des remous politiques. Ils ont tendance à être trapus, pesant entre 18 et 20 kg.Les halfelins ont un teint de peau variant de bronzé à pale avec un ton rougeaud. Leur chevelure est habituellement brune ou sablée et bouclée. Ils ont les yeux bruns ou de couleur noisette. Les hommes halfelins portent souvent de longues rouflaquettes, mais la barbe est rare et la moustache, encore plus. Ils aiment les vêtements simples, confortables et pratiques, préférablement de couleurs vives.Le pragmatisme des halfelins va au-delà de leur habillement. Ils se soucient des besoins de base et des plaisirs simples. Ils n’ont aucun intérêt à l’ostentation. Même le plus riche des halfelins garde ses trésors sous clé, dans un cellier plutôt qu’à la vue de tous. Ils ont un don pour trouver les solutions les plus simples aux problèmes et ont peu de patience pour l’indécision.', ''),
(7, 2, 'Aimables et curieux', 'Les halfelins sont des gens affables, chaleureux et joyeux. Ils chérissent les liens de famille et l\'amitié ainsi que le confort du foyer, n’entretenant que peu de rêves d\'or et de gloire. Les plus téméraires parmi eux s\'aventurent généralement dans le monde pour des raisons liées à la communauté, l’amitié, l’envie de voyager ou la curiosité. Ils aiment découvrir de nouvelles choses, même les plus simples, comme une nourriture exotique ou un style particulier de vêtements. Les halfelins sont aisément émus par la pitié et ils détestent voir la souffrance d’un être vivant. Ils sont généreux et partagent sans compter, même dans les temps plus difficiles.', ''),
(8, 2, 'Se fondre dans la foule', 'Les halfelins sont aptes à s\'insérer dans une communauté d\'humains, de nains ou d’elfes, en se rendant utiles et bienveillants. La combinaison de leur discrétion innée et de leur nature modeste contribue à éviter une attention non désirée. Ils collaborent promptement avec les autres et sont très fidèles à leurs amis, qu’ils soient halfelins ou non. Mais ils peuvent aussi se montrer remarquablement féroces quand leurs amis, leurs familles ou leurs communautés sont menacés.', ''),
(9, 2, 'Traditions pastorales', 'La plupart des halfelins vivent dans de petites communautés pacifiques avec de grandes exploitations agricoles et des bosquets bien gardés. Ils n\'ont jamais construit un royaume de leur propre chef ni même possédé beaucoup de terres au-delà de leurs comtés tranquilles. Ils ne reconnaissent pas la noblesse et la royauté, préférant les conseils des anciens de la famille pour les guider. Cet accent mis sur la famille et la communauté a permis aux halfelins de maintenir leurs traditions durant des milliers d\'années, sans être affectés par l’ascension et la chute des empires. Beaucoup de halfelins vivent parmi les autres races, où leur travail acharné et leur fidélité leur offrent de bonnes récompenses et le confort. Certaines communautés considèrent le voyage comme un mode de vie, conduisant des chariots ou guidant des embarcations d\'un endroit à l’autre sans posséder un domicile fixe.', ''),
(10, 2, 'Exploration opportuniste', 'Les halfelins qui ont pris le chemin de l\'aventure l’ont généralement fait pour défendre leurs communautés, aider leurs amis ou explorer un vaste et merveilleux monde. Pour eux, l\'aventure est moins une carrière qu’une chance ou une nécessité.', ''),
(11, 3, 'Humain', 'Dans la plupart des mondes, les humains sont la plus jeune des races communes, la dernière à être apparue et celle dotée de la plus faible longévité par rapport aux nains, aux elfes et aux dragons. Peut-être du fait de leurs vies plus courtes, ils s\'efforcent d\'atteindre autant d\'objectifs qu\'ils peuvent pendant les années qui leur sont données. Ou peut-être sentent-ils qu\'ils ont quelque chose à prouver aux races plus anciennes, et c\'est pourquoi ils construisent de puissants empires basés sur la conquête et le commerce. Mais quelle que soit la raison qui les pousse de l\'avant, les humains sont les innovateurs, les bâtisseurs et les pionniers de leurs mondes.', 'src/img/humain.jpg'),
(12, 3, 'Un large spectre', 'Avec leur penchant pour les migrations et les conquêtes, il y a plus de diversités physiques chez les humains que chez les autres races communes. Il n’y a pas d’humain moyen. Un individu peut mesurer un peu moins de 1,55 mètre à plus de 1,85 mètre, et peser de 55 à 120 kg. La couleur de leur peau varie du presque noir au blanc le plus pâle, et la couleur de leurs cheveux du noir au blond, qu’ils soient bouclés, frisés ou raides, les hommes arborant parfois une pilosité faciale plus ou moins épaisse. De nombreux humains ont une petite quantité de sang non-humain dans leurs veines, révélant des ascendances elfe, orque, ou d’autres  lignages. Les humains atteignent l’âge adulte peu avant vingt ans et vivent rarement plus d’un siècle.', 'src/img/humain.jpg'),
(13, 3, 'Variété en toutes choses', 'Les humains sont les plus adaptables et les plus ambitieux de toutes les races communes. Leurs goûts, leurs morales et leurs coutumes varient grandement en fonction des nombreux pays où ils se sont installés. Lorsqu’ils s’installent quelque part, ils construisent des cités faites pour durer à travers les âges, et de grands royaumes pouvant perdurer de longs siècles. Même si un humain a une espérance de vie relativement courte, les nations et cultures humaines préservent leurs traditions, dont certaines remontent bien au-delà de la mémoire des humains. Ils vivent pleinement le moment présent – ce qui les rend parfaitement adaptés à la vie d’aventurier – mais font également des plans pour le futur, cherchant toujours à laisser derrière eux un héritage. En tant qu’individu ou groupe, les humains sont opportunistes, font preuve d’adaptabilité et sont toujours prêts à changer de système politique ou social.', 'src/img/humain.jpg'),
(14, 3, 'Institutions durables', 'Lorsque chez les elfes et les nains, un individu seul peut prendre la responsabilité de garder un lieu particulier ou un puissant secret, les humains fondent des ordres et des institutions pour de pareilles intentions. Lorsque, dans les clans nains et halfelins, les anciens transmettent les traditions aux jeunes générations, les temples, les gouvernements, les librairies et les codes de lois gravent les traditions humaines dans le marbre de l’histoire. Les humains rêvent d’immortalité, mais (à l’exception des rares qui recherchent la non-vie ou l’ascension divine pour échapper aux griffes de la mort) ils cherchent à y parvenir en veillant à ce que l’on se souvienne d’eux une fois partis. Bien que certains humains soient xénophobes et vivent dans des sociétés refermées sur elles-mêmes, les terres humaines accueillent de nombreux non-humains en comparaison du nombre d’humains vivant sur les terres des autres races.', 'src/img/humain.jpg'),
(15, 3, 'Exemplaires dans l’ambition', 'Les humains qui recherchent l’aventure sont les individus les plus audacieux et ambitieux de cette race audacieuse et ambitieuse. Ils cherchent dans le regard de leurs contemporains le reflet de leur gloire, en amassant pouvoir, fortune et célébrité. Plus encore que chez les autres peuples, les humains défendent des causes plutôt que des territoires ou des groupes.', 'src/img/humain.jpg'),
(21, 4, 'Nain', 'De riches royaumes d’une ancienne magnificence, des halls creusés aux racines mêmes des montagnes, l’écho des pioches et des marteaux dans les mines profondes et les forges ardentes, un engagement au clan et à la tradition ainsi qu’une intense haine des gobelins et des orques, ce sont les traits communs qui unissent tous les nains', 'src/img/nain.jpg'),
(22, 4, 'Petits et costauds', 'Téméraires et robustes, les nains sont reconnus être aussi habiles en tant que guerriers, mineurs ou artisans de la pierre et du métal. Malgré leur taille ne dépassant pas 1,50 mètre, les nains sont larges et compacts au point de peser autant qu’un humain mesurant près d’un mètre de plus. Leur courage et leur endurance rivalisent facilement avec ceux des personnes plus grandes. Le teint de peau des nains varie du brun foncé à des tons plus pâles avec un soupçon de rouge, mais la teinte la plus commune est le brun clair ou la couleur de l’ocre foncé, comme certains tons de la terre. Leur chevelure, portée longue mais simplement stylisée, est habituellement noire, grise ou brune, bien que les nains plus pâles aient souvent les cheveux roux. Les hommes accordent une grande valeur à leur barbe et l’entretiennent avec grand soin', 'src/img/nain.jpg'),
(23, 4, 'Bonne mémoire et longues rancœurs', 'Les nains peuvent vivre plus de 400 ans. Ainsi, les nains les plus âgés se remémorent souvent un monde bien différent. Par exemple, certains des plus vieux nains demeurant à la Citadelle Felbarr (dans l’univers des Royaumes Oubliés) se souviennent du jour, il y a plus de trois siècles, où les orques firent la conquête de la forteresse et les chassèrent vers un exil qui dura plus de 250 ans. Cette longévité leur confère une perspective sur le monde qui échappe aux races dont l’espérance de vie est plus courte, comme les humains et les halfelins. Les nains sont aussi solides et endurants que les montagnes qu’ils affectionnent, résistant au passage des siècles avec une endurance stoïque et de minimes changements. Ils respectent les traditions de leurs clans, qui remontent jusqu’à leurs ancêtres, au moment de la fondation de leurs plus anciens bastions alors que le monde était encore jeune. Et ils n’abandonnent pas facilement leurs traditions. Une part de ces traditions est le dévouement aux dieux des nains, qui prônent les idéaux nains du travail industrieux, de l’habilité au combat et du dévouement à la forge. Individuellement, un nain est déterminé et loyal, fidèle à sa parole et résolu dans ses actions au point d’être considéré comme un entêté. De nombreux nains possèdent un sens accru de la justice et oublient lentement le mal qu’on leur a fait subir. Un affront fait à un nain est un affront fait à tous les nains de son clan. Ce qui débute comme la vengeance d’un nain peut dégénérer en guerre de clans', 'src/img/nain.jpg'),
(24, 4, 'Clans et royaumes', 'Les royaumes nains s’étendent loin sous les massifs montagneux où les nains exploitent des mines de pierres et de métaux précieux pour en faire des objets merveilleux. Ils aiment la beauté et les qualités artistiques des métaux précieux et des bijoux raffinés à un point tel que certains nains succombent à l’avarice. S’il existe une richesse qu’ils ne peuvent trouver sous leurs montagnes, ils l’obtiennent par le commerce. Comme ils n’apprécient pas les bateaux, ce sont plutôt des humains et des halfelins entreprenants qui font le négoce des biens d’origine naine le long des voies maritimes. Les membres fiables des autres races sont bien accueillis dans les établissements nains, bien que certaines zones ne leur soient pas accessibles. L\'unité principale de la société naine est le clan, et les nains apprécient hautement la valeur d’une position sociale. Même ceux qui vivent loin de leurs propres royaumes chérissent leur identité et leur affiliation clanique, et savent reconnaître les nains avec qui ils sont liés. Il n’est pas rare d’entendre un nain invoquer le nom d’un ancêtre en jurant ou en prêtant serment. Ne pas faire partie d’un clan est le pire sort qui puisse arriver à un nain. Les nains hors de chez eux sont généralement des artisans, plus particulièrement des forgerons, des armuriers ou des bijoutiers. Certains sont mercenaires ou gardes du corps, recherchés pour leur courage et leur loyauté', 'src/img/nain.jpg'),
(25, 4, 'Dieux, or et clan', 'Les nains qui s’adonnent à la vie d’aventurier peuvent être motivés par le désir de trésors, pour son propre gain, pour une raison spécifique ou même par altruisme, pour aider les autres. D’autres nains sont poussés à la demande d’un dieu ou par l’inspiration d’une divinité, en réponse à un appel ou simplement par désir d’apporter la gloire à l’un des dieux nains. Le clan et l’ascendance sont aussi des motivateurs importants. Un nain pourrait tenter de rétablir l’honneur perdu d’un clan, venger un vieil affront subi par le clan ou gagner une nouvelle position dans le clan après un exil. Ou bien un nain pourrait chercher la hache que portait un puissant ancêtre, perdue sur le champ de bataille il y a de nombreux siècles', 'src/img/nain.jpg'),
(26, 5, 'Demi-elfe', 'Fréquentant deux mondes, mais n\'appartenant vraiment à aucun des deux, les demi-elfes combinent ce que certains disent être les meilleures qualités de leurs parents elfes et humains : la curiosité et la créativité humaine, et une ambition tempérée par des sens raffinés, l\'amour de la nature et les goûts artistiques des elfes. Certains demi-elfes vivent parmi les humains, un peu en marge de par leurs différences physiques et émotionnelles, en regardant vieillir leurs amis et leurs proches alors que le temps les touche à peine. D\'autres vivent chez les elfes, devenant adultes alors que leurs pairs continuent de vivre comme des enfants, s\'agitant de plus en plus dans ces royaumes elfiques intemporels. Beaucoup d\'autres demi-elfes, incapables de s\'intégrer dans quelle société que ce soit, choisissent une vie d\'errance solitaire, ou rejoignent d\'autres marginaux et exclus pour partager une vie d\'aventures.', 'src/img/demi-elfe.jpg'),
(27, 5, 'Issus de deux mondes', 'Pour les humains, un demi-elfe ressemble à un elfe, et pour un elfe il paraît humain. Bien qu\'ils soient par la taille proche de leurs parents, ils ne sont jamais aussi sveltes que les elfes ou aussi robustes que les humains. Leur taille varie entre 1,50 et 1,80 mètre, avec un poids situé entre 50 et 90 kg, les hommes étant légèrement plus grands et plus lourds que les femmes. Les hommes demi-elfes possèdent une pilosité faciale, et se laissent parfois pousser la barbe pour dissimuler leur héritage elfique. La complexion et les caractéristiques physiques d\'un demi-elfe sont un mélange entre celles de leurs parents humains et elfes, montrant ainsi une variété encore plus prononcée que celle observée chez les deux espèces. Ils ont généralement les yeux de leur parent elfe.', ''),
(28, 5, 'Diplomates ou vagabonds', 'Les demi-elfes n\'ont pas de terres leurs appartenant, bien qu\'ils soient les bienvenus dans les cités humaines, et presque autant acceptés dans les les forêts elfiques. Dans les grandes cités ou régions où elfes et humains interagissent régulièrement, les demi-elfes sont parfois assez nombreux pour former une petite communauté. Ils apprécient la compagnie d\'autres demi-elfes, les seules personnes pouvant réellement comprendre ce que c\'est que de vivre entre ces deux mondes. Dans la plupart des coins du monde par contre, les demi-elfes sont tellement peu nombreux que l\'un d\'eux pourrait passer des années sans rencontrer un seul de son espèce. Certains demi-elfes préfèrent éviter la compagnie, voyageant à travers les étendues sauvages en tant que trappeurs, forestiers, chasseurs ou aventuriers, visitant ainsi des contrées oubliées. Comme les elfes, ils sont entraînés par une soif de voyage liée à leur grande longévité. D\'autres, au contraire, se jettent dans les méandres de la société, se servant de leur charisme et de leurs talents sociaux innés pour exceller en tant que diplomates ou escrocs.', ''),
(31, 5, 'Diplomates ou vagabonds', 'Les demi-elfes n\'ont pas de terres leurs appartenant, bien qu\'ils soient les bienvenus dans les cités humaines, et presque autant acceptés dans les les forêts elfiques. Dans les grandes cités ou régions où elfes et humains interagissent régulièrement, les demi-elfes sont parfois assez nombreux pour former une petite communauté. Ils apprécient la compagnie d\'autres demi-elfes, les seules personnes pouvant réellement comprendre ce que c\'est que de vivre entre ces deux mondes. Dans la plupart des coins du monde par contre, les demi-elfes sont tellement peu nombreux que l\'un d\'eux pourrait passer des années sans rencontrer un seul de son espèce. Certains demi-elfes préfèrent éviter la compagnie, voyageant à travers les étendues sauvages en tant que trappeurs, forestiers, chasseurs ou aventuriers, visitant ainsi des contrées oubliées. Comme les elfes, ils sont entraînés par une soif de voyage liée à leur grande longévité. D\'autres, au contraire, se jettent dans les méandres de la société, se servant de leur charisme et de leurs talents sociaux innés pour exceller en tant que diplomates ou escrocs.', ''),
(32, 6, 'Demi-orque', 'Que ce soit unis sous la direction d\'un puissant sorcier ou lors de trêves après des années de conflit, les tribus orques et humaines forment parfois des alliances, unissant leurs forces en une horde encore plus grande qui engendre la terreur dans les terres civilisées proches. Et lorsque ces alliances sont scellées par des mariages, des demi-orques naissent. Certains deviennent de fiers chefs de tribus orques, leur sang humain leur donnant un avantage sur leurs rivaux orques. Certains s\'aventurent dans le monde afin de prouver leur valeur parmi les humains ou d\'autres races plus civilisées. Beaucoup d\'entre eux deviennent alors des aventuriers, acquérant la grandeur à travers leurs hauts faits et la notoriété à travers leurs coutumes barbares et leur fureur sauvage.', 'src/img/demi-orque.jpg'),
(33, 6, 'Balafré et solide', 'La pigmentation grisâtre, le front incliné, la mâchoire saillante, les dents proéminentes et la carrure imposante des demi-orques rendent leur ascendance orque visible de tous. Les demi-orques mesurent entre 1,80 et 2,10 mètres et pèsent généralement entre 90 et 125 kg. Les orques considèrent également les cicatrices des batailles comme des marques d\'orgueil et les cicatrices ornementales comme des choses d\'une grande beauté. D\'autres cicatrices, par contre, signalent un orque ou un demi-orque comme étant un ancien esclave ou un exilé en disgrâce. Tous les demi-orques ayant vécu parmi ou près d\'orques portent des cicatrices, qu\'elles soient des marques d\'humiliation ou d\'orgueil, racontant leurs exploits et les blessures du passé. Un demi-orque vivant parmi les humains peut afficher avec fierté ses cicatrices ou les cacher honteusement.', 'src/img/demiorque.jpg'),
(34, 6, 'La marque de Gruumsh', 'Le dieu borgne Gruumsh a créé les orques, et même les orques qui se détournent de son culte ne peuvent s\'échapper totalement de son influence. La même chose est vraie pour les demi-orques, même si leur sang humain modère l\'impact de leur acendance orque. Certains demi-orques entendent les murmures de Gruumsh dans leurs rêves, les appelants à libérer la rage qui bouillonne en leur sein. D\'autres sentent l\'exultation de Gruumsh quand ils rejoignent la mêlée, se réjouissant avec lui ou tremblant de peur et de dégoût. Les demi-orques ne sont pas mauvais par nature, mais le mal se tapie en leur sein, qu\'ils l\'embrassent ou se rebellent contre lui. Car au-delà de la rage de Gruumsh, les demi-orques ressentent puissamment les émotions. La rage n\'accélère pas que leur pouls, elle rend leur corps brûlant. Une insulte pique comme de l\'acide, et la tristesse sape leur force. Mais ils rient bruyamment et de bon cœur, et les plaisirs corporels simples comme manger, boire, lutter, jouer des percussions ou danser sauvagement remplissent leur cœur de joie. Ils ont tendance à être coléreux et parfois maussades, plus enclins à l\'action qu\'à la contemplation et au combat qu\'à l\'argumentation. Les demi-orques les plus accomplis sont ceux qui ont assez de maîtrise de soi pour se débrouiller dans un pays civilisé.', 'src/img/demiorque.jpg'),
(35, 6, 'Tribus et taudis', 'Les demi-orques vivent le plus souvent parmi les orques. Parmi les autres races, les humains sont les plus susceptibles d\'accepter les demi-orques, et les demi-orques vivent presque toujours dans les terres humaines lorsqu\'ils ne vivent pas parmi les tribus d\'orques. Que se soit en faisant leurs preuves dans des tribus barbares sauvages ou en grappillant pour survivre dans les bidonvilles des grandes villes, les demi-orques obtiennent leur place par leur force physique, leur endurance et leur rude détermination qu\'ils héritent de leur ascendance humaine.', 'src/img/demiorque.jpg'),
(36, 7, 'Drakéide', 'Nés de dragons, comme leur nom le laisse entendre, les drakéides marchent fièrement dans un monde qui les accueille avec une incompréhension craintive. Façonnés par les dieux draconiques ou les dragons eux-mêmes, à l\'origine les drakéides ont éclos d\'œufs de dragons pour ensuite former une race à part entière qui combine les meilleurs attributs des dragons et des humanoïdes. Certains drakéides sont de fidèles serviteurs des vrais dragons, d\'autres forment les rangs des soldats dans de grandes guerres, et d\'autres encore se trouvent à la dérive, sans vocation claire dans la vie.', 'src/img/drakeide.jpg'),
(37, 7, 'Fiers parents des dragons', 'Les drakéides ressemblent beaucoup à des dragons sous forme humanoïde, bien qu\'ils leurs manquent des ailes et une queue. Les premiers drakéides avaient des écailles de teintes vives correspondant aux couleurs de leurs parents draconiques, mais des générations de croisements ont créé une apparence plus uniforme. Leurs petites écailles fines sont généralement de la couleur du cuivre ou du bronze, tirant parfois vers l\'écarlate, le brun-rouille, l\'or ou le vert-de-gris. Ils sont grands et solidement bâti, faisant souvent près de 1,95 mètre et pesant plus de 150 kg. Leurs mains et leurs pieds sont puissants, semblables à des serres griffues dotées de trois doigts et d’un pouce sur chaque main. Le sang d\'un type particulier de dragon coullent très fortement dans certains clans drakéides. Ceux-ci leur offrent souvent des écailles qui correspondent davantage à celles de leur ancêtre dragon - rouge vif, vert, bleu ou blanc, noir brillant ou d’étincelant éclats d\'or, d\'argent, d\'étain, de cuivre ou de bronze.', 'src/img/drakeide.jpg'),
(38, 7, 'Clans autonomes', 'Pour tout drakéide, le clan est plus important que la vie elle-même. Les drakéides doivent dévouement et respect à leur clan par-dessus tout, même les dieux. La conduite de chaque drakéide se reflète sur l\'honneur de son clan, et le déshonorer peut entraîner l\'expulsion et l\'exil. Chaque drakéide connaît son poste et sa fonction au sein du clan, et les exigences d\'honneur maintiennent les limites de cette position. Un entraînement continu pour l\'auto-amélioration reflète l\'autosuffisance de la race dans son ensemble. Les drakéides estiment la compétence et l\'excellence en toute chose. Ils détestent l\'échec, et poussent leurs efforts à l\'extrêmes avant qu\'ils ne renoncent à quelque chose. Un drakéide qui recherche la maîtrise d\'une compétence particulière en fait l’objectif de sa vie entière. Les membres d\'autres races qui partagent le même engagement arrivent facilement à gagner le respect d\'un drakéide. Bien que tous les drakéides s’efforcent d\'être auto-suffisant, ils reconnaissent que de l\'aide est parfois nécessaire dans les situations difficiles. Mais la meilleure source pour une telle aide est le clan, et quand un clan a besoin d\'aide, il se tourne vers un autre clan drakéide avant de demander de l\'aide à d’autres races, ou même aux dieux.', 'src/img/drakeide.jpg'),
(39, 8, 'Gnome', 'Un bourdonnement constant d\'activités imprègne les terriers et les quartiers des communautés gnomes. Et certains sons plus forts ponctuent ce bourdonnement : un craquement d\'engrenages ici, une petite explosion là, un cri de surprise ou de triomphe, mais surtout des éclats de rire. Les gnomes prennent plaisir à la vie, et profitent de chaque instant, d\'une invention, d\'une exploration, d\'une recherche, d\'une création ou d\'une lecture.', 'src/img/gnome.jpg'),
(40, 8, 'Expression vibrante', 'L’énergie et l’enthousiasme des gnomes pour la vie transparaît au travers de chaque pouce de la surface de son petit corps. Les gnomes ont une taille moyenne d’un peu plus d’un mètre et un poids moyen de 20 à 23 kg. Un large sourire éclaire habituellement leur visage bronzé, hâlé, sous leur nez proéminent, et leurs yeux lumineux pétillent d’excitation. Leurs cheveux clairs ont tendance à partir dans toutes les directions, comme s’ils représentaient la grande curiosité des gnomes face à leur environnement. La personnalité d’un gnome s’affiche dans son apparence générale. La barbe d’un gnome mâle contrastera avec sa chevelure ébouriffée en étant soigneusement peignée, bien que souvent coiffée en fourche ou en pointe. Le tissu de teinte brune de leurs vêtements, bien que de qualité modeste, est souvent rehaussé de broderie ou de pierres brillantes.', 'src/img/gnome.jpg'),
(41, 8, 'Enthousiasme débordant', 'Pour autant que les gnomes soient concernés, être en vie est une chose merveilleuse, et ils profitent joyeusement de chaque instant de leur 300 à 500 ans d’espérance de vie. Les humains s’inquiéteraient de s’ennuyer dans une vie si longue, et les elfes prennent le temps d’apprécier les beautés du monde durant de longues années, alors que les gnomes semblent plutôt être inquiets de ne pas avoir malgré tout assez de temps pour faire ou voir tout ce qu’ils souhaiteraient. Les gnomes parlent rapidement, comme s’ils n’arrivaient pas à exprimer suffisamment vite toutes leurs pensées. Bien qu’ils donnent leur avis et idées sur nombres de sujets, ils restent à l’écoute des autres, ponctuant la discussion d’exclamations de surprise et d’appréciation. Bien qu’ils apprécient les blagues de toutes sortes, et particulièrement les calembours et les canulars, ils sont aussi appliqués lors des tâches plus sérieuses qu’ils entreprennent. De nombreux gnomes sont ingénieurs, alchimistes, bricoleurs ou des inventeurs compétents. Ils ne s’inquiètent pas de faire des erreurs et rient d’eux mêmes, n’hésitant pas à prendre des risques audacieux et à rêver en grand.', 'src/img/gnome.jpg'),
(42, 8, 'Des terriers éblouissants', 'Les gnomes habitent dans des terres boisées et vallonnées. Ils logent sous-terre mais prennent plus souvent l’air frais que les nains, appréciant les joies de la vie à la surface aussi souvent que possible. Leur habitat est soigneusement dissimulé par des constructions astucieuses et des illusions simples. Les visiteurs bienvenus sont rapidement conduits dans leurs terriers lumineux et chaleureux. Et ceux qui ne sont pas bienvenus auront quand à eux bien du mal à trouver les terriers en premier lieu. Les gnomes qui s’installent dans les territoires humains sont souvent des tailleurs de pierres, des ingénieurs, des sages ou des réparateurs/bricoleurs. Certaines familles humaines emploient des tuteurs gnomes, s’assurant ainsi que leurs enfants reçoivent une éducation mêlant un apprentissage sérieux et de joyeux plaisirs. Un tuteur gnome, au cours de sa longue vie, pourra s’occuper de plusieurs générations d’une famille humaine.', 'src/img/gnome.jpg'),
(43, 9, 'Tieffelin', 'Être accueilli par des regards suspicieux et des murmures, souffrir insultes et violences à chaque coin de rue, croiser le doute et la peur dans chaque regard, tel est le lot quotidien du tieffelin. Et pour remuer le couteau dans la plaie, les tieffelins ont conscience que tout cela vient d\'un pacte passé il y a plusieurs générations qui imprégna leur lignée de l\'essence d\'Asmodée, le seigneur des Neuf enfers. Leur apparence et leur nature ne sont pas le fruit de leur volonté, mais la conséquence d\'un péché ancien duquel eux-mêmes, leurs enfants et toute leur descendance, seront toujours redevables.', 'src/img/tieffelin.jpg'),
(44, 9, 'Lignée infernale', 'Les tieffelins descendent d\'une lignée humaine et, dans l\'absolu, ils ressemblent toujours aux humains. Malgré tout, leur héritage infernal a laissé une marque claire et indélébile sur leur apparence. Les tieffelins possèdent comme attribut le plus marquant de larges cornes, qui peuvent apparaître sous une grande variété de formes : certains ont les cornes courbées d\'un bélier, d\'autres les longues cornes d\'une gazelle, et d\'autres encore ont les cornes en spirales de l\'antilope. Ils ont aussi une fine queue mesurant entre 120 et 150 centimètres de long qui fouette l\'air ou s’enroule autour de leurs jambes quand ils deviennent agacés ou nerveux. Leurs canines sont particulièrement pointues et leurs yeux d\'une couleur unique – noirs, jaunes, argent ou or – sans sclère ni pupille discernable. La couleur de leur peau couvre toute la palette des couleurs humaines, mais intègre aussi plusieurs nuances de rouges. Leurs cheveux, descendants de derrière leurs cornes, sont généralement sombres, plutôt noirs ou bruns, ou parfois rouge sombre, bleu ou pourpre.', 'src/img/tieffelin.jpg'),
(45, 9, 'Autonomes et prudents', 'Les tieffelins survivent en petites minorités que l\'on trouve généralement dans les cités et les villes humaines, la plupart du temps dans les quartiers les plus difficiles au sein desquels ils grandissent pour devenir des escrocs, des voleurs ou des seigneurs du crime. Il arrive parfois qu\'ils vivent dans des enclaves aux côtés d\'autres minorités parmi lesquelles ils trouvent plus de respect. N\'ayant pas de nations, les tieffelins savent qu\'ils doivent se faire leur place dans ce monde et se montrer forts pour survivre. Ils ne sont pas prompts à faire confiance à ceux qui se revendiquent être leurs amis, mais quand un de leurs compagnons lui montre la confiance qu\'il lui porte, le tieffelin lui rend toujours cette confiance. Et quand un tieffelin a donné sa loyauté, il sera à vie un ami solide ou un allié fiable.', 'src/img/tieffelin.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `capacite_classe`
--

DROP TABLE IF EXISTS `capacite_classe`;
CREATE TABLE IF NOT EXISTS `capacite_classe` (
  `capcl_id` int(11) NOT NULL AUTO_INCREMENT,
  `capcl_cla_ID` int(11) NOT NULL DEFAULT '0',
  `capcl_sousclasse` int(11) DEFAULT NULL,
  `capcl_niveau` int(11) NOT NULL DEFAULT '0',
  `capcl_nom_capacite` text COLLATE utf8_unicode_ci,
  `capcl_description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`capcl_id`,`capcl_cla_ID`),
  KEY `classes_ibfk_1` (`capcl_cla_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `capacite_classe`
--

INSERT INTO `capacite_classe` (`capcl_id`, `capcl_cla_ID`, `capcl_sousclasse`, `capcl_niveau`, `capcl_nom_capacite`, `capcl_description`) VALUES
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
(19, 1, NULL, 2, 'Attaque téméraire', 'à partir du niveau 2, vous pouvez mettre de côté votre défense pour attaquer avec toute la violence du désespoir. Lorsque vous effectuez la première attaque de votre tour, vous pouvez décider d\'effectuer une Attaque téméraire. Vous obtenez ainsi un avantage aux jets d\'attaque au corps à corps avec une arme utilisant la Force durant ce tour, mais les attaques effectuées contre vous ont également un avantage jusqu\'à votre prochain tour.'),
(20, 1, NULL, 2, 'Sens du danger', 'Au niveau 2, vous ressentez une sensation étrange lorsque les choses qui vous entourent ne sont pas comme elles devraient être, vous donnant un avantage lorsque vous tentez de vous extirper du danger. Vous avez un avantage aux jets de sauvegarde de Dextérité contre les effets que vous pouvez voir, comme les pièges ou les sorts. Pour bénéficier de cet effet vous ne devez pas être aveuglé, assourdi ou incapable d\'agir.'),
(21, 1, NULL, 3, 'Voie primitive', 'Au niveau 3, vous choisissez la voie par laquelle s\'exprime votre rage. Choisissez la voie du berserker ou la voie du guerrier totem, chacune étant détaillée ci-dessous. Votre choix vous accorde des capacités aux niveaux 3, 6, 10 et 14.'),
(22, 1, NULL, 4, 'Amélioration de caractéristiques', 'Au niveau 4, puis par la suite aux niveaux 8, 12, 16 et 19, vous pouvez augmenter une valeur de caractéristique de votre choix de +2, ou bien augmenter deux valeurs de caractéristique de votre choix de +1. Vous ne pouvez cependant pas augmenter une caractéristique au-delà de 20 par ce biais.'),
(23, 1, NULL, 5, 'Attaque supplémentaire', 'à partir du niveau 5, vous pouvez attaquer deux fois, au lieu d\'une seule, chaque fois que vous réalisez l\'action Attaquer durant votre tour.'),
(24, 1, NULL, 5, 'Déplacement rapide', 'Au niveau 5, votre vitesse augmente de 3 mètres tant que vous ne portez pas d\'armure lourde.'),
(25, 1, NULL, 7, 'Instinct sauvage', 'Au niveau 7, vos instincts sont si aiguisés que vous obtenez un avantage aux jets d\'initiative. De plus, si vous êtes surpris au début du combat et que vous n\'êtes pas incapable d\'agir, vous pouvez jouer normalement durant votre premier tour, mais seulement si vous entrez en rage avant de faire quoique ce soit d\'autre à ce tour.'),
(26, 1, NULL, 9, 'Critique brutal', 'à partir du niveau 9, vous pouvez lancer un dé de dégâts de votre arme en plus lorsque vous déterminez les dégâts supplémentaires que vous infligez sur un coup critique réussi avec une attaque au corps à corps. Ce bonus aux dégâts passe à deux dés au niveau 13 et à trois dés au niveau 17.'),
(27, 1, NULL, 11, 'Rage implacable', 'à partir du niveau 11, votre rage vous permet de continuer à combattre en dépit des graves blessures qui vous affectent. Si vous tombez à 0 point de vie pendant votre rage et que vous ne mourrez pas sur le coup, vous pouvez faire un jet de sauvegarde de Constitution DD 10. Si vous le réussissez, vous retournez immédiatement à 1 point de vie. Chaque fois que vous utilisez cette capacité après la première, le DD augmente de 5. Quand vous terminez un repos court ou long le DD retombe à 10.'),
(28, 1, NULL, 15, 'Rage ininterrompue', 'En atteignant le niveau 15, votre rage est si intense qu\'elle ne s\'arrête prématurément qu\'à la condition que vous tombiez inconscient ou que vous choisissiez de l\'arrêter.'),
(29, 1, NULL, 18, 'Puissance indomptable', 'Au niveau 18, si le résultat d\'un de vos jets de Force est inférieur à votre valeur de Force, vous pouvez utiliser votre valeur de Force à la place de votre résultat.'),
(30, 1, NULL, 20, 'Champion primitif', 'Au niveau 20, vous êtes l\'incarnation de la puissance du monde sauvage. Vos valeurs de Force et de Constitution augmentent de 4. Votre maximum dans ces valeurs de caractéristique est maintenant de 24.'),
(31, 1, 1, 3, 'Voie du berserker', 'Pour bon nombre de barbares, la rage est le moyen d\'atteindre un but, ce but étant la violence. La voie du berserker est une voie de fureur débridée, poisseuse de sang. En entrant en rage de berserker, vous êtes électrisé par le chaos de la bataille, faisant fi de votre sécurité et de votre bien, être.'),
(32, 1, 1, 3, 'Frénésie', 'Dès que vous choisissez cette voie au niveau 3, vous pouvez choisir de sombrer dans un état de frénésie au cours de votre rage. Si vous le faites, pour la durée de votre rage, vous pouvez effectuer une unique attaque au corps à corps avec une arme en utilisant une action bonus à chacun de vos tours après celui, ci. Lorsque votre rage se termine, vous subissez un niveau d\'épuisement.'),
(33, 1, 1, 6, 'Rage inébranlable', 'à partir du niveau 6, vous ne pouvez pas être charmé ou effrayé tant que vous êtes en rage. Si vous êtes déjà charmé ou effrayé lorsque vous entrez en rage, l\'effet est suspendu le temps de votre rage.'),
(34, 1, 1, 10, 'Présence intimidante', 'à partir du niveau 10, vous pouvez utiliser votre action pour effrayer quelqu\'un avec votre présence effrayante. Pour ce faire, choisissez une créature que vous pouvez voir à 9 mètres maximum de vous. Si la créature peut vous voir ou vous entendre, elle doit réussir un jet de sauvegarde de Sagesse (1,1,,DD égal à 8 + votre bonus de maîtrise + votre modificateur de Charisme) ou vous la effrayez jusqu\'à la fin de votre prochain tour. Aux tours suivants, vous pouvez utiliser votre action pour augmenter d\'un tour supplémentaire la durée de cet effet sur la créature effrayée. Cet effet se termine si la créature finit son tour hors de votre ligne de vue ou qu\'elle se trouve à plus de 18 mètres de vous. Si la créature réussit son jet de sauvegarde, vous ne pouvez plus utiliser cette capacité contre elle durant 24 heures.'),
(35, 1, 1, 14, 'Représailles', 'à partir du niveau 14, lorsque vous subissez des dégâts d\'une créature située à 1,50 mètre de vous, vous pouvez utiliser votre réaction pour effectuer une attaque au corps à corps avec une arme contre cette créature.'),
(36, 1, 2, 3, 'Voie du guerrier totem', 'La voie du guerrier totem est un parcours spirituel, étant donné que le barbare accepte un esprit animal comme guide, protecteur et source d\'inspiration. En plein bataille, votre esprit totem vous imprègne de pouvoirs surnaturels, distillant de l\'essence magique dans votre rage. La plupart des tribus barbares utilise un animal totem comme signe d\'appartenance à un clan particulier. Dans ce cas-là, il est rare pour un individu d\'avoir plus d\'un esprit-animal totem, bien qu\'il existe des exceptions.'),
(37, 1, 2, 3, 'Quêteur spirituel', 'Une voie qui cherche à vous initier au monde naturel, vous affiliant aux bêtes, est faite pour vous. Au niveau 3, lorsque vous adoptez cette voie, vous obtenez la capacité de lancer les sorts communication avec les animaux et sens animal, mais seulement en tant que rituels.'),
(38, 1, 2, 3, 'Esprit totem', 'Au niveau 3, lorsque vous adoptez cette voie, vous choisissez un esprit totem et obtenez les avantages associés. Vous devez fabriquer ou obtenir un objet totem - une amulette ou un ornement similaire - constitué d\'os, de poils, de griffes, de plumes ou de dents de votre animal totem. Si vous le souhaitez, vous pouvez également obtenir un attribut physique mineur qui rappelle votre esprit totem. Par exemple, si vous avez choisi l\'ours comme esprit totem, vous pourriez être incroyablement poilu et avoir la peau épaisse, ou si votre totem est l\'aigle, vos yeux pourraient virer au jaune. Votre animal totem devrait être un animal correspondant à l\'un de ceux listés ci-dessous ou s\'en approchant mais dont l\'espèce est plus appropriée à votre pays d\'origine (un vautour ou un faucon à la place d\'un aigle par exemple).\r\nAigle. Lorsque vous êtes en rage et ne portez pas d\'armure lourde, les autres créatures ont un désavantage lors des attaques d\'opportunité qu\'elles effectuent contre vous, et vous pouvez utiliser l\'action Foncer en tant qu\'action bonus lors de votre tour. L\'esprit de l\'aigle fait de vous un prédateur capable de circuler dans la mêlée avec aisance.\r\nLoup. Lorsque vous êtes en rage, vos alliés ont un avantage aux jets d\'attaque au corps à corps effectués contre toute créature située à 1,50 mètre de vous et qui vous sont hostiles. L\'esprit du loup fait de vous le chef des chasseurs.\r\nOurs. Lorsque vous êtes en rage, vous avez la résistance à tous les types de dégâts sauf aux dégâts psychiques. L\'esprit de l\'ours vous rend suffisamment coriace pour résister à n\'importe quel châtiment.'),
(39, 1, 2, 6, 'Aspect de la bête', 'Au niveau 6, vous obtenez un bénéfice magique dépendant de l\'animal totem de votre choix. Vous pouvez choisir le même animal que celui sélectionné au niveau 3 ou en prendre un différent.\r\nAigle. Vous gagnez la vision de l\'aigle. Vous pouvez voir jusqu\'à 1,5 kilomètre sans difficulté, capable de discerner même les plus fins détails comme si vous regardiez quelque chose à 30 m de vous. De plus, une faible luminosité n\'impose pas un désavantage à vos jets de Sagesse (Perception).\r\nLoup. Vous gagnez les sens de chasseur d\'un loup. Vous pouvez pister les autres créatures lorsque vous voyagez à un rythme rapide et vous pouvez vous déplacer discrètement lorsque vous voyagez à un rythme normal (voir Partir à l\'aventure).\r\nOurs. Vous gagnez la puissance de l\'ours. Votre capacité de charge (dont votre chargement maximal et votre capacité à soulever des objets) est doublée et vous obtenez un avantage aux jets de Force effectués pour pousser, soulever, tirer ou briser des objets.'),
(40, 1, 2, 10, 'Marcheur spirituel', 'Au niveau 10, vous pouvez lancer le sort communion avec la nature, mais seulement en tant que rituel. Lorsque vous le lancez, une version spirituelle de l\'un des animaux que vous avez choisis avec Esprit totem ou Aspect de la bête apparaît et vous donne l\'information que vous recherchez.'),
(41, 1, 2, 14, 'Lien totémique', 'Au niveau 14, vous obtenez un bénéfice magique correspondant à l\'animal totem de votre choix. Vous pouvez choisir un animal que vous avez précédemment sélectionné ou en prendre un nouveau.\r\nAigle. Lorsque vous êtes en rage, vous obtenez une vitesse de vol égale à votre vitesse actuelle de déplacement à pied. Cette capacité fonctionne uniquement sur de cours déplacements ; vous tombez si vous terminez votre tour dans les airs et que rien d\'autre ne vous maintient en hauteur.\r\nLoup. Lorsque vous êtes en rage vous pouvez utiliser une action bonus lors de votre tour pour mettre à terre une créature de taille G ou inférieure que vous avez touchée lors d\'une attaque au corps à corps avec une arme.\r\nOurs. Lorsque vous êtes en rage, toute créature située à 1,50 mètre de vous, et qui vous est hostile, a un désavantage aux jets d\'attaque effectué contre une cible autre que vous, ou tout personnage avec cette capacité. Un ennemi est immunisé à cet effet s\'il ne peut pas vous voir ou vous entendre ou qu\'il ne peut pas être effrayé.');

-- --------------------------------------------------------

--
-- Structure de la table `capacite_race`
--

DROP TABLE IF EXISTS `capacite_race`;
CREATE TABLE IF NOT EXISTS `capacite_race` (
  `cap_ID` int(11) NOT NULL AUTO_INCREMENT,
  `cap_rac_ID` int(11) NOT NULL,
  `cap_nom_capacite` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cap_description` text COLLATE utf8_unicode_ci NOT NULL,
  `cap_comp` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`cap_ID`),
  KEY `FK_capacite_race_race` (`cap_rac_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `capacite_race`
--

INSERT INTO `capacite_race` (`cap_ID`, `cap_rac_ID`, `cap_nom_capacite`, `cap_description`, `cap_comp`) VALUES
(1, 1, 'Vision dans le noir.', 'Vous pouvez voir à 18 mètres dans une lumière faible comme vous verriez avec une lumière vive, et dans le noir comme vous verriez avec une lumière faible. Dans le noir, vous ne discernez pas les couleurs, uniquement des nuances de gris.', ''),
(2, 1, 'Sens aiguisés.', 'Vous maîtrisez la compétence Perception.', '12'),
(3, 1, 'Ascendance féerique.', 'Vous avez un avantage aux jets de sauvegarde contre les effets de charme et la magie ne peut pas vous endormir.', ''),
(4, 1, 'Transe', 'Les elfes n\'ont pas besoin de dormir. Au lieu de cela, ils méditent profondément, restant à demi conscients, 4 heures par jour (le mot commun pour désigner cette méditation est « transe »). En méditant, vous pouvez rêver, tant bien que mal ; ces rêves sont en fait des exercices mentaux qui deviennent un réflexe après des années de pratique. Après un repos de ce type, vous obtenez les mêmes avantages qu\'un humain après 8 heures de sommeil.', ''),
(5, 2, 'Chanceux.', 'Lorsque vous obtenez un 1 au dé d\'un jet d\'attaque, de caractéristique ou de sauvegarde, vous pouvez relancer le dé et devez alors utiliser ce nouveau résultat.', ''),
(6, 2, 'Vaillant.', 'Vous avez un avantage aux jets de sauvegarde pour ne pas être effrayé.', ''),
(7, 2, 'Agilité halfeline.', 'Vous pouvez passer dans l\'espace de toute créature d\'une taille supérieure à la vôtre.', ''),
(8, 4, 'Résistance naine.', ' Vous avez un avantage aux jets de sauvegarde contre le poison et obtenez la résistance contre les dégâts de poison.', ''),
(9, 4, 'Entraînement aux armes naines.', 'Vous obtenez la maîtrise des hachettes, des haches d\'armes, des marteaux légers et des marteaux de guerre.', ''),
(10, 4, 'Maîtrise des outils.', 'Vous obtenez la maîtrise d\'un des outils d\'artisan suivant au choix : outils de forgeron, outils de brasseur ou outils de maçon.', ''),
(11, 4, 'Connaissance de la pierre.', 'Chaque fois que vous effectuez un jet d\'Intelligence (Histoire) en relation avec l\'origine d\'un travail lié à la pierre, considérez que vous maîtrisez la compétence Histoire et ajoutez le double de votre bonus de maîtrise au jet, au lieu du bonus de maîtrise normal.', ''),
(12, 5, 'Polyvalence.', 'Vous gagnez la maîtrise de deux compétences de votre choix.', ''),
(13, 6, 'Menaçant', 'Vous gagnez la maîtrise de la compétence Intimidation.', '15'),
(14, 6, 'Endurance implacable. ', 'Lorsque vous tombez à 0 point de vie, mais que vous n\'êtes pas tué sur le coup, vous pouvez passer à 1 point de vie à la place. Vous devez terminer un repos long avant de pouvoir utiliser cette capacité de nouveau.', ''),
(15, 6, 'Attaques sauvages.', 'Lorsque vous réalisez un coup critique lors d\'une attaque au corps à corps avec une arme, vous pouvez jeter l\'un des dés de dégâts de l\'arme une deuxième fois et l\'ajouter aux dégâts supplémentaires du coup critique.', ''),
(16, 7, 'Ascendance draconique.', ' Vous avez une ascendance draconique. Choisissez un type de dragon, votre souffle et votre résistance aux dégâts sont déterminés par le type de dragon', ''),
(17, 7, 'Souffle.', 'Vous pouvez utiliser votre action pour expirer une énergie destructrice. Votre ascendance draconique détermine la taille, la forme et le type de dégâts de votre souffle. Lorsque vous utilisez votre souffle, toute créature dans la zone de l\'expiration doit faire un jet de sauvegarde, dont le type est déterminé par votre ascendance draconique. Le DD de ce jet de sauvegarde est égal à 8 + votre modificateur de Constitution + votre bonus de maîtrise. En cas d\'échec, la créature subit 2d6 dégâts, et la moitié en cas de réussite. Les dégâts augmentent à 3d6 au niveau 6, 4d6 au niveau 11, et 5d6 au niveau 16. Après avoir utilisé votre souffle, vous devez terminer un repos court ou long pour pouvoir l\'utiliser à nouveau.', ''),
(18, 7, 'Résistance aux dégâts.', 'Vous obtenez la résistance au type de dégâts associé à votre ascendance draconique.', ''),
(19, 8, 'Ruse gnome.', 'Vous avez un avantage aux jets de sauvegarde d\'Intelligence, de Sagesse et de Charisme contre la magie.', ''),
(20, 9, 'Résistance infernale.', 'Vous avez la résistance aux dégâts de feu.', ''),
(21, 9, 'Ascendance infernale.', ' Vous connaissez le sort mineur thaumaturgie. Quand vous atteignez le niveau 3, vous pouvez lancer le sort représailles infernales comme un sort de niveau 2 une fois avec ce trait et regagnez cette capacité lorsque vous terminez un repos long. Quand vous atteignez le niveau 5, vous pouvez lancer le sort ténèbres une fois avec ce trait et regagnez cette capacité lorsque vous terminez un repos long. Le Charisme est votre caractéristique d\'incantation pour ces sorts.', ''),
(22, 4, 'Vision dans le noir.', 'Vous pouvez voir à 18 mètres dans une lumière faible comme vous verriez avec une lumière vive, et dans le noir comme vous verriez avec une lumière faible. Dans le noir, vous ne discernez pas les couleurs, uniquement des nuances de gris.', ''),
(24, 5, 'Vision dans le noir.', 'Vous pouvez voir à 18 mètres dans une lumière faible comme vous verriez avec une lumière vive, et dans le noir comme vous verriez avec une lumière faible. Dans le noir, vous ne discernez pas les couleurs, uniquement des nuances de gris.', ''),
(25, 6, 'Vision dans le noir.', 'Vous pouvez voir à 18 mètres dans une lumière faible comme vous verriez avec une lumière vive, et dans le noir comme vous verriez avec une lumière faible. Dans le noir, vous ne discernez pas les couleurs, uniquement des nuances de gris.', ''),
(26, 8, 'Vision dans le noir.', 'Vous pouvez voir à 18 mètres dans une lumière faible comme vous verriez avec une lumière vive, et dans le noir comme vous verriez avec une lumière faible. Dans le noir, vous ne discernez pas les couleurs, uniquement des nuances de gris.', ''),
(27, 9, 'Vision dans le noir.', 'Vous pouvez voir à 18 mètres dans une lumière faible comme vous verriez avec une lumière vive, et dans le noir comme vous verriez avec une lumière faible. Dans le noir, vous ne discernez pas les couleurs, uniquement des nuances de gris.', ''),
(28, 5, 'Ascendance féerique', 'Vous avez un avantage aux jets de sauvegarde contre les effets de charme et la magie ne peut pas vous endormir.', '');

-- --------------------------------------------------------

--
-- Structure de la table `classes`
--

DROP TABLE IF EXISTS `classes`;
CREATE TABLE IF NOT EXISTS `classes` (
  `cla_ID` int(11) NOT NULL,
  `cla_nom` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `cla_description` text COLLATE utf8_unicode_ci NOT NULL,
  `cla_DV` int(11) NOT NULL,
  `cla_competences` text COLLATE utf8_unicode_ci NOT NULL,
  `cla_save` text COLLATE utf8_unicode_ci NOT NULL,
  `cla_savetab` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cla_outil` text COLLATE utf8_unicode_ci NOT NULL,
  `cla_armure` text COLLATE utf8_unicode_ci NOT NULL,
  `cla_arme` text COLLATE utf8_unicode_ci NOT NULL,
  `cla_image` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cla_equip` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`cla_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `classes`
--

INSERT INTO `classes` (`cla_ID`, `cla_nom`, `cla_description`, `cla_DV`, `cla_competences`, `cla_save`, `cla_savetab`, `cla_outil`, `cla_armure`, `cla_arme`, `cla_image`, `cla_equip`) VALUES
(1, 'barbare', 'Drapé de fourrure et portant une hache, un humain tribal de haute taille marche à grandes enjambées à travers le blizzard. Riant aux éclats, il charge le géant du givre qui a osé s\'en prendre au troupeau de son clan. Une demi-orque grogne férocement contre le dernier adversaire qui a voulu remettre en cause son autorité sur la tribu, prête à lui briser le cou comme elle l\'a fait avec les six précédents. L\'écume aux lèvres, un nain balance son casque dans le visage d\'un premier ennemi drow puis, se retournant, envoie sa cubitière dans le ventre d\'un second.\r\n\r\nCes barbares, bien que différents, ont en commun leur rage : un déchaînement de fureur, inextinguible et irraisonné. Bien plus qu\'une émotion passagère, leur colère est celle d\'un féroce prédateur acculé, l\'assaut implacable de la tempête, le tumulte d\'une mer démontée. Pour certains, leur rage est le fruit d\'une communion avec de fiers esprits animaux. D\'autres la puisent d\'une réserve trouble de colère contre ce monde de souffrance. Mais pour tous, la rage est une force qui n\'alimente pas que leur frénésie guerrière. Elle leur donne aussi des réflexes, une résistance et des prouesses physiques incroyables.', 12, 'choisissez deux competences parmi Athletisme, Dressage, Intimidation, Nature, Perception et Survie', 'force,constitution', 'true/false/true/false/false/false', 'aucun', 'armures legeres, armures intermediaires, boucliers', 'armes courantes, armes de guerre', 'src/img/barbare.png', '<li>(a) une hache à deux mains ou (b) n\'importe quelle arme de guerre de corps à corps</li>\r\n                <li>(a) deux hachettes ou (b) n\'importe quelle arme courante</li>\r\n                <li>un sac d\'explorateur et quatre javelines</li>'),
(2, 'barde', 'Fredonnant alors qu’elle passe ses doigts sur un ancien monument au cœur de ruines depuis longtemps oubliées, une demi-elfe vêtue de cuir robuste sent le savoir, invoqué par la magie de son chant, bondir dans son esprit. Le savoir de ceux qui ont érigé ce monument. Le savoir relatant la saga mythique qui y est illustrée. Un solide guerrier humain frappe son épée avec rythme sur son armure d’écailles, instaurant un tempo pour accompagner son chant de guerre et exhortant ses compagnons à la bravoure et à l’héroïsme. La magie de son chant les fortifie et les enhardit. Accordant son cistre tout en rigolant, une gnome tisse sa subtile magie sur l’assemblée des nobles, s\'assurant ainsi que les paroles de ses compagnons seront bien reçues.\r\n\r\nQu\'il soit érudit, scalde ou scélérat, un barde façonne la magie à travers ses mots et sa musique pour inspirer ses alliés, démoraliser ses ennemis, manipuler les esprits, créer des illusions, et même pour soigner les blessures.', 8, 'choisissez trois competences de votre choix', 'dexterite, charisme', 'false/true/false/false/false/true', 'trois instruments de musique de votre choix', 'armures légères', 'armes courantes, arbalète de poing, épée longue, épée courte, rapière', 'src/img/barde.png', '<li>(a) une rapière, (b) une épée longue ou (c) n\'importe quelle arme courante</li>\r\n<li>(a) un sac de diplomate ou (b) un sac d\'artiste</li>\r\n<li>(a) un luth ou (b) n\'importe quel autre instrument de musique</li>\r\n<li>une armure de cuir et une dague</li>'),
(3, 'clerc', 'Les bras et les yeux levés en direction du soleil, une prière sur les lèvres, un elfe commence à briller d\'une lumière intérieure qui s\'en va guérir ses compagnons usés par le combat. Chantant une chanson de gloire, un nain fait osciller sa hache en de larges mouvements circulaires afin de couper les rangs orques face à lui, criant des louanges aux dieux à chaque ennemi qui tombe. Jetant une malédiction sur les morts-vivants qui s\'avancent, un humain brandit son symbole sacré alors qu\'une lumière se libère de celui-ci pour repousser les zombis qui se pressaient sur ses compagnons.\r\n\r\nLes clercs sont des intermédiaires entre le monde des mortels et les plans éloignés des dieux. Aussi variés que les dieux qu\'ils servent, les clercs s\'efforcent d\'incarner l\'œuvre de leurs divinités. Un clerc est imprégné de magie divine, ce n\'est pas un religieux ordinaire.', 8, 'choisissez deux competences parmi Histoire, Médecine, Perspicacite, Persuasion et Religion', 'sagesse, charisme', 'false/false/false/false/true/true', 'aucun', 'armures légères et intermédiaires, boucliers', 'armes courantes', 'src/img/clerc.png', '<li>(a) une masse d\'armes ou (b) un marteau de guerre (si vous le maîtrisez)</li>\r\n<li>(a) une armure d\'écailles ou (b) une armure de cuir ou (c) une cotte de mailles (si vous la maîtrisez)</li>\r\n<li>(a) une arbalète légère et 20 carreaux ou (b) une arme courante</li>\r\n<li>(a) un sac d\'ecclésiastique ou (b) un sac d\'explorateur</li>\r\n<li>un bouclier et un symbole sacré</li>'),
(4, 'druide', 'Tenant bien haut un bâton noueux couronné de houx, une elfe convoque la fureur des tempêtes et en appelle à la puissance foudroyante des éclairs pour punir les porteurs de torches orques qui menacent sa forêt. Sous forme de léopard, s\'accroupissant sur la branche d\'un grand arbre à l\'abri des regards, un humain scrute à travers la jungle l\'étrange construction d\'un temple de l\'Air du Mal élémentaire, gardant un œil fixé sur les activités des cultistes. Brandissant une épée faîte de feu pur, un demi-elfe charge dans la masse des soldats squelettes, brisant la magie antinaturelle qui a donné à ces immondes créatures un dérisoire semblant de vie.\r\n\r\nQue ce soit en faisant appel aux forces élémentaires naturelles ou en imitant les créatures du monde animal, les druides sont des incarnations de la force, de la ruse, et de la colère de la nature. Ils ne se proclament pas maîtres de la nature. Ils se voient plutôt comme des extensions de la volonté indomptable de la nature.', 8, 'choisissez deux competences parmi Arcanes, Dressage, Médecine, Nature, Perception, Perspicacite, Religion et Survie', 'intelligence,sagesse', 'false/false/false/true/true/false', 'kit d\'herboriste', 'armures légères et intermédiaires, boucliers (un druide n\'utilisera pas d\'armure ou de bouclier en métal)', 'gourdin, dague, fléchette, javeline, masse d\'armes, bâton, cimeterre, fronde, serpe, lance', 'src/img/druide.png', '<li>(a) un bouclier en bois ou (b) une arme courante</li>\r\n<li>(a) un cimeterre ou (b) une arme courante de corps à corps</li>\r\n<li>une armure de cuir, un sac d\'explorateur et un focaliseur druidique</li>'),
(5, 'ensorceleur', 'Avec son regard éclatant d’une lumière dorée, une humaine tend sa main et libère le feu du dragon qui lui brûle les veines. Alors que l’enfer engouffre ses ennemis, une paire d’ailes émerge de son dos, puis elle prend son envol. Sa longue chevelure battue par un vent invoqué, un demi-elfe écarte les bras et lève les yeux au ciel. Le soulevant momentanément du sol, une vague de magie se décharge en lui, à travers lui et par lui, en une puissante explosion foudroyante. Accroupie derrière une stalagmite, une halfeline pointe du doigt un troglodyte qui charge. Une déflagration de feu surgit de son doigt pour atteindre la créature. Elle se replie derrière le rocher avec le sourire, inconsciente du fait que sa magie sauvage a coloré sa peau d’un bleu éclatant.\r\n\r\nLes ensorceleurs sont les porteurs d’une magie innée qui prend sa source dans un lignage exotique, une quelconque influence d\'Outremonde ou une exposition à une force cosmique inouïe. On ne peut pas étudier la sorcellerie comme on apprend un langage, pas plus qu’on ne peut apprendre à vivre une vie de légende. Personne ne choisit la sorcellerie ; le pouvoir choisit l’ensorceleur.', 6, 'choisissez deux competences parmi Arcanes, Intimidation, Perspicacite, Persuasion, Religion et Tromperie', 'constitution,charisme', 'false/false/true/false/false/true', 'aucun', 'aucune', 'dague, fléchette, fronde, bâton, arbalète légère', 'src/img/ensorceleur.png', '<li>(a) une arbalète légère et 20 carreaux ou (b) n\'importe quelle arme courante</li>\r\n<li>(a) une sacoche à composantes ou (b) un focaliseur arcanique</li>\r\n<li>(a) un sac d\'exploration souterraine ou (b) un sac d\'explorateur</li>\r\n<li>deux dagues</li>'),
(6, 'guerrier', 'Un humain équipé d\'un harnois clinquant brandit son bouclier devant lui tout en fonçant vers des gobelins massés. Un elfe, derrière lui, vêtu d\'une armure de cuir clouté, arrose ces mêmes gobelins avec les flèches qu\'il décoche de son précieux arc. Le demi-orque à proximité lance des ordres, aidant les deux combattants à coordonner leur assaut au mieux. Un nain en cotte de mailles interpose son bouclier entre la massue d\'un ogre et son compagnon, puis assène un coup mortel de côté. Son compagnon, un demi-elfe en armure d\'écailles, fait virevolter deux cimeterres dans un tourbillon aveuglant tout en contournant l\'ogre, à la recherche d\'un point faible dans sa défense. Un combat de gladiateurs pour le spectacle dans une arène, un maître du trident avec son filet, entraîné à renverser ses ennemis et à se déplacer autour d\'eux pour le plaisir et de la foule, et pour son propre avantage tactique.\r\n\r\nTous ces héros sont des guerriers, peut-être la classe de personnage la plus diversifiée de Dungeons & Dragons. Chevaliers menant une quête, seigneurs conquérants, champions royaux, fantassins d\'élite, mercenaires endurcis et rois-bandits, tous partagent une maîtrise inégalée des armes et des armures ainsi qu\'une connaissance approfondie des compétences de combat. Tous connaissent bien la mort, l\'infligeant autant qu\'ils lui font face.', 10, 'choisissez deux competences parmi Acrobaties, Athlétisme, Dressage, Histoire, Intimidation, Perception, Perspicacite et Survie', 'force,constitution', 'true/false/true/false/false/false', 'aucun', 'toutes les armures, boucliers', 'armes courantes, armes de guerre', 'src/img/guerrier.png', '(a) une cotte de mailles ou (b) une armure de cuir, un arc long et 20 flèches\r\n<li>(a) une arme de guerre et un bouclier ou (b) deux armes de guerre</li>\r\n<li>(a) une arbalète légère et 20 carreaux ou (b) deux hachettes</li>\r\n<li>(a) un sac d\'exploration souterraine ou (b) un sac d\'explorateur</li>'),
(7, 'magicien', 'Vêtue d\'une robe d\'argent qui dénote son rang, une elfe ferme les yeux pour s\'éloigner des distractions du champ de bataille et commence son chant. Les doigts croisés face à elle, elle achève son sort et lance une petite perle de feu vers les rangs ennemis, laquelle éclate lorsqu\'elle arrive à son but et engloutit les soldats lors de son explosion. Vérifiant et revérifiant son travail, un humain dessine à la craie sur le sol de pierre un cercle magique intriguant, puis saupoudre le long de chaque ligne et chaque courbe de la limaille de fer. Une fois le travail accompli, il se lance dans une longue incantation. Un trou s\'ouvre alors dans l\'espace à l\'intérieur du cercle, libérant une bouffée de soufre provenant du plan d\'un autre monde. Accroupi au sol à l\'intersection de deux couloirs d\'un donjon, un gnome jette une poignée de petits os gravés de symboles mystiques, tout en murmurant quelques mots de pouvoir. Il ferme alors ses yeux pour voir les visions plus clairement, hoche la tête lentement, puis ouvre les yeux et pointe le passage à sa gauche.\r\n\r\nLes magiciens sont de puissants utilisateurs de la magie, définis et unis en tant que classe par les sorts qu\'ils lancent. S\'appuyant sur la vague de magie qui se répand dans le cosmos, les magiciens lancent des sorts de feu qui explose, d\'arc de foudre, d\'illusion trompeuse et de contrôle des esprits. Leur magie évoque des monstres d\'autres plans d\'existence, entrevoit l\'avenir ou transforme des ennemis en zombis. Leurs plus puissants sorts peuvent changer une substance en une autre, faire tomber des météores du ciel ou bien encore ouvrir des portails sur d\'autres mondes.', 6, 'choisissez deux competences parmi Arcanes, Histoire, Investigation, Médecine, Perspicacite et Religion', 'intelligence,sagesse', 'false/false/false/true/true/false', 'aucun', 'aucune', 'dague, fléchettes, fronde, bâton, arbalète légère', 'src/img/magicien.png', '(a) un bâton ou (b) une dague\r\n<li>(a) une sacoche à composantes ou (b) un focaliseur arcanique</li>\r\n<li>(a) un sac d\'érudit ou (b) un sac d\'explorateur</li>\r\n<li>un grimoire</li>'),
(8, 'moine', 'Ses paumes floues alors qu\'elles dévient une pluie de flèches, une demi-elfe saute par-dessus la barricade et se jette au beau milieu des rangs d\'hobgobelins massés de l\'autre côté. Elle tournoie parmi eux, les frappant dans les côtes et les envoyant tituber, jusqu\'à ce qu\'elle se retrouve la dernière debout. Prenant une profonde inspiration, un humain recouvert de tatouages se met en position de combat. Alors que les premiers orques qui chargent l\'atteignent, il souffle, et un déferlement de flammes jaillit de sa bouche, submergeant ses ennemis. Se déplaçant aussi silencieusement que la nuit, une halfeline toute vêtue de noir s\'enfonce dans l\'ombre d\'une arcade et émerge d\'une autre nappe d\'ombre sur un balcon, à un jet de pierre de distance. Elle glisse sa lame hors de son fourreau enveloppé de tissus et passe par la fenêtre de la chambre du prince tyrannique, tellement vulnérable dans les bras de Morphée.\r\n\r\nQuelle que soit leur discipline, les moines sont unis dans leur aptitude à exploiter magiquement l\'énergie qui parcourt leur corps. Canalisée en une remarquable démonstration de prouesse martiale ou en une subtile augmentation de capacité défensive et de vitesse, cette énergie imprègne tout ce que fait le moine.', 8, 'choisissez deux competences parmi Acrobaties, Athletisme, Discretion, Histoire, Perspicacite et Religion', 'force,dextérité', 'true/true/false/false/false/false', 'un outil d\'artisan ou un instrument de musique de votre choix', 'aucune', 'armes courantes, épée courte', 'src/img/moine.png', '<li>(a) une épée courte ou (b) n\'importe quelle arme courante</li>\r\n<li>(a) un sac d\'exploration souterraine ou (b) un sac d\'explorateur</li>\r\n<li>10 fléchettes</li>'),
(9, 'paladin', 'Vêtue d\'une armure étincelante sous le soleil, malgré la poussière et la crasse accumulées durant ce long voyage, une humaine pose à terre son épée et son bouclier, puis, sur le corps d\'un homme mortellement blessé, elle appose ses mains. Un rayonnement divin s\'en échappe, refermant les blessures de l\'homme qui ouvre alors les yeux, stupéfait. Accroupis derrière un affleurement rocheux, son manteau noir le rendant quasi invisible dans la nuit, un nain observe une troupe d\'orques fêtant leur dernière victoire. En silence, il s\'infiltre dans leur camp et chuchote un serment : deux orques tombent raide morts avant même d\'avoir pu entrevoir sa présence. Sa chevelure couleur argent brillant dans le puits de lumière qui ne semble illuminer que lui, un elfe rit, exultant. Sa lance, comme ses yeux, envoie des éclairs alors qu\'il virevolte encore et encore autour d\'un géant difforme, jusqu\'à ce que sa lumière triomphe de cette hideuse obscurité.\r\n\r\nQuelles que soient leurs origines et leurs missions, les paladins sont unis par leur serment de s\'opposer aux forces du mal. Qu\'il fût prononcé au pied de l\'autel d\'un dieu en présence d\'un prêtre, dans une clairière sacrée devant des esprits de la nature et des êtres-fées, ou bien lors d\'un moment de désespoir et de colère avec la mort comme seul témoin, le serment d\'un paladin est un lien très puissant. Il est la source d\'un pouvoir qui transforme un guerrier dévoué en un champion béni.', 10, 'choisissez deux competences parmi Athletisme, Intimidation, Medecine, Perspicacite, Persuasion et Religion', 'sagesse,charisme', 'false/false/false/false/true/true', 'aucun', 'toutes les armures, boucliers', 'armes courantes, armes de guerre', 'src/img/paladin.png', '<li>(a) une arme de guerre et un bouclier ou (b) deux armes de guerre</li>\r\n<li>(a) cinq javelines ou (b) n\'importe quelle arme courante de corps à corps</li>\r\n<li>(a) un sac d\'ecclésiastique ou (b) un sac d\'explorateur</li>\r\n<li>une cotte de mailles et un symbole sacré</li>'),
(10, 'rodeur', 'D\'aspect sauvage et rude, un humain traque seul à travers les ombres des arbres, chassant les orques qu\'il sait préparer l\'attaque d\'une ferme alentour. Armé d\'une épée courte dans chaque main il devient une tornade de métal, tranchant les ennemis les uns après les autres. Après avoir fait une roulade loin d\'un souffle d\'air gelé, une elfe se redresse d\'un bond et dégaine son arc, décochant au passage une flèche vers le dragon blanc. S\'affranchissant de la vague de terreur qui émane de lui comme la morsure glacée de son souffle, elle fait pleuvoir ses traits les uns après les autres afin de trouver un point faible entre les épaisses écailles du dragon. Levant sa main en l\'air, un demi-elfe siffle vers le faucon qui vole en cercle au-dessus de lui, l\'appelant à ses côtés. Chuchotant des instructions en elfique, il pointe du doigt l\'ours-hibou qu\'il traquait et envoie le rapace distraire la créature pendant qu\'il bande son arc.\r\n\r\nLoin du confort des cités et villages, en avant des haies qui protègent les fermes les plus éloignées des terreurs issues du monde sauvage, au milieu des arbres touffus dans des forêts sans chemin et à travers de vastes plaines désertiques, les rôdeurs continuent leur veille sans fin.', 10, 'choisissez trois competences parmi Athletisme, Discretion, Dressage, Investigation, Nature, Perception, Perspicacite et Survie', 'force,dexterite', 'true/true/false/false/false/false', 'aucun', 'armures légères et intermédiaires, boucliers', 'armes courantes, armes de guerre', 'src/img/rodeur.png', '<li>(a) armure d\'écailles ou (b) armure de cuir</li>\r\n<li>(a) deux épées courtes ou (b) deux armes courantes de corps à corps</li>\r\n<li>(a) un sac d\'exploration souterraine ou (b) un sac d\'explorateur</li>\r\n<li>Un arc long et un carquois avec 20 flèches</li>'),
(11, 'roublard', 'Signifiant à ses compagnons d\'attendre, un halfelin avance lentement dans la salle du donjon. Il colle son oreille à la porte, puis sort un jeu d\'outils et crochète la serrure en un clin d\'œil. Il disparaît ensuite dans l\'ombre, lorsque son ami guerrier avance pour frapper la porte ouverte. Un humain se cache dans l\'ombre d\'une ruelle tandis que son complice se prépare pour l\'embuscade. Quand leur cible, un esclavagiste notoire, passe en face de la ruelle, le complice crie, l\'esclavagiste vient voir ce qui se passe, et la lame de l\'assassin lui coupe la gorge avant qu\'il ne puisse faire le moindre bruit. Une gnome agite ses doigts et soulève par magie le trousseau de clés à la ceinture du garde. En un instant, les clés sont dans sa main, la porte de la cellule est ouverte, et elle et ses compagnons sont libres de prendre la fuite.\r\n\r\nLes roublards s\'appuient sur ​​la compétence, la discrétion et les faiblesses de leurs ennemis pour prendre la main dans n\'importe quelle situation. Ils ont le don de trouver la solution à n\'importe quel problème, démontrant une ingéniosité et une polyvalence qui est la pierre angulaire de toute aventure réussie.', 8, 'choisissez quatre competences parmi Acrobaties, Athletisme, Discretion, Escamotage, Intimidation, Investigation, Perception, Perspicacite, Persuasion, Representation et Tromperie', 'dexterite,intelligence', 'false/true/false/true/false/false', 'outils de voleur', 'armures légères', 'armes courantes, arbalète de poing, épée courte, épée longue, rapière', 'src/img/roublard.png', '<li>(a) une rapière ou (b) une épée courte</li>\r\n<li>(a) un arc court et un carquois de 20 flèches ou (b) une épée courte</li>\r\n<li>(a) un sac de cambrioleur, (b) un sac d\'exploration souterraine ou (c) un sac d\'explorateur</li>\r\n<li>une armure de cuir, deux dagues et des outils de voleur</li>'),
(12, 'sorcier', 'Un pseudodragon lové sur ses épaules, un jeune elfe vêtu d’une robe dorée sourit chaleureusement, tissant la trame d’un sortilège avec ses paroles mielleuses tout en incitant les sentinelles du palais à se plier à sa volonté. Alors que les flammes surgissent de sa main, une humaine flétrie susurre le nom secret de son patron démoniaque, insufflant à son sort une magie diabolique. Balayant son regard entre un livre vétuste et l’étrange alignement des astres, un tieffelin éperdu psalmodie un rituel mystique qui ouvrira un portail vers un monde distant.\r\n\r\nLes sorciers sont des chercheurs de la connaissance dissimulée dans la trame du multivers. Par l’entremise de pactes conclus avec de mystérieux êtres dotés de pouvoirs surnaturels, les sorciers libèrent des effets magiques à la fois subtiles et spectaculaires. Tirant parti du savoir ancien d’êtres tels que les nobles fées, les démons, les diables, les sorcières et les entités extraplanaires du Royaume lointain, les sorciers assemblent les secrets arcaniques pour renforcer leur propre puissance.', 8, 'choisissez deux competences parmi Arcanes, Histoire, Intimidation, Investigation, Nature, Religion et Tromperie', 'sagesse,charisme', 'false/false/false/false/true/true', 'aucun', 'armures légères', 'armes courantes', 'src/img/sorcier.png', '<li>(a) une arbalète légère et 20 carreaux ou (b) n\'importe quelle arme courante</li>\r\n<li>(a) une sacoche à composantes ou (b) un focaliseur arcanique</li>\r\n<li>(a) un sac d\'érudit ou (b) un sac d\'exploration souterraine</li>\r\n<li>une armure de cuir, n\'importe quelle arme courante, et deux dagues</li>');

-- --------------------------------------------------------

--
-- Structure de la table `evolution`
--

DROP TABLE IF EXISTS `evolution`;
CREATE TABLE IF NOT EXISTS `evolution` (
  `evo_ID` int(11) NOT NULL AUTO_INCREMENT,
  `evo_cla_ID` int(11) NOT NULL,
  `evo_niveau` int(11) NOT NULL,
  `evo_maitrise` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `evo_capacite` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `evo_artmart` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `evo_ki` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `evo_mvt` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `evo_sorcellerie` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `evo_sournoise` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `evo_rage` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `evo_degat` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `evo_sortmin` int(11) DEFAULT NULL,
  `evo_sortconnu` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `evo_sort1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `evo_sort2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `evo_sort3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `evo_sort4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `evo_sort5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `evo_sort6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `evo_sort7` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `evo_sort8` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `evo_sort9` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `evo_emp` int(11) DEFAULT NULL,
  `evo_nvemp` int(11) DEFAULT NULL,
  `evo_invoc` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`evo_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `evolution`
--

INSERT INTO `evolution` (`evo_ID`, `evo_cla_ID`, `evo_niveau`, `evo_maitrise`, `evo_capacite`, `evo_artmart`, `evo_ki`, `evo_mvt`, `evo_sorcellerie`, `evo_sournoise`, `evo_rage`, `evo_degat`, `evo_sortmin`, `evo_sortconnu`, `evo_sort1`, `evo_sort2`, `evo_sort3`, `evo_sort4`, `evo_sort5`, `evo_sort6`, `evo_sort7`, `evo_sort8`, `evo_sort9`, `evo_emp`, `evo_nvemp`, `evo_invoc`) VALUES
(1, 1, 1, '+2', 'Rage, Défense sans armure', NULL, NULL, NULL, NULL, NULL, '2', '+2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, 2, '+2', 'Attaque téméraire, Sens du danger', NULL, NULL, NULL, NULL, NULL, '2', '+2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 1, 3, '+2', 'Voie primitive', NULL, NULL, NULL, NULL, NULL, '3', '+2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 1, 4, '+2', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, '3', '+2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 1, 5, '+3', 'Attaque supplémentaire, Déplacement rapide', NULL, NULL, NULL, NULL, NULL, '3', '+2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 1, 6, '+3', 'Capacité de voie', NULL, NULL, NULL, NULL, NULL, '4', '+2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 1, 7, '+3', 'Instinct sauvage', NULL, NULL, NULL, NULL, NULL, '4', '+2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 1, 8, '+3', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, '4', '+2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 1, 9, '+4', 'Critique brutal (1 dé)', NULL, NULL, NULL, NULL, NULL, '4', '+3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 1, 10, '+4', 'Capacité de voie', NULL, NULL, NULL, NULL, NULL, '4', '+3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 1, 11, '+4', 'Rage implacable', NULL, NULL, NULL, NULL, NULL, '4', '+3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 1, 12, '+4', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, '5', '+3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 1, 13, '+5', 'Critique brutal (2 dés)', NULL, NULL, NULL, NULL, NULL, '5', '+3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 1, 14, '+5', 'Capacité de voie', NULL, NULL, NULL, NULL, NULL, '5', '+3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 1, 15, '+5', 'Rage ininterrompue', NULL, NULL, NULL, NULL, NULL, '5', '+3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 1, 16, '+5', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, '5', '+4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 1, 17, '+6', 'Critique brutal (3 dés)', NULL, NULL, NULL, NULL, NULL, '6', '+4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 1, 18, '+6', 'Puissance indomptable', NULL, NULL, NULL, NULL, NULL, '6', '+4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 1, 19, '+6', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, '6', '+4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 1, 20, '+6', 'Champion primitif', NULL, NULL, NULL, NULL, NULL, 'illimitées', '+4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 2, 1, '2', 'Incantations, Inspiration bardique (d6)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '4', '2', '-', '-', '-', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(22, 2, 2, '2', 'Touche-à-tout, Chant de repos (d6)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '5', '3', '-', '-', '-', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(23, 2, 3, '2', 'Collège bardique, Expertise', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '6', '4', '2', '-', '-', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(24, 2, 4, '2', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '7', '4', '3', '-', '-', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(25, 2, 5, '3', 'Inspiration bardique (d8), Source d\'inspiration', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '8', '4', '3', '2', '-', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(26, 2, 6, '3', 'Contre charme, Capacité de collège bardique', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '9', '4', '3', '3', '-', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(27, 2, 7, '3', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '10', '4', '3', '3', '1', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(28, 2, 8, '3', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '11', '4', '3', '3', '2', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(29, 2, 9, '4', 'Chant de repos (d8)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '12', '4', '3', '3', '3', '1', '-', '-', '-', '-', NULL, NULL, NULL),
(30, 2, 10, '4', 'Inspiration bardique (d10), Expertise, Secrets magiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '14', '4', '3', '3', '3', '2', '-', '-', '-', '-', NULL, NULL, NULL),
(31, 2, 11, '4', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '15', '4', '3', '3', '3', '2', '1', '-', '-', '-', NULL, NULL, NULL),
(32, 2, 12, '4', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '15', '4', '3', '3', '3', '2', '1', '-', '-', '-', NULL, NULL, NULL),
(33, 2, 13, '5', 'Chant de repos (d10)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '16', '4', '3', '3', '3', '2', '1', '1', '-', '-', NULL, NULL, NULL),
(34, 2, 14, '5', 'Secrets magiques, Capacité de collège bardique', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '18', '4', '3', '3', '3', '2', '1', '1', '-', '-', NULL, NULL, NULL),
(35, 2, 15, '5', 'Inspiration bardique (d12)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '19', '4', '3', '3', '3', '2', '1', '1', '1', '-', NULL, NULL, NULL),
(36, 2, 16, '5', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '19', '4', '3', '3', '3', '2', '1', '1', '1', '-', NULL, NULL, NULL),
(37, 2, 17, '6', 'Chant de repos (d12)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '20', '4', '3', '3', '3', '2', '1', '1', '1', '1', NULL, NULL, NULL),
(38, 2, 18, '6', 'Secrets magiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '22', '4', '3', '3', '3', '3', '1', '1', '1', '1', NULL, NULL, NULL),
(39, 2, 19, '6', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '22', '4', '3', '3', '3', '3', '2', '1', '1', '1', NULL, NULL, NULL),
(40, 2, 20, '6', 'Inspiration supérieure', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '22', '4', '3', '3', '3', '3', '2', '2', '1', '1', NULL, NULL, NULL),
(61, 3, 1, '+2', 'Incantations, Domaine divin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, '2', '-', '-', '-', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(62, 3, 2, '+2', 'Canalisation d’énergie divine (1), Capacité de domaine divin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, '3', '-', '-', '-', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(63, 3, 3, '+2', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, '4', '2', '-', '-', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(64, 3, 4, '+2', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, '4', '3', '-', '-', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(65, 3, 5, '+3', 'Destruction des morts-vivants (FP 1/2)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, '4', '3', '2', '-', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(66, 3, 6, '+3', 'Canalisation d’énergie divine (2), Capacité de domaine divin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, '4', '3', '3', '-', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(67, 3, 7, '+3', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, '4', '3', '3', '1', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(68, 3, 8, '+3', 'Amélioration de caractéristiques, Capacité de domaine divin, Destruction des morts-vivants (FP 1)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, '4', '3', '3', '2', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(69, 3, 9, '+4', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, '4', '3', '3', '3', '1', '-', '-', '-', '-', NULL, NULL, NULL),
(70, 3, 10, '+4', 'Intervention divine', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, '4', '3', '3', '3', '2', '-', '-', '-', '-', NULL, NULL, NULL),
(71, 3, 11, '+4', 'Destruction des morts-vivants (FP 2)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, '4', '3', '3', '3', '2', '1', '-', '-', '-', NULL, NULL, NULL),
(72, 3, 12, '+4', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, '4', '3', '3', '3', '2', '1', '-', '-', '-', NULL, NULL, NULL),
(73, 3, 13, '+5', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, '4', '3', '3', '3', '2', '1', '1', '-', '-', NULL, NULL, NULL),
(74, 3, 14, '+5', 'Destruction des morts-vivants (FP 3)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, '4', '3', '3', '3', '2', '1', '1', '-', '-', NULL, NULL, NULL),
(75, 3, 15, '+5', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, '4', '3', '3', '3', '2', '1', '1', '1', '-', NULL, NULL, NULL),
(76, 3, 16, '+5', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, '4', '3', '3', '3', '2', '1', '1', '1', '-', NULL, NULL, NULL),
(77, 3, 17, '+6', 'Destruction des morts-vivants (FP 4), Capacité de domaine divin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, '4', '3', '3', '3', '2', '1', '1', '1', '1', NULL, NULL, NULL),
(78, 3, 18, '+6', 'Canalisation d’énergie divine (3)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, '4', '3', '3', '3', '3', '1', '1', '1', '1', NULL, NULL, NULL),
(79, 3, 19, '+6', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, '4', '3', '3', '3', '3', '2', '1', '1', '1', NULL, NULL, NULL),
(80, 3, 20, '+6', 'Intervention divine améliorée', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, '4', '3', '3', '3', '3', '2', '2', '1', '1', NULL, NULL, NULL),
(81, 4, 1, '+2', 'Druidique, Incantations', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, '2', '-', '-', '-', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(82, 4, 2, '+2', 'Forme sauvage, Cercle druidique', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, '3', '-', '-', '-', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(83, 4, 3, '+2', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, '4', '2', '-', '-', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(84, 4, 4, '+2', 'Forme sauvage améliorée, Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, '4', '3', '-', '-', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(85, 4, 5, '+3', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, '4', '3', '2', '-', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(86, 4, 6, '+3', 'Capacité de cercle druidique', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, '4', '3', '3', '-', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(87, 4, 7, '+3', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, '4', '3', '3', '1', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(88, 4, 8, '+3', 'Forme sauvage améliorée, Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, '4', '3', '3', '2', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(89, 4, 9, '+4', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, '4', '3', '3', '3', '1', '-', '-', '-', '-', NULL, NULL, NULL),
(90, 4, 10, '+4', 'Capacité de cercle druidique', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, '4', '3', '3', '3', '2', '-', '-', '-', '-', NULL, NULL, NULL),
(91, 4, 11, '+4', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, '4', '3', '3', '3', '2', '1', '-', '-', '-', NULL, NULL, NULL),
(92, 4, 12, '+4', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, '4', '3', '3', '3', '2', '1', '-', '-', '-', NULL, NULL, NULL),
(93, 4, 13, '+5', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, '4', '3', '3', '3', '2', '1', '1', '-', '-', NULL, NULL, NULL),
(94, 4, 14, '+5', 'Capacité de cercle druidique', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, '4', '3', '3', '3', '2', '1', '1', '-', '-', NULL, NULL, NULL),
(95, 4, 15, '+5', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, '4', '3', '3', '3', '2', '1', '1', '1', '-', NULL, NULL, NULL),
(96, 4, 16, '+5', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, '4', '3', '3', '3', '2', '1', '1', '1', '-', NULL, NULL, NULL),
(97, 4, 17, '+6', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, '4', '3', '3', '3', '2', '1', '1', '1', '1', NULL, NULL, NULL),
(98, 4, 18, '+6', 'Jeunesse éternelle, Incantation animale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, '4', '3', '3', '3', '3', '1', '1', '1', '1', NULL, NULL, NULL),
(99, 4, 19, '+6', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, '4', '3', '3', '3', '3', '2', '1', '1', '1', NULL, NULL, NULL),
(100, 4, 20, '+6', 'Archidruide', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, '4', '3', '3', '3', '3', '2', '2', '1', '1', NULL, NULL, NULL),
(101, 5, 1, '+2', 'Incantations, Origine magique', NULL, NULL, NULL, '-', NULL, NULL, NULL, 4, '2', '2', '-', '-', '-', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(102, 5, 2, '+2', 'Source de magie', NULL, NULL, NULL, '2', NULL, NULL, NULL, 4, '3', '3', '-', '-', '-', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(103, 5, 3, '+2', 'Métamagie', NULL, NULL, NULL, '3', NULL, NULL, NULL, 4, '4', '4', '2', '-', '-', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(104, 5, 4, '+2', 'Amélioration de caractéristiques', NULL, NULL, NULL, '4', NULL, NULL, NULL, 5, '5', '4', '3', '-', '-', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(105, 5, 5, '+3', '-', NULL, NULL, NULL, '5', NULL, NULL, NULL, 5, '6', '4', '3', '2', '-', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(106, 5, 6, '+3', 'Capacité de l\'origine magique', NULL, NULL, NULL, '6', NULL, NULL, NULL, 5, '7', '4', '3', '3', '-', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(107, 5, 7, '+3', '-', NULL, NULL, NULL, '7', NULL, NULL, NULL, 5, '8', '4', '3', '3', '1', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(108, 5, 8, '+3', 'Amélioration de caractéristiques', NULL, NULL, NULL, '8', NULL, NULL, NULL, 5, '9', '4', '3', '3', '2', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(109, 5, 9, '+4', '-', NULL, NULL, NULL, '9', NULL, NULL, NULL, 5, '10', '4', '3', '3', '3', '1', '-', '-', '-', '-', NULL, NULL, NULL),
(110, 5, 10, '+4', 'Métamagie', NULL, NULL, NULL, '10', NULL, NULL, NULL, 6, '11', '4', '3', '3', '3', '2', '-', '-', '-', '-', NULL, NULL, NULL),
(111, 5, 11, '+4', '-', NULL, NULL, NULL, '11', NULL, NULL, NULL, 6, '12', '4', '3', '3', '3', '2', '1', '-', '-', '-', NULL, NULL, NULL),
(112, 5, 12, '+4', 'Amélioration de caractéristiques', NULL, NULL, NULL, '12', NULL, NULL, NULL, 6, '12', '4', '3', '3', '3', '2', '1', '-', '-', '-', NULL, NULL, NULL),
(113, 5, 13, '+5', '-', NULL, NULL, NULL, '13', NULL, NULL, NULL, 6, '13', '4', '3', '3', '3', '2', '1', '1', '-', '-', NULL, NULL, NULL),
(114, 5, 14, '+5', 'Capacité de l\'origine magique', NULL, NULL, NULL, '14', NULL, NULL, NULL, 6, '13', '4', '3', '3', '3', '2', '1', '1', '-', '-', NULL, NULL, NULL),
(115, 5, 15, '+5', '-', NULL, NULL, NULL, '15', NULL, NULL, NULL, 6, '14', '4', '3', '3', '3', '2', '1', '1', '1', '-', NULL, NULL, NULL),
(116, 5, 16, '+5', 'Amélioration de caractéristiques', NULL, NULL, NULL, '16', NULL, NULL, NULL, 6, '14', '4', '3', '3', '3', '2', '1', '1', '1', '-', NULL, NULL, NULL),
(117, 5, 17, '+6', 'Métamagie', NULL, NULL, NULL, '17', NULL, NULL, NULL, 6, '15', '4', '3', '3', '3', '2', '1', '1', '1', '1', NULL, NULL, NULL),
(118, 5, 18, '+6', 'Capacité de l\'origine magique', NULL, NULL, NULL, '18', NULL, NULL, NULL, 6, '15', '4', '3', '3', '3', '3', '1', '1', '1', '1', NULL, NULL, NULL),
(119, 5, 19, '+6', 'Amélioration de caractéristiques', NULL, NULL, NULL, '19', NULL, NULL, NULL, 6, '15', '4', '3', '3', '3', '3', '2', '1', '1', '1', NULL, NULL, NULL),
(120, 5, 20, '+6', 'Restauration magique', NULL, NULL, NULL, '20', NULL, NULL, NULL, 6, '15', '4', '3', '3', '3', '3', '2', '2', '1', '1', NULL, NULL, NULL),
(121, 6, 1, '+2', 'Style de combat, Second souffle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 6, 2, '+2', 'Sursaut (1)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 6, 3, '+2', 'Archétype martial', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 6, 4, '+2', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 6, 5, '+3', 'Attaque supplémentaire (1)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 6, 6, '+3', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 6, 7, '+3', 'Capacité de l\'archétype martial', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 6, 8, '+3', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 6, 9, '+4', 'Indomptable (1)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 6, 10, '+4', 'Capacité de l\'archétype martial', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 6, 11, '+4', 'Attaque supplémentaire (2)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 6, 12, '+4', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 6, 13, '+5', 'Indomptable (2)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 6, 14, '+5', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 6, 15, '+5', 'Capacité de l\'archétype martial', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 6, 16, '+5', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 6, 17, '+6', 'Sursaut (2), Indomptable (3)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 6, 18, '+6', 'Capacité de l\'archétype martial', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 6, 19, '+6', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 6, 20, '+6', 'Attaque supplémentaire (3)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 7, 1, '+2', 'Incantations, Récupération arcanique', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, '2', '-', '-', '-', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(142, 7, 2, '+2', 'Tradition arcanique', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, '3', '-', '-', '-', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(143, 7, 3, '+2', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, '4', '2', '-', '-', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(144, 7, 4, '+2', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, '4', '3', '-', '-', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(145, 7, 5, '+3', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, '4', '3', '2', '-', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(146, 7, 6, '+3', 'Capacité de la tradition arcanique', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, '4', '3', '3', '-', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(147, 7, 7, '+3', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, '4', '3', '3', '1', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(148, 7, 8, '+3', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, '4', '3', '3', '2', '-', '-', '-', '-', '-', NULL, NULL, NULL),
(149, 7, 9, '+4', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, '4', '3', '3', '3', '1', '-', '-', '-', '-', NULL, NULL, NULL),
(150, 7, 10, '+4', 'Capacité de la tradition arcanique', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, '4', '3', '3', '3', '2', '-', '-', '-', '-', NULL, NULL, NULL),
(151, 7, 11, '+4', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, '4', '3', '3', '3', '2', '1', '-', '-', '-', NULL, NULL, NULL),
(152, 7, 12, '+4', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, '4', '3', '3', '3', '2', '1', '-', '-', '-', NULL, NULL, NULL),
(153, 7, 13, '+5', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, '4', '3', '3', '3', '2', '1', '1', '-', '-', NULL, NULL, NULL),
(154, 7, 14, '+5', 'Capacité de la tradition arcanique', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, '4', '3', '3', '3', '2', '1', '1', '-', '-', NULL, NULL, NULL),
(155, 7, 15, '+5', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, '4', '3', '3', '3', '2', '1', '1', '1', '-', NULL, NULL, NULL),
(156, 7, 16, '+5', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, '4', '3', '3', '3', '2', '1', '1', '1', '-', NULL, NULL, NULL),
(157, 7, 17, '+6', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, '4', '3', '3', '3', '2', '1', '1', '1', '1', NULL, NULL, NULL),
(158, 7, 18, '+6', 'Maîtrise des sorts', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, '4', '3', '3', '3', '3', '1', '1', '1', '1', NULL, NULL, NULL),
(159, 7, 19, '+6', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, '4', '3', '3', '3', '3', '2', '1', '1', '1', NULL, NULL, NULL),
(160, 7, 20, '+6', 'Sorts de prédilection', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, '4', '3', '3', '3', '3', '2', '2', '1', '1', NULL, NULL, NULL),
(161, 8, 1, '+2', 'Défense sans armure, Arts martiaux', '1d4', '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, 8, 2, '+2', 'Ki, Déplacement sans armure', '1d4', '2', '+ 3 m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, 8, 3, '+2', 'Tradition monastique, Parade de projectiles', '1d4', '3', '+ 3 m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, 8, 4, '+2', 'Amélioration de caractéristiques, Chute ralentie', '1d4', '4', '+ 3 m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, 8, 5, '+3', 'Attaque supplémentaire, Frappe étourdissante', '1d6', '5', '+ 3 m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, 8, 6, '+3', 'Frappes de ki, Capacité de la tradition monastique', '1d6', '6', '+ 4,50 m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, 8, 7, '+3', 'Dérobade, Tranquillité de l\'esprit', '1d6', '7', '+ 4,50 m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, 8, 8, '+3', 'Amélioration de caractéristiques', '1d6', '8', '+ 4,50 m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, 8, 9, '+4', 'Déplacement sans armure amélioré', '1d6', '9', '+ 4,50 m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, 8, 10, '+4', 'Pureté du corps', '1d6', '10', '+ 6 m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, 8, 11, '+4', 'Capacité de la tradition monastique', '1d8', '11', '+ 6 m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, 8, 12, '+4', 'Amélioration de caractéristiques', '1d8', '12', '+ 6 m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, 8, 13, '+5', 'Langage du soleil et de la lune', '1d8', '13', '+ 6 m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, 8, 14, '+5', 'Âme de diamant', '1d8', '14', '+ 7,50 m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, 8, 15, '+5', 'Jeunesse éternelle', '1d8', '15', '+ 7,50 m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, 8, 16, '+5', 'Amélioration de caractéristiques', '1d8', '16', '+ 7,50 m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, 8, 17, '+6', 'Capacité de la tradition monastique', '1d10', '17', '+ 7,50 m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, 8, 18, '+6', 'Corps vide', '1d10', '18', '+ 9 m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, 8, 19, '+6', 'Amélioration de caractéristiques', '1d10', '19', '+ 9 m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, 8, 20, '+6', 'Perfection de l\'être', '1d10', '20', '+ 9 m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, 9, 1, '+2', 'Sens divin, Imposition des mains', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, 9, 2, '+2', 'Style de combat, Incantations, Châtiment divin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', '-', '-', '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, 9, 3, '+2', 'Santé divine, Serment sacré', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '-', '-', '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, 9, 4, '+2', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '-', '-', '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, 9, 5, '+3', 'Attaque supplémentaire', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '2', '-', '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, 9, 6, '+3', 'Aura de protection', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '2', '-', '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, 9, 7, '+3', 'Capacité de serment sacré', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '3', '-', '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, 9, 8, '+3', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '3', '-', '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, 9, 9, '+4', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '3', '2', '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, 9, 10, '+4', 'Aura de courage', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '3', '2', '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(191, 9, 11, '+4', 'Châtiment divin amélioré', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '3', '3', '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, 9, 12, '+4', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '3', '3', '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, 9, 13, '+5', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '3', '3', '1', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, 9, 14, '+5', 'Contact purifiant', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '3', '3', '1', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(195, 9, 15, '+5', 'Capacité de serment sacré', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '3', '3', '2', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, 9, 16, '+5', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '3', '3', '2', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, 9, 17, '+6', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '3', '3', '3', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, 9, 18, '+6', 'Amélioration des auras', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '3', '3', '3', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, 9, 19, '+6', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '3', '3', '3', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, 9, 20, '+6', 'Capacité de serment sacré', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '3', '3', '3', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, 10, 1, '+2', 'Ennemi juré, Explorateur-né', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, 10, 2, '+2', 'Style de combat, Incantations', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', '2', '-', '-', '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(203, 10, 3, '+2', 'Archétype de rôdeur, Sens primitifs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '3', '-', '-', '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(204, 10, 4, '+2', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '3', '-', '-', '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, 10, 5, '+3', 'Attaque supplémentaire', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '4', '2', '-', '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(206, 10, 6, '+3', 'Amélioration de l\'Ennemi juré et de l\'Explorateur-né', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '4', '2', '-', '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(207, 10, 7, '+3', 'Capacité de l\'archétype de rôdeur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', '4', '3', '-', '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(208, 10, 8, '+3', 'Amélioration de caractéristiques, Traversée des terrains', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', '4', '3', '-', '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(209, 10, 9, '+4', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6', '4', '3', '2', '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210, 10, 10, '+4', 'Amélioration de l\'Explorateur-né, Camouflage naturel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6', '4', '3', '2', '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(211, 10, 11, '+4', 'Capacité de l\'archétype de rôdeur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', '4', '3', '3', '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(212, 10, 12, '+4', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', '4', '3', '3', '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(213, 10, 13, '+5', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8', '4', '3', '3', '1', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(214, 10, 14, '+5', 'Amélioration de l\'Ennemi juré, Disparition', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8', '4', '3', '3', '1', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(215, 10, 15, '+5', 'Capacité de l\'archétype de rôdeur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9', '4', '3', '3', '2', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(216, 10, 16, '+5', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9', '4', '3', '3', '2', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(217, 10, 17, '+6', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', '4', '3', '3', '3', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(218, 10, 18, '+6', 'Sens sauvages', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10', '4', '3', '3', '3', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(219, 10, 19, '+6', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', '4', '3', '3', '3', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(220, 10, 20, '+6', 'Tueur d\'ennemis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', '4', '3', '3', '3', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(221, 11, 1, '+2', 'Expertise, Attaque sournoise, Jargon des voleurs', NULL, NULL, NULL, NULL, '1d6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(222, 11, 2, '+2', 'Ruse', NULL, NULL, NULL, NULL, '1d6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(223, 11, 3, '+2', 'Archétype de roublard', NULL, NULL, NULL, NULL, '2d6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(224, 11, 4, '+2', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, '2d6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(225, 11, 5, '+3', 'Esquive instinctive', NULL, NULL, NULL, NULL, '3d6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(226, 11, 6, '+3', 'Expertise', NULL, NULL, NULL, NULL, '3d6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(227, 11, 7, '+3', 'Dérobade', NULL, NULL, NULL, NULL, '4d6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(228, 11, 8, '+3', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, '4d6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(229, 11, 9, '+4', 'Capacité de l\'archétype de roublard', NULL, NULL, NULL, NULL, '5d6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(230, 11, 10, '+4', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, '5d6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(231, 11, 11, '+4', 'Talent', NULL, NULL, NULL, NULL, '6d6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(232, 11, 12, '+4', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, '6d6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(233, 11, 13, '+5', 'Capacité de l\'archétype de roublard', NULL, NULL, NULL, NULL, '7d6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(234, 11, 14, '+5', 'Ouïe fine', NULL, NULL, NULL, NULL, '7d6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(235, 11, 15, '+5', 'Esprit impénétrable', NULL, NULL, NULL, NULL, '8d6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(236, 11, 16, '+5', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, '8d6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(237, 11, 17, '+6', 'Capacité de l\'archétype de roublard', NULL, NULL, NULL, NULL, '9d6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(238, 11, 18, '+6', 'Insaisissable', NULL, NULL, NULL, NULL, '9d6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(239, 11, 19, '+6', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, '10d6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(240, 11, 20, '+6', 'Coup de chance', NULL, NULL, NULL, NULL, '10d6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(241, 12, 1, '+2', 'Patron d\'Outremonde, Magie de pacte', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '-'),
(242, 12, 2, '+2', 'Invocations occultes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2'),
(243, 12, 3, '+2', 'Faveur de pacte', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, '2'),
(244, 12, 4, '+2', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, '2'),
(245, 12, 5, '+3', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 3, '3'),
(246, 12, 6, '+3', 'Capacité de patron d\'Outremonde', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 3, '3'),
(247, 12, 7, '+3', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 4, '4'),
(248, 12, 8, '+3', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 4, '4'),
(249, 12, 9, '+4', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 5, '5'),
(250, 12, 10, '+4', 'Capacité de patron d\'Outremonde', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 5, '5'),
(251, 12, 11, '+4', 'Arcanum mystique (niveau 6)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 5, '5'),
(252, 12, 12, '+4', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 5, '6'),
(253, 12, 13, '+5', 'Arcanum mystique (niveau 7)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 5, '6'),
(254, 12, 14, '+5', 'Capacité de patron d\'Outremonde', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 5, '6'),
(255, 12, 15, '+5', 'Arcanum mystique (niveau 8)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 5, '7'),
(256, 12, 16, '+5', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 5, '7'),
(257, 12, 17, '+6', 'Arcanum mystique (niveau 9)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 5, '7'),
(258, 12, 18, '+6', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 5, '8'),
(259, 12, 19, '+6', 'Amélioration de caractéristiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 5, '8'),
(260, 12, 20, '+6', 'Maître de l\'occulte', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 5, '8');

-- --------------------------------------------------------

--
-- Structure de la table `historique`
--

DROP TABLE IF EXISTS `historique`;
CREATE TABLE IF NOT EXISTS `historique` (
  `his_ID` int(11) NOT NULL AUTO_INCREMENT,
  `his_nom` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `his_capacite` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `his_equipement` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `his_competences` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`his_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `origine`
--

DROP TABLE IF EXISTS `origine`;
CREATE TABLE IF NOT EXISTS `origine` (
  `ori_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ori_rac_ID` int(11) NOT NULL,
  `ori_nom` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ori_carac` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ori_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `race`
--

DROP TABLE IF EXISTS `race`;
CREATE TABLE IF NOT EXISTS `race` (
  `rac_ID` int(11) NOT NULL,
  `rac_nom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `rac_vitesse` decimal(10,1) NOT NULL DEFAULT '0.0',
  `rac_langue` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `rac_carac` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`rac_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `race`
--

INSERT INTO `race` (`rac_ID`, `rac_nom`, `rac_vitesse`, `rac_langue`, `rac_carac`) VALUES
(1, 'elfe', '9.0', 'elfe,commun', '0/2/0/1/0/0'),
(2, 'halfelin', '7.5', 'halfelin,commun', '0/2/0/0/0/1'),
(3, 'humain', '9.0', 'commun, une langue supplémentaire au choix', '1/1/1/1/1/1'),
(4, 'nain', '7.5', 'nain,commun', '1/0/2/0/0/0'),
(5, 'demi-elfe', '9.0', 'elfe, commun et une langue supplémentaire au choix', '0/0/0/0/0/2'),
(6, 'demi-orque', '9.0', 'orque, commun', '2/0/1/0/0/0'),
(7, 'drakeide', '9.0', 'draconique, commun', '2/0/0/0/0/1'),
(8, 'gnome', '7.5', 'gnome, commun', '0/0/1/2/0/0'),
(9, 'tieffelin', '9.0', 'infernal, commun', '0/0/0/1/0/2');

-- --------------------------------------------------------

--
-- Structure de la table `ss_classe`
--

DROP TABLE IF EXISTS `ss_classe`;
CREATE TABLE IF NOT EXISTS `ss_classe` (
  `sscl_ID` int(11) NOT NULL AUTO_INCREMENT,
  `sscl_cla_ID` int(11) NOT NULL,
  `sscl_nom` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`sscl_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `ss_classe`
--

INSERT INTO `ss_classe` (`sscl_ID`, `sscl_cla_ID`, `sscl_nom`) VALUES
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
(16, 5, 'Lignée draconique'),
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

-- --------------------------------------------------------

--
-- Structure de la table `tribus`
--

DROP TABLE IF EXISTS `tribus`;
CREATE TABLE IF NOT EXISTS `tribus` (
  `tri_ID` int(11) NOT NULL AUTO_INCREMENT,
  `tri_rac_ID` int(11) NOT NULL,
  `tri_nom` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `tri_carac` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`tri_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article_race`
--
ALTER TABLE `article_race`
  ADD CONSTRAINT `article_race_ibfk_1` FOREIGN KEY (`artr_rac_ID`) REFERENCES `race` (`rac_ID`);

--
-- Contraintes pour la table `capacite_classe`
--
ALTER TABLE `capacite_classe`
  ADD CONSTRAINT `classes_ibfk_1` FOREIGN KEY (`capcl_cla_ID`) REFERENCES `classes` (`cla_ID`);

--
-- Contraintes pour la table `capacite_race`
--
ALTER TABLE `capacite_race`
  ADD CONSTRAINT `FK_capacite_race_race` FOREIGN KEY (`cap_rac_ID`) REFERENCES `race` (`rac_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
