-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 05 sep. 2021 à 02:55
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `badel`
--

-- --------------------------------------------------------

--
-- Structure de la table `jdet`
--

DROP TABLE IF EXISTS `jdet`;
CREATE TABLE IF NOT EXISTS `jdet` (
  `iD` int(11) NOT NULL AUTO_INCREMENT,
  `prenom` varchar(1000) NOT NULL,
  `nom` varchar(1000) NOT NULL,
  `sexe` varchar(100) NOT NULL,
  `tranche_age` varchar(1000) NOT NULL,
  `adresse` varchar(1000) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `tel1` varchar(1000) NOT NULL,
  `tel2` varchar(1000) NOT NULL,
  `dernier_diplome` varchar(1000) NOT NULL,
  `domaine1_etude` varchar(1000) NOT NULL,
  `diplome_encours` varchar(1000) NOT NULL,
  `domaine_etude_encours` varchar(1000) NOT NULL,
  `domaine2_etude` varchar(1000) NOT NULL,
  `region` varchar(1000) NOT NULL,
  `departement` varchar(1000) NOT NULL,
  `commune` varchar(1000) NOT NULL,
  PRIMARY KEY (`iD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `loginadmin`
--

DROP TABLE IF EXISTS `loginadmin`;
CREATE TABLE IF NOT EXISTS `loginadmin` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `prenom` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `nom` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `Sexe` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `pseudo` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `Role` int(3) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `loginadmin`
--

INSERT INTO `loginadmin` (`Id`, `prenom`, `nom`, `Sexe`, `pseudo`, `password`, `Role`) VALUES
(1, 'Bara', 'WADE', 'Mr', 'bara', 'ok', 1),
(2, 'Médoune Siby Georges', 'Baldé', 'M', 'MSGB', '123456', 1),
(3, 'Bara', 'WADE', 'M.', 'BARA', 'ok1', 0);

-- --------------------------------------------------------

--
-- Structure de la table `p1demandeurcollectif`
--

DROP TABLE IF EXISTS `p1demandeurcollectif`;
CREATE TABLE IF NOT EXISTS `p1demandeurcollectif` (
  `idDC` int(20) NOT NULL AUTO_INCREMENT,
  `formulaire_id` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `prenom_representant` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `nom_representant` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `sexe_representant` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `adresse_representant` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `contact1_representant` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `contact2_representant` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `titre` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `nat_juridique` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `denomination` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `reconnaisance_juridique` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `lieu_Collectif` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `pays_exterieur` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `region_exterieure` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `departement_exterieur` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `commune_exterieure` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Qtr_Village_exterieur` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `region_interieure` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `departement_interieur` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `commune_interieure` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Qtr_Village_interieur` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_creation` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `total_membre` int(255) NOT NULL,
  `total_homme` int(255) NOT NULL,
  `total_femme` int(255) NOT NULL,
  `inscritPar` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `supp` int(225) NOT NULL DEFAULT 0,
  PRIMARY KEY (`idDC`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `p1demandeurcollectif`
--

INSERT INTO `p1demandeurcollectif` (`idDC`, `formulaire_id`, `prenom_representant`, `nom_representant`, `sexe_representant`, `adresse_representant`, `contact1_representant`, `contact2_representant`, `titre`, `nat_juridique`, `denomination`, `reconnaisance_juridique`, `lieu_Collectif`, `pays_exterieur`, `region_exterieure`, `departement_exterieur`, `commune_exterieure`, `Qtr_Village_exterieur`, `region_interieure`, `departement_interieur`, `commune_interieure`, `Qtr_Village_interieur`, `date_creation`, `total_membre`, `total_homme`, `total_femme`, `inscritPar`, `supp`) VALUES
(4, 'Form1624899719378', 'BArasa', 'jkj', 'masculin', 'hvkhv', 'jhvvlujh', 'uyggkug', 'responsable_delegue', 'organisation_professionnelle', 'ASOSS 2.0', 'oui', 'OUI', 'kjkj', 'uyguy', 'trdt', 'hgjhg', 'njkj', 'Thies', 'Thies', 'Keur Moussa', 'BLHBL', '2021-06-11', 200, 199, 1, '1', 0),
(5, 'Form1624900730323', 'Prénom', 'NOM', 'masculin', 'ADRESS', 'TEL1', 'TEL2', 'responsable_delegue', 'organisation_professionnelle', 'ASOSS 2.0', 'oui', 'NON', 'fturdur', 'trsyrssuy', 'resressur', 'ycyjtc', 'rttrcvyict', NULL, NULL, NULL, NULL, '2021-02-01', 20, 19, 1, '1', 0),
(6, 'Form1625168688036', 'TESTON1', 'TESTON1', 'masculin', 'TESTON1', 'TESTON1', 'TESTON1', 'responsable_delegue', 'gpf', 'TESTON1', 'non', 'OUI', NULL, NULL, NULL, NULL, NULL, 'Dakar', 'Guédiawaye', 'Golf-Sud', 'TESTON1', '2019-06-30', 10000, 9999, 1, '1', 0),
(7, 'Form1625171110797', 'TESTON1', 'TESTON1', 'masculin', 'TESTON1', 'TESTON1', 'TESTON1', 'responsable_delegue', 'gpf', 'TESTON1', 'non', 'OUI', NULL, NULL, NULL, NULL, NULL, 'Dakar', 'Guédiawaye', 'Golf-Sud', 'TESTON1', '2019-06-30', 10000, 9999, 1, '1', 0),
(8, 'Form1625171829821', 'we test', 'we test', 'feminin', 'VBXIUQ', 'we test', 'we test', 'responsable_delegue', 'association', 'we test', 'oui', 'NON', 'SDV', 'SDV', 'SDSG', 'BN?G?HV', 'VSR', NULL, NULL, NULL, NULL, '2021-07-06', 5, 1, 4, '3', 0),
(9, 'Form1625172132599', 'we test2', 'we test2', 'masculin', 'we test2', 'we test2', 'we test2', 'membre', 'association', 'we test2', 'oui', 'OUI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-30', 200, 19, 4, '1', 0),
(10, 'Form1625173134387', 'ufosiuh', 'bvisi', 'masculin', 'cjblibc', 'ilvjsj', 'ubiubi', 'responsable_morale', 'association', 'ASOSS 2.6', 'non', 'NON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-06-30', 200, 199, 1, '33', 0),
(11, 'Form1625173317303', 'hvhibpi', 'upidvubu', 'masculin', 'vjbsliqub', 'ubvizue', 'uliuvzu', 'responsable_delegue', 'organisation_professionnelle', 'TESTON1', 'non', 'NON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-30', 200, 199, 1, '1', 0),
(12, 'Form1625261222394', 'iuspeiu', 'iuhviiuhh', 'feminin', 'jb isuiuezemiu', 'iuviuezhhiu', 'iuhiubisus', 'responsable_delegue', 'association', 'ASOSS 2.6', 'oui', 'OUI', NULL, NULL, NULL, NULL, NULL, 'Thies', 'Mbour', 'Joal Fadiouth', 'ammdass', '2012-05-31', 89, 0, 89, '1', 0),
(13, 'Form1625264385144', 'cqmoinmoi', 'jmonmoin', 'masculin', 'oljnlihbluhv', 'uiuyvuyv', 'uyyuyv', 'responsable_morale', 'gpf', 'ASOSS 2.6', 'non', 'OUI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-27', 200, 199, 4, '1', 0),
(14, 'Form1625264587507', 'Prénom', 'NOM', 'feminin', 'ADRESS', 'TEL1', 'TEL2', 'responsable_delegue', 'organisation_professionnelle', 'ASOSS 2.6', 'non', 'OUI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-01', 200, 199, 1, '1', 0),
(15, 'Form1625361002756', 'kjhvdshbzuel', 'kjhvdshbzuel', 'feminin', 'kjhvdshbzuel', 'vvkjhvdshbzuel', 'kjhvdshbzuel', 'responsable_morale', 'gpf', 'kjhvdshbzuel', 'oui', 'OUI', 'we test2', 'SDV', 'StrinG', 'StrinG', 'StrinG', 'Louga', 'Louga', 'Ndiagne', 'kjhvdshbzuel', '2011-06-03', 12, 1, 11, '1', 0);

-- --------------------------------------------------------

--
-- Structure de la table `p1demandeurindividuel`
--

DROP TABLE IF EXISTS `p1demandeurindividuel`;
CREATE TABLE IF NOT EXISTS `p1demandeurindividuel` (
  `idDI` int(20) NOT NULL AUTO_INCREMENT,
  `inscritPar` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `formulaire_id` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prenom` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `nom` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `tel1` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `tel2` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `commune_rattach` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `quartier_rattach` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `commune_actuelle` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `quartier_actuel` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sexe` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tranche_age` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `etude` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `niveau_etude` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `formation_prof` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sejour` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `pays_sejourne` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `motif_sejour` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `experience_prof` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `domaine_exp_prof` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `duree_exp_prof` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `statut_exp_prof` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `region_exp_prof` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `departement_exp_prof` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `commune_exp_prof` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `quartier_exp_prof` longtext CHARACTER SET utf8 NOT NULL,
  `autre_region_exp_prof` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hors_senegal` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `situation_prof` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `soutien_immediat` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `titre_accompagnement` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `supp` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`idDI`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `p1demandeurindividuel`
--

INSERT INTO `p1demandeurindividuel` (`idDI`, `inscritPar`, `formulaire_id`, `prenom`, `nom`, `tel1`, `tel2`, `commune_rattach`, `quartier_rattach`, `commune_actuelle`, `quartier_actuel`, `sexe`, `tranche_age`, `etude`, `niveau_etude`, `formation_prof`, `sejour`, `pays_sejourne`, `motif_sejour`, `experience_prof`, `domaine_exp_prof`, `duree_exp_prof`, `statut_exp_prof`, `region_exp_prof`, `departement_exp_prof`, `commune_exp_prof`, `quartier_exp_prof`, `autre_region_exp_prof`, `hors_senegal`, `situation_prof`, `soutien_immediat`, `titre_accompagnement`, `supp`) VALUES
(6, '1', 'Form1624891739540', 'Prenom', 'NOM', 'TEL11', 'TEL22', 'CR', 'QR', 'CA', 'QA', 'masculin', '+55 ans', 'Ecole_Arabe', 'Arabe Approfondie Spécialisée', 'OUI', 'OUI', 'AFAGAN', 'VISITE', 'OUI', 'Distribution_Commerce', '+5ans', 'Salarie', 'Dakar', 'Pikine', 'Mbao', 'Petit Mbao', 'KOLDA', 'PAURITANIE', 'Elève - Etudiant', 'PERSO-MORAL', 'Personnel', 0),
(7, '1', 'Form1626210001882', 'PASK6TEST', 'PASK6TEST', 'PASK6TEST', 'PASK6TEST', 'PASK6TEST', 'PASK6TEST', 'PASK6TEST', 'PASK6TEST', 'masculin', '36-45 ans', 'Ecole_Arabe', 'Arabe Approfondie Spécialisée', 'OUI', 'OUI', 'CANADA', 'VISITE', 'OUI', 'Production', '3mois-1an', 'Apprenti', 'Dakar', 'Dakar', 'Gorée', 'Petit Mbao', 'KOLDA', 'GUINNEE', 'En Chomage', 'FINANCIER', 'Collectif', 0),
(8, '3', 'Form1630807896659', 'INSCRI1', 'INSCRI1', 'INSCRI1', 'INSCRI1', 'INSCRI1', 'INSCRI1', 'INSCRI1', 'INSCRI1', 'masculin', '26-35 ans', 'Ecole_Arabe', 'Arabe Approfondie Spécialisée', 'NON', 'OUI', 'INSCRI1', 'INSCRI1', 'OUI', 'Prestations_Intellectuelles', '3mois-1an', 'Stagiaire', 'Matam', 'Matam', 'Dabia', 'hbjhb', 'IYY', 'INSCRI1', 'Employé/Salarié', 'INSCRI1', 'Collectif', 0);

-- --------------------------------------------------------

--
-- Structure de la table `p2demandeurcollectif`
--

DROP TABLE IF EXISTS `p2demandeurcollectif`;
CREATE TABLE IF NOT EXISTS `p2demandeurcollectif` (
  `idDC` int(20) NOT NULL AUTO_INCREMENT,
  `formulaire_id` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activ1_equip` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `activ_equip_region` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `activ_equip_depart` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `activ_equip_commune` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `activ_equip_qtr` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `a_activ_equip` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `a2_activ_equip` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `a2_activ_equip_lieu` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `activ_economique` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `activ_eco_second` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activ_equip_etrang` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `a1_equip_etrang` varchar(500) CHARACTER SET utf32 DEFAULT NULL,
  `a1_equip_etrang_lieu` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `mont_cap_social` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nbre_empl_perman` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nbre_empl_tempor` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mont_eparg_mob` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mont_endettement` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mont_sub_recu` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fonctionnalite` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `prise_decision` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `charte_relationnelle` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `plan_developpement` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `manuel_procedure` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `part_princ_technique` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `part_princ_financier` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `app_reseau` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `nature_reseau` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `localite_reseau` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `departement_reseau` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nat_intern_reseau` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `supp` int(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`idDC`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `p2demandeurcollectif`
--

INSERT INTO `p2demandeurcollectif` (`idDC`, `formulaire_id`, `activ1_equip`, `activ_equip_region`, `activ_equip_depart`, `activ_equip_commune`, `activ_equip_qtr`, `a_activ_equip`, `a2_activ_equip`, `a2_activ_equip_lieu`, `activ_economique`, `activ_eco_second`, `activ_equip_etrang`, `a1_equip_etrang`, `a1_equip_etrang_lieu`, `mont_cap_social`, `nbre_empl_perman`, `nbre_empl_tempor`, `mont_eparg_mob`, `mont_endettement`, `mont_sub_recu`, `fonctionnalite`, `prise_decision`, `charte_relationnelle`, `plan_developpement`, `manuel_procedure`, `part_princ_technique`, `part_princ_financier`, `app_reseau`, `nature_reseau`, `localite_reseau`, `departement_reseau`, `nat_intern_reseau`, `supp`) VALUES
(3, 'Form1624899719378', 'EDIT', 'EDIT', 'EDIT', 'EDIT', 'EDIT', 'EDIT', 'EDIT', 'EDIT', 'EDIT', 'EDIT', 'EDIT', 'EDIT', 'EDIT', 'EDIT', 'EDIT', 'EDIT', 'EDIT', 'EDIT', 'EDIT', 'EDIT', 'EDIT', 'EDIT', 'EDIT', 'EDIT', 'EDIT', 'EDIT', 'EDIT', 'EDIT', 'EDIT', 'EDIT', 'EDIT', 0);

-- --------------------------------------------------------

--
-- Structure de la table `p2demandeurindividuel`
--

DROP TABLE IF EXISTS `p2demandeurindividuel`;
CREATE TABLE IF NOT EXISTS `p2demandeurindividuel` (
  `idDI` int(20) NOT NULL AUTO_INCREMENT,
  `formulaire_id` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `categories` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sous_categories` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parcours` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marqueurs` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idDI`),
  KEY `idDI` (`idDI`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `p2demandeurindividuel`
--

INSERT INTO `p2demandeurindividuel` (`idDI`, `formulaire_id`, `categories`, `sous_categories`, `parcours`, `marqueurs`) VALUES
(27, 'Form1624891739540', 'Insertion_emploi', 'Recherche_de_Qualification_Professionnelle', 'parcours4', 'Accompagnement_le_recherche_d\'emploi/stage'),
(28, 'Form9876858745', 'Insertion_emploi', 'Qualifié_à_la_recherche_d\'un_emploi', 'accomp_distant_et_parcours1_2_3_4', 'Définition_et_accompagnement_du_projet_personnel'),
(29, 'Form1626210001882', 'Insertion_ou_Reconversion_par_autoemploi', 'Déflate_Licence', 'accomp_distant_et_parcours1_2_3_4', 'Accompagnement_Individualisé');

-- --------------------------------------------------------

--
-- Structure de la table `p3demandeurindividuel`
--

DROP TABLE IF EXISTS `p3demandeurindividuel`;
CREATE TABLE IF NOT EXISTS `p3demandeurindividuel` (
  `idDI` int(20) NOT NULL AUTO_INCREMENT,
  `formulaire_id` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regi_commerce` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numero_regi_comm` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ninea` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numero_ninea` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reference_prof` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numero_reference_prof` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `compte_bancaire_sfd` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nom_banque_sfd` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numero_compte_banque_sfd` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `soutien_partenaire` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ville_partenaire` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pays_partenaire` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idDI`),
  KEY `idDI` (`idDI`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `p3demandeurindividuel`
--

INSERT INTO `p3demandeurindividuel` (`idDI`, `formulaire_id`, `regi_commerce`, `numero_regi_comm`, `ninea`, `numero_ninea`, `reference_prof`, `numero_reference_prof`, `compte_bancaire_sfd`, `nom_banque_sfd`, `numero_compte_banque_sfd`, `soutien_partenaire`, `ville_partenaire`, `pays_partenaire`) VALUES
(4, 'Form1624891739540', 'OUI', '983598735HSFHC8Y8', 'OUI', '89275832UHDUY', 'carte_artisanat', '48985U9UHR237', 'oui_banque', 'CBAO', '985479287H8DUHZ', 'OUI', 'mUNICH', 'allemagne'),
(5, 'Form9876858745', 'OUI', 'JHVLUHL', 'NON', NULL, 'NON', NULL, 'NON', NULL, NULL, 'NON', NULL, NULL),
(6, 'Form987685874565', 'OUI', 'JHYUYFU', 'OUI', 'YUYGUY', 'carte_artisanat', 'JKILUGLYU', 'oui_banque', 'UYFKYF', '90890IJIB', 'OUI', 'JHLUH', 'IYUGK87'),
(7, 'Form587456597', 'OUI', 'EDIT', 'OUI', 'EDIT', 'carte_artisanat', 'EDIT', 'oui_banque', 'EDIT', 'EDIT', 'OUI', 'EDIT', 'EDIT'),
(8, 'Form1626210001882', 'OUI', 'PASK6TEST', 'OUI', 'PASK6TEST', 'carte_artisanat', 'PASK6TEST', 'oui_banque', 'PASK6TEST', 'PASK6TEST', 'OUI', 'PASK6TEST', 'PASK6TEST');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
