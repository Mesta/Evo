-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le : Jeu 28 Juin 2012 à 12:54
-- Version du serveur: 5.5.24
-- Version de PHP: 5.3.10-1ubuntu3.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `evo2`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `cliId` int(11) NOT NULL AUTO_INCREMENT,
  `cliLogin` varchar(255) NOT NULL,
  `cliPassword` varchar(255) NOT NULL,
  `cliEntreprise` varchar(255) NOT NULL,
  `cliMail` varchar(255) NOT NULL,
  PRIMARY KEY (`cliId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`cliId`, `cliLogin`, `cliPassword`, `cliEntreprise`, `cliMail`) VALUES
(3, 'jeremy', 'e392898d6ceccd74fb7abe923da44e1f5fdb3126', 'Sogeti High Tech', 'jeremy.lardet@gmail.com'),
(4, 'evo', '261679fd18ad73433144fdf8bececf5b99851ace', 'EvO', 'evo@evo.fr');

-- --------------------------------------------------------

--
-- Structure de la table `dictionnaire`
--

CREATE TABLE IF NOT EXISTS `dictionnaire` (
  `dicId` int(11) NOT NULL AUTO_INCREMENT,
  `dicMot` varchar(255) NOT NULL,
  `dicDefinition` varchar(255) NOT NULL,
  PRIMARY KEY (`dicId`),
  UNIQUE KEY `dicMot` (`dicMot`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `dictionnaire`
--

INSERT INTO `dictionnaire` (`dicId`, `dicMot`, `dicDefinition`) VALUES
(1, 'trombinoscope', 'Un truc pour voir des meufs LOL'),
(2, 'stock de sÃ©curitÃ©', 'Un truc pour avoir encore des clÃ©s USB Ã  vendre'),
(3, 'chat', 'Miaou');

-- --------------------------------------------------------

--
-- Structure de la table `prerequis`
--

CREATE TABLE IF NOT EXISTS `prerequis` (
  `preReponse` int(11) NOT NULL,
  `preQuestion` int(11) NOT NULL,
  PRIMARY KEY (`preReponse`,`preQuestion`),
  KEY `preQuestion` (`preQuestion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `prerequis`
--

INSERT INTO `prerequis` (`preReponse`, `preQuestion`) VALUES
(81, 51),
(82, 52),
(82, 53),
(89, 54),
(89, 55),
(82, 56),
(82, 57),
(82, 58),
(108, 59),
(82, 60),
(114, 61),
(84, 62),
(82, 63),
(122, 64),
(82, 65),
(124, 66),
(82, 67),
(128, 68),
(130, 69),
(82, 70),
(82, 71),
(124, 72),
(82, 73),
(82, 74),
(144, 75),
(82, 76),
(82, 77),
(109, 79),
(106, 80),
(111, 81),
(111, 82),
(113, 83),
(114, 84),
(115, 85),
(123, 86),
(125, 87),
(128, 88);

-- --------------------------------------------------------

--
-- Structure de la table `processus`
--

CREATE TABLE IF NOT EXISTS `processus` (
  `procId` int(11) NOT NULL AUTO_INCREMENT,
  `procLibelle` varchar(255) NOT NULL,
  `procDescription` varchar(500) NOT NULL,
  PRIMARY KEY (`procId`),
  UNIQUE KEY `procLibelle` (`procLibelle`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Contenu de la table `processus`
--

INSERT INTO `processus` (`procId`, `procLibelle`, `procDescription`) VALUES
(1, 'Achat', ''),
(12, 'ComptabilitÃ©', '');

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `questId` int(11) NOT NULL AUTO_INCREMENT,
  `questQuestion` varchar(255) NOT NULL,
  `questProcessus` int(11) NOT NULL,
  `questType` varchar(20) NOT NULL,
  `questOrdre` int(11) DEFAULT NULL,
  `questMere` tinyint(1) NOT NULL,
  PRIMARY KEY (`questId`),
  KEY `questProcessus` (`questProcessus`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=97 ;

--
-- Contenu de la table `question`
--

INSERT INTO `question` (`questId`, `questQuestion`, `questProcessus`, `questType`, `questOrdre`, `questMere`) VALUES
(50, 'Externalisez-vous votre comptabilitÃ©Â ?', 12, 'oui/non', 1, 1),
(51, 'Qui se charge de la comptabilitÃ©Â ?', 12, 'multiple', 1, 0),
(52, 'Quel est le secteur d''activitÃ© de votre entreprise ?', 12, 'multiple', 1, 0),
(53, 'Votre organisation estÂ ?', 12, 'multiple', 2, 0),
(54, 'Combien comptez-vous de fournisseursÂ ?', 12, 'multiple', 1, 0),
(55, 'Combien avez vous de clientsÂ ?', 12, 'multiple', 2, 0),
(56, 'Le type de votre comptabilitÃ© estÂ ?', 12, 'multiple', 3, 0),
(57, 'Quel est le nombre de facture entrante et sortante traitÃ© par jourÂ ?', 12, 'multiple', 4, 0),
(58, 'Comment gÃ©rez-vous votre comptabilitÃ©Â ?', 12, 'multiple', 5, 0),
(59, 'Utilisez-vous ce logiciel comptable en mode Saas', 12, 'oui/non', 1, 0),
(60, 'Respectez-vous le plan comptable gÃ©nÃ©ralÂ ?', 12, 'oui/non', 6, 0),
(61, 'Quelle est la frÃ©quence des visites de votre expert comptableÂ ?', 12, 'multiple', 1, 0),
(62, 'Faites-vous rÃ©viser votre comptabilitÃ© par un expertÂ ?', 12, 'oui/non', 1, 0),
(63, 'Faites-vous de la veille informationnelleÂ ?', 12, 'oui/non', 7, 1),
(64, 'A travers quel outil rÃ©alisez-vous cette veilleÂ ?', 12, 'multiple', 1, 0),
(65, 'RÃ©alisez-vous le journalÂ ?', 12, 'oui/non', 8, 0),
(66, 'Quelle est la frÃ©quence de sa rÃ©alisationÂ ?', 12, 'multiple', 1, 0),
(67, 'Produisez vous les Ã©tats de synthÃ¨se de votre entrepriseÂ ?', 12, 'oui/non', 9, 0),
(68, 'Quand arretez-vous ces Ã©tatsÂ ?', 12, 'multiple', 1, 0),
(69, 'Quelle est la frÃ©quence de ces clotures comptablesÂ ?', 12, 'multiple', 1, 0),
(70, 'Utilisez-vous le reporting concernant la comptabilitÃ©Â ?', 12, 'oui/non', 10, 0),
(71, 'Avez-vous des routines pour gÃ©rer votre comptabilitÃ©?', 12, 'oui/non', 11, 0),
(72, 'Quelle est la frÃ©quence de ces routinesÂ ?', 12, 'multiple', 2, 0),
(73, 'Faites-vous une liste des tÃ¢ches comptables Ã  effectuerÂ ?', 12, 'oui/non', 12, 0),
(74, 'Comment achivez-vous vos piÃ¨ces comptablesÂ ?', 12, 'multiple', 13, 0),
(75, 'OÃ¹ archivez-vous les piÃ¨ces comptables de votre entrepriseÂ ?', 12, 'multiple', 1, 0),
(76, 'Conservez-vous vos piÃ¨ces comptables 10 ansÂ ?', 12, 'oui/non', 14, 0),
(77, 'Conservez-vous votre comptabilitÃ© 3 ansÂ ?', 12, 'oui/non', 15, 0),
(78, 'Rencontrez-vous des Ã©carts/erreurs dans votre comptabilitÃ©Â ?', 12, 'oui/non', 2, 1),
(79, 'Rencontrez vous des limites dans la gestion comptable avec votre outil dÃ©veloppÃ© pour rÃ©pondre Ã  vos besoins en la matiÃ¨reÂ ?', 12, 'oui/non', 1, 0),
(80, 'Avez vous des difficultÃ©s Ã  apprÃ©hender votre ERP en terme de comptabilitÃ©Â ?', 12, 'oui/non', 1, 0),
(81, 'Avez vous des difficultÃ©s Ã  apprÃ©hender votre  logiciel comptableÂ ?', 12, 'oui/non', 1, 0),
(82, 'Avez vous des difficultÃ©s Ã  apprÃ©hender votre  logiciel comptableÂ ?', 12, 'oui/non', 2, 0),
(83, 'Avez vous des difficultÃ©s Ã  gÃ©rer votre comptabilitÃ©Â ?', 12, 'oui/non', 1, 0),
(84, 'Trouvez vous que votre expert comptable est assez disponible pour votre suivi de comptabilitÃ©Â ?', 12, 'oui/non', 2, 0),
(85, 'Rencontrez vous des problÃ¨mes de suivi de votre comptabilitÃ©?', 12, 'oui/non', 1, 0),
(86, 'Rencontrez vous des problÃ¨mes de comptabilitÃ© parce que vos rÃ¨gles comptables ne sont pas Ã  jour?', 12, 'oui/non', 1, 0),
(87, 'Avez vous des problÃ¨mes Ã  rÃ©aliser vos jounaux?', 12, 'oui/non', 1, 0),
(88, 'Avez vous des problÃ¨mes Ã  rÃ©aliser les Ã©tats de synthÃ¨se de votre entrepriseÂ ?', 12, 'oui/non', 2, 0),
(89, 'Avez vous du mal Ã  gÃ©rer la rÃ©alisation des taches comptables de votre entrepriseÂ ?', 12, 'oui/non', 3, 1),
(90, 'Avez vous des difficultÃ©s Ã  voir quelles taches comptables vous devez rÃ©aliserÂ ?', 12, 'oui/non', 4, 1),
(91, 'Rencontrez-vous des problÃ¨mes d''archivage de vos piÃ¨ces comptablesÂ ?', 12, 'oui/non', 5, 1),
(92, 'Trouvez vous que votre comptabilitÃ© est lourde en terme de traitementÂ ?', 12, 'oui/non', 6, 1);

--
-- Déclencheurs `question`
--
DROP TRIGGER IF EXISTS `addQuestion`;
DELIMITER //
CREATE TRIGGER `addQuestion` BEFORE INSERT ON `question`
 FOR EACH ROW BEGIN
    DECLARE x INT;
    SELECT MAX(questOrdre) into x FROM question WHERE questProcessus = NEW.questProcessus AND questId NOT IN (SELECT preQuestion from prerequis);
    IF ISNULL(x) THEN
    	SET x = 0;
    END IF;
    SET NEW.questOrdre = x + 1;
  END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `repcli`
--

CREATE TABLE IF NOT EXISTS `repcli` (
  `rpClient` int(11) NOT NULL,
  `rpReponse` int(11) NOT NULL,
  PRIMARY KEY (`rpClient`,`rpReponse`),
  KEY `rpReponse` (`rpReponse`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `reponse`
--

CREATE TABLE IF NOT EXISTS `reponse` (
  `repId` int(11) NOT NULL AUTO_INCREMENT,
  `repLibelle` varchar(255) NOT NULL,
  `repQuestion` int(11) NOT NULL,
  PRIMARY KEY (`repId`),
  KEY `repQuestion` (`repQuestion`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=199 ;

--
-- Contenu de la table `reponse`
--

INSERT INTO `reponse` (`repId`, `repLibelle`, `repQuestion`) VALUES
(81, 'oui', 50),
(82, 'non', 50),
(83, 'Un comptable', 51),
(84, 'Un employÃ© ayant des compÃ©tences comptable', 51),
(85, 'Un employÃ© n''y connaissant rien', 51),
(89, 'B2B', 53),
(90, 'B2C', 53),
(91, 'Moins de 20', 54),
(92, 'Entre 20 et 100', 54),
(93, 'Plus de 100', 54),
(94, 'Moins de 10', 55),
(95, 'Entre 10 et 50', 55),
(96, 'Plus de 50', 55),
(97, 'Ticket Bilan de Caisse (si TPE)', 56),
(98, 'ComptabilitÃ© industrielle', 56),
(99, 'ComptabilitÃ© financiÃ¨re ou gÃ©nÃ©rale', 56),
(100, 'ComptabilitÃ© analytique ou ComptabilitÃ© de gestion', 56),
(103, 'Moins de 4', 57),
(104, 'entre 4 et 10', 57),
(105, 'plus de 10', 57),
(106, 'A travers un ERP', 58),
(107, 'Sur papier', 58),
(108, 'A travers un logiciel comptable', 58),
(109, 'A travers un outil que vous avez dÃ©veloppÃ© Ã  cet effet', 58),
(110, 'oui', 59),
(111, 'non', 59),
(112, 'oui', 60),
(113, 'non', 60),
(114, 'oui', 62),
(115, 'non', 62),
(116, 'Mensuelle', 61),
(117, 'Trimestrielle', 61),
(118, 'Semestrielle', 61),
(119, 'Internet', 64),
(120, 'Livre de comptabilitÃ©', 64),
(121, 'Autre', 64),
(122, 'oui', 63),
(123, 'non', 63),
(124, 'oui', 65),
(125, 'non', 65),
(126, 'JournaliÃ¨re', 66),
(127, 'Autre', 66),
(128, 'oui', 67),
(129, 'non', 67),
(130, 'Ã€ la fin de l''exercice comptable', 68),
(131, 'Autre', 68),
(132, 'Annuelle', 69),
(133, 'Plus d''une fois par an', 69),
(134, 'oui', 70),
(135, 'non', 70),
(136, 'oui', 71),
(137, 'non', 71),
(138, 'JournaliÃ¨re', 72),
(139, 'Hebdomadaire', 72),
(140, 'Mensuelle', 72),
(141, 'oui', 73),
(142, 'non', 73),
(143, 'NumÃ©riquement', 74),
(144, 'Sur papier', 74),
(145, 'Les 2', 74),
(146, 'Dans une salle de vos locaux', 75),
(147, 'Dans un coffre sÃ©curisÃ© situÃ© dans vos locaux', 75),
(148, 'Dans un coffre sÃ©curisÃ© situÃ© Ã  l''extÃ©rieur de l''entreprise', 75),
(149, 'Chez une sociÃ©tÃ© fournissant ce service', 75),
(150, 'oui', 76),
(151, 'non', 76),
(152, 'oui', 77),
(153, 'non', 77),
(154, 'oui', 78),
(155, 'non', 78),
(156, 'oui', 79),
(157, 'non', 79),
(158, 'oui', 80),
(159, 'non', 80),
(162, 'oui', 81),
(163, 'non', 81),
(164, 'oui', 83),
(165, 'non', 83),
(166, 'oui', 84),
(167, 'non', 84),
(168, 'oui', 85),
(169, 'non', 85),
(170, 'oui', 86),
(171, 'non', 86),
(172, 'oui', 87),
(173, 'non', 87),
(174, 'oui', 88),
(175, 'non', 88),
(176, 'oui', 89),
(177, 'non', 89),
(178, 'oui', 90),
(179, 'non', 90),
(180, 'oui', 91),
(181, 'non', 91),
(182, 'oui', 92),
(183, 'non', 92),
(184, 'Industriel', 52),
(185, 'De service', 52),
(186, 'Commerciale', 52);

-- --------------------------------------------------------

--
-- Structure de la table `repsol`
--

CREATE TABLE IF NOT EXISTS `repsol` (
  `rsReponse` int(11) NOT NULL,
  `rsSolution` int(11) NOT NULL,
  PRIMARY KEY (`rsReponse`,`rsSolution`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `repsol`
--

INSERT INTO `repsol` (`rsReponse`, `rsSolution`) VALUES
(41, 1),
(66, 1),
(81, 5),
(82, 7),
(109, 5),
(109, 7),
(156, 5),
(156, 7);

-- --------------------------------------------------------

--
-- Structure de la table `solution`
--

CREATE TABLE IF NOT EXISTS `solution` (
  `solId` int(11) NOT NULL AUTO_INCREMENT,
  `solIntitule` varchar(255) NOT NULL,
  `solDescription` varchar(800) NOT NULL,
  PRIMARY KEY (`solId`),
  UNIQUE KEY `solIntitule` (`solIntitule`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `solution`
--

INSERT INTO `solution` (`solId`, `solIntitule`, `solDescription`) VALUES
(5, 'Passez Ã  un logiciel comptable', 'Les difficultÃ©s que vous exprimez Ã  gÃ©rer votre comptabilitÃ© sont clairement du aux limites de votre solutions maison.\r\nIl est temps de passer Ã  un rÃ©el logiciel comptable qui vous permettra un gestion fiable et complÃ¨te.'),
(7, 'IntÃ©ressez-vous aux solutions ERP', 'Si la comptabilitÃ© est un processus clÃ© de votre entreprise, il se peut que vous ne soyez pas totalement sÃ©duit par les solutions logicielles actuelles. Vous pouvez vous renseigner du cÃ´tÃ© des ERP qui proposent des solutions trÃ¨s complÃ¨tes.');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `prerequis`
--
ALTER TABLE `prerequis`
  ADD CONSTRAINT `prerequis_ibfk_1` FOREIGN KEY (`preReponse`) REFERENCES `reponse` (`repId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prerequis_ibfk_3` FOREIGN KEY (`preQuestion`) REFERENCES `question` (`questId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`questProcessus`) REFERENCES `processus` (`procId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `repcli`
--
ALTER TABLE `repcli`
  ADD CONSTRAINT `repcli_ibfk_1` FOREIGN KEY (`rpClient`) REFERENCES `client` (`cliId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `repcli_ibfk_2` FOREIGN KEY (`rpReponse`) REFERENCES `reponse` (`repId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `reponse`
--
ALTER TABLE `reponse`
  ADD CONSTRAINT `reponse_ibfk_1` FOREIGN KEY (`repQuestion`) REFERENCES `question` (`questId`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;