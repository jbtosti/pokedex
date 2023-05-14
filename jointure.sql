-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 09 mai 2023 à 18:30
-- Version du serveur : 8.0.30
-- Version de PHP : 8.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `test`
--

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE `type` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `color` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `type`
--

INSERT INTO `type` (`name`, `color`, `id`) VALUES
('Acier', 'aaaabb', 1),
('Acier', 'aaaabb', 1),
('Combat', 'bb5544', 2),
('Combat', 'bb5544', 2),
('Combat', 'bb5544', 2),
('Combat', 'bb5544', 2),
('Combat', 'bb5544', 2),
('Combat', 'bb5544', 2),
('Combat', 'bb5544', 2),
('Combat', 'bb5544', 2),
('Dragon', '7766ee', 3),
('Dragon', '7766ee', 3),
('Dragon', '7766ee', 3),
('Eau', '3399ff', 4),
('Eau', '3399ff', 4),
('Eau', '3399ff', 4),
('Eau', '3399ff', 4),
('Eau', '3399ff', 4),
('Eau', '3399ff', 4),
('Eau', '3399ff', 4),
('Eau', '3399ff', 4),
('Eau', '3399ff', 4),
('Eau', '3399ff', 4),
('Eau', '3399ff', 4),
('Eau', '3399ff', 4),
('Eau', '3399ff', 4),
('Eau', '3399ff', 4),
('Eau', '3399ff', 4),
('Eau', '3399ff', 4),
('Eau', '3399ff', 4),
('Eau', '3399ff', 4),
('Eau', '3399ff', 4),
('Eau', '3399ff', 4),
('Eau', '3399ff', 4),
('Eau', '3399ff', 4),
('Eau', '3399ff', 4),
('Eau', '3399ff', 4),
('Eau', '3399ff', 4),
('Eau', '3399ff', 4),
('Eau', '3399ff', 4),
('Eau', '3399ff', 4),
('Eau', '3399ff', 4),
('Eau', '3399ff', 4),
('Eau', '3399ff', 4),
('Eau', '3399ff', 4),
('Électrik', 'ffbb33', 5),
('Électrik', 'ffbb33', 5),
('Électrik', 'ffbb33', 5),
('Électrik', 'ffbb33', 5),
('Électrik', 'ffbb33', 5),
('Électrik', 'ffbb33', 5),
('Électrik', 'ffbb33', 5),
('Électrik', 'ffbb33', 5),
('Électrik', 'ffbb33', 5),
('Feu', 'ff4422', 6),
('Feu', 'ff4422', 6),
('Feu', 'ff4422', 6),
('Feu', 'ff4422', 6),
('Feu', 'ff4422', 6),
('Feu', 'ff4422', 6),
('Feu', 'ff4422', 6),
('Feu', 'ff4422', 6),
('Feu', 'ff4422', 6),
('Feu', 'ff4422', 6),
('Feu', 'ff4422', 6),
('Feu', 'ff4422', 6),
('Glace', '77ddff', 7),
('Glace', '77ddff', 7),
('Glace', '77ddff', 7),
('Glace', '77ddff', 7),
('Glace', '77ddff', 7),
('Insecte', 'aabb22', 8),
('Insecte', 'aabb22', 8),
('Insecte', 'aabb22', 8),
('Insecte', 'aabb22', 8),
('Insecte', 'aabb22', 8),
('Insecte', 'aabb22', 8),
('Insecte', 'aabb22', 8),
('Insecte', 'aabb22', 8),
('Insecte', 'aabb22', 8),
('Insecte', 'aabb22', 8),
('Insecte', 'aabb22', 8),
('Insecte', 'aabb22', 8),
('Normal', 'bbaabb', 9),
('Normal', 'bbaabb', 9),
('Normal', 'bbaabb', 9),
('Normal', 'bbaabb', 9),
('Normal', 'bbaabb', 9),
('Normal', 'bbaabb', 9),
('Normal', 'bbaabb', 9),
('Normal', 'bbaabb', 9),
('Normal', 'bbaabb', 9),
('Normal', 'bbaabb', 9),
('Normal', 'bbaabb', 9),
('Normal', 'bbaabb', 9),
('Normal', 'bbaabb', 9),
('Normal', 'bbaabb', 9),
('Normal', 'bbaabb', 9),
('Normal', 'bbaabb', 9),
('Normal', 'bbaabb', 9),
('Normal', 'bbaabb', 9),
('Normal', 'bbaabb', 9),
('Normal', 'bbaabb', 9),
('Normal', 'bbaabb', 9),
('Normal', 'bbaabb', 9),
('Normal', 'bbaabb', 9),
('Normal', 'bbaabb', 9),
('Plante', '77cc55', 10),
('Plante', '77cc55', 10),
('Plante', '77cc55', 10),
('Plante', '77cc55', 10),
('Plante', '77cc55', 10),
('Plante', '77cc55', 10),
('Plante', '77cc55', 10),
('Plante', '77cc55', 10),
('Plante', '77cc55', 10),
('Plante', '77cc55', 10),
('Plante', '77cc55', 10),
('Plante', '77cc55', 10),
('Plante', '77cc55', 10),
('Plante', '77cc55', 10),
('Poison', 'aa5599', 11),
('Poison', 'aa5599', 11),
('Poison', 'aa5599', 11),
('Poison', 'aa5599', 11),
('Poison', 'aa5599', 11),
('Poison', 'aa5599', 11),
('Poison', 'aa5599', 11),
('Poison', 'aa5599', 11),
('Poison', 'aa5599', 11),
('Poison', 'aa5599', 11),
('Poison', 'aa5599', 11),
('Poison', 'aa5599', 11),
('Poison', 'aa5599', 11),
('Poison', 'aa5599', 11),
('Poison', 'aa5599', 11),
('Poison', 'aa5599', 11),
('Poison', 'aa5599', 11),
('Poison', 'aa5599', 11),
('Poison', 'aa5599', 11),
('Poison', 'aa5599', 11),
('Poison', 'aa5599', 11),
('Poison', 'aa5599', 11),
('Poison', 'aa5599', 11),
('Poison', 'aa5599', 11),
('Poison', 'aa5599', 11),
('Poison', 'aa5599', 11),
('Poison', 'aa5599', 11),
('Poison', 'aa5599', 11),
('Poison', 'aa5599', 11),
('Poison', 'aa5599', 11),
('Poison', 'aa5599', 11),
('Poison', 'aa5599', 11),
('Poison', 'aa5599', 11),
('Psy', 'ff5599', 12),
('Psy', 'ff5599', 12),
('Psy', 'ff5599', 12),
('Psy', 'ff5599', 12),
('Psy', 'ff5599', 12),
('Psy', 'ff5599', 12),
('Psy', 'ff5599', 12),
('Psy', 'ff5599', 12),
('Psy', 'ff5599', 12),
('Psy', 'ff5599', 12),
('Psy', 'ff5599', 12),
('Psy', 'ff5599', 12),
('Psy', 'ff5599', 12),
('Psy', 'ff5599', 12),
('Roche', 'bbaa66', 13),
('Roche', 'bbaa66', 13),
('Roche', 'bbaa66', 13),
('Roche', 'bbaa66', 13),
('Roche', 'bbaa66', 13),
('Roche', 'bbaa66', 13),
('Roche', 'bbaa66', 13),
('Roche', 'bbaa66', 13),
('Roche', 'bbaa66', 13),
('Roche', 'bbaa66', 13),
('Roche', 'bbaa66', 13),
('Sol', 'ddbb55', 14),
('Sol', 'ddbb55', 14),
('Sol', 'ddbb55', 14),
('Sol', 'ddbb55', 14),
('Sol', 'ddbb55', 14),
('Sol', 'ddbb55', 14),
('Sol', 'ddbb55', 14),
('Sol', 'ddbb55', 14),
('Sol', 'ddbb55', 14),
('Sol', 'ddbb55', 14),
('Sol', 'ddbb55', 14),
('Sol', 'ddbb55', 14),
('Sol', 'ddbb55', 14),
('Sol', 'ddbb55', 14),
('Spectre', '6666bb', 15),
('Spectre', '6666bb', 15),
('Spectre', '6666bb', 15),
('Vol', '6699ff', 17),
('Vol', '6699ff', 17),
('Vol', '6699ff', 17),
('Vol', '6699ff', 17),
('Vol', '6699ff', 17),
('Vol', '6699ff', 17),
('Vol', '6699ff', 17),
('Vol', '6699ff', 17),
('Vol', '6699ff', 17),
('Vol', '6699ff', 17),
('Vol', '6699ff', 17),
('Vol', '6699ff', 17),
('Vol', '6699ff', 17),
('Vol', '6699ff', 17),
('Vol', '6699ff', 17),
('Vol', '6699ff', 17),
('Vol', '6699ff', 17),
('Vol', '6699ff', 17),
('Vol', '6699ff', 17);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `type`
--
ALTER TABLE `type`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
