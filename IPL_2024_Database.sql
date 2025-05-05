-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 25, 2024 at 05:21 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `IPL - Indian Premier League (2024)`
--

-- --------------------------------------------------------

--
-- Table structure for table `coaching_staff`
--

CREATE TABLE `coaching_staff` (
  `Coach_ID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Team_ID` int(11) DEFAULT NULL,
  `Role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `coaching_staff`
--

INSERT INTO `coaching_staff` (`Coach_ID`, `Name`, `Team_ID`, `Role`) VALUES
(1, 'Mark Boucher', 1, 'Head Coach'),
(2, 'Kieron Pollard', 1, 'Batting Coach'),
(3, 'Shane Bond', 1, 'Bowling Coach'),
(4, 'James Pamment', 1, 'Fielding Coach'),
(5, 'Stephen Fleming', 2, 'Head Coach'),
(6, 'Michael Hussey', 2, 'Batting Coach'),
(7, 'Dwayne Bravo', 2, 'Bowling Coach'),
(8, 'Rajiv Kumar', 2, 'Fielding Coach'),
(9, 'Andy Flower', 3, 'Head Coach'),
(10, 'Adam Griffith', 3, 'Bowling Coach'),
(11, 'Sridharan Sriram', 3, 'Batting Coach'),
(12, 'Malolan Rangarajan', 3, 'Fielding Coach'),
(13, 'Ricky Ponting', 4, 'Head Coach'),
(14, 'Shane Watson', 4, 'Batting Coach'),
(15, 'James Hopes', 4, 'Bowling Coach'),
(16, 'Biju George', 4, 'Fielding Coach'),
(17, 'Chandrakant Pandit', 5, 'Head Coach'),
(18, 'Abhishek Nayar', 5, 'Batting Coach'),
(19, 'Bharat Arun', 5, 'Bowling Coach'),
(20, 'Ryan ten Doeschate', 5, 'Fielding Coach'),
(21, 'Trevor Bayliss', 6, 'Head Coach'),
(22, 'Wasim Jaffer', 6, 'Batting Coach'),
(23, 'Sunil Joshi', 6, 'Bowling Coach'),
(24, 'Trevor Gonsalves', 6, 'Fielding Coach'),
(25, 'Rahul Dravid', 7, 'Head Coach'),
(26, 'Vikram Rathour', 7, 'Batting Coach'),
(27, 'Shane Bond', 7, 'Bowling Coach'),
(28, 'Dishant Yagnik', 7, 'Fielding Coach'),
(29, 'Daniel Vettori', 8, 'Head Coach'),
(30, 'Hemang Badani', 8, 'Batting Coach'),
(31, 'Muttiah Muralidaran', 8, 'Bowling and Strategic Coach'),
(32, 'Ryan Cook', 8, 'Fielding Coach'),
(33, 'Ashish Nehra', 9, 'Head Coach'),
(34, 'Gary Kirsten', 9, 'Batting Coach'),
(35, 'Aashish Kapoor', 9, 'Bowling Coach'),
(36, 'Narender Negi', 9, 'Fielding Coach'),
(37, 'Justin Langer', 10, 'Head Coach'),
(38, 'Sridharan Sriram', 10, 'Batting Coach'),
(39, 'Jonty Rhodes', 10, 'Fielding Coach'),
(40, 'Morne Morkel', 10, 'Bowling Coach');

-- --------------------------------------------------------

--
-- Table structure for table `match_info`
--

CREATE TABLE `match_info` (
  `Match_ID` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `Time` time DEFAULT NULL,
  `Stadium_ID` int(11) DEFAULT NULL,
  `Pitch_ID` int(11) DEFAULT NULL,
  `Team1_ID` int(11) DEFAULT NULL,
  `Team2_ID` int(11) DEFAULT NULL,
  `Umpire_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `match_info`
--

INSERT INTO `match_info` (`Match_ID`, `Date`, `Time`, `Stadium_ID`, `Pitch_ID`, `Team1_ID`, `Team2_ID`, `Umpire_ID`) VALUES
(1, '2024-03-22', '20:30:00', 2, 7, 2, 3, 1),
(2, '2024-03-23', '16:00:00', 8, 29, 6, 4, 2),
(3, '2024-03-23', '20:00:00', 4, 15, 5, 8, 3),
(4, '2024-03-24', '16:00:00', 6, 21, 7, 10, 4),
(5, '2024-03-24', '20:00:00', 10, 40, 9, 1, 5),
(6, '2024-03-25', '20:00:00', 3, 9, 3, 6, 6),
(7, '2024-03-26', '20:00:00', 2, 6, 2, 9, 7),
(8, '2024-03-27', '20:00:00', 7, 26, 8, 1, 8),
(9, '2024-03-28', '20:00:00', 6, 22, 7, 4, 9),
(10, '2024-03-29', '20:00:00', 3, 12, 3, 5, 10),
(11, '2024-03-30', '20:00:00', 9, 33, 10, 6, 11),
(12, '2024-03-31', '16:00:00', 10, 40, 9, 8, 12),
(13, '2024-03-31', '20:00:00', 5, 17, 4, 2, 13),
(14, '2024-04-01', '20:00:00', 1, 1, 1, 7, 14),
(15, '2024-04-02', '20:00:00', 3, 11, 3, 10, 15),
(16, '2024-04-03', '20:00:00', 5, 17, 4, 5, 16),
(17, '2024-04-04', '20:00:00', 10, 39, 9, 6, 17),
(18, '2024-04-05', '20:00:00', 7, 27, 8, 2, 18),
(19, '2024-04-06', '20:00:00', 6, 23, 7, 3, 19),
(20, '2024-04-07', '16:00:00', 1, 3, 1, 4, 20),
(21, '2024-04-07', '20:00:00', 9, 34, 10, 9, 21),
(22, '2024-04-08', '20:00:00', 2, 5, 2, 5, 1),
(23, '2024-04-09', '20:00:00', 8, 30, 6, 8, 2),
(24, '2024-04-10', '20:00:00', 6, 21, 7, 9, 3),
(25, '2024-04-11', '20:00:00', 1, 1, 1, 3, 4),
(26, '2024-04-12', '20:00:00', 9, 36, 10, 4, 5),
(27, '2024-04-13', '20:00:00', 8, 31, 6, 7, 6),
(28, '2024-04-14', '16:00:00', 4, 14, 5, 10, 7),
(29, '2024-04-14', '20:00:00', 1, 3, 1, 2, 8),
(30, '2024-04-15', '20:00:00', 3, 9, 3, 8, 9),
(31, '2024-04-16', '20:00:00', 4, 14, 5, 7, 10),
(32, '2024-04-17', '20:00:00', 10, 39, 9, 4, 11),
(33, '2024-04-18', '20:00:00', 8, 30, 6, 1, 12),
(34, '2024-04-19', '20:00:00', 9, 36, 10, 2, 13),
(35, '2024-04-20', '20:00:00', 5, 19, 4, 8, 14),
(36, '2024-04-21', '16:00:00', 4, 15, 5, 3, 15),
(37, '2024-04-21', '20:00:00', 8, 30, 6, 9, 16),
(38, '2024-04-22', '20:00:00', 6, 23, 7, 1, 17),
(39, '2024-04-23', '20:00:00', 2, 6, 2, 10, 18),
(40, '2024-04-24', '20:00:00', 5, 20, 4, 9, 19),
(41, '2024-04-25', '20:00:00', 7, 25, 8, 3, 20),
(42, '2024-04-26', '20:00:00', 4, 15, 5, 6, 21),
(43, '2024-04-27', '16:00:00', 5, 18, 4, 1, 1),
(44, '2024-04-27', '20:00:00', 9, 35, 10, 7, 2),
(45, '2024-04-28', '16:00:00', 10, 40, 9, 3, 3),
(46, '2024-04-28', '20:00:00', 2, 7, 2, 8, 4),
(47, '2024-04-29', '20:00:00', 4, 13, 5, 4, 5),
(48, '2024-04-30', '20:00:00', 9, 35, 10, 1, 6),
(49, '2024-05-01', '20:00:00', 2, 8, 2, 6, 7),
(50, '2024-05-02', '20:00:00', 7, 28, 8, 7, 8),
(51, '2024-05-03', '20:00:00', 1, 2, 1, 5, 9),
(52, '2024-05-04', '20:00:00', 3, 10, 3, 9, 10),
(53, '2024-05-05', '16:00:00', 8, 29, 6, 2, 11),
(54, '2024-05-05', '20:00:00', 9, 33, 10, 5, 12),
(55, '2024-05-06', '20:00:00', 1, 1, 1, 8, 13),
(56, '2024-05-07', '20:00:00', 5, 20, 4, 7, 14),
(57, '2024-05-08', '20:00:00', 7, 26, 8, 10, 15),
(58, '2024-05-09', '20:00:00', 8, 30, 6, 3, 16),
(59, '2024-05-10', '20:00:00', 10, 39, 9, 2, 17),
(60, '2024-05-11', '20:00:00', 4, 13, 5, 1, 18),
(61, '2024-05-12', '16:00:00', 2, 8, 2, 7, 19),
(62, '2024-05-12', '20:00:00', 3, 9, 3, 4, 20),
(63, '2024-05-13', '20:00:00', 10, 37, 9, 5, 21),
(64, '2024-05-14', '20:00:00', 5, 18, 4, 10, 1),
(65, '2024-05-15', '20:00:00', 6, 23, 7, 6, 2),
(66, '2024-05-16', '20:00:00', 7, 26, 8, 9, 3),
(67, '2024-05-17', '20:00:00', 1, 1, 1, 10, 4),
(68, '2024-05-18', '20:00:00', 3, 11, 3, 2, 5),
(69, '2024-05-19', '16:00:00', 7, 27, 8, 6, 6),
(70, '2024-05-19', '20:00:00', 6, 21, 7, 5, 7),
(71, '2024-05-21', '20:00:00', 10, 37, 5, 8, 8),
(72, '2024-05-22', '20:00:00', 10, 39, 7, 3, 9),
(73, '2024-05-24', '20:00:00', 2, 5, 8, 7, 10),
(74, '2024-05-26', '20:00:00', 2, 7, 5, 8, 11);

-- --------------------------------------------------------

--
-- Table structure for table `Match_Summary`
--

CREATE TABLE `Match_Summary` (
  `Match_ID` int(11) DEFAULT NULL,
  `Team1_Score` int(11) DEFAULT NULL,
  `Team1_Wicket` int(11) DEFAULT NULL,
  `Team2_Score` int(11) DEFAULT NULL,
  `Team2_Wicket` int(11) DEFAULT NULL,
  `Winner_Team_ID` int(11) DEFAULT NULL,
  `Result` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Match_Summary`
--

INSERT INTO `Match_Summary` (`Match_ID`, `Team1_Score`, `Team1_Wicket`, `Team2_Score`, `Team2_Wicket`, `Winner_Team_ID`, `Result`) VALUES
(1, 176, 4, 173, 6, 2, 'Chennai Super Kings won by 6 wkts'),
(2, 177, 6, 174, 9, 6, 'Punjab Kings won by 4 wkts'),
(3, 208, 7, 204, 7, 5, 'Kolkata Knight Riders won by 4 runs'),
(4, 193, 4, 173, 6, 7, 'Rajasthan Royals won by 20 runs'),
(5, 168, 6, 162, 9, 9, 'Gujarat Titans won by 6 runs'),
(6, 178, 6, 176, 6, 3, 'Royal Challengers Bengaluru won by 4 wkts'),
(7, 206, 6, 143, 8, 2, 'Chennai Super Kings won by 63 runs'),
(8, 277, 3, 246, 5, 8, 'Sunrisers Hyderabad won by 31 runs'),
(9, 185, 5, 173, 5, 7, 'Rajasthan Royals won by 12 runs'),
(10, 182, 6, 186, 3, 5, 'Kolkata Knight Riders won by 7 wkts'),
(11, 199, 8, 178, 5, 10, 'Lucknow Super Giants won by 21 runs'),
(12, 168, 3, 162, 8, 9, 'Gujarat Titans won by 7 wkts'),
(13, 191, 5, 171, 6, 4, 'Delhi Capitals won by 20 runs'),
(14, 125, 9, 127, 4, 7, 'Rajasthan Royals won by 6 wkts'),
(15, 153, 10, 181, 5, 10, 'Lucknow Super Giants won by 28 runs'),
(16, 166, 10, 272, 7, 5, 'Kolkata Knight Riders won by 106 runs'),
(17, 199, 4, 200, 7, 6, 'Punjab Kings won by 3 wkts'),
(18, 166, 4, 165, 5, 8, 'Sunrisers Hyderabad won by 6 wkts'),
(19, 189, 4, 183, 3, 7, 'Rajasthan Royals won by 6 wkts'),
(20, 234, 5, 205, 8, 1, 'Mumbai Indians won by 29 runs'),
(21, 163, 5, 130, 10, 10, 'Lucknow Super Giants won by 33 runs'),
(22, 141, 3, 137, 9, 2, 'Chennai Super Kings won by 7 wkts'),
(23, 180, 6, 182, 9, 8, 'Sunrisers Hyderabad won by 2 runs'),
(24, 196, 3, 199, 7, 9, 'Gujarat Titans won by 3 wkts'),
(25, 199, 3, 196, 8, 1, 'Mumbai Indians won by 7 wkts'),
(26, 167, 7, 170, 4, 4, 'Delhi Capitals won by 6 wkts'),
(27, 147, 8, 152, 7, 7, 'Rajasthan Royals won by 3 wkts'),
(28, 162, 2, 161, 7, 5, 'Kolkata Knight Riders won by 8 wkts'),
(29, 186, 6, 206, 4, 2, 'Chennai Super Kings won by 20 runs'),
(30, 262, 7, 287, 3, 8, 'Sunrisers Hyderabad won by 25 runs'),
(31, 223, 6, 224, 8, 7, 'Rajasthan Royals won by 2 wkts'),
(32, 89, 10, 92, 4, 4, 'Delhi Capitals won by 6 wkts'),
(33, 183, 10, 192, 7, 1, 'Mumbai Indians won by 9 runs'),
(34, 180, 2, 176, 6, 10, 'Lucknow Super Giants won by 8 wkts'),
(35, 199, 10, 266, 7, 8, 'Sunrisers Hyderabad won by 67 runs'),
(36, 222, 6, 221, 10, 5, 'Kolkata Knight Riders won by 1 run'),
(37, 142, 10, 146, 7, 9, 'Gujarat Titans won by 3 wkts'),
(38, 183, 1, 179, 9, 7, 'Rajasthan Royals won by 9 wkts'),
(39, 210, 4, 213, 4, 10, 'Lucknow Super Giants won by 6 wkts'),
(40, 224, 4, 220, 8, 4, 'Delhi Capitals won by 4 runs'),
(41, 171, 8, 206, 7, 3, 'Royal Challengers Bengaluru won by 35 runs'),
(42, 261, 6, 262, 2, 6, 'Punjab Kings won by 8 wkts'),
(43, 257, 4, 247, 9, 4, 'Delhi Capitals won by 10 runs'),
(44, 196, 5, 199, 3, 7, 'Rajasthan Royals won by 7 wkts'),
(45, 200, 3, 206, 1, 3, 'Royal Challengers Bengaluru won by 9 wkts'),
(46, 212, 3, 134, 10, 2, 'Chennai Super Kings won by 78 runs'),
(47, 157, 3, 153, 9, 5, 'Kolkata Knight Riders won by 7 wkts'),
(48, 145, 6, 144, 7, 10, 'Lucknow Super Giants won by 4 wkts'),
(49, 162, 7, 163, 3, 6, 'Punjab Kings won by 7 wkts'),
(50, 201, 3, 200, 7, 8, 'Sunrisers Hyderabad won by 1 run'),
(51, 145, 10, 169, 10, 5, 'Kolkata Knight Riders won by 24 runs'),
(52, 152, 6, 147, 10, 3, 'Royal Challengers Bengaluru won by 4 wkts'),
(53, 139, 9, 167, 9, 2, 'Chennai Super Kings won by 28 runs'),
(54, 137, 10, 235, 6, 5, 'Kolkata Knight Riders won by 98 runs'),
(55, 174, 3, 173, 8, 1, 'Mumbai Indians won by 7 wkts'),
(56, 221, 8, 201, 8, 4, 'Delhi Capitals won by 20 runs'),
(57, 167, 0, 165, 4, 4, 'Sunrisers Hyderabad won by 10 wkts'),
(58, 181, 10, 241, 7, 3, 'Royal Challengers Bengaluru won by 60 runs'),
(59, 231, 3, 196, 8, 9, 'Gujarat Titans won by 35 runs'),
(60, 157, 7, 139, 8, 5, 'Kolkata Knight Riders won by 18 runs'),
(61, 145, 5, 141, 5, 2, 'Chennai Super Kings won by 5 wkts'),
(62, 187, 9, 140, 10, 3, 'Royal Challengers Bengaluru won by 47 runs'),
(63, NULL, NULL, NULL, NULL, NULL, 'Match abandoned without toss'),
(64, 208, 4, 189, 9, 4, 'Delhi Capitals won by 19 runs'),
(65, 144, 9, 145, 5, 6, 'Punjab Kings won by 5 wkts'),
(66, NULL, NULL, NULL, NULL, NULL, 'Match abandoned without toss'),
(67, 196, 6, 214, 6, 10, 'Lucknow Super Giants won by 18 runs'),
(68, 218, 5, 191, 7, 3, 'Royal Challengers Bengaluru won by 27 runs'),
(69, 215, 6, 214, 5, 8, 'Sunrisers Hyderabad won by 4 wkts'),
(70, NULL, NULL, NULL, NULL, NULL, 'Match abandoned due to rain (with toss)'),
(71, 164, 2, 159, 10, 5, 'Kolkata Knight Riders won by 8 wkts'),
(72, 174, 6, 172, 8, 7, 'Rajasthan Royals won by 4 wkts'),
(73, 175, 9, 139, 7, 8, 'Sunrisers Hyderabad won by 36 runs'),
(74, 114, 2, 113, 10, 5, 'Kolkata Knight Riders won by 8 wkts');

-- --------------------------------------------------------

--
-- Table structure for table `pitch`
--

CREATE TABLE `pitch` (
  `Pitch_ID` int(11) NOT NULL,
  `Stadium_ID` int(11) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pitch`
--

INSERT INTO `pitch` (`Pitch_ID`, `Stadium_ID`, `Type`) VALUES
(1, 1, 'Grass'),
(2, 1, 'Hard'),
(3, 1, 'Dry'),
(4, 1, 'Green'),
(5, 2, 'Grass'),
(6, 2, 'Hard'),
(7, 2, 'Dry'),
(8, 2, 'Dusty'),
(9, 3, 'Grass'),
(10, 3, 'Hard'),
(11, 3, 'Dry'),
(12, 3, 'Green'),
(13, 4, 'Grass'),
(14, 4, 'Hard'),
(15, 4, 'Dry'),
(16, 4, 'Dusty'),
(17, 5, 'Grass'),
(18, 5, 'Hard'),
(19, 5, 'Dry'),
(20, 5, 'Green'),
(21, 6, 'Grass'),
(22, 6, 'Hard'),
(23, 6, 'Dry'),
(24, 6, 'Dusty'),
(25, 7, 'Grass'),
(26, 7, 'Hard'),
(27, 7, 'Dry'),
(28, 7, 'Green'),
(29, 8, 'Grass'),
(30, 8, 'Hard'),
(31, 8, 'Dry'),
(32, 8, 'Dusty'),
(33, 9, 'Grass'),
(34, 9, 'Hard'),
(35, 9, 'Dry'),
(36, 9, 'Green'),
(37, 10, 'Grass'),
(38, 10, 'Hard'),
(39, 10, 'Dry'),
(40, 10, 'Dusty');

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `Player_ID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Team_ID` int(11) DEFAULT NULL,
  `Role` varchar(50) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Nationality` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`Player_ID`, `Name`, `Team_ID`, `Role`, `Age`, `Nationality`) VALUES
(1, 'Rohit Sharma', 1, 'Top Order Batter', 36, 'Indian'),
(2, 'Ishan Kishan', 1, 'Wicketkeeper Batter', 25, 'Indian'),
(3, 'Tim David', 1, 'Middle Order Batter', 27, 'Australian'),
(4, 'Dewald Brevis', 1, 'Batting Allrounder', 20, 'South African'),
(5, 'Gerald Coetzee', 1, 'Bowler', 23, 'South African'),
(6, 'Arjun Tendulkar', 1, 'Bowler', 24, 'Indian'),
(7, 'Tilak Varma', 1, 'Batting Allrounder', 21, 'Indian'),
(8, 'Suryakumar Yadav', 1, 'Batter', 33, 'Indian'),
(9, 'Harvik Desai', 1, 'Wicketkeeper Batter', 24, 'Indian'),
(10, 'Hardik Pandya', 1, 'Allrounder', 30, 'Indian'),
(11, 'Shams Mulani', 1, 'Allrounder', 26, 'Indian'),
(12, 'Jasprit Bumrah', 1, 'Bowler', 30, 'Indian'),
(13, 'Akash Madhwal', 1, 'Bowler', 30, 'Indian'),
(14, 'Luke Wood', 1, 'Bowler', 28, 'English'),
(15, 'Romario Shepherd', 1, 'Bowling Allrounder', 29, 'West Indian'),
(16, 'Ruturaj Gaikwad', 2, 'Batter', 26, 'Indian'),
(17, 'MS Dhoni', 2, 'Wicketkeeper Batter', 42, 'Indian'),
(18, 'Ajinkya Rahane', 2, 'Top Order Batter', 35, 'Indian'),
(19, 'Shivam Dube', 2, 'Allrounder', 30, 'Indian'),
(20, 'Deepak Chahar', 2, 'Bowler', 31, 'Indian'),
(21, 'Mukesh Choudhary', 2, 'Bowler', 27, 'Indian'),
(22, 'Tushar Deshpande', 2, 'Bowler', 28, 'Indian'),
(23, 'Nishant Sindhu', 2, 'Allrounder', 19, 'Indian'),
(24, 'Shaik Rasheed', 2, 'Batter', 19, 'Indian'),
(25, 'Rajvardhan Hangargekar', 2, 'Bowling Allrounder', 21, 'Indian'),
(26, 'Moeen Ali', 2, 'Batting Allrounder', 36, 'English'),
(27, 'Devon Conway', 2, 'Wicketkeeper Batter', 32, 'New Zealander'),
(28, 'Mitchell Santner', 2, 'Bowling Allrounder', 31, 'New Zealander'),
(29, 'Maheesh Theekshana', 2, 'Bowler', 23, 'Sri Lankan'),
(30, 'Daryl Mitchell', 2, 'Batting Allrounder', 32, 'New Zealander'),
(31, 'Faf du Plessis', 3, 'Middle order Batter', 39, 'South African'),
(32, 'Glenn Maxwell', 3, 'Batting Allrounder', 35, 'Australian'),
(33, 'Tom Curran', 3, 'Allrounder', 28, 'English'),
(34, 'Lockie Ferguson', 3, 'Bowler', 32, 'New Zealander'),
(35, 'Reece Topley', 3, 'Bowler', 29, 'English'),
(36, 'Virat Kohli', 3, 'Top order Batter', 35, 'Indian'),
(37, 'Dinesh Karthik', 3, 'Wicketkeeper Batter', 38, 'Indian'),
(38, 'Mohammed Siraj', 3, 'Bowler', 29, 'Indian'),
(39, 'Rajat Patidar', 3, 'Top order Batter', 30, 'Indian'),
(40, 'Anuj Rawat', 3, 'Wicketkeeper Batter', 24, 'Indian'),
(41, 'Mahipal Lomror', 3, 'Allrounder', 24, 'Indian'),
(42, 'Himanshu Sharma', 3, 'Bowler', 25, 'Indian'),
(43, 'Akash Deep', 3, 'Bowler', 27, 'Indian'),
(44, 'Mayank Dagar', 3, 'Bowler', 27, 'Indian'),
(45, 'Vijaykumar Vyshak', 3, 'Bowler', 26, 'Indian'),
(46, 'David Warner', 4, 'Opening Batter', 37, 'Australian'),
(47, 'Mitchell Marsh', 4, 'Allrounder', 32, 'Australian'),
(48, 'Anrich Nortje', 4, 'Bowler', 30, 'South African'),
(49, 'Jhye Richardson', 4, 'Bowler', 27, 'Australian'),
(50, 'Lungi Ngidi', 4, 'Bowler', 27, 'South African'),
(51, 'Rishabh Pant', 4, 'Wicketkeeper Batter', 26, 'Indian'),
(52, 'Axar Patel', 4, 'Allrounder', 29, 'Indian'),
(53, 'Kuldeep Yadav', 4, 'Bowler', 29, 'Indian'),
(54, 'Prithvi Shaw', 4, 'Opening Batter', 24, 'Indian'),
(55, 'Mukesh Kumar', 4, 'Bowler', 30, 'Indian'),
(56, 'Khaleel Ahmed', 4, 'Bowler', 26, 'Indian'),
(57, 'Yash Dhull', 4, 'Top order Batter', 21, 'Indian'),
(58, 'Abishek Porel', 4, 'Wicketkeeper Batter', 21, 'Indian'),
(59, 'Lalit Yadav', 4, 'Allrounder', 26, 'Indian'),
(60, 'Vicky Ostwal', 4, 'Bowler', 21, 'Indian'),
(61, 'Shreyas Iyer', 5, 'Top order Batter', 29, 'Indian'),
(62, 'Nitish Rana', 5, 'Middle order Batter', 29, 'Indian'),
(63, 'Venkatesh Iyer', 5, 'Allrounder', 28, 'Indian'),
(64, 'Manish Pandey', 5, 'Top order Batter', 34, 'Indian'),
(65, 'Vaibhav Arora', 5, 'Bowler', 26, 'Indian'),
(66, 'Harshit Rana', 5, 'Bowler', 21, 'Indian'),
(67, 'Suyash Sharma', 5, 'Bowler', 20, 'Indian'),
(68, 'Ramandeep Singh', 5, 'Middle order Batter', 26, 'Indian'),
(69, 'Angkrish Raghuvanshi', 5, 'Top order Batter', 19, 'Indian'),
(70, 'Srikar Bharat', 5, 'Wicketkeeper Batter', 30, 'Indian'),
(71, 'Sunil Narine', 5, 'Bowling Allrounder', 35, 'West Indian'),
(72, 'Andre Russell', 5, 'Allrounder', 35, 'West Indian'),
(73, 'Dushmantha Chameera', 5, 'Bowler', 31, 'Sri Lankan'),
(74, 'Mitchell Starc', 5, 'Bowler', 33, 'Australian'),
(75, 'Rahmanullah Gurbaz', 5, 'Wicketkeeper Batter', 22, 'Afghan'),
(76, 'Shikhar Dhawan', 6, 'Opening Batter', 38, 'Indian'),
(77, 'Harpreet Singh', 6, 'Batter', 32, 'Indian'),
(78, 'Prabhsimran Singh', 6, 'Wicketkeeper Batter', 23, 'Indian'),
(79, 'Arshdeep Singh', 6, 'Bowler', 24, 'Indian'),
(80, 'Rahul Chahar', 6, 'Bowler', 24, 'Indian'),
(81, 'Harpreet Brar', 6, 'Bowler', 28, 'Indian'),
(82, 'Vidwath Kaverappa', 6, 'Bowler', 24, 'Indian'),
(83, 'Atharva Taide', 6, 'Batting Allrounder', 23, 'Indian'),
(84, 'Shivam Singh', 6, 'Allrounder', 28, 'Indian'),
(85, 'Rishi Dhawan', 6, 'Allrounder', 33, 'Indian'),
(86, 'Rilee Rossouw', 6, 'Top order Batter', 34, 'South African'),
(87, 'Sikandar Raza', 6, 'Batting Allrounder', 37, 'Zimbabwean'),
(88, 'Nathan Ellis', 6, 'Bowler', 29, 'Australian'),
(89, 'Kagiso Rabada', 6, 'Bowler', 28, 'South African'),
(90, 'Sam Curran', 6, 'Allrounder', 25, 'English'),
(91, 'Sanju Samson', 7, 'Wicketkeeper Batter', 29, 'Indian'),
(92, 'Yashasvi Jaiswal', 7, 'Opening Batter', 21, 'Indian'),
(93, 'Dhruv Jurel', 7, 'Wicketkeeper Batter', 22, 'Indian'),
(94, 'Riyan Parag', 7, 'Top order Batter', 22, 'Indian'),
(95, 'Ravichandran Ashwin', 7, 'Bowling Allrounder', 37, 'Indian'),
(96, 'Avesh Khan', 7, 'Bowler', 27, 'Indian'),
(97, 'Yuzvendra Chahal', 7, 'Bowler', 33, 'Indian'),
(98, 'Sandeep Sharma', 7, 'Bowler', 30, 'Indian'),
(99, 'Navdeep Saini', 7, 'Bowler', 31, 'Indian'),
(100, 'Kuldeep Sen', 7, 'Bowler', 27, 'Indian'),
(101, 'Jos Buttler', 7, 'Wicketkeeper Batter', 33, 'English'),
(102, 'Shimron Hetmyer', 7, 'Middle order Batter', 26, 'West Indian'),
(103, 'Rovman Powell', 7, 'Middle order Batter', 30, 'West Indian'),
(104, 'Trent Boult', 7, 'Bowler', 34, 'New Zealander'),
(105, 'Donovan Ferreira', 7, 'Allrounder', 25, 'South African'),
(106, 'Abdul Samad', 8, 'Batter', 22, 'Indian'),
(107, 'Mayank Agarwal', 8, 'Batter', 32, 'Indian'),
(108, 'Rahul Tripathi', 8, 'Top order Batter', 32, 'Indian'),
(109, 'Washington Sundar', 8, 'Bowling Allrounder', 24, 'Indian'),
(110, 'Shahbaz Ahmed', 8, 'Allrounder', 29, 'Indian'),
(111, 'T Natarajan', 8, 'Bowler', 32, 'Indian'),
(112, 'Umran Malik', 8, 'Bowler', 24, 'Indian'),
(113, 'Bhuvneshwar Kumar', 8, 'Bowler', 33, 'Indian'),
(114, 'Mayank Markande', 8, 'Bowler', 26, 'Indian'),
(115, 'Akash Singh', 8, 'Bowler', 21, 'Indian'),
(116, 'Heinrich Klaasen', 8, 'Wicketkeeper Batter', 32, 'South African'),
(117, 'Travis Head', 8, 'Top order Batter', 29, 'Australian'),
(118, 'Glenn Phillips', 8, 'Allrounder', 27, 'New Zealander'),
(119, 'Pat Cummins', 8, 'Bowler', 30, 'Australian'),
(120, 'Fazalhaq Farooqi', 8, 'Bowler', 23, 'Afghan'),
(121, 'Rashid Khan', 9, 'Bowling Allrounder', 25, 'Afghan'),
(122, 'Kane Williamson', 9, 'Top order Batter', 33, 'New Zealander'),
(123, 'Wriddhiman Saha', 9, 'Wicketkeeper Batter', 39, 'Indian'),
(124, 'Mohammed Shami', 9, 'Bowler', 33, 'Indian'),
(125, 'Noor Ahmad', 9, 'Bowler', 18, 'Afghan'),
(126, 'Umesh Yadav', 9, 'Bowler', 36, 'Indian'),
(127, 'Shubman Gill', 9, 'Opening Batter', 24, 'Indian'),
(128, 'Rahul Tewatia', 9, 'Bowling Allrounder', 30, 'Indian'),
(129, 'Sai Sudharsan', 9, 'Top order Batter', 22, 'Indian'),
(130, 'Darshan Nalkande', 9, 'Bowler', 25, 'Indian'),
(131, 'Gurnoor Brar', 9, 'Bowler', 23, 'Indian'),
(132, 'Josh Little', 9, 'Bowler', 24, 'Irish'),
(133, 'Jayant Yadav', 9, 'Bowler', 33, 'Indian'),
(134, 'Manav Suthar', 9, 'Bowling Allrounder', 21, 'Indian'),
(135, 'Azmatullah Omarzai', 9, 'Allrounder', 23, 'Afghan'),
(136, 'Quinton de Kock', 10, 'Wicketkeeper Batter', 31, 'South African'),
(137, 'Nicholas Pooran', 10, 'Wicketkeeper Batter', 28, 'West Indian'),
(138, 'Kyle Mayers', 10, 'Batting Allrounder', 31, 'West Indian'),
(139, 'Naveen-ul-Haq', 10, 'Bowler', 24, 'Afghan'),
(140, 'Matt Henry', 10, 'Bowler', 32, 'New Zealander'),
(141, 'KL Rahul', 10, 'Wicketkeeper Batter', 31, 'Indian'),
(142, 'Deepak Hooda', 10, 'Allrounder', 28, 'Indian'),
(143, 'Krunal Pandya', 10, 'Allrounder', 32, 'Indian'),
(144, 'Ravi Bishnoi', 10, 'Bowler', 23, 'Indian'),
(145, 'Mayank Yadav', 10, 'Bowler', 21, 'Indian'),
(146, 'Shivam Mavi', 10, 'Bowler', 25, 'Indian'),
(147, 'Ayush Badoni', 10, 'Batter', 24, 'Indian'),
(148, 'Devdutt Padikkal', 10, 'Top order Batter', 23, 'Indian'),
(149, 'Mohsin Khan', 10, 'Bowler', 25, 'Indian'),
(150, 'Amit Mishra', 10, 'Bowler', 41, 'Indian');

-- --------------------------------------------------------

--
-- Table structure for table `sponsorship`
--

CREATE TABLE `sponsorship` (
  `Sponsorship_ID` int(11) NOT NULL,
  `Sponsor_Name` varchar(100) DEFAULT NULL,
  `Team_ID` int(11) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `Contract_Amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sponsorship`
--

INSERT INTO `sponsorship` (`Sponsorship_ID`, `Sponsor_Name`, `Team_ID`, `Category`, `Contract_Amount`) VALUES
(1, 'Slice', 1, 'Main Shirt Sponsor', 260000.00),
(2, 'IDFC First Bank', 1, 'Back Shirt Sponsor', 160000.00),
(3, 'DHL', 1, 'Chest Branding', 220000.00),
(4, 'TVS Eurogrip', 2, 'Main Shirt Sponsor', 250000.00),
(5, 'Gulf Oil', 2, 'Back Shirt Sponsor', 150000.00),
(6, 'British Empire', 2, 'Chest Branding', 190000.00),
(7, 'Muthoot Fincorp', 3, 'Main Shirt Sponsor', 250000.00),
(8, 'Exide Batteries', 3, 'Back Shirt Sponsor', 140000.00),
(9, 'DP World', 3, 'Chest Branding', 190000.00),
(10, 'Hero Fincorp', 4, 'Main Shirt Sponsor', 270000.00),
(11, 'DP World', 4, 'Back Shirt Sponsor', 170000.00),
(12, 'Greenpanel', 4, 'Chest Branding', 230000.00),
(13, 'MyFab11', 5, 'Main Shirt Sponsor', 220000.00),
(14, 'Lux Cozi', 5, 'Back Shirt Sponsor', 120000.00),
(15, 'Joy Personal Care', 5, 'Chest Branding', 180000.00),
(16, 'Lotus Herbals', 6, 'Main Shirt Sponsor', 210000.00),
(17, 'BKT Tires', 6, 'Back Shirt Sponsor', 130000.00),
(18, 'EBIX Cash', 6, 'Chest Branding', 180000.00),
(19, 'Happilo', 7, 'Main Shirt Sponsor', 210000.00),
(20, 'Dollar Industries', 7, 'Back Shirt Sponsor', 140000.00),
(21, 'JK Lakshmi Cement', 7, 'Chest Branding', 170000.00),
(22, 'Cars24', 8, 'Main Shirt Sponsor', 200000.00),
(23, 'Ralco Tyres', 8, 'Back Shirt Sponsor', 120000.00),
(24, 'Kent RO', 8, 'Chest Branding', 160000.00),
(25, 'Capri Global', 9, 'Main Shirt Sponsor', 240000.00),
(26, 'Astral Pipes', 9, 'Back Shirt Sponsor', 150000.00),
(27, 'Jio', 9, 'Chest Branding', 200000.00),
(28, 'My11Circle', 10, 'Main Shirt Sponsor', 230000.00),
(29, 'ACKO General Insurance', 10, 'Back Shirt Sponsor', 130000.00),
(30, 'Dabur', 10, 'Chest Branding', 190000.00);

-- --------------------------------------------------------

--
-- Table structure for table `stadium`
--

CREATE TABLE `stadium` (
  `Stadium_ID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `Capacity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `stadium`
--

INSERT INTO `stadium` (`Stadium_ID`, `Name`, `Location`, `Capacity`) VALUES
(1, 'Wankhede Stadium', 'Mumbai', 33108),
(2, 'M. A. Chidambaram Stadium', 'Chennai', 50000),
(3, 'M. Chinnaswamy Stadium', 'Bengaluru', 40000),
(4, 'Eden Gardens', 'Kolkata', 68000),
(5, 'Arun Jaitley Stadium', 'Delhi', 41820),
(6, 'Sawai Mansingh Stadium', 'Jaipur', 30000),
(7, 'Rajiv Gandhi International Stadium', 'Hyderabad', 55000),
(8, 'Punjab Cricket Association Stadium', 'Mohali', 26000),
(9, 'Ekana Cricket Stadium', 'Lucknow', 41820),
(10, 'Narendra Modi Stadium', 'Ahmedabad', 132000);

-- --------------------------------------------------------

--
-- Table structure for table `stall`
--

CREATE TABLE `stall` (
  `Stall_ID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Stadium_ID` int(11) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `stall`
--

INSERT INTO `stall` (`Stall_ID`, `Name`, `Stadium_ID`, `Type`) VALUES
(1, 'Mumbai Food Stall', 1, 'Food'),
(2, 'Muskan Cold Beverages', 1, 'Beverage'),
(3, 'Team Merchandise', 1, 'Merchandise'),
(4, 'Help Desk', 1, 'Service'),
(5, 'Chennai Snack Bar', 2, 'Food'),
(6, 'Refreshment Corner', 2, 'Beverage'),
(7, 'Fan Shop', 2, 'Merchandise'),
(8, 'Lost & Found', 2, 'Service'),
(9, 'Bengaluru Delights', 3, 'Food'),
(10, 'Mujhu Juice Corner', 3, 'Beverage'),
(11, 'Official Souvenirs', 3, 'Merchandise'),
(12, 'First Aid Station', 3, 'Service'),
(13, 'Kolkata Biryani', 4, 'Food'),
(14, 'Soft Drinks Hub', 4, 'Beverage'),
(15, 'Cricket Memorabilia', 4, 'Merchandise'),
(16, 'Customer Care', 4, 'Service'),
(17, 'Delhi Food Hub', 5, 'Food'),
(18, 'Delight Coffee Shop', 5, 'Beverage'),
(19, 'Jersey Outlet', 5, 'Merchandise'),
(20, 'Emergency Desk', 5, 'Service'),
(21, 'Rajasthani Cuisine', 6, 'Food'),
(22, 'Tea Counter', 6, 'Beverage'),
(23, 'Team Apparel', 6, 'Merchandise'),
(24, 'Information Booth', 6, 'Service'),
(25, 'Hyderabadi Snacks', 7, 'Food'),
(26, 'Bull Energy Drinks', 7, 'Beverage'),
(27, 'Sports Shop', 7, 'Merchandise'),
(28, 'Medical Help', 7, 'Service'),
(29, 'Punjabi Dhaba', 8, 'Food'),
(30, 'Purity Water Station', 8, 'Beverage'),
(31, 'Caps & Jerseys', 8, 'Merchandise'),
(32, 'Safety Assistance', 8, 'Service'),
(33, 'Lucknow Food Cart', 9, 'Food'),
(34, 'Cold Coffee Bar', 9, 'Beverage'),
(35, 'Official Cricket Gear', 9, 'Merchandise'),
(36, 'Help Center', 9, 'Service'),
(37, 'Gujarat Specialties', 10, 'Food'),
(38, 'Tea and Chill', 10, 'Beverage'),
(39, 'Mega Merchandise', 10, 'Merchandise'),
(40, 'Doctor on Call', 10, 'Service');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `Team_ID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Home_Stadium_ID` int(11) DEFAULT NULL,
  `Captain_Name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`Team_ID`, `Name`, `Home_Stadium_ID`, `Captain_Name`) VALUES
(1, 'Mumbai Indians', 1, 'Hardik Pandya'),
(2, 'Chennai Super Kings', 2, 'Ruturaj Gaikwad'),
(3, 'Royal Challengers Bangaluru', 3, 'Faf du Plessis'),
(4, 'Delhi Capitals', 5, 'Rishab Pant'),
(5, 'Kolkata Knight Riders', 4, 'Shreyas Iyer'),
(6, 'Punjab Kings', 8, 'Shikhar Dhawan'),
(7, 'Rajasthan Royals', 6, 'Sanju Samson'),
(8, 'Sunrisers Hyderabad', 7, 'Pat Cummins'),
(9, 'Gujarat Titans', 10, 'Shubman Gill'),
(10, 'Lucknow Super Giants', 9, 'KL Rahul');

-- --------------------------------------------------------

--
-- Table structure for table `Ticket`
--

CREATE TABLE `Ticket` (
  `Match_ID` int(11) DEFAULT NULL,
  `Gallery_Tickets_Sold` int(11) DEFAULT NULL,
  `ClubHouse_Tickets_Sold` int(11) DEFAULT NULL,
  `VIP_Tickets_Sold` int(11) DEFAULT NULL,
  `GrandStand_Tickets_Sold` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Ticket`
--

INSERT INTO `Ticket` (`Match_ID`, `Gallery_Tickets_Sold`, `ClubHouse_Tickets_Sold`, `VIP_Tickets_Sold`, `GrandStand_Tickets_Sold`) VALUES
(1, 25000, 15000, 7000, 3000),
(2, 20000, 12000, 5000, 2000),
(3, 30000, 20000, 10000, 8000),
(4, 25000, 15000, 7000, 3000),
(5, 60000, 40000, 20000, 10000),
(6, 22000, 13000, 6000, 2000),
(7, 25000, 15000, 7000, 3000),
(8, 27000, 18000, 8000, 3000),
(9, 24000, 14000, 6000, 2000),
(10, 22000, 13000, 6000, 2000),
(11, 20000, 12000, 5000, 2000),
(12, 50000, 30000, 15000, 5000),
(13, 29000, 18000, 8000, 3000),
(14, 16000, 11000, 4000, 1000),
(15, 22000, 13000, 6000, 2000),
(16, 29000, 18000, 8000, 3000),
(17, 60000, 40000, 20000, 10000),
(18, 27000, 18000, 8000, 3000),
(19, 24000, 14000, 6000, 2000),
(20, 16000, 11000, 4000, 1000),
(21, 20000, 12000, 5000, 2000),
(22, 25000, 15000, 7000, 3000),
(23, 13000, 8000, 4000, 1000),
(24, 27000, 18000, 8000, 3000),
(25, 16000, 11000, 4000, 1000),
(26, 20000, 12000, 5000, 2000),
(27, 13000, 8000, 4000, 1000),
(28, 50000, 30000, 15000, 5000),
(29, 16000, 11000, 4000, 1000),
(30, 22000, 13000, 6000, 2000),
(31, 50000, 30000, 15000, 5000),
(32, 60000, 40000, 20000, 10000),
(33, 13000, 8000, 4000, 1000),
(34, 20000, 12000, 5000, 2000),
(35, 50000, 30000, 15000, 5000),
(36, 30000, 20000, 10000, 8000),
(37, 13000, 8000, 4000, 1000),
(38, 24000, 14000, 6000, 2000),
(39, 25000, 15000, 7000, 3000),
(40, 50000, 30000, 15000, 5000),
(41, 24000, 14000, 6000, 2000),
(42, 22000, 13000, 6000, 2000),
(43, 15000, 10000, 4000, 1000),
(44, 25000, 15000, 7000, 3000),
(45, 20000, 12000, 5000, 2000),
(46, 15000, 10000, 4000, 1000),
(47, 22000, 13000, 6000, 2000),
(48, 25000, 15000, 7000, 3000),
(49, 20000, 12000, 5000, 2000),
(50, 25000, 15000, 7000, 3000),
(51, 24000, 14000, 6000, 2000),
(52, 15000, 10000, 4000, 1000),
(53, 27000, 17000, 8000, 3000),
(54, 22000, 13000, 6000, 2000),
(55, 23000, 14000, 6500, 2500),
(56, 26000, 16000, 7500, 3000),
(57, 24000, 14000, 6000, 2000),
(58, 20000, 12000, 5000, 2000),
(59, 25000, 15000, 7000, 3000),
(60, 20000, 12000, 5000, 2000),
(61, 22000, 13000, 6000, 2000),
(62, 24000, 14000, 6000, 2000),
(63, 25000, 15000, 7000, 3000),
(64, 26000, 16000, 7500, 3000),
(65, 23000, 14000, 6500, 2500),
(66, 27000, 17000, 8000, 3000),
(67, 24000, 14000, 6000, 2000),
(68, 22000, 13000, 6000, 2000),
(69, 20000, 12000, 5000, 2000),
(70, 25000, 15000, 7000, 3000),
(71, 24000, 14000, 6000, 2000),
(72, 22000, 13000, 6000, 2000),
(73, 20000, 12000, 5000, 2000),
(74, 23000, 14000, 6500, 2500);

-- --------------------------------------------------------

--
-- Table structure for table `umpire`
--

CREATE TABLE `umpire` (
  `Umpire_ID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Match_Experience` int(11) DEFAULT NULL,
  `Nationality` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `umpire`
--

INSERT INTO `umpire` (`Umpire_ID`, `Name`, `Age`, `Match_Experience`, `Nationality`) VALUES
(1, 'Anil Chaudhary', 59, 121, 'India'),
(2, 'Nitin Menon', 35, 94, 'India'),
(3, 'Chris Gaffaney', 52, 77, 'New Zealand'),
(4, 'KN Ananthapadmanabhan', 39, 65, 'India'),
(5, 'Bruce Oxenford', 59, 64, 'Australia'),
(6, 'Rod Tucker', 61, 62, 'Australia'),
(7, 'Virender Sharma', 47, 56, 'India'),
(8, 'Yeshwant Barde', 42, 33, 'India'),
(9, 'Nand Kishore', 40, 31, 'India'),
(10, 'Ulhas Gandhe', 38, 23, 'India'),
(11, 'Jayaraman Madanagopal', 35, 20, 'India'),
(12, 'Michael Gough', 49, 18, 'England'),
(13, 'Nikhil Patwardhan', 33, 13, 'India'),
(14, 'Tapan Sharma', 34, 13, 'India'),
(15, 'Saiyed Khalid', 32, 12, 'India'),
(16, 'Navdeep Singh', 31, 12, 'India'),
(17, 'Sadashiv Iyer', 33, 12, 'India'),
(18, 'Rohan Pandit', 32, 11, 'India'),
(19, 'Vinod Seshan', 30, 7, 'India'),
(20, 'MV Saidharshan Kumar', 29, 6, 'India'),
(21, 'Akshay Totre', 28, 6, 'India');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coaching_staff`
--
ALTER TABLE `coaching_staff`
  ADD PRIMARY KEY (`Coach_ID`),
  ADD KEY `Team_ID` (`Team_ID`);

--
-- Indexes for table `match_info`
--
ALTER TABLE `match_info`
  ADD PRIMARY KEY (`Match_ID`),
  ADD KEY `Stadium_ID` (`Stadium_ID`),
  ADD KEY `Pitch_ID` (`Pitch_ID`),
  ADD KEY `Team1_ID` (`Team1_ID`),
  ADD KEY `Team2_ID` (`Team2_ID`),
  ADD KEY `Umpire_ID` (`Umpire_ID`);

--
-- Indexes for table `Match_Summary`
--
ALTER TABLE `Match_Summary`
  ADD KEY `Match_ID` (`Match_ID`),
  ADD KEY `Winner_Team_ID` (`Winner_Team_ID`);

--
-- Indexes for table `pitch`
--
ALTER TABLE `pitch`
  ADD PRIMARY KEY (`Pitch_ID`),
  ADD KEY `Stadium_ID` (`Stadium_ID`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`Player_ID`),
  ADD KEY `Team_ID` (`Team_ID`);

--
-- Indexes for table `sponsorship`
--
ALTER TABLE `sponsorship`
  ADD PRIMARY KEY (`Sponsorship_ID`),
  ADD KEY `Team_ID` (`Team_ID`);

--
-- Indexes for table `stadium`
--
ALTER TABLE `stadium`
  ADD PRIMARY KEY (`Stadium_ID`);

--
-- Indexes for table `stall`
--
ALTER TABLE `stall`
  ADD PRIMARY KEY (`Stall_ID`),
  ADD KEY `Stadium_ID` (`Stadium_ID`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`Team_ID`),
  ADD KEY `Home_Stadium_ID` (`Home_Stadium_ID`);

--
-- Indexes for table `Ticket`
--
ALTER TABLE `Ticket`
  ADD KEY `Match_ID` (`Match_ID`);

--
-- Indexes for table `umpire`
--
ALTER TABLE `umpire`
  ADD PRIMARY KEY (`Umpire_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `coaching_staff`
--
ALTER TABLE `coaching_staff`
  ADD CONSTRAINT `coaching_staff_ibfk_1` FOREIGN KEY (`Team_ID`) REFERENCES `team` (`Team_ID`);

--
-- Constraints for table `match_info`
--
ALTER TABLE `match_info`
  ADD CONSTRAINT `match_info_ibfk_1` FOREIGN KEY (`Stadium_ID`) REFERENCES `stadium` (`Stadium_ID`),
  ADD CONSTRAINT `match_info_ibfk_2` FOREIGN KEY (`Pitch_ID`) REFERENCES `pitch` (`Pitch_ID`),
  ADD CONSTRAINT `match_info_ibfk_3` FOREIGN KEY (`Team1_ID`) REFERENCES `team` (`Team_ID`),
  ADD CONSTRAINT `match_info_ibfk_4` FOREIGN KEY (`Team2_ID`) REFERENCES `team` (`Team_ID`),
  ADD CONSTRAINT `match_info_ibfk_5` FOREIGN KEY (`Umpire_ID`) REFERENCES `umpire` (`Umpire_ID`);

--
-- Constraints for table `Match_Summary`
--
ALTER TABLE `Match_Summary`
  ADD CONSTRAINT `match_summary_ibfk_1` FOREIGN KEY (`Match_ID`) REFERENCES `Match_Info` (`Match_ID`),
  ADD CONSTRAINT `match_summary_ibfk_2` FOREIGN KEY (`Winner_Team_ID`) REFERENCES `Team` (`Team_ID`);

--
-- Constraints for table `pitch`
--
ALTER TABLE `pitch`
  ADD CONSTRAINT `pitch_ibfk_1` FOREIGN KEY (`Stadium_ID`) REFERENCES `stadium` (`Stadium_ID`);

--
-- Constraints for table `player`
--
ALTER TABLE `player`
  ADD CONSTRAINT `player_ibfk_1` FOREIGN KEY (`Team_ID`) REFERENCES `team` (`Team_ID`);

--
-- Constraints for table `sponsorship`
--
ALTER TABLE `sponsorship`
  ADD CONSTRAINT `sponsorship_ibfk_1` FOREIGN KEY (`Team_ID`) REFERENCES `team` (`Team_ID`);

--
-- Constraints for table `stall`
--
ALTER TABLE `stall`
  ADD CONSTRAINT `stall_ibfk_1` FOREIGN KEY (`Stadium_ID`) REFERENCES `stadium` (`Stadium_ID`);

--
-- Constraints for table `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `team_ibfk_1` FOREIGN KEY (`Home_Stadium_ID`) REFERENCES `stadium` (`Stadium_ID`);

--
-- Constraints for table `Ticket`
--
ALTER TABLE `Ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`Match_ID`) REFERENCES `Match_Info` (`Match_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
