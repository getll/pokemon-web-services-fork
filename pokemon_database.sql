-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2022 at 04:10 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pokemon_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `abilities`
--

CREATE TABLE `abilities` (
  `ability_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `abilities`
--

INSERT INTO `abilities` (`ability_id`, `name`, `description`) VALUES
(1, 'Adaptability', 'Powers up moves of the same type.'),
(2, 'Aerilate', 'Turns Normal-type moves into Flying-type moves.'),
(3, 'Aftermath', 'Damages the attacker landing the finishing hit.'),
(4, 'Air Lock', 'Eliminates the effects of weather.'),
(5, 'Analytic', 'Boosts move power when the Pokémon moves last.'),
(6, 'Anger Point', 'Maxes Attack after taking a critical hit.'),
(7, 'Anticipation', 'Senses a foe\'s dangerous moves.'),
(8, 'Arena Trap', '	Prevents the foe from fleeing.'),
(9, 'Aroma Veil', 'Protects allies from attacks that limit their move choices.'),
(10, 'As One', 'Combines Unnerve and Chilling Neigh/Grim Neigh'),
(11, 'Aura Break', 'Reduces power of Dark- and Fairy-type moves.'),
(12, 'Bad Dreams', 'Reduces a sleeping foe\'s HP.'),
(13, 'Ball Fetch', '	Retrieves a Poké Ball from a failed throw.'),
(14, 'Battery', 'Raises power of teammates\' Special moves.'),
(15, 'Battle Armor', 'The Pokémon is protected against critical hits.'),
(16, 'Battle Bond', 'Transform into Ash-Greninja after causing opponent to faint.'),
(17, 'Beast Boost', 'The Pokémon boosts its most proficient stat each time it knocks out a Pokémon.'),
(18, 'Berserk', 'Raises Special Attack when HP drops below half.'),
(19, 'Big Pecks', 'Protects the Pokémon from Defense-lowering attacks.'),
(20, 'Blaze', 'Powers up Fire-type moves in a pinch.'),
(21, 'Bulletproof	', 'Protects the Pokémon from ball and bomb moves.'),
(22, 'Cheek Pouch', 'Restores additional HP when a Berry is consumed.'),
(23, 'Chilling Neigh', 'Boosts Attack after knocking out a Pokémon.'),
(24, 'Chlorophyll	', 'Boosts the Pokémon\'s Speed in sunshine.'),
(25, 'Clear Body', 'Prevents other Pokémon from lowering its stats.'),
(26, 'Cloud Nine', 'Eliminates the effects of weather.'),
(27, 'Color Change', 'Changes the Pokémon\'s type to the foe\'s move.'),
(28, 'Comatose', 'The Pokémon is always asleep but can still attack.'),
(29, 'Competitive', 'Sharply raises Special Attack when the Pokémon\'s stats are lowered.'),
(30, 'Compound Eyes', 'The Pokémon\'s accuracy is boosted.'),
(31, 'Contrary', 'Makes stat changes have an opposite effect.'),
(32, 'Corrosion', 'The Pokémon can poison Steel and Poison types.'),
(33, 'Cotton Down', '	Lowers foe\'s Speed when hit.'),
(34, 'Curious Medicine', 'Resets all stat changes upon entering battlefield.'),
(35, 'Cursed Body', 'May disable a move used on the Pokémon.'),
(36, 'Cute Charm', 'Contact with the Pokémon may cause infatuation.'),
(37, 'Damp', 'Prevents the use of self-destructing moves.'),
(38, 'Dancer', '	Copies the foe\'s Dance moves.'),
(39, 'Dark Aura', 'Raises power of Dark type moves for all Pokémon in battle.'),
(40, 'Dauntless Shield', 'Boosts Defense in battle.'),
(41, 'Dazzling', 'Protects the Pokémon from high-priority moves.'),
(42, 'Defeatist', 'Lowers stats when HP drops below half.'),
(43, 'Defiant', 'Sharply raises Attack when the Pokémon\'s stats are lowered.'),
(44, 'Delta Stream', 'Creates strong winds when the ability activates.'),
(45, 'Desolate Land', 'Turns the sunlight extremely harsh when the ability activates.'),
(46, 'Disguise', 'Avoids damage for one turn.'),
(47, 'Download', 'Adjusts power according to a foe\'s defenses.'),
(48, 'Dragon\'s Maw', 'Signature ability of Regidrago. Powers up Dragon-type moves.'),
(49, 'Drizzle', 'The Pokémon makes it rain when it enters a battle.'),
(50, 'Drought', 'Turns the sunlight harsh when the Pokémon enters a battle.'),
(51, 'Dry Skin', 'Reduces HP if it is hot. Water restores HP.'),
(52, 'Early Bird', 'The Pokémon awakens quickly from sleep.'),
(53, 'Effect Spore', 'Contact may poison or cause paralysis or sleep.'),
(54, 'Electric Surge', 'The Pokémon creates an Electric Terrain when it enters a battle.'),
(55, 'Emergency Exit', 'Switches out when HP falls below 50%.'),
(56, 'Fairy Aura', 'Raises power of Fairy type moves for all Pokémon in battle.'),
(57, 'Filter', 'Reduces damage from super-effective attacks.'),
(58, 'Flame Body', 'Contact with the Pokémon may burn the attacker.'),
(59, 'Flare Boost', 'Powers up special attacks when burned.'),
(60, 'Flash Fire', 'It powers up Fire-type moves if it\'s hit by one.'),
(61, 'Flower Gift', 'Powers up party Pokémon when it is sunny.'),
(62, 'Flower Veil', 'Prevents lowering of ally Grass-type Pokémon\'s stats.'),
(63, 'Fluffy', 'Halves damage from contact moves, but doubles damage from Fire-type moves.'),
(64, 'Forecast', 'Castform transforms with the weather.'),
(65, 'Forewarn', 'Determines what moves a foe has.'),
(66, 'Friend Guard', 'Reduces damage done to allies.'),
(67, 'Frisk', 'The Pokémon can check a foe\'s held item.'),
(68, 'Full Metal Body', 'Prevents other Pokémon from lowering its stats.'),
(69, 'Fur Coat', 'Reduces damage from physical moves.'),
(70, 'Gale Wings', 'Gives priority to Flying-type moves.'),
(71, 'Galvanize', 'Normal-type moves become Electric-type moves and their power boosted.'),
(72, 'Gluttony', 'Encourages the early use of a held Berry.'),
(73, 'Gooey', 'Contact with the Pokémon lowers the attacker\'s Speed stat.'),
(74, 'Gorilla Tactics', 'Boosts the Pokémon\'s Attack stat but only allows the use of the first selected move.'),
(75, 'Grass Pelt', 'Boosts the Defense stat in Grassy Terrain.'),
(76, 'Grassy Surge', 'The Pokémon creates a Grassy Terrain when it enters a battle.'),
(77, 'Grim Neigh', 'Boosts Special Attack after knocking out a Pokémon.'),
(78, 'Gulp Missile', 'Returns with a catch in its mouth after using Surf or Dive.'),
(79, 'Guts', 'Boosts Attack if there is a status problem.'),
(80, 'Harvest', 'May create another Berry after one is used.'),
(81, 'Healer', 'May heal an ally\'s status conditions.'),
(82, 'Heatproof', 'Weakens the power of Fire-type moves.'),
(83, 'Heavy Metal', 'Doubles the Pokémon\'s weight.'),
(84, 'Honey Gather', 'The Pokémon may gather Honey from somewhere.'),
(85, 'Huge Power', 'Raises the Pokémon\'s Attack stat.'),
(86, 'Hunger Switch', 'Changes forms each turn.'),
(87, 'Hustle', 'Boosts the Attack stat, but lowers accuracy.'),
(88, 'Hydration', 'Heals status problems if it is raining.'),
(89, 'Hyper Cutter', 'Prevents other Pokémon from lowering Attack stat.'),
(90, 'Ice Body', 'The Pokémon gradually regains HP in a hailstorm.'),
(91, 'Ice Face', 'Avoids damage from Physical moves for one turn.'),
(92, 'Ice Scales', 'Halves damage from Special moves.'),
(93, 'Illuminate', 'Raises the likelihood of meeting wild Pokémon.'),
(94, 'Illusion', 'Enters battle disguised as the last Pokémon in the party.'),
(95, 'Immunity', 'Prevents the Pokémon from getting poisoned.'),
(96, 'Imposter', 'It transforms itself into the Pokémon it is facing.'),
(97, 'Infiltrator', 'Passes through the foe\'s barrier and strikes.'),
(98, 'Innards Out', 'Deals damage upon fainting.'),
(99, 'Inner Focus', 'The Pokémon is protected from flinching.'),
(100, 'Insomnia', 'Prevents the Pokémon from falling asleep.'),
(101, 'Intimidate', '	Lowers the foe\'s Attack stat.'),
(102, 'Intrepid Sword', 'Boosts Attack in battle.'),
(103, 'Iron Barbs', '	Inflicts damage to the Pokémon on contact.'),
(104, 'Iron Fist', 'Boosts the power of punching moves.'),
(105, 'Justified', 'Raises Attack when hit by a Dark-type move.'),
(106, 'Keen Eye', 'Prevents other Pokémon from lowering accuracy.'),
(107, 'Klutz', 'The Pokémon can\'t use any held items.'),
(108, 'Leaf Guard', 'Prevents problems with status in sunny weather.'),
(109, 'Levitate', 'Gives immunity to Ground type moves.'),
(110, 'Libero', 'Changes the Pokémon\'s type to its last used move.'),
(111, 'Light Metal', 'Halves the Pokémon\'s weight.'),
(112, 'Lightning Rod', 'Draws in all Electric-type moves to up Sp. Attack.'),
(113, 'Limber', 'The Pokémon is protected from paralysis.'),
(114, 'Liquid Ooze', 'Damages attackers using any draining move.'),
(115, 'Liquid Voice', 'All sound-based moves become Water-type moves.'),
(116, 'Long Reach', 'The Pokémon uses its moves without making contact with the target.'),
(117, 'Magic Bounce', 'Reflects status- changing moves.'),
(118, 'Magic Guard', 'Protects the Pokémon from indirect damage.'),
(119, 'Magician', 'The Pokémon steals the held item of a Pokémon it hits with a move.'),
(120, 'Magma Armor', 'Prevents the Pokémon from becoming frozen.'),
(121, 'Magnet Pull', 'Prevents Steel-type Pokémon from escaping.'),
(122, 'Marvel Scale', 'Ups Defense if there is a status problem.'),
(123, 'Mega Launcher', 'Boosts the power of aura and pulse moves.'),
(124, 'Merciless', 'The Pokémon\'s attacks become critical hits if the target is poisoned.'),
(125, 'Mimicry', 'Changes type depending on the terrain.'),
(126, 'Minus', 'Ups Sp. Atk if another Pokémon has Plus or Minus.'),
(127, 'Mirror Armor', 'Reflects any stat-lowering effects.'),
(128, 'Misty Surge', 'The Pokémon creates a Misty Terrain when it enters a battle.'),
(129, 'Mold Breaker', 'Moves can be used regardless of Abilities.'),
(130, 'Moody', 'Raises one stat and lowers another.'),
(131, 'Motor Drive', 'Raises Speed if hit by an Electric-type move.'),
(132, 'Moxie', 'Boosts Attack after knocking out any Pokémon.'),
(133, 'Multiscale', 'Reduces damage when HP is full.'),
(134, 'Multitype', 'Changes type to match the held Plate.'),
(135, 'Mummy', 'Contact with this Pokémon spreads this Ability.'),
(136, 'Natural Cure', 'All status problems heal when it switches out.'),
(137, 'Neuroforce', 'Powers up moves that are super effective.'),
(138, 'Neutralizing Gas', 'Neutralizes abilities of all Pokémon in battle.'),
(139, 'No Guard', 'Ensures attacks by or against the Pokémon land.'),
(140, 'Normalize', 'All the Pokémon\'s moves become the Normal type.'),
(141, 'Oblivious', 'Prevents it from becoming infatuated.'),
(142, 'Overcoat', 'Protects the Pokémon from weather damage.'),
(143, 'Overgrow', 'Powers up Grass-type moves in a pinch.'),
(144, 'Own Tempo', 'Prevents the Pokémon from becoming confused.'),
(145, 'Parental Bond', 'Allows the Pokémon to attack twice.'),
(146, 'Pastel Veil', 'Prevents the Pokémon and its allies from being poisoned.'),
(147, 'Perish Body', 'When hit by a move that makes direct contact, the Pokémon and the attacker will faint after three turns unless they switch out of battle.'),
(148, 'Pickpocket', 'Steals an item when hit by another Pokémon.'),
(149, 'Pickup', 'The Pokémon may pick up items.'),
(150, 'Pixilate', 'Turns Normal-type moves into Fairy-type moves.'),
(151, 'Plus', 'Ups Sp. Atk if another Pokémon has Plus or Minus.'),
(152, 'Poison Heal', 'Restores HP if the Pokémon is poisoned.'),
(153, 'Poison Point', 'Contact with the Pokémon may poison the attacker.'),
(154, 'Poison Touch', 'May poison targets when a Pokémon makes contact.'),
(155, 'Power Construct', 'Changes form when HP drops below half.'),
(156, 'Power of Alchemy', 'The Pokémon copies the Ability of a defeated ally.'),
(157, 'Power Spot', 'Just being next to the Pokémon powers up moves.'),
(158, 'Prankster', 'Gives priority to a status move.'),
(159, 'Pressure', 'The Pokémon raises the foe\'s PP usage.'),
(160, 'Primordial Sea', 'Makes it rain heavily when the ability activates.'),
(161, 'Prism Armor', 'Reduces damage from super-effective attacks.'),
(162, 'Propeller Tail', 'Ignores moves and abilities that draw in moves.'),
(163, 'Protean', 'Changes the Pokémon\'s type to its last used move.'),
(164, 'Psychic Surge', 'The Pokémon creates a Psychic Terrain when it enters a battle.'),
(165, 'Punk Rock', 'Boosts sound-based moves and halves damage from the same moves.'),
(166, 'Pure Power', 'Raises the Pokémon\'s Attack stat.'),
(167, 'Queenly Majesty', 'Prevents use of priority moves.'),
(168, 'Quick Draw', 'Able to start the match before the opponent'),
(169, 'Quick Feet', 'Boosts Speed if there is a status problem.'),
(170, 'Rain Dish', 'The Pokémon gradually regains HP in rain.'),
(171, 'Rattled', 'Bug, Ghost or Dark type moves scare it and boost its Speed.'),
(172, 'Receiver', 'Inherits an ally\'s ability when it faints.'),
(173, 'Reckless', 'Powers up moves that have recoil damage.'),
(174, 'Refrigerate', 'Turns Normal-type moves into Ice-type moves.'),
(175, 'Regenerator', 'Restores a little HP when withdrawn from battle.'),
(176, 'Ripen', 'Doubles the effect of berries.'),
(177, 'Rivalry', 'Deals more damage to a Pokémon of same gender.'),
(178, 'RKS System', 'Changes type depending on held item.'),
(179, 'Rock Head', 'Protects the Pokémon from recoil damage.'),
(180, 'Rough Skin', 'Inflicts damage to the attacker on contact.'),
(181, 'Run Away', 'Enables a sure getaway from wild Pokémon.'),
(182, 'Sand Force', 'Boosts certain moves\' power in a sandstorm.'),
(183, 'Sand Rush', 'Boosts the Pokémon\'s Speed in a sandstorm.'),
(184, 'Sand Spit', 'Creates a sandstorm when hit by an attack.'),
(185, 'Sand Stream', 'The Pokémon summons a sandstorm in battle.'),
(186, 'Sand Veil', 'Boosts the Pokémon\'s evasion in a sandstorm.'),
(187, 'Sap Sipper', 'Boosts Attack when hit by a Grass-type move.'),
(188, 'Schooling', 'Changes Wishiwashi to School Form.'),
(189, 'Scrappy', 'Enables moves to hit Ghost-type Pokémon.'),
(190, 'Screen Cleaner', 'Nullifies effects of Light Screen, Reflect, and Aurora Veil.'),
(191, 'Serene Grace', 'Boosts the likelihood of added effects appearing.'),
(192, 'Shadow Shield', 'Reduces damage when HP is full.'),
(193, 'Shadow Tag', 'Prevents the foe from escaping.'),
(194, 'Shed Skin', 'The Pokémon may heal its own status problems.'),
(195, 'Sheer Force', 'Removes added effects to increase move damage.'),
(196, 'Shell Armor', 'The Pokémon is protected against critical hits.'),
(197, 'Shield Dust', 'Blocks the added effects of attacks taken.'),
(198, 'Shields Down', 'Changes stats when HP drops below half.'),
(199, 'Simple', 'Doubles all stat changes.'),
(200, 'Skill Link', 'Increases the frequency of multi-strike moves.'),
(201, 'Slow Start', 'Temporarily halves Attack and Speed.'),
(202, 'Slush Rush', 'Boosts the Pokémon\'s Speed stat in a hailstorm.'),
(203, 'Sniper', 'Powers up moves if they become critical hits.'),
(204, 'Snow Cloak', 'Raises evasion in a hailstorm.'),
(205, 'Snow Warning', 'The Pokémon summons a hailstorm in battle.'),
(206, 'Solar Power', 'In sunshine, Sp. Atk is boosted but HP decreases.'),
(207, 'Solid Rock', 'Reduces damage from super-effective attacks.'),
(208, 'Soul-Heart', 'Raises Special Attack when an ally faints.'),
(209, 'Soundproof', 'Gives immunity to sound-based moves.'),
(210, 'Speed Boost', 'Its Speed stat is gradually boosted.'),
(211, 'Stakeout', 'Deals double damage to Pokémon switching in.'),
(212, 'Stall', 'The Pokémon moves after all other Pokémon do.'),
(213, 'Stalwart', 'Ignores moves and abilities that draw in moves.'),
(214, 'Stamina', 'Raises Defense when attacked.'),
(215, 'Stance Change', 'Changes form depending on moves used.'),
(216, 'Static', 'Contact with the Pokémon may cause paralysis.'),
(217, 'Steadfast', 'Raises Speed each time the Pokémon flinches.'),
(218, 'Steam Engine', 'Drastically raises Speed when hit by a Fire- or Water-type move.'),
(219, 'Steelworker	', 'Powers up Steel-type moves.'),
(220, 'Steely Spirit', 'Powers up ally Pokémon\'s Steel-type moves.'),
(221, 'Stench', 'The stench may cause the target to flinch.'),
(222, 'Sticky Hold', 'Protects the Pokémon from item theft.'),
(223, 'Storm Drain	', 'Draws in all Water-type moves to up Sp. Attack'),
(224, 'Strong Jaw', 'Boosts the power of biting moves.'),
(225, 'Sturdy', 'It cannot be knocked out with one hit.'),
(226, 'Suction Cups', 'Negates all moves that force switching out.'),
(227, 'Super Luck', 'Heightens the critical-hit ratios of moves.'),
(228, 'Surge Surfer', 'Doubles Speed during Electric Terrain.'),
(229, 'Swarm', 'Powers up Bug-type moves in a pinch.'),
(230, 'Sweet Veil', 'Prevents the Pokémon and allies from falling asleep.'),
(231, 'Swift Swim', 'Boosts the Pokémon\'s Speed in rain.'),
(232, 'Symbiosis', 'The Pokémon can pass an item to an ally.'),
(233, 'Synchronize', 'Passes a burn, poison, or paralysis to the foe.'),
(234, 'Tangled Feet', 'Raises evasion if the Pokémon is confused.'),
(235, 'Tangling Hair', 'Contact with the Pokémon lowers the attacker\'s Speed stat.'),
(236, 'Technician', 'Powers up the Pokémon\'s weaker moves.'),
(237, 'Telepathy', 'Anticipates an ally\'s attack and dodges it.'),
(238, 'Teravolt', 'Moves can be used regardless of Abilities.'),
(239, 'Thick Fat', 'Ups resistance to Fire- and Ice-type moves.'),
(240, 'Tinted Lens', 'Powers up “not very effective” moves.'),
(241, 'Torrent', 'Powers up Water-type moves in a pinch.'),
(242, 'Tough Claws', 'Boosts the power of contact moves.'),
(243, 'Toxic Boost', 'Powers up physical attacks when poisoned.'),
(244, 'Trace', 'The Pokémon copies a foe\'s Ability.'),
(245, 'Transistor', 'Signature ability of Regieleki. Powers up Electric-type moves.'),
(246, 'Triage', 'Gives priority to restorative moves.'),
(247, 'Truant', 'Pokémon can\'t attack on consecutive turns.'),
(248, 'Turboblaze', 'Moves can be used regardless of Abilities.'),
(249, 'Unaware', 'Ignores any stat changes in the Pokémon.'),
(250, 'Unburden', 'Raises Speed if a held item is used.'),
(251, 'Unnerve', 'Makes the foe nervous and unable to eat Berries.'),
(252, 'Unseen Fist', 'Contact moves can strike through Protect/Detect.'),
(253, 'Victory Star', 'Boosts the accuracy of its allies and itself.'),
(254, 'Vital Spirit', 'Prevents the Pokémon from falling asleep.'),
(255, 'Volt Absorb', 'Restores HP if hit by an Electric-type move.'),
(256, 'Wandering Spirit', 'Swaps abilities with opponents on contact.'),
(257, 'Water Absorb', 'Restores HP if hit by a Water-type move.'),
(258, 'Water Bubble', 'Halves damage from Fire-type moves, doubles power of Water-type moves used, and prevents burns.'),
(259, 'Water Compaction', 'Sharply raises Defense when hit by a Water-type move.'),
(260, 'Water Veil', 'Prevents the Pokémon from getting a burn.'),
(261, 'Weak Armor', 'Physical attacks lower Defense and raise Speed.'),
(262, 'White Smoke	', 'Prevents other Pokémon from lowering its stats.'),
(263, 'Wimp Out', 'Switches out when HP drops below half.'),
(264, 'Wonder Guard', 'Only supereffective moves will hit.'),
(265, 'Wonder Skin', 'Makes status-changing moves more likely to miss.'),
(266, 'Zen Mode', 'Changes form when HP drops below half.');

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `game_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `generation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`game_id`, `name`, `generation_id`) VALUES
(1, 'Pokemon Red', 1),
(2, 'Pokemon Silver', 2),
(3, 'Pokemon Emerald', 3),
(4, 'Pokemon Pearl', 4),
(5, 'Pokemon White', 5),
(6, 'Pokemon X', 6),
(7, 'Pokemon Sun', 7),
(8, 'Pokemon Sword', 8);

-- --------------------------------------------------------

--
-- Table structure for table `generation`
--

CREATE TABLE `generation` (
  `generation_id` int(11) NOT NULL,
  `pokemon_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `generation`
--

INSERT INTO `generation` (`generation_id`, `pokemon_number`) VALUES
(1, 151),
(2, 251),
(3, 386),
(4, 493),
(5, 649),
(6, 721),
(7, 809),
(8, 905);

-- --------------------------------------------------------

--
-- Table structure for table `gyms`
--

CREATE TABLE `gyms` (
  `gym_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `badge` varchar(255) NOT NULL,
  `gym_leader` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gyms`
--

INSERT INTO `gyms` (`gym_id`, `name`, `type`, `badge`, `gym_leader`) VALUES
(1, 'Pewter Gym', 'Rock', 'Boulder Badge', 0),
(2, 'Cerulean Gym', 'Water', 'Cascade Badge', 0),
(3, 'Violet Gym', 'Flying', 'Zephyr Badge', 0),
(4, 'Lavaridge Gym', 'Fire', 'Heat Badge', 0),
(5, 'Eterna Gym', 'Grass', 'Forest Badge', 0),
(6, 'Nimbasa Gym', 'Electric', 'Bolt Badge', 0),
(7, 'Laverre Gym', 'Fairy', 'Fairy Badge', 0),
(8, 'Santalune Gym', 'Bug', 'Bug Badge', 0),
(9, 'Stow-on-Side Stadium', 'Ghost', 'Ghost Badge', 0),
(10, 'Hammerlocke Gym', 'Dragon', 'Dragon Badge', 0);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `location_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `music_name` varchar(255) NOT NULL,
  `gym_id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`location_id`, `name`, `location`, `music_name`, `gym_id`, `game_id`) VALUES
(21, 'Pewter City', 'North-West Kanto region', 'Pewter city theme', 1, 1),
(22, 'Cerulean City', 'Northern Kanto', 'Cerulean city theme', 2, 1),
(23, 'Violet City', 'Central Johto', 'Violet city theme', 3, 2),
(24, 'Lavaridge Town', 'Central Western Hoenn', 'Lavaridge Town Theme', 4, 3),
(25, 'Eterna City', 'Sinnoh', 'Eterna City theme', 5, 4),
(26, 'Nimbasa City', 'Central Unova', 'Nimbasa City theme', 6, 5),
(27, 'Santalune City', 'Central Santalune', 'Santalune City theme', 8, 7),
(28, 'Stow-on-Side', 'West-Center Galar', 'Stow-on-Side theme', 9, 8),
(29, 'Hammerlocke', 'Galar', 'Hammerlocke theme', 10, 8);

-- --------------------------------------------------------

--
-- Table structure for table `pokedex`
--

CREATE TABLE `pokedex` (
  `pokedex_id` int(11) NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `level` tinyint(4) NOT NULL,
  `friendship_level` smallint(6) NOT NULL,
  `nature` varchar(255) NOT NULL,
  `gender` char(1) NOT NULL,
  `trainer_id` int(11) NOT NULL,
  `pokemon_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pokemon`
--

CREATE TABLE `pokemon` (
  `pokemon_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `height` varchar(255) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `primary_type` varchar(255) NOT NULL,
  `secondary_type` varchar(255) DEFAULT NULL,
  `intro_gen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pokemon`
--

INSERT INTO `pokemon` (`pokemon_id`, `name`, `uri`, `height`, `weight`, `primary_type`, `secondary_type`, `intro_gen`) VALUES
(1, 'Bulbasaur', 'https://den-cards.pokellector.com/346/Bulbasaur.POGO.1.44077.png', '0.7', '15.2', 'Grass', 'Poison', 1),
(2, 'Pikachu', 'https://den-cards.pokellector.com/325/Pikachu.SWSH7.49.39918.png', '0.4', '13.2', 'Electric', '', 1),
(3, 'Diglett', 'https://den-cards.pokellector.com/296/Diglett.SWSH3.84.35193.png', '0.2', '2.2', 'Ground', 'Steel', 1),
(4, 'Meowth', 'https://den-cards.pokellector.com/269/Meowth.UNB.147.28242.png', '0.4', '9.3', 'Steel', 'Ground', 1),
(5, 'Magnemite', 'https://den-cards.pokellector.com/275/Magnemite.UMI.58.29087.png', '0.3', '13.2', 'Electric', 'Steel', 1),
(6, 'Gastly', 'https://den-cards.pokellector.com/320/Gastly.CRE.55.39055.png', '1.3', '0.2', 'Ghost', 'Poison', 1),
(7, 'Voltorb', 'https://den-cards.pokellector.com/299/Voltorb.SWSH0.45.35984.png', '0.5', '22.9', 'Electric', '', 1),
(8, 'Staryu', 'https://den-cards.pokellector.com/197/Staryu.EVO.30.png', '0.8', '76.1', 'Water', '', 1),
(9, 'Dragonite', 'https://den-cards.pokellector.com/261/Dragonite.SM9.119.26610.png', '2.2', '463.0', 'Dragon', 'Flying', 1),
(10, 'Gyarados', 'https://den-cards.pokellector.com/59/Gyarados.DX.8.png', '6.5', '518.1', 'Water', 'Flying', 1),
(11, 'Onix', 'https://den-cards.pokellector.com/346/Onix.POGO.36.44179.png', '8.8', '463.0', 'Rock', 'Ground', 1),
(12, 'Growlithe', 'https://den-cards.pokellector.com/353/Growlithe.MCD22.4.44479.png', '0.7', '41.9', 'Fire', '', 1),
(13, 'Totodile', 'https://den-cards.pokellector.com/335/Totodile.SWSH8.55.40727.png', '0.6', '20.9', 'Water', '', 2),
(14, 'Sentret', 'https://den-cards.pokellector.com/296/Sentret.SWSH3.135.35242.png', '0.8', '13.2', 'Normal', '', 2),
(15, 'Spinarak', 'https://den-cards.pokellector.com/244/Spinarak.CES.5.22617.png', '0.5', '18.7', 'Bug', 'Poison', 2),
(16, 'Togepi', 'https://den-cards.pokellector.com/345/Togepi.SWSH10.55.43723.png', '0.3', '3.3', 'Fairy', '', 2),
(17, 'Espeon', 'https://den-cards.pokellector.com/259/Espeon.LOT.89.24669.png', '0.9', '58.9', 'Psychic', '', 2),
(18, 'Scizor', 'https://den-cards.pokellector.com/7/Scizor.BCR.94.png', '1.8', '260.1', 'Bug', 'Steel', 2),
(19, 'Sneasel', 'https://den-cards.pokellector.com/340/Sneasel.SWSH09.86.42790.png', '0.9', '61.7', 'Dark', 'Ice', 2),
(20, 'Houndoom', 'https://den-cards.pokellector.com/110/Houndoom.AQ.14.png', '1.4', '77.2', 'Dark', 'Fire', 2),
(21, 'Sudowoodo', 'https://den-cards.pokellector.com/279/Sudowoodo.HIF.SV20.29873.png', '1.2', '83.8', 'Rock', '', 2),
(22, 'Skarmory', 'https://den-cards.pokellector.com/296/Skarmory.SWSH3.120.35227.png', '1.7', '111.3', 'Steel', 'Flying', 2),
(23, 'Entei', 'https://den-cards.pokellector.com/280/Entei.CEC.28.30748.png', '2.1', '436.5', 'Fire', '', 2),
(24, 'Tyranitar', 'https://den-cards.pokellector.com/261/Tyranitar.SM9.85.26578.png', '2.0', '445.3', 'Rock', 'Dark', 2),
(25, 'Absol', 'https://den-cards.pokellector.com/345/Absol.SWSH10.97.43765.png', '1.2', '103.6', 'Dark', '', 3),
(26, 'Grovyle', 'https://den-cards.pokellector.com/166/Grovyle.PCL.7.png', '0.9', '47.6', 'Grass', '', 3),
(27, 'Mightyena', 'https://den-cards.pokellector.com/345/Mightyena.SWSH10.96.43764.png', '1.0', '81.6', 'Dark', '', 3),
(28, 'Lotad', 'https://den-cards.pokellector.com/292/Lotad.SWSH2.7.34438.png', '0.5', '5.7', 'Water', 'Grass', 3),
(29, 'Gardevoir', 'https://den-cards.pokellector.com/320/Gardevoir.CRE.61.39060.png', '1.6', '106.7', 'Psychic', 'Fairy', 3),
(30, 'Shedinja', 'https://den-cards.pokellector.com/259/Shedinja.LOT.95.24675.png', '0.8', '2.6', 'Bug', 'Ghost', 3),
(31, 'Aggron', 'https://den-cards.pokellector.com/320/Aggron.CRE.111.39107.png', '2.1', '793.7', 'Steel', 'Rock', 3),
(32, 'Altaria', 'https://den-cards.pokellector.com/298/Altaria.SWSH3.49.35748.png', '1.1', '45.4', 'Dragon', 'Flying', 3),
(33, 'Armaldo', 'https://den-cards.pokellector.com/67/Armaldo.PK.3.png', '1.5', '150.4', 'Rock', 'Bug', 3),
(34, 'Tropius', 'https://den-cards.pokellector.com/280/Tropius.CEC.12.30733.png', '2.0', '220.5', 'Grass', 'Flying', 3),
(35, 'Groudon', 'https://den-cards.pokellector.com/143/Groudon.XY.52.png', '3.5', '2094.4', 'Fire', '', 3),
(36, 'Milotic', 'https://den-cards.pokellector.com/296/Milotic.SWSH3.39.35149.png', '6.2', '357.1', 'Water', '', 3),
(37, 'Torterra', 'https://den-cards.pokellector.com/340/Torterra.SWSH09.8.42721.png', '2.2', '683.4', 'Grass', 'Ground', 4),
(38, 'Monferno', 'https://den-cards.pokellector.com/38/Monferno.PL.56.png', '0.9', '48.5', 'Fire', 'Fighting', 4),
(39, 'Piplup', 'https://den-cards.pokellector.com/340/Piplup.SWSH09.35.42741.png', '0.4', '11.5', 'Water', '', 4),
(40, 'Roserade', 'https://den-cards.pokellector.com/286/Roserade.SH01.4.31429.png', '0.9', '32.0', 'Grass', 'Poison', 4),
(41, 'Lopunny', 'https://den-cards.pokellector.com/40/Lopunny.SV.63.png', '1.2', '73.4', 'Normal', '', 4),
(42, 'Garchomp', 'https://den-cards.pokellector.com/340/Garchomp.SWSH09.109.42813.png', '1.9', '209.4', 'Dragon', 'Ground', 4),
(43, 'Lucario', 'https://den-cards.pokellector.com/340/Lucario.SWSH09.79.42783.png', '1.2', '119.0', 'Fighting', 'Steel', 4),
(44, 'Snover', 'https://den-cards.pokellector.com/48/Snover.SF.74.png', '1.0', '111.3', 'Grass', 'Ice', 4),
(45, 'Magmortar', 'https://den-cards.pokellector.com/292/Magmortar.SWSH2.30.34456.png', '1.6', '149.9', 'Fire', '', 4),
(46, 'Darkrai', 'https://den-cards.pokellector.com/350/Darkrai.SWSH10.120.44779.png', '1.5', '111.3', 'Dark', '', 4),
(47, 'Buizel', 'https://den-cards.pokellector.com/340/Buizel.SWSH09.38.42744.png', '0.7', '65.0', 'Water', '', 4),
(48, 'Bidoof', 'https://den-cards.pokellector.com/166/Bidoof.PCL.116.png', '0.5', '44.1', 'Normal', '', 4),
(49, 'Dewott', 'https://den-cards.pokellector.com/299/Dewott.SWSH0.34.35973.png', '0.8', '54.0', 'Water', '', 5),
(50, 'Timburr', 'https://den-cards.pokellector.com/6/Timburr.DEX.58.png', '0.6', '27.6', 'Fighting', '', 5),
(51, 'Zoroark', 'https://den-cards.pokellector.com/325/Zoroark.SWSH7.103.39869.png', '1.6', '178.8', 'Dark', '', 5),
(52, 'Amoonguss', 'https://den-cards.pokellector.com/275/Amoonguss.UMI.14.29045.png', '0.6', '23.1', 'Grass', 'Poison', 5),
(53, 'Klang', 'https://den-cards.pokellector.com/296/Klang.SWSH3.126.35233.png', '0.6', '112.6', 'Steel', '', 5),
(54, 'Axew', 'https://den-cards.pokellector.com/8/Axew.DRV.13.png', '0.6', '39.7', 'Dragon', '', 5),
(55, 'Bisharp', 'https://den-cards.pokellector.com/345/Bisharp.SWSH10.116.43783.png', '1.6', '154.3', 'Dark', 'Steel', 5),
(56, 'Tornadus', 'https://den-cards.pokellector.com/275/Tornadus.UMI.178.29199.png', '1.5', '138.9', 'Flying', '', 5),
(57, 'Keldeo', 'https://den-cards.pokellector.com/345/Keldeo.SWSH10.45.43713.png', '1.4', '106.9', 'Water', 'Fighting', 5),
(58, 'Minccino', 'https://den-cards.pokellector.com/286/Minccino.SH01.146.31553.png', '0.4', '12.8', 'Normal', '', 5),
(59, 'Crustle', 'https://den-cards.pokellector.com/325/Crustle.SWSH7.12.39882.png', '1.4', '440.9', 'Bug', 'Rock', 5),
(60, 'Seismitoad', 'https://den-cards.pokellector.com/292/Seismitoad.SWSH2.46.34466.png', '1.5', '136.7', 'Water', 'Ground', 5),
(61, 'Frogadier', 'https://den-cards.pokellector.com/183/Frogadier.BPT.39.png', '0.6', '24.0', 'Water', '', 6),
(62, 'Floette', 'https://den-cards.pokellector.com/179/Floette.BKT.102.png', '0.2', '2.0', 'Fairy', '', 6),
(63, 'Pangoro', 'https://den-cards.pokellector.com/183/Pangoro.BPT.75.png', '2.1', '299.8', 'Fighting', 'Dark', 6),
(64, 'Honedge', 'https://den-cards.pokellector.com/142/Honedge.XY.83.png', '0.8', '4.4', 'Steel', 'Ghost', 6),
(65, 'Skrelp', 'https://den-cards.pokellector.com/239/Skrelp.FLI.52.20756.png', '0.5', '16.1', 'Poison', 'Water', 6),
(66, 'Tyrunt', 'https://den-cards.pokellector.com/239/Tyrunt.FLI.68.20771.png', '0.8', '57.3', 'Rock', 'Dragon', 6),
(67, 'Dedenne', 'https://den-cards.pokellector.com/296/Dedenne.SWSH3.78.35187.png', '0.2', '4.9', 'Electric', 'Fairy', 6),
(68, 'Avalugg', 'https://den-cards.pokellector.com/325/Avalugg.SWSH7.45.39914.png', '2.0', '1113.3', 'Ice', '', 6),
(69, 'Trevenant', 'https://den-cards.pokellector.com/335/Trevenant.SWSH8.17.40689.png', '1.5', '156.6', 'Ghost', 'Grass', 6),
(70, 'Noivern', 'https://den-cards.pokellector.com/159/Noivern.FF.77.png', '1.5', '187.6', 'Fighting', 'Dragon', 6),
(71, 'Xerneas', 'https://den-cards.pokellector.com/299/Xerneas.SWSH0.78.36017.png', '3.0', '474.0', 'Fairy', '', 6),
(72, 'Zygarde', 'https://den-cards.pokellector.com/239/Zygarde.FLI.72.20775.png', '5.0', '672.4', 'Dragon', 'Ground', 6),
(73, 'Dartrix', 'https://den-cards.pokellector.com/304/Dartrix.SWSH45.7.36965.png', '0.7', '35.3', 'Grass', 'Flying', 7),
(74, 'Toucannon', 'https://den-cards.pokellector.com/259/Toucannon.LOT.166.24741.png', '1.1', '57.3', 'Normal', 'Flying', 7),
(75, 'Lycanroc', 'https://den-cards.pokellector.com/298/Lycanroc.SWSH3.30.35729.png', '0.8', '55.1', 'Rock', '', 7),
(76, 'Salandit', 'https://den-cards.pokellector.com/269/Salandit.UNB.30.28135.png', '0.6', '10.6', 'Poison', 'Fire', 7),
(77, 'Bewear', 'https://den-cards.pokellector.com/353/Bewear.MCD22.12.44484.png', '2.1', '297.6', 'Normal', 'Fighting', 7),
(78, 'Minior', 'https://den-cards.pokellector.com/244/Minior.CES.83.22692.png', '0.3', '88.2', 'Rock', 'Flying', 7),
(79, 'Mimikyu', 'https://den-cards.pokellector.com/350/Mimikyu.SWSH10.80.44740.png', '0.2', '1.5', 'Ghost', 'Fairy', 7),
(80, 'Cosmoem', 'https://den-cards.pokellector.com/261/Cosmoem.SM9.70.26563.png', '0.1', '2204.4', 'Psychic', '', 7),
(81, 'Lunala', 'https://den-cards.pokellector.com/244/Lunala.CES.70.22679.png', '4.0', '264.6', 'Psychic', 'Ghost', 7),
(82, 'Stakataka', 'https://den-cards.pokellector.com/269/Stakataka.UNB.106.28206.png', '5.5', '1807.8', 'Rock', 'Steel', 7),
(83, 'Naganadel', 'https://den-cards.pokellector.com/259/Naganadel.LOT.108.24688.png', '3.6', '330.7', 'Poison', 'Dragon', 7),
(84, 'Guzzlord', 'https://den-cards.pokellector.com/239/Guzzlord.FLI.80.20598.png', '5.5', '1957.7', 'Dark', 'Dragon', 7),
(85, 'Rillaboom', 'https://den-cards.pokellector.com/304/Rillaboom.SWSH45.SV6.37089.png', '2.1', '198.4', 'Grass', '', 8),
(86, 'Raboot', 'https://den-cards.pokellector.com/304/Raboot.SWSH45.SV16.37099.png', '0.6', '19.8', 'Fire', '', 8),
(87, 'Dottler', 'https://den-cards.pokellector.com/304/Dottler.SWSH45.SV8.37091.png', '0.4', '43.0', 'Bug', 'Psychic', 8),
(88, 'Thievul', 'https://den-cards.pokellector.com/325/Thievul.SWSH7.105.39972.png', '1.2', '43.9', 'Dark', '', 8),
(89, 'Drednaw', 'https://den-cards.pokellector.com/335/Drednaw.SWSH8.81.40751.png', '1.0', '254.6', 'Water', 'Rock', 8),
(90, 'Carkol', 'https://den-cards.pokellector.com/305/Carkol.SWSH05.79.37602.png', '1.1', '172.0', 'Rock', 'Fire', 8),
(91, 'Sandaconda', 'https://den-cards.pokellector.com/305/Sandaconda.SWSH05.82.37605.png', '3.8', '144.4', 'Ground', '', 8),
(92, 'Toxel', 'https://den-cards.pokellector.com/335/Toxel.SWSH8.106.40776.png', '0.4', '24.3', 'Electric', 'Poison', 8),
(93, 'Grapploct', 'https://den-cards.pokellector.com/299/Grapploct.SWSH0.101.36040.png', '1.6', '86.0', 'Fighting', '', 8),
(94, 'Sirfetch\'d', 'https://den-cards.pokellector.com/292/Galarian-Sirfetchd.SWSH2.95.34504.png', '0.8', '257.9', 'Fighting', '', 8),
(95, 'Enamorus', 'https://den-cards.pokellector.com/350/Enamorus-V.SWSH10.82.44742.png', '1.6', '105.8', 'Flying', 'Fairy', 8),
(96, 'Glastrier', 'https://den-cards.pokellector.com/350/Glastrier.SWSH10.51.44711.png', '2.2', '1763.7', 'Ice', '', 8);

-- --------------------------------------------------------

--
-- Table structure for table `pokemon_ability`
--

CREATE TABLE `pokemon_ability` (
  `pokemon_ability_id` int(11) NOT NULL,
  `pokemon_id` int(11) NOT NULL,
  `ability_id` int(11) NOT NULL,
  `is_hidden` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pokemon_ability`
--

INSERT INTO `pokemon_ability` (`pokemon_ability_id`, `pokemon_id`, `ability_id`, `is_hidden`) VALUES
(1, 1, 143, 0),
(2, 1, 24, 1),
(3, 2, 216, 0),
(4, 2, 112, 1),
(5, 3, 186, 0),
(6, 3, 8, 0),
(7, 3, 182, 1),
(8, 4, 149, 0),
(9, 4, 236, 0),
(10, 4, 251, 1),
(11, 5, 121, 0),
(12, 5, 225, 0),
(13, 5, 5, 1),
(14, 6, 109, 0),
(15, 7, 209, 0),
(16, 7, 216, 0),
(17, 7, 3, 1),
(18, 8, 93, 0),
(19, 8, 136, 0),
(20, 8, 5, 1),
(21, 9, 99, 0),
(22, 9, 133, 1),
(23, 10, 101, 0),
(24, 10, 132, 1),
(25, 11, 179, 0),
(26, 11, 225, 0),
(27, 11, 261, 1),
(28, 12, 101, 0),
(29, 12, 60, 0),
(30, 12, 105, 1),
(31, 13, 241, 0),
(32, 13, 195, 1),
(33, 14, 181, 0),
(34, 14, 106, 0),
(35, 14, 67, 1),
(36, 15, 229, 0),
(37, 15, 100, 0),
(38, 15, 203, 1),
(39, 16, 87, 0),
(40, 16, 191, 0),
(41, 16, 227, 1),
(42, 17, 233, 0),
(43, 17, 117, 1),
(44, 18, 229, 0),
(45, 18, 236, 0),
(46, 18, 111, 1),
(47, 19, 148, 1),
(48, 19, 106, 0),
(49, 19, 99, 0),
(50, 20, 52, 0),
(51, 20, 60, 0),
(52, 20, 251, 1),
(53, 21, 225, 0),
(54, 21, 179, 0),
(55, 21, 171, 1),
(56, 22, 106, 0),
(57, 22, 225, 0),
(58, 22, 261, 1),
(59, 23, 159, 0),
(60, 23, 99, 1),
(61, 24, 185, 0),
(62, 24, 251, 1),
(63, 25, 159, 0),
(64, 25, 227, 0),
(65, 25, 105, 1),
(66, 26, 143, 0),
(67, 26, 250, 1),
(68, 27, 101, 0),
(69, 27, 169, 0),
(70, 27, 132, 1),
(71, 28, 170, 0),
(72, 28, 144, 1),
(73, 29, 233, 0),
(74, 29, 244, 0),
(75, 29, 237, 1),
(76, 30, 264, 0),
(77, 31, 225, 0),
(78, 31, 179, 0),
(79, 31, 83, 1),
(80, 32, 136, 0),
(81, 32, 26, 1),
(82, 33, 15, 0),
(83, 33, 231, 1),
(84, 34, 24, 0),
(85, 34, 206, 0),
(86, 34, 80, 1),
(87, 35, 50, 0),
(88, 35, 45, 1),
(89, 36, 122, 0),
(90, 36, 29, 0),
(91, 36, 36, 1),
(92, 37, 143, 0),
(93, 37, 196, 1),
(94, 38, 20, 0),
(95, 38, 104, 1),
(96, 39, 241, 0),
(97, 39, 43, 1),
(98, 40, 136, 0),
(99, 40, 153, 0),
(100, 40, 236, 1),
(101, 41, 36, 0),
(102, 41, 107, 0),
(103, 41, 113, 1),
(104, 42, 186, 0),
(105, 42, 180, 1),
(106, 43, 217, 0),
(107, 43, 99, 0),
(108, 43, 105, 1),
(109, 44, 205, 0),
(110, 44, 209, 1),
(111, 45, 58, 0),
(112, 45, 254, 1),
(113, 46, 12, 0),
(114, 47, 231, 0),
(115, 47, 260, 1),
(116, 48, 199, 0),
(117, 48, 249, 0),
(118, 48, 130, 1),
(119, 49, 241, 0),
(120, 49, 196, 1),
(121, 50, 79, 0),
(122, 50, 195, 0),
(123, 50, 104, 1),
(124, 51, 94, 0),
(125, 52, 53, 0),
(126, 52, 175, 1),
(127, 53, 151, 0),
(128, 53, 126, 0),
(129, 53, 25, 1),
(130, 54, 177, 0),
(131, 54, 129, 0),
(132, 54, 251, 1),
(133, 55, 43, 0),
(134, 55, 99, 0),
(135, 55, 159, 1),
(136, 56, 158, 0),
(137, 56, 43, 1),
(138, 57, 105, 0),
(139, 58, 36, 0),
(140, 58, 236, 0),
(141, 58, 200, 1),
(142, 59, 225, 0),
(143, 59, 196, 0),
(144, 59, 261, 1),
(145, 60, 231, 0),
(146, 60, 154, 0),
(147, 60, 257, 1),
(148, 61, 241, 0),
(149, 61, 163, 1),
(150, 62, 62, 0),
(151, 62, 232, 1),
(152, 63, 104, 0),
(153, 63, 129, 0),
(154, 63, 189, 1),
(155, 64, 139, 0),
(156, 65, 153, 0),
(157, 65, 154, 0),
(158, 65, 1, 1),
(159, 66, 224, 0),
(160, 66, 225, 1),
(161, 67, 22, 0),
(162, 67, 149, 0),
(163, 67, 151, 1),
(164, 68, 144, 0),
(165, 68, 90, 0),
(166, 68, 225, 1),
(167, 69, 136, 0),
(168, 69, 67, 0),
(169, 69, 80, 1),
(170, 70, 67, 0),
(171, 70, 97, 0),
(172, 70, 237, 1),
(173, 71, 56, 0),
(174, 72, 11, 0),
(175, 72, 155, 0),
(176, 73, 143, 0),
(177, 73, 116, 1),
(178, 74, 106, 0),
(179, 74, 200, 0),
(180, 74, 195, 1),
(181, 75, 106, 0),
(182, 75, 183, 0),
(183, 75, 217, 1),
(184, 76, 32, 0),
(185, 76, 141, 1),
(186, 77, 63, 0),
(187, 77, 107, 0),
(188, 77, 251, 1),
(189, 78, 198, 0),
(190, 79, 46, 0),
(191, 80, 225, 0),
(192, 81, 192, 0),
(193, 82, 17, 0),
(194, 83, 17, 0),
(195, 84, 17, 0),
(196, 85, 143, 0),
(197, 85, 76, 1),
(198, 86, 20, 0),
(199, 86, 110, 1),
(200, 87, 229, 0),
(201, 87, 30, 0),
(202, 87, 237, 1),
(203, 88, 181, 0),
(204, 88, 250, 0),
(205, 88, 211, 1),
(206, 89, 224, 0),
(207, 89, 196, 0),
(208, 89, 231, 1),
(209, 90, 218, 0),
(210, 90, 58, 0),
(211, 90, 60, 1),
(212, 91, 184, 0),
(213, 91, 194, 0),
(214, 91, 186, 1),
(215, 92, 171, 0),
(216, 92, 216, 0),
(217, 92, 107, 1),
(218, 93, 113, 0),
(219, 93, 236, 1),
(220, 94, 217, 0),
(221, 94, 189, 1),
(222, 95, 81, 0),
(223, 95, 31, 1),
(224, 96, 23, 0);

-- --------------------------------------------------------

--
-- Table structure for table `trainer`
--

CREATE TABLE `trainer` (
  `trainer_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` char(1) NOT NULL,
  `trainer_class` varchar(255) NOT NULL,
  `quote` varchar(255) NOT NULL,
  `money` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abilities`
--
ALTER TABLE `abilities`
  ADD PRIMARY KEY (`ability_id`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`game_id`),
  ADD KEY `generation_id` (`generation_id`);

--
-- Indexes for table `generation`
--
ALTER TABLE `generation`
  ADD PRIMARY KEY (`generation_id`);

--
-- Indexes for table `gyms`
--
ALTER TABLE `gyms`
  ADD PRIMARY KEY (`gym_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `game_id` (`game_id`),
  ADD KEY `gym_id` (`gym_id`);

--
-- Indexes for table `pokedex`
--
ALTER TABLE `pokedex`
  ADD PRIMARY KEY (`pokedex_id`),
  ADD KEY `fk_pokedex_trainer` (`trainer_id`),
  ADD KEY `fk_pokedex_pokemon` (`pokemon_id`);

--
-- Indexes for table `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`pokemon_id`),
  ADD KEY `fk_pokemon_gen` (`intro_gen`);

--
-- Indexes for table `pokemon_ability`
--
ALTER TABLE `pokemon_ability`
  ADD PRIMARY KEY (`pokemon_ability_id`),
  ADD KEY `ability_id` (`ability_id`),
  ADD KEY `pokemon_id` (`pokemon_id`);

--
-- Indexes for table `trainer`
--
ALTER TABLE `trainer`
  ADD PRIMARY KEY (`trainer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abilities`
--
ALTER TABLE `abilities`
  MODIFY `ability_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `game_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `generation`
--
ALTER TABLE `generation`
  MODIFY `generation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `gyms`
--
ALTER TABLE `gyms`
  MODIFY `gym_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `pokedex`
--
ALTER TABLE `pokedex`
  MODIFY `pokedex_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `pokemon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `pokemon_ability`
--
ALTER TABLE `pokemon_ability`
  MODIFY `pokemon_ability_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `trainer`
--
ALTER TABLE `trainer`
  MODIFY `trainer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `fk_game_gen` FOREIGN KEY (`generation_id`) REFERENCES `generation` (`generation_id`);

--
-- Constraints for table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `fk_location_game` FOREIGN KEY (`game_id`) REFERENCES `game` (`game_id`),
  ADD CONSTRAINT `fk_location_gym` FOREIGN KEY (`gym_id`) REFERENCES `gyms` (`gym_id`);

--
-- Constraints for table `pokedex`
--
ALTER TABLE `pokedex`
  ADD CONSTRAINT `fk_pokedex_pokemon` FOREIGN KEY (`pokemon_id`) REFERENCES `pokemon` (`pokemon_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pokedex_trainer` FOREIGN KEY (`trainer_id`) REFERENCES `trainer` (`trainer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pokemon`
--
ALTER TABLE `pokemon`
  ADD CONSTRAINT `fk_pokemon_gen` FOREIGN KEY (`intro_gen`) REFERENCES `generation` (`generation_id`);

--
-- Constraints for table `pokemon_ability`
--
ALTER TABLE `pokemon_ability`
  ADD CONSTRAINT `fk_ability_pokemon` FOREIGN KEY (`pokemon_id`) REFERENCES `pokemon` (`pokemon_id`),
  ADD CONSTRAINT `fk_pokemon_abilities` FOREIGN KEY (`ability_id`) REFERENCES `abilities` (`ability_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;