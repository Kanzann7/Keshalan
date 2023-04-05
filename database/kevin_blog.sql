-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 05 avr. 2023 à 12:42
-- Version du serveur : 8.0.30
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `kevin_blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content` text COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `image`, `createdAt`) VALUES
(1, 'Je suis un ruiniste', 'Ruiniste, ruinisme,... cela fait déjà quelques années que ces mots vont et viennent dans ma tête comme un rappel,  non pas à l\'ordre mais plutôt au regard. <br>\r\n\r\nCe regard est celui que l\'on porte sur l\'oeuvre que l\'on vient de faire. Eloigné de quelques pas, on analyse, et vient ce moment où on s\'exclame (ou que quelqu\'un d\'autre qui serait à cote de nous) : <br>\r\n\r\n\r\n \"Tient, ça me fait penser à ça!\"\r\n\r\n\r\nJe me suis familiarisé avec le courant ruiniste durant mes études d\'art. C\'est un terme qui se rapporte surtout à la peinture de paysages du 18ème siècle, <br> et plus précisément aux les artistes spécialisés ou dont l\'oeuvre est en majorité axée sur la représentation de ruines. \r\n\r\nJ\'ai d\'ailleurs toujours vu ce courant comme les prémices du Romantisme <br> du 19ème siècle ( une de mes périodes et courant d\'art préféré) avec le grand Caspar David Friedrich qui restera toujours parmi ces artistes qui ont fortement marqué mon existence. ', 'Cimetière.webp', '2023-03-21 14:49:46'),
(3, 'Un regard en arrière', ' A plusieurs occasions, on peut être amené à regarder derrière soi, voir ce par quoi nous sommes passé pour aboutir à cette version présente de nous même. <br>\r\n\r\nCela est d\'autant plus vrai pour un créateur ou un poète.\r\n\r\n\r\nEt il est fou d\'observer dans certains travaux plus ou moins anciens et y trouver les prémices de nos travaux les plus récents. <br>\r\n\r\nParfois de façon évidente, et parfois plus subtilement.\r\n\r\n ', 'regard.webp', '2023-04-04 10:02:36'),
(4, 'Les expositions sauvages', 'Il m\'a fallu beaucoup de temps avant d\'envisager de faire de telles expositions. <br>\r\n\r\nJusqu\'à présent je souhaitais rester dans la pure légalité et la conformité dans les bonnes façons de faire, du moins les façons officielles et normales.<br> Et que c\'est fastidieux de trouver un lieu d\'art pour y exposer. <br>\r\n\r\n\r\nAu fur et à mesure que j\'étudie le Street art, ses codes, ses artistes influents, et toutes les possibilités que cette art offre aux créateurs, j\'ai compris.<br>\r\n\r\nJ\'ai compris que l\'on ne devrait pas se limiter à ses lieux. Je ne nie pas leur importance ou leur utilité, mais ce serait se limiter que de ne compter que sur les institutions artistiques. <br>\r\n\r\n\r\nPendant quelques mois j\'ai vécu prés de l\'entrée du tunnel du canal du Rove. <br> Ce canal, c\'est un monument de la ville de Marignane, dans le sens qu\'il s\'agit d\'un ouvrage d\'une très grande importance dans l\'histoire (surtout moderne) de la ville. <br> Beaucoup de familles des environs ont une histoire liée à cette ouverture énorme et sombre à travers la roche calcaire. <br>\r\n\r\n\r\nPour y être descendu plusieurs fois, c\'est un lieu extraordinaire. Les sens ne sont pas en éveil, ils sont en ébullition. <br>\r\n\r\nEn bas des escaliers, devant cette entrée béante, les sont se réverbèrent et sont exacerbés. <br> Ainsi, le remous qu\'un poisson causait en faisait un bon hors de l\'eau me paru comme si une créature géante vivait en ce lieu et se déplaçait.<br>\r\n\r\n\r\nC\'est dans ce lieux que j\'ai choisi de faire ma véritable première exposition sauvage. <br>\r\n\r\nTôt le matin, afin de profiter de la fraîcheur du début de journée je me mis en route vers l\'entrée du tunnel avec un sac à dos <br> dans lequel se trouvait mon matériel, un carton à dessin avec les œuvres à placarder sous un bras, et une chaise pliée sous l\'autre. <br>\r\n\r\nSur un mur, à l\'aide d\'une colle maison préparée la veille, j\'installais des versions imprimées de dessins de la série qui allait devenir la série \"Necronomicon\".', 'exposition.webp', '2023-04-04 13:34:17');

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE `comment` (
  `idComment` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `nickname` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content` text COLLATE utf8mb4_general_ci NOT NULL,
  `articleId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oeuvres`
--

CREATE TABLE `oeuvres` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content` text COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `oeuvres`
--

INSERT INTO `oeuvres` (`id`, `title`, `content`, `image`) VALUES
(1, 'D\'après polystirènes', 'L\'idée des polystyrènes à germé dans mon esprit depuis longtemps et ce fut seulement lors de ma 4ème année des Beaux-Arts que j\'ai pu la mettre en application. <br>\r\n\r\n \r\n\r\n   Lorsque je regarde ces blocs immaculés, je ne peux m\'empêcher d\'y voir des bâtiments, des ruines en devenir. <br> Ils me servent aussi bien de modèles pour le dessin sur papier, que de support de travail. Mon amour pour ces décombres m\'amène à en créer et les mettre en situation. <br>\r\n\r\n \r\n\r\n  La matière elle même m\'est apparue comme une évidence par sa friabilité qui en fait le matériau parfait pour travailler la thématique de l\'Entropie. <br> <br>', 'Polystyrène.webp'),
(2, 'Palimpseste', 'Palimpseste <br>\r\n\r\nnom masculin\r\n\r\nParchemin dont on a effacé la première écriture pour pouvoir écrire un nouveau texte.', 'Palimpseste.webp'),
(3, 'Necronomicon', ' Au départ, cette série n\'était qu\'un challenge artistique sur lequel j\'étais tombé par hasard. <br> Je me suis donc laissé tenté par cette aventure. Ainsi, chaque jour du mois de juillet, il fallait faire apparaître un crâne sur le dessin quotidien. <br>\r\n\r\n \r\n\r\n   Ce qui n\'était au départ qu\'un défi, s\'est finalement mué en un véritable projet dans lequel j\'ai pu représenter ces crânes sous différents stades <br> et types de dégradations. <br>\r\n\r\n​\r\n\r\n   De cette série de dessins, j\'en ai sortis un certain nombre qui formaient selon moi un ensemble cohérent, que j\'ai décidé d\'appeler <br> \" Necronomicon\" en référence au livre fictif imaginé par H.P Lovecraft.', 'Necronomicon.webp'),
(4, 'Entropie commune', 'Loi fondamentale de l\'Univers <br>\r\nPeinture numérique <br>\r\n2020', 'Entropie comum.webp'),
(5, 'Cité abandonnée', '', 'cité.webp'),
(6, 'La cité sans nom', '', 'cité sans nom.webp'),
(7, 'L\'expédition oubliée', '', 'structure.webp'),
(8, 'Chapelle de papier', '', 'chapelle.webp'),
(9, 'Art Rupestre', '', 'rupestre.webp'),
(10, 'D\'outre-ruines', '', 'ruines.webp');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`idComment`),
  ADD KEY `fkarticleComment` (`articleId`);

--
-- Index pour la table `oeuvres`
--
ALTER TABLE `oeuvres`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `idComment` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `oeuvres`
--
ALTER TABLE `oeuvres`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `fkarticleComment` FOREIGN KEY (`articleId`) REFERENCES `article` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
