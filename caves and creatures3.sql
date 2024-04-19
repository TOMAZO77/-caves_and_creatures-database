-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2024 at 03:10 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `:]`
--

-- --------------------------------------------------------

--
-- Table structure for table `alignment`
--

CREATE TABLE `alignment` (
  `alignment_id` int(11) NOT NULL,
  `alignment_name` varchar(20) NOT NULL,
  `alignment_description` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alignment`
--

INSERT INTO `alignment` (`alignment_id`, `alignment_name`, `alignment_description`) VALUES
(1, 'Hostile', 'Tends to act aggressively or antagonistically towards other characters or creatures within the game.');

-- --------------------------------------------------------

--
-- Table structure for table `character`
--

CREATE TABLE `character` (
  `character_id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `character_name` varchar(20) NOT NULL,
  `character_description` varchar(150) NOT NULL,
  `character_type_id` int(20) NOT NULL,
  `class_id` int(20) NOT NULL,
  `species_id` int(20) NOT NULL,
  `alignment_id` int(20) NOT NULL,
  `inventory_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `character`
--

INSERT INTO `character` (`character_id`, `player_id`, `character_name`, `character_description`, `character_type_id`, `class_id`, `species_id`, `alignment_id`, `inventory_id`) VALUES
(1, 1, 'noobcleaver', 'A player character.', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `character_quest`
--

CREATE TABLE `character_quest` (
  `quest_id` int(200) NOT NULL,
  `character_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `character_type`
--

CREATE TABLE `character_type` (
  `character_type_id` int(11) NOT NULL,
  `character_type_name` varchar(20) NOT NULL,
  `character_type_description` varchar(150) NOT NULL,
  `character_type_playability` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `character_type`
--

INSERT INTO `character_type` (`character_type_id`, `character_type_name`, `character_type_description`, `character_type_playability`) VALUES
(1, 'player', 'Player-controlled avatar which serve as the character that the player uses to engage with the game world.', 'playable');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(20) NOT NULL,
  `class_description` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`, `class_description`) VALUES
(1, 'warrior', 'Warriors equip themselves carefully for combat and engage their enemies head-on. They depend greatly on their equipment and physical skills.');

-- --------------------------------------------------------

--
-- Table structure for table `difficulty`
--

CREATE TABLE `difficulty` (
  `difficulty_id` int(11) NOT NULL,
  `difficulty_name` varchar(20) NOT NULL,
  `difficulty_description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `difficulty`
--

INSERT INTO `difficulty` (`difficulty_id`, `difficulty_name`, `difficulty_description`) VALUES
(1, 'medium', 'Medium difficulty provides a moderate amount of challenge. Because it\'s not too easy nor too challenging, players of ordinary skill can still enjoy the game.');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `inventory_id` int(11) NOT NULL,
  `inventory_capacity` varchar(100) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_count` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`inventory_id`, `inventory_capacity`, `item_id`, `item_count`) VALUES
(1, '8x8', 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_item`
--

CREATE TABLE `inventory_item` (
  `inventory_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory_item`
--

INSERT INTO `inventory_item` (`inventory_id`, `item_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(20) NOT NULL,
  `item_description` varchar(100) NOT NULL,
  `item_type_id` int(11) NOT NULL,
  `item_rarity_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_name`, `item_description`, `item_type_id`, `item_rarity_id`) VALUES
(1, 'Short sword', '1-H ATK DMG: 1 ~ 6\r\nATK Speed: 20\r\n\r\nRequirements:\r\nStrength: 21\r\nClass: All Classes\r\n\r\n', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `item_rarity`
--

CREATE TABLE `item_rarity` (
  `item_rarity_id` int(11) NOT NULL,
  `item_rarity_name` varchar(20) NOT NULL,
  `item_rarity_description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_rarity`
--

INSERT INTO `item_rarity` (`item_rarity_id`, `item_rarity_name`, `item_rarity_description`) VALUES
(1, 'Normal', 'The basic item grade, there is nothing unique about it.'),
(2, 'Excellent', 'Unique powerful equipment items that have special additional options bound to it.'),
(3, 'Ancient', 'Have greater DMG/DEF than \'excellent items\', always have an \'+Ancient Option bound to it,\' and have a unique \'set name\' which unlocks \'+Set Option\' when combined with other items of the same \'set name.\''),
(4, 'Socket', 'Socket Items have \'+Sockets\' which Seed Spheres can be attached to in order to grant additional options.'),
(5, 'Mastery', 'Mastery Items are \'excellent items\' for characters greater than level 400, and have better \'+Excellent Options.\''),
(6, 'Mastery Set', 'Mastery Set Items are \'ancient items\' for characters greater than level 400, and have better \'+Set Option.\''),
(7, 'Archangel', 'Archangel Weapons are very powerful \'excellent items\' designed for characters less than level 400. These items always have x6 excellent options bound to the item. Furthermore, they can be transformed into a \'Blessed Archangel Weapon\' which is even more powerful and allows the ability to cast a special buff called \'Archangel\'s Will!\' But you should note, these items are only obtainable via promotional events.');

-- --------------------------------------------------------

--
-- Table structure for table `item_type`
--

CREATE TABLE `item_type` (
  `item_type_id` int(11) NOT NULL,
  `item_type_name` varchar(25) NOT NULL,
  `item_type_description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_type`
--

INSERT INTO `item_type` (`item_type_id`, `item_type_name`, `item_type_description`) VALUES
(1, 'one-hand axe', 'One-handed melee attack weapon with high attack damage and low attack speed.'),
(2, 'one-hand sword', 'One-handed melee attack weapon with low attack damage and high attack speed.'),
(3, 'one-hand staff', 'One-handed staff weapon with low spell damage and high attack speed.\r\n'),
(4, 'book', 'Off-hand weapon with curse damage modifier.'),
(5, 'shield', 'Off-hand defensive item.'),
(6, 'bow', 'Ranged weapon with high attack damage and low attack speed, requires a quiver to use.'),
(7, 'crossbow', 'Ranged weapon with higher attack speed and lower damage, requires a quiver to use.'),
(8, 'quiver', 'Off-hand ranged weapon.'),
(9, 'two-hand axe', 'Two-handed melee attack weapon with high attack damage and low attack speed.'),
(10, 'two-hand sword', 'Two-handed melee attack weapon low attack damage and high attack speed.'),
(11, 'two-handed staff', 'Two-handed staff weapon with high spell damage and low attack speed.');

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `player_id` int(11) NOT NULL,
  `player_forename` varchar(20) NOT NULL,
  `player_surename` varchar(20) NOT NULL,
  `player_username` varchar(20) NOT NULL,
  `player_password` varchar(20) NOT NULL,
  `player_email` varchar(30) NOT NULL,
  `player_dob` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`player_id`, `player_forename`, `player_surename`, `player_username`, `player_password`, `player_email`, `player_dob`) VALUES
(1, 'Jody', 'Allan', 'jodyhighroller69', 'washingMachine404', 'jodygaming95@hotmail', '01.10.19');

-- --------------------------------------------------------

--
-- Table structure for table `quest`
--

CREATE TABLE `quest` (
  `quest_id` int(11) NOT NULL,
  `quest_name` varchar(20) NOT NULL,
  `quest_description` varchar(250) NOT NULL,
  `region_id` int(11) NOT NULL,
  `difficulty_id` int(11) NOT NULL,
  `character_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quest`
--

INSERT INTO `quest` (`quest_id`, `quest_name`, `quest_description`, `region_id`, `difficulty_id`, `character_id`) VALUES
(1, 'A New Beginning!', 'Press \"LMB\" to move.', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `region_id` int(11) NOT NULL,
  `region_name` varchar(20) NOT NULL,
  `region_description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`region_id`, `region_name`, `region_description`) VALUES
(1, 'Noria', 'One of the places where players start their trip is Noria. Offering necessities like item stores, quests.');

-- --------------------------------------------------------

--
-- Table structure for table `species`
--

CREATE TABLE `species` (
  `species_id` int(11) NOT NULL,
  `species_name` varchar(20) NOT NULL,
  `species_description` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `species`
--

INSERT INTO `species` (`species_id`, `species_name`, `species_description`) VALUES
(1, 'Orc', 'Orc is a fierce, brutish creature, they excel in close combat, often wielding crude weapons like swords, axes, or spears. With low intelligence but high aggression, they\'re relentless foes, driven by their thirst for blood and conquest.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alignment`
--
ALTER TABLE `alignment`
  ADD PRIMARY KEY (`alignment_id`),
  ADD KEY `alignment_id` (`alignment_id`);

--
-- Indexes for table `character`
--
ALTER TABLE `character`
  ADD PRIMARY KEY (`character_id`),
  ADD KEY `character_id` (`character_id`),
  ADD KEY `player_id` (`player_id`,`character_type_id`,`class_id`,`species_id`,`alignment_id`,`inventory_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `character_type_id` (`character_type_id`),
  ADD KEY `species_id` (`species_id`),
  ADD KEY `alignment_id` (`alignment_id`),
  ADD KEY `inventory_id` (`inventory_id`);

--
-- Indexes for table `character_quest`
--
ALTER TABLE `character_quest`
  ADD KEY `quest_id` (`quest_id`,`character_id`),
  ADD KEY `character_id` (`character_id`);

--
-- Indexes for table `character_type`
--
ALTER TABLE `character_type`
  ADD PRIMARY KEY (`character_type_id`),
  ADD KEY `character_type_id` (`character_type_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `difficulty`
--
ALTER TABLE `difficulty`
  ADD PRIMARY KEY (`difficulty_id`),
  ADD UNIQUE KEY `difficulty_id` (`difficulty_id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventory_id`),
  ADD KEY `inventory_id` (`inventory_id`,`item_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `inventory_item`
--
ALTER TABLE `inventory_item`
  ADD PRIMARY KEY (`inventory_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `inventory_id` (`inventory_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `item_id` (`item_id`,`item_type_id`,`item_rarity_id`);

--
-- Indexes for table `item_rarity`
--
ALTER TABLE `item_rarity`
  ADD PRIMARY KEY (`item_rarity_id`),
  ADD KEY `item_rarity_id` (`item_rarity_id`);

--
-- Indexes for table `item_type`
--
ALTER TABLE `item_type`
  ADD PRIMARY KEY (`item_type_id`),
  ADD KEY `item_type_id` (`item_type_id`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`player_id`),
  ADD KEY `player_id` (`player_id`);

--
-- Indexes for table `quest`
--
ALTER TABLE `quest`
  ADD PRIMARY KEY (`quest_id`),
  ADD KEY `quest_id` (`quest_id`),
  ADD KEY `region_id` (`region_id`,`difficulty_id`,`character_id`),
  ADD KEY `character_id` (`character_id`),
  ADD KEY `difficulty_id` (`difficulty_id`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`region_id`),
  ADD KEY `region_id` (`region_id`);

--
-- Indexes for table `species`
--
ALTER TABLE `species`
  ADD PRIMARY KEY (`species_id`),
  ADD KEY `species_id` (`species_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alignment`
--
ALTER TABLE `alignment`
  MODIFY `alignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `character`
--
ALTER TABLE `character`
  MODIFY `character_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `character_type`
--
ALTER TABLE `character_type`
  MODIFY `character_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `difficulty`
--
ALTER TABLE `difficulty`
  MODIFY `difficulty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `item_rarity`
--
ALTER TABLE `item_rarity`
  MODIFY `item_rarity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `item_type`
--
ALTER TABLE `item_type`
  MODIFY `item_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `player`
--
ALTER TABLE `player`
  MODIFY `player_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quest`
--
ALTER TABLE `quest`
  MODIFY `quest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `region_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `species`
--
ALTER TABLE `species`
  MODIFY `species_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
