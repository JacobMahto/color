-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 14, 2019 at 09:41 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `color`
--

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `sn` int(11) NOT NULL,
  `std_code` int(11) NOT NULL,
  `sub_code` int(11) DEFAULT NULL,
  `head` int(11) DEFAULT NULL,
  `topic` text,
  `type` text NOT NULL,
  `name` text,
  `path` text NOT NULL,
  `start_vid` text,
  `stop_vid` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`sn`, `std_code`, `sub_code`, `head`, `topic`, `type`, `name`, `path`, `start_vid`, `stop_vid`) VALUES
(1, 101, 1, 1, 'Alphabets', 'video', 'A To Z Alphabets', '/assets/Nursery/English/aToZ.mp4', NULL, NULL),
(2, 101, 1, 1, 'Alphabets', 'video', 'A To Z Alphabets (2)', '/assets/Nursery/English/aToZ-2.mp4', NULL, NULL),
(3, 101, 3, 1, 'Counting', 'video', '1 To 10 Counting', '/assets/Nursery/Math/oneToTen.mp4', NULL, NULL),
(10, 151, 101, 2, 'Introduction To Guitar', 'video', 'Guitar Structure', '/assets/Music/Guitar/intro1-GuitarParts.mp4', NULL, NULL),
(11, 151, 101, 2, 'Introduction To Guitar', 'video', 'Strings And Tuning', '/assets/Music/Guitar/intro2-StringsTuning.mp4', NULL, NULL),
(12, 151, 101, 2, 'Reading And Playing', 'video', 'Figering And Chord Diagram', '/assets/Music/Guitar/intro3-FingerAndChordDiagram.mp4', NULL, NULL),
(13, 151, 101, 2, 'Reading And Playing', 'video', 'Holding Guitar And Playing', '/assets/Music/Guitar/intro4-HoldingAndPlaying.mp4', NULL, NULL),
(14, 151, 101, 2, 'Series , Pattern and Gap Rule', 'video', 'Series , Pattern and Gap Rule', '/assets/Music/Guitar/intro5-SeriesPatternGapRule.mp4', NULL, NULL),
(15, 151, 101, 2, 'Advanced Stuff', 'video', 'Sharps And Flats', '/assets/Music/Guitar/intro6-SharpsFlats.mp4', NULL, NULL),
(16, 151, 101, 4, 'Happy Birthday To You', 'video', 'Happy Birthday', '/assets/Music/Guitar/happyBirthdayFingerstyle.mp4', NULL, NULL),
(17, 151, 101, 5, 'Channa Mereya (Ae Dil Hai Mushkil)', 'video', 'Channa Mereya', '/assets/Music/Guitar/channaMereya.mp4', NULL, NULL),
(18, 151, 101, 5, 'Give Me Some Sunshine (3 Idiots)', 'video', 'Give Me some Sunshine', '/assets/Music/Guitar/sunshine.mp4', NULL, NULL),
(19, 151, 103, 2, 'Introduction To Keys', 'video', NULL, '/assets/Music/Harmonium/intro1-Keys.mp4', NULL, NULL),
(20, 151, 103, 2, 'Introduction To Keys', 'video', NULL, '/assets/Music/Harmonium/intro2-keys.mp4', NULL, NULL),
(21, 151, 103, 2, 'Alankar', 'video', NULL, '/assets/Music/Harmonium/intro3-Alankar1To4.mp4', NULL, NULL),
(22, 151, 103, 2, 'Alankar', 'video', NULL, '/assets/Music/Harmonium/intro4-Alankar5-7.mp4', NULL, NULL),
(23, 151, 103, 2, 'Alankar', 'video', NULL, '/assets/Music/Harmonium/intro5-Alankar8To10.mp4', NULL, NULL),
(24, 151, 103, 2, 'Thaat', 'video', NULL, '/assets/Music/Harmonium/intro6-ThaatPart1.mp4', NULL, NULL),
(25, 151, 103, 2, 'Thaat', 'video', NULL, '/assets/Music/Harmonium/intro7-ThaatPart2.mp4', NULL, NULL),
(26, 151, 103, 3, 'National Anthem', 'video', NULL, '/assets/Music/Harmonium/janGanMan.mp4', NULL, NULL),
(27, 151, 103, 3, 'Aye Mere watan ke logo', 'video', NULL, '/assets/Music/Harmonium/ayeMereWatanKe.mp4', NULL, NULL),
(28, 151, 103, 3, 'Om Jai Jagdish Hare', 'video', NULL, '/assets/Music/Harmonium/omJaiJagdishHare.mp4', NULL, NULL),
(29, 151, 103, 3, 'Teri hai Zameen (The Burning Train)', 'video', NULL, '/assets/Music/Harmonium/teriHaiZameen.mp4', NULL, NULL),
(30, 101, 2, 6, 'Swar', 'video', 'Swar', '/assets/Nursery/Hindi/swar.mp4', NULL, NULL),
(32, 101, 2, 6, 'Vyanjan', 'video', 'Vyanjan', '/assets/Nursery/Hindi/vyanjan.mp4', NULL, NULL),
(33, 101, 3, 1, 'Counting', 'video', '1 To 100 Counting', '/assets/Nursery/Math/ontToHundred.mp4', NULL, NULL),
(34, 101, 6, 1, 'Body Parts', 'video', 'Body Parts', '/assets/Nursery/EVS/bodyParts.mp4', NULL, NULL),
(35, 101, 6, 1, 'Fruits', 'video', 'Fruits', '/assets/Nursery/EVS/fruits.mp4', NULL, NULL),
(36, 101, 6, 1, 'Vegetables', 'video', 'Vegetables', '/assets/Nursery/EVS/vegetables.mp4', NULL, NULL),
(37, 101, 6, 1, 'Spoken Ability', 'video', 'Myself Introduction', '/assets/Nursery/EVS/myself.mp4', NULL, NULL),
(38, 201, 201, 7, 'Greedy Dog', 'video', 'Greedy Dog', '/assets/Stories/greedyDog.mp4', NULL, NULL),
(39, 201, 201, 7, 'Beauty And The Beast', 'video', 'Beauty And The Beast', '/assets/Stories/beast.mp4', NULL, NULL),
(40, 201, 201, 7, 'Tortoise And Hare', 'video', 'Tortoise And Hare', '/assets/Stories/hare.mp4', NULL, NULL),
(41, 201, 201, 7, 'Crow', 'video', 'Crow', '/assets/Stories/crow.mp4', NULL, NULL),
(42, 201, 201, 8, 'Pyasa kauwa', 'video', 'Pyasa Kauwa', '/assets/Stories/hindi/pyasaKauwa.mp4', NULL, NULL),
(43, 202, 202, 7, 'ABCDE', 'video', 'abcd', '/assets/Rhymes/abcd.mp4', NULL, NULL),
(44, 202, 202, 7, 'ABCDE', 'video', 'Aeroplane', '/assets/Rhymes/aeroplane.mp4', NULL, NULL),
(45, 202, 202, 7, 'FGHIJ', 'video', 'Fingers', '/assets/Rhymes/fingers.mp4', NULL, NULL),
(46, 202, 202, 7, 'FGHIJ', 'video', 'Hickory', '/assets/Rhymes/hickory.mp4', NULL, NULL),
(47, 202, 202, 7, 'PQRST', 'video', 'Twinkle Twinkle', '/assets/Rhymes/twinkle.mp4', NULL, NULL),
(48, 202, 202, 7, 'PQRST', 'video', 'Rain', '/assets/Rhymes/rain.mp4', NULL, NULL),
(49, 102, 1, 1, 'Vowels', 'video', 'Vowels', '/assets/KG/English/vowels.mp4', NULL, NULL),
(50, 102, 1, 1, 'Alphabets', 'video', 'A To Z Alphabets', '/assets/Nursery/English/aToZ.mp4', NULL, NULL),
(51, 102, 1, 1, 'Alphabets', 'video', 'A To Z Alphabets (2)', '/assets/Nursery/English/aToZ-2.mp4', NULL, NULL),
(52, 102, 1, 1, 'Vegetables', 'video', 'Vegetables', '/assets/KG/EVS/vegetables.mp4', NULL, NULL),
(53, 102, 1, 1, 'Colors', 'video', 'Colors', '/assets/KG/EVS/colors.mp4', NULL, NULL),
(54, 102, 6, 1, 'Fruits', 'video', 'Fruits', '/assets/Nursery/EVS/fruits.mp4', NULL, NULL),
(55, 102, 2, 1, 'Fruits', 'video', 'Fruits', '/assets/KG/Hindi/fruits.mp4', NULL, NULL),
(56, 102, 2, 1, 'Vegetables', 'video', 'Vegetables', '/assets/KG/Hindi/vegetables.mp4', NULL, NULL),
(57, 102, 2, 6, 'Two,Three,Four Lettered Words', 'video', 'Two Lettered Words', '/assets/KG/Hindi/gr/twoLetteredWords.mp4', NULL, NULL),
(58, 102, 2, 6, 'Two,Three,Four Lettered Words', 'video', 'Three Lettered Words', '/assets/KG/Hindi/gr/threeLetteredWords.mp4', NULL, NULL),
(59, 102, 2, 6, 'Two,Three,Four Lettered Words', 'video', 'Four Lettered Words', '/assets/KG/Hindi/gr/fourLetteredWords.mp4', NULL, NULL),
(60, 102, 2, 6, 'Maatra wale shabd', 'video', 'a or aa matra wale shabd', '/assets/KG/Hindi/gr/aOrAaMatraKeShabd.mp4', NULL, NULL),
(61, 102, 2, 6, 'Maatra wale shabd', 'video', 'e or badi e matra wale shabd', '/assets/KG/Hindi/gr/eeOrBadiEeMatraKeShabd.mp4', NULL, NULL),
(62, 102, 3, 1, 'Counting', 'video', '1 To 10 Counting', '/assets/Nursery/Math/oneToTen.mp4', NULL, NULL),
(63, 102, 3, 1, 'Counting', 'video', '1 To 100 Counting', '/assets/Nursery/Math/ontToHundred.mp4', NULL, NULL),
(64, 1, 1, 6, 'Antonyms', 'video', 'Antonyms', '/assets/1/English/antonyms.mp4', NULL, NULL),
(65, 1, 1, 6, 'Gender', 'video', 'Gender', '/assets/1/English/gender.mp4', NULL, NULL),
(66, 1, 1, 6, 'Learn Reading', 'video', 'Learn Reading', '/assets/1/English/learnReading.mp4', NULL, NULL),
(67, 1, 6, 1, 'Spoken Ability', 'video', 'My School', '/assets/1/English/mySchool.mp4', NULL, NULL),
(68, 1, 2, 6, 'Ling', 'video', 'Ling', '/assets/1/Hindi/gr/ling.mp4', NULL, NULL),
(69, 1, 2, 6, 'Vachan', 'video', 'Vachan', '/assets/1/Hindi/gr/vachan.mp4', NULL, NULL),
(70, 1, 2, 6, 'Vilom Shabd', 'video', 'Vilom Shabd', '/assets/1/Hindi/gr/vilom.mp4', NULL, NULL),
(71, 1, 3, 1, 'Number Names', 'video', 'Number Names', '/assets/1/Math/numberNames.mp4', NULL, NULL),
(72, 1, 3, 1, 'Place Values', 'video', 'Place Values (Ones and Tens)', '/assets/1/Math/placeValuesOnesTens.mp4', NULL, NULL),
(73, 1, 3, 1, 'Tables', 'video', 'Tables form 2 To 20', '/assets/1/Math/tablesTwoToTwenty.mp4', NULL, NULL),
(74, 1, 3, 1, 'Before,After And Between', 'video', 'Before,After And Between', '/assets/1/Math/beforeAfterBetween.mp4', NULL, NULL),
(75, 1, 6, 1, 'Spoken Ability', 'video', 'Myself Introduction', '/assets/Nursery/EVS/myself.mp4', NULL, NULL),
(76, 2, 1, 6, 'Noun', 'video', 'Noun', '/assets/2/English/gr/noun.mp4', NULL, NULL),
(77, 2, 1, 6, 'Singular-Plural', 'video', 'Singular-Plural', '/assets/2/English/gr/singularPlural.mp4', NULL, NULL),
(78, 2, 2, 6, 'Sangya', 'video', 'Sangya', '/assets/2/Hindi/gr/sangya.mp4', NULL, NULL),
(79, 2, 2, 6, 'Sarwanam', 'video', 'Sarwanam', '/assets/2/Hindi/gr/sarwanam.mp4', NULL, NULL),
(80, 2, 3, 1, 'Addition', 'video', 'Addition', '/assets/2/Math/add.mp4', NULL, NULL),
(81, 2, 3, 1, 'Subtraction', 'video', 'Subtraction', '/assets/2/Math/sub.mp4', NULL, NULL),
(82, 2, 3, 1, 'Expanded Form', 'video', 'Expanded Form', '/assets/2/Math/expandedForm.mp4', NULL, NULL),
(83, 2, 3, 1, 'Tables', 'video', 'Tables form 2 To 20', '/assets/1/Math/tablesTwoToTwenty.mp4', NULL, NULL),
(84, 2, 6, 1, 'Spoken Ability', 'video', 'Clothes We Wear', '/assets/2/EVS/clothesWeWear.mp4', NULL, NULL),
(85, 2, 7, 1, 'Introduction', 'video', 'Introduction To Computer', '/assets/2/Computer/intro.mp4', NULL, NULL),
(86, 6, 5, 9, 'Coins', 'video', 'Coins', '/assets/6/SST/history/coins.mp4', NULL, NULL),
(87, 6, 5, 9, 'Inscription', 'video', 'Inscription', '/assets/6/SST/history/inscription.mp4', NULL, NULL),
(88, 6, 5, 10, 'Universe', 'video', 'Solar System', '/assets/6/SST/geo/solarSystem.mp4', NULL, NULL),
(89, 6, 5, 11, 'India', 'video', 'Dresses', '/assets/6/SST/civics/dresses.mp4', NULL, NULL),
(90, 6, 5, 11, 'India', 'video', 'Dances', '/assets/6/SST/civics/dances.mp4', NULL, NULL),
(91, 6, 5, 11, 'India', 'video', 'Festivals', '/assets/6/SST/civics/festivals.mp4', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `heads`
--

CREATE TABLE `heads` (
  `sn` int(11) NOT NULL,
  `head` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `heads`
--

INSERT INTO `heads` (`sn`, `head`) VALUES
(1, 'General'),
(2, 'Basics'),
(3, 'Songs'),
(4, 'Fingerstyle'),
(5, 'Rhythm'),
(6, 'Grammar'),
(7, 'English'),
(8, 'Hindi'),
(9, 'History'),
(10, 'Geography'),
(11, 'Civics');

-- --------------------------------------------------------

--
-- Table structure for table `std`
--

CREATE TABLE `std` (
  `std_code` int(11) NOT NULL,
  `std_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `std`
--

INSERT INTO `std` (`std_code`, `std_name`) VALUES
(1, 'First'),
(2, 'Second'),
(3, 'Third'),
(4, 'Fourth'),
(5, 'Fifth'),
(6, 'Sixth'),
(7, 'Seventh'),
(8, 'Eighth'),
(9, 'Ninth'),
(10, 'Tenth'),
(101, 'Nursery'),
(102, 'KG'),
(151, 'Music'),
(201, 'Stories'),
(202, 'Rhymes');

-- --------------------------------------------------------

--
-- Table structure for table `sub`
--

CREATE TABLE `sub` (
  `sub_code` int(11) NOT NULL,
  `sub_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub`
--

INSERT INTO `sub` (`sub_code`, `sub_name`) VALUES
(1, 'English'),
(2, 'Hindi'),
(3, 'Mathematics'),
(4, 'Science'),
(5, 'Social Science'),
(6, 'E.V.S.'),
(7, 'Computer'),
(8, 'Art & Craft'),
(101, 'Guitar'),
(102, 'Piano'),
(103, 'Harmonium'),
(104, 'Tabla');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `heads`
--
ALTER TABLE `heads`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `std`
--
ALTER TABLE `std`
  ADD PRIMARY KEY (`std_code`);

--
-- Indexes for table `sub`
--
ALTER TABLE `sub`
  ADD PRIMARY KEY (`sub_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `heads`
--
ALTER TABLE `heads`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sub`
--
ALTER TABLE `sub`
  MODIFY `sub_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
