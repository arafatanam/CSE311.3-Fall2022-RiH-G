-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2022 at 09:46 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cse311_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `accessories`
--

CREATE TABLE `accessories` (
  `Name` varchar(20) DEFAULT NULL,
  `Price` varchar(10) DEFAULT NULL,
  `SubID` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accessories`
--

INSERT INTO `accessories` (`Name`, `Price`, `SubID`) VALUES
('PS5 Console', '$499.99', 'S1'),
('PS5 Digital Console', '$399.99', 'S1'),
('PS5 Console Covers', '$54.99', 'S1'),
('DualSense Wireless C', '$69.99', 'S1'),
('PULSE 3D Wireless He', '$99.99', 'S3'),
('DualSense Edge Wirel', '$49.99', 'S3'),
('Media Remote', '$29.99', 'S3'),
('HD Camera', '$59.99', 'S3'),
('Standard Gift Card', '$10.00', 'S6'),
('Premium Gift Card', '$25.00', 'S6'),
('Extra Gift Card I', '$30.00', 'S6'),
('Extra Gift Card II', '$50.00', 'S6'),
('Extra Gift Card III', '$75.00', 'S12'),
('Essential Gift Card', '$100.00', 'S12');

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `Name` varchar(30) NOT NULL,
  `Genre` varchar(25) NOT NULL,
  `Release_Year` int(4) DEFAULT NULL,
  `Publisher_Name` varchar(30) NOT NULL,
  `Price$` varchar(10) NOT NULL,
  `SubID` varchar(15) NOT NULL,
  `Rating` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`Name`, `Genre`, `Release_Year`, `Publisher_Name`, `Price$`, `SubID`, `Rating`) VALUES
('A Musical Story', 'Music', 2022, 'Digerati Distribution', '8.99', 'S6/S12', '1.9/5'),
('Apex Legends', 'Shooter', 2019, 'Electronic Arts Inc', '0.00', 'S1/S3/S6/S12', '4/5'),
('Assassin\'s Creed Syndicate', 'Action', 2015, 'Ubisoft Entertainment', '29.99', 'S1/S3/S6/S12', '3.5/5'),
('Assassin???s Creed Origins', 'Action', 2017, 'Ubisoft Entertainment', '59.99', 'S12', '4.2/5'),
('Call of Duty: Black Ops III', 'Shooter', 2017, 'Activision', '39.99', 'S1/S3/S6', '3.9/5'),
('Call of Duty: Modern Warfare', 'Action', 2020, 'Activision', '69.99', 'S6/S12', '4.4/5'),
('Christmas Run 2', 'Arcade', 2022, 'Smobile', '6.99', 'S1/S3/S6/S12', '2.2/5'),
('Crusader Kings III', 'Strategy', 2015, 'Paradox Interactive', '49.99', 'S1/S3/S6/S12', '4.5/5'),
('Doodle God', 'Puzzle', 2016, '8Floor ltd', '5.99', 'S1/S3/S6/S12', '2.4/5'),
('DRAGON BALL XENOVERSE 2', 'Fighting', 2017, 'BANDAI NAMCO Entertainment', '8.99', 'S6/S12', '3.5/5'),
('DRAGON BALL Z: KAKAROT', 'Action', 2019, 'BANDAI NAMCO Entertainment', '59.99', 'S6/S12', '4.1/5'),
('FIFA 23 Standard Edition', 'Sport', 2022, 'Electronic Arts Inc', '69.99', 'S1/S3/S6/S12', '5/5'),
('Fortnite', 'Unique', 2019, 'Epic Games', '0.00', 'S1/S3/S6/S12', '4.4/5'),
('Fruit Ninja VR', 'Arcade', 2016, 'Halfbrick Studios Pty Ltd.', '14.99', 'S12', '2.5/5'),
('Ghost of Tsushima', 'Role Playing Games', 2021, 'Sony Entertainment', '69.99', 'S6/S12', '4.6/5'),
('God of War', 'Action', 2018, 'Sony Interactive Entertainment', '19.99', 'S6/S12', '4.3/5'),
('God of War Ragnar??k', 'Action', 2022, 'Sony Interactive Entertainment', '69.99', 'S12', '4.5/5'),
('Gold Rush: The Game', 'Family', 2021, 'CODE HORIZON SP. Z O.O', '19.99', 'S1/S3/S6/S12', '3.5/5'),
('Grand Theft Auto V', 'Adventure', 2015, 'Rockstar Games', '19.99', 'S1/S3/S6', '4.5/5'),
('Horizon Forbidden West', 'Action', 2022, 'Sony Interactive Entertainment', '69.99', 'S12', '4.2/5'),
('Injustice 2', 'Fighting', 2017, 'Warner Bros. Interactive', '24.99', 'S12', '3.4/5'),
('Just Dance', 'Music', 2021, 'Ubisoft Entertainment', '29.99', 'S6/S12', '3.9/5'),
('LEGO Bricktales', 'Puzzle', 2022, 'Thunderful Publishing AB', '29.99', 'S12', '4.1/5'),
('Let\'s Sing 2023', 'Music', 2022, 'Ravenscourt', '30.99', 'S12', '2.7/5'),
('Marvel\'s Spider-Man', 'Action', 2020, 'SQUARE ENIX CO. LTD.', '39.99', 'S6/S12', '4.4/5'),
('Minecraft', 'Adventure', 2019, 'Mojang', '19.99', 'S1/S3/S6/S12', '4.4/5'),
('Monster Truck Championship', 'Sport', 2016, 'NACON SA', '49.99', 'S12', '3.9/5'),
('Mortal Kombat X', 'Fighting', 2015, 'Warner Bros. Interactive', '19.99', 'S12', '3.6/5'),
('NBA 2K23', 'Sport', 2022, '2K', '69.99', 'S1/S3/S6/S12', '4.7/5'),
('Need for Speed Heat', 'Racing', 2017, 'Electronic Arts Inc', '59.99', 'S1/S3/S6/S12', '3.8/5'),
('Nickelodeon Kart Racers', 'Racing', 2018, 'GAMEMILL ENTERTAINMENT', '29.99', 'S12', '2.6/5'),
('Ninja Run', 'Arcade', 2020, 'Smobile', '6.99', 'S1/S3/S6/S12', '1.9/5'),
('Party Golf', 'Sport', 2016, 'Ian Lewis t/a Giant Margarita', '11.99', 'S6/S12', '2.2/5'),
('PBA Pro Bowling', 'Sport', 2019, 'FarSight Technologies Inc.', '14.99', 'S1/S3/S6/S12', '2.7/5'),
('Red Dead Redemption 2', 'Action', 2018, 'Rockstar Games', '59.99', 'S6/S12', '4.5/5'),
('Resident Evil 3', 'Adventure', 2022, 'Capcom U.S.A., Inc.', '39.99', 'S6/S12', '3/5'),
('Resident Evil 4', 'Action', 2023, 'Capcom U.S.A., Inc', '59.99', 'S12', '4.1/5'),
('Rick and Morty', 'Simulation', 2018, 'Adult Swim', '24.99', 'S1/S3/S12', '3.7/5'),
('Street Fighter', 'Fighting', 2018, 'Capcom U.S.A., Inc.', '29.99', 'S1/S3/S6/S12', '3.5/5'),
('Super Mega Baseball 3', 'Sport', 2014, 'ELECTRONIC ARTS', '44.99', 'S1/S3/S6', '3.1/5'),
('Tennis World Tour', 'Sport', 2018, 'NACON SA', '19.99', 'S12', '3.4/5'),
('The Devil\'s Daughter', 'Action', 2021, 'FROGSWARE IRELAND LTD', '39.99', 'S1/S3/S6', '3.2/5'),
('The Last of Us Part I', 'Action', 2022, 'Sony Interactive Entertainment', '79.99', 'S1/S3/S6', '4.3/5'),
('The Sims 4', 'Simulation', 2016, 'Electronic Arts Inc', '0.00', 'S12', '3/5'),
('The Witcher 3: Wild Hunt', 'Role Playing Games', 2016, 'CD PROJEKT SA', '49.99', 'S6/S12', '4/5'),
('Train Life: A Railway Simulato', 'Simulation', 2022, 'NACON SA', '27.99', 'S1/S3/S6/S12', '3.9/5'),
('UFC 4', 'Unique', 2020, 'Electronic Arts Inc', '59.99', 'S1/S3/S6/S12', '4.2/5'),
('Watch Dogs 2', 'Action', 2016, 'Ubisoft Entertainment', '49.99', 'S6/S12', '3.5/5');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `SubID` varchar(15) NOT NULL,
  `Subsription_Plan` varchar(20) NOT NULL,
  `Price` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`SubID`, `Subsription_Plan`, `Price`) VALUES
('S1', 'Standard: 1 Month', '$17.99'),
('S3', 'Premium: 3 Month', '$49.99'),
('S6', 'Extra: 6 Month', '$79.99'),
('S12', 'Essential: 12 Month', '$119.99');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(4, 'cse311rih', '$2y$10$m47VUUgsOlQPfXcNa/gBzug7GBUi25bp65vhiPWt5O79xH/hVLPvG', '2022-12-09 14:39:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
