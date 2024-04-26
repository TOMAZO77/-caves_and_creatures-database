-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2024 at 01:11 PM
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
-- Database: `caves_and_creatures`
--

-- --------------------------------------------------------

--
-- Table structure for table `alignment`
--

CREATE TABLE `alignment` (
  `alignment_id` int(11) NOT NULL,
  `alignment_name` varchar(20) NOT NULL,
  `alignment_description` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alignment`
--

INSERT INTO `alignment` (`alignment_id`, `alignment_name`, `alignment_description`) VALUES
(1, 'Hostile', 'Tends to act aggressively or antagonistically towards other characters or creatures within the game.'),
(2, 'Neutral', 'Don\'t actively seek conflict, and prioritize maintaining balance and impartiality in the game world.'),
(3, 'Kind', 'Guided by strong sense of morality and compassion, striving to make the world a better place through their actions.'),
(4, 'Evil', 'Manipulate, exploit, and destroy with little regard for the consequences.'),
(5, 'Passive', 'Embodiment of peace and harmony. Preferring negotiation over conflict.'),
(6, 'Psychopath', 'Unpredictable and unhinged,  thriving in chaos and revel in destruction.'),
(7, 'Tribal', 'Aligned with the tribal path of honour, the traditions and customs of their people above all else. They prioritize the well-being of their community.'),
(8, 'Extremist', 'Fanatical and uncompromising, driven by a singular, often radical ideology or belief system.'),
(9, 'Shy', 'They avoid the spotlight, navigating the world with caution. They excel in stealth and subtlety, using their keen intellect to overcome challenges without drawing attention.'),
(10, 'Comic', 'Bring laughter and levity to even the darkest of situations. Use humour and slapstick antics to disarm foes and win allies to their cause.');

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
(1, 1, 'yoloswagqt69', 'BOOYAH! fr fr', 1, 1, 1, 1, 1);

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
(1, 'player', 'Player-controlled avatar which serve as the character that the player uses to engage with the game world.', 'playable'),
(2, 'n_p_c', 'System-controlled non-player character.', 'non-playable');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(20) NOT NULL,
  `class_description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`, `class_description`) VALUES
(1, 'Blade Master', 'Blade Masters equip themselves carefully for combat and engage their enemies head-on. They depend greatly on their equipment and physical skills.'),
(2, 'Wizard', 'The Wizards are masters of the magical arts. They use their knowledge to deal powerful magical attacks on enemies with staff type weapons. Their impressive understanding of magic gives them a huge array of spells to use while fighting their enemies!'),
(3, 'Hunter', 'Hunters use their special abilities to deal powerful physical attacks on enemies with bow type weapons. Their unique ability to wield bow and quiver items gives them high damage with a long attacking range! '),
(4, 'Magic Knight', 'These warriors combine spell and sword, bringing forth powerfull skill. Their arsenal includes abilities of both the Blade Master and the Archmage classes.'),
(5, 'Slaughterer', 'Vampire-like warrior strikes with fierce swords and cunning, draining the life force of foes to fuel their own power. Beware the shadows, for where the Slaughterer lurks, death follows.'),
(6, 'Warlock', 'The Warlock, whose bloodline has been preserved since ancient times, possess a natural gift in manipulative wizardry and communicating with another dimension to summon monsters. Through their constant prayers and meditations, they crush their enemies with curses.'),
(7, 'Paladin', 'Holy warriors, devoted to justice and righteousness. Clad in heavy armour and wielding powerful weapons, they combine martial prowess with divine magic to smite evil and protect the innocent.'),
(8, 'Barbarian', 'Primal warriors, harnessing their inner fury to become unstoppable forces of nature on the battlefield. Eschewing heavy armour in favour of speed and agility, they rely on raw strength. '),
(9, 'Priest', 'Devout servants of the divine, wielding sacred magic to heal the wounded, protect the innocent, and vanquish evil. Drawing upon their faith and spiritual devotion, they channel divine energy to perform divine spells.'),
(10, 'Druid', 'Mystic guardians of the natural world, attuned to the primal forces of nature and the balance of life. Masters of shape-shifting and elemental magic, they commune with the spirits of the wild.');

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
  `item_name` varchar(30) NOT NULL,
  `item_description` varchar(300) NOT NULL,
  `item_type_id` int(11) NOT NULL,
  `item_rarity_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_name`, `item_description`, `item_type_id`, `item_rarity_id`) VALUES
(1, 'Short sword', '1-H ATK DMG: 1 ~ 6\r\nATK Speed: 20\r\n\r\nRequirements:\r\nStrength: 21\r\nClass: All Classes\r\n\r\n', 3, 1),
(2, 'Miracle Staff', '1-H WIZ DMG Raise: +44%\r\nATK Speed: +25\r\n\r\nRequirements:\r\nStrength: 146\r\nAgility: 0\r\nCan be equipped by Wizard, Magic Knight', 3, 2),
(3, 'Ancient Shield of Nzoth', 'Off-H DEF: +15\r\nDEF Rate: +78\r\n\r\nRequirements:\r\nStrength: 110\r\nClass: Wizard, Magic Knight, Paladin, Barbarian.', 5, 3),
(4, 'Excellent Book of Samut', 'Off-H Curse DMG Raise: +23%\r\nATK Speed: +25\r\n+2 sockets.\r\n\r\nRequirements:\r\nAgility: 51\r\nEnergy: 230\r\n\r\nClass: Warlock', 4, 2),
(5, 'Mastery Blue-Eye Stick', '1-H WIZ DMG Raise: +84%\r\nATK Speed: 45\r\n\r\nRequirements:\r\nStrength: 270\r\nAgility: 130\r\nClass: Warlock', 12, 5),
(9, 'Scythe of Balrog', '2-H ATK DMG: 210 ~ 283\r\nATK Speed: 15\r\n\r\nRequirements:\r\nStrength: 570\r\nAgility: 120\r\nClass: Blade Master, Magic Knight, Barbarian, Warrior.\r\n\r\nExpires in: 29 days, 8 hours, 59 seconds.', 9, 8),
(10, 'Asura', '2-H ATK DMG: 300 ~ 423\r\nATK Speed: 20\r\n+3 Socket slots.\r\n\r\nRequirements:\r\nStrength: 700\r\nAgility: 320\r\nEnergy:128\r\nClass: Magic Knight', 10, 10),
(11, 'Reigning Cloak', 'DMG: +39%\r\nAbsorb DMG: +39%\r\n+Increased Movement Speed\r\n\r\nRequirements:\r\nCharacter Level 400\r\nClass: Hunter, Druid', 13, 1),
(126, 'Wings of Satan', 'DMG: +12%\r\nAbsorb DMG: +12%\r\n+Increased Movement Speed\r\n\r\nRequirements:\r\nCharacter Level 150\r\nClass: Blade Master, Warrior, Slaughterer, Barbarian', 13, 1),
(321, 'Wings of Heaven', 'DMG: +32%\r\nAbsorb DMG: +25%\r\n+Increased Movement Speed\r\n\r\nRequirements:\r\nCharacter Level 215\r\nClass: Wizard, Magic Knight, Paladin, Priest.', 13, 1),
(678, 'Wings of Carnage', 'DMG: +55%\r\nAbsorb DMG: +43%\r\n+Increased Movement Speed\r\n\r\nRequirements:\r\nCharacter Level 800\r\nClass: Slaughterer', 13, 1);

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
(7, 'Archangel', 'Archangel Weapons are very powerful \'excellent items\' designed for characters less than level 400. These items always have x6 excellent options bound to the item. Furthermore, they can be transformed into a \'Blessed Archangel Weapon\' which is even more powerful and allows the ability to cast a special buff called \'Archangel\'s Will!\' But you should note, these items are only obtainable via promotional events.'),
(8, 'Temporary Item', 'Temporary items have an expiration date, they usually usually expire after 1, 3, 7, or 30 days after obtaining.'),
(9, 'Quest item', 'A type of item used in missions and quests to fulfil the objective.'),
(10, 'Bound item', 'Item obtained from promotional codes and offers, cannot be traded or upgraded.');

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
(11, 'two-handed staff', 'Two-handed staff weapon with high spell damage and low attack speed.'),
(12, 'stick', 'One handed weapon equipped only by Warlocks, with wizardy damage modifier.'),
(13, 'Wings', 'Wings are expensive piece of equipment, which boost DMG, DMG, Absorb Damage, and provide a nice increase in Movement Speed while wearing them.');

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
  `player_email` varchar(40) NOT NULL,
  `player_dob` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`player_id`, `player_forename`, `player_surename`, `player_username`, `player_password`, `player_email`, `player_dob`) VALUES
(1, 'Jody', 'Allan', 'jodyhighroller69', 'washingMachine404', 'jodygaming95@hotmail.com', '01.10.1995'),
(2, 'Kamil', 'Jablonski', 'kam1995', 'SafariGun95', 'alternator1995@gmail.com', '05.11.1995'),
(3, 'Fia', 'Reisek', 'fairyelf88', '013r4j8!', 'fiagaming@yahoo.com', '09.02.2001'),
(4, 'Devon', 'Larratt', 'supermanSouljaboy', 'canOpener!', 'fromthenorth91@outlook.com', '12.24.1992'),
(5, 'Ivo', 'Kostov', 'Evovar', 'q1w2e3r4', 'crazydragon@abv.bg', '11.05.2002'),
(6, 'John', 'Wick', 'Johnny666', 'comingforYou666', 'wickedJohnny@hotmail.com', '04.12.1993'),
(7, 'Jackie', 'Chan', 'KungFuPanda', 'ChingChong123', 'nadsndaouidaoi@outlook.com', '29.11.2003'),
(8, 'Jean-Claude', 'Van-Damme', 'Hiyaaaaa', 'helicopterKick101', 'bloodsport69@yahoo.com', '03.08.1994'),
(9, 'Rusty', 'Kuntz', 'RK55', 'rTk123456', 'baseballking@gmail.com', '05.12.1995'),
(10, 'Mo', 'Lester', 'molly99', 'tryingTofindher99', 'lesterswagg@hotmail.com', '02.06.1999');

-- --------------------------------------------------------

--
-- Table structure for table `quest`
--

CREATE TABLE `quest` (
  `quest_id` int(11) NOT NULL,
  `quest_name` varchar(30) NOT NULL,
  `quest_description` varchar(250) NOT NULL,
  `region_id` int(11) NOT NULL,
  `difficulty_id` int(11) NOT NULL,
  `character_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quest`
--

INSERT INTO `quest` (`quest_id`, `quest_name`, `quest_description`, `region_id`, `difficulty_id`, `character_id`) VALUES
(1, 'A New Beginning!', 'Press \"LMB\" to move 0/1\r\nTalk to [Shadow Elf] 0/1\r\n\r\nReward: 100exp, 100 gold', 1, 1, 1),
(2, 'Spider Hunt!', 'Kill: Spider 0/10\r\n\r\nReward: 500exp, 120 gold', 2, 2, 2),
(3, 'Expanding Bussinesses.', 'Kill: Blood Assassin 0/20\r\nKill: Cruel Blood Assassin 0/10\r\nObtain: Absolute artifact 0/1\r\n\r\nReward: 1,900exp, 5,000 gold', 3, 3, 3),
(4, 'Shadow of Evil!', 'Kill: Necron 0/10\r\nKill: Illusion of Kundun 0/10\r\n\r\nReward: 24,000exp, 10,0000 gold', 4, 4, 4),
(5, 'Eliminate Boss Monsters.', 'Kill: Undine 0/10\r\nKill: Gnome 0/10\r\nKill: Hellraiser 0/10\r\n\r\nReward: 1,000,000exp, 1,000,000 gold, Brilliant Box (x1)\r\n', 5, 5, 5),
(6, 'Surrender to Madness!', 'Kill: Incubus 0/1\r\nKill: Hellhound 0/10\r\nKill: Imp 0/25\r\n\r\nReward: 10,000,000exp, 10,000,000 gold, Apocalypse Box (x1)', 6, 6, 6),
(7, 'The Legend of Asgard.', 'Kill: Ice Giants 0/7\r\nFind: [Messenger Of the Archangel] 0/1\r\n\r\nReward: 55,000,000exp, 100,000,000 gold, Fenrir Mount (x1)', 7, 7, 7),
(8, 'Into the abyss!', 'Kill: Cyclopes 0/10\r\nObtain: Head of the Titan 0/1\r\n\r\nReward: 1,000,000,000exp, 150,000,000 gold, \'random\' Ancient Manticore item (x1)', 8, 8, 8),
(9, 'Failed paradise.', 'Kill: Dryads 0/12\r\nKill: Nymph 0/5\r\nObtain: Spirits of nature 0/100\r\n\r\nReward: 10,000,000,000exp, 300,000,000 gold, \'random\' Ancient Frosty Blue-Eye item (x1)', 9, 9, 9),
(10, 'Devil Square!', 'Find: [Priest James] 0/1\r\nEscort: [Priest James] 0/1\r\nKill: Lord Kundun 0/1\r\nKill: Beam Knight 0/100\r\nObtain: Absolute Divine Weapon of Archangel 0/1\r\n\r\nReward: 100,000,000,000exp, 100,000,000,000 gold, \'random\' Archangel Weapon Item (x1)\r\n\r\n', 10, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `region_id` int(11) NOT NULL,
  `region_name` varchar(20) NOT NULL,
  `region_description` varchar(450) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`region_id`, `region_name`, `region_description`) VALUES
(1, 'Moria', 'Moria is the native city of the Fairy kingdom. It is a huge woods located in the eastern-most part of the Zen Continent. Originally, Moria was once populated only by the Fairies, but after Satan\'s invasion on Zen, exchange between humans grew more frequent.'),
(2, 'Atlantis', 'Atlantis was an ancient city built by the Ancient People, whom had developed very advanced systems inside of Ancient Relics. The Ancient People thrived off of natural resources, and therefore created this city for its abundant natural resources. '),
(3, 'Shadow Lands', 'The Shadow Lands is formidable, cold place located in northern part of Zen. It was once an underground prison, but is now a den for Satan\'s Army! The fierce Gorgon awaits anyone who dares to challenge him.'),
(4, 'Tower of Death', 'The Lost Tower is a huge tower which located in the Northern part MU! The Tower of Death was once a place of great achievement. It is where a great sorcerer was successful at opening a portal to Icarus with powerful magic. Icarus is an ancient sky world which was thought to be only a mythical place.'),
(5, 'Icarus', 'Icarus is an ancient sky world which was thought to be only a mythical place. You\'ll for sure need a pair or Wings, or a Cape, in order to access this place. Over-looking the Shadow Lands snow fields, this place holds host to the fierce Phoenix of Darkness.'),
(6, 'Underworld', 'Hell, a dim realm where lost souls roam amid old ruins and dark caves, with whispers hanging in the air, telling stories of ancient sorrow.'),
(7, 'Asgard', 'The celestial abode of gods and goddesses, gleaming with golden halls and tall towers, overlooking vast fields and snowy peaks.'),
(8, 'Tartaros', 'A blazing land of eternal suffering, where the damned endure fiery pits and barren plains, haunted by shadows of remorse.'),
(9, 'Arcadia', 'A serene and idyllic place, where nature flourishes in its purest form. Rolling meadows, tranquil rivers, and lush forests paint the landscape, offering a haven of peace and harmony. A place of respite, where weary travellers find solace amidst the beauty of untouched wilderness.'),
(10, 'Midgard', 'An earthly realm, bustling with life in forests, mountains, and seas, where mortals thrive amidst the ever-changing rhythms of nature.');

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
(1, 'Orc', 'Orc is a fierce, brutish creature, they excel in close combat, often wielding crude weapons like swords, axes, or spears. With low intelligence but high aggression, they\'re relentless foes, driven by their thirst for blood and conquest.'),
(2, 'Human', 'Humans are versatile and adaptable race, known for their ambition, resilience, and diversity. They are exceptionally smart and diverese, and can master everything from swordsmanship to magic. '),
(3, 'Elf', 'Elves are a graceful and ancient race, renowned for their elegance, longevity, and connection to nature. They possess keen senses, agility, and a deep attunement to magic. '),
(4, 'Dwarf', 'The Dwarves are strong and resistant to fire.  They were hardier than any other race, secretive, stubborn, and steadfast in enmity or loyalty. Highly skilled in the making of weapons and armour, their main weapon is the battle axe!'),
(5, 'Dragonborn', 'The Dragonborn are an ancient race of humanoid dragonkin. They have the ability to wield the magic of all five primary elements as ritualists, and, like true dragons, shapeshift between a draconic form and a humanoid form.'),
(6, 'Undead', 'Abominations, calling themselves Forsaken, they struggle to thrive in a world that has come to despise their existence.'),
(7, 'Troll', 'Mythical ugly creature that dwell in isolated rocks, mountains, or caves. '),
(8, 'Werewolf', 'Lupine beasts known as werewolves, ready to unleash the beast within at a moment’s notice'),
(9, 'Demon', 'Dark, malicious species that revel in pain, chaos, and death. They engage in torture and destruction because it is fun or to avoid being tortured themselves.'),
(10, 'Seraph', 'The burning ones, celestial heavenly beings serving as guardians.');

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
  MODIFY `alignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `character`
--
ALTER TABLE `character`
  MODIFY `character_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `character_type`
--
ALTER TABLE `character_type`
  MODIFY `character_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=679;

--
-- AUTO_INCREMENT for table `item_rarity`
--
ALTER TABLE `item_rarity`
  MODIFY `item_rarity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `item_type`
--
ALTER TABLE `item_type`
  MODIFY `item_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `player`
--
ALTER TABLE `player`
  MODIFY `player_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `quest`
--
ALTER TABLE `quest`
  MODIFY `quest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `region_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `species`
--
ALTER TABLE `species`
  MODIFY `species_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
