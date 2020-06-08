-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 15, 2019 at 11:58 PM
-- Server version: 5.7.27-0ubuntu0.18.04.1
-- PHP Version: 7.2.19-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `PiData`
--

-- --------------------------------------------------------

--
-- Table structure for table `Organization`
--

CREATE TABLE `Organization` (
  `orgId` int(11) NOT NULL,
  `orgName` varchar(254) NOT NULL,
  `street` varchar(95) NOT NULL,
  `city` varchar(35) NOT NULL,
  `state` varchar(35) NOT NULL,
  `zip` varchar(11) NOT NULL,
  `phone` varchar(26) NOT NULL,
  `email` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Organization`
--

INSERT INTO `Organization` (`orgId`, `orgName`, `street`, `city`, `state`, `zip`, `phone`, `email`) VALUES
(100, 'Northwestern Michigan College', '1701 E Front Street', 'Traverse City', 'MI', '49686', '231-995-1000', 'admissions@nmc.edu'),
(150, 'Munson Medical Center', '1105 6th Street', 'Traverse City', 'MI', '49686', '231-935-5000', 'contact@mhc.net'),
(200, 'Munson Community Health Center', '550 Munson Ave', 'Traverse City', 'MI', '49686', '231-935-5000', 'contact@mhc.net'),
(250, 'Hagerty Insurance', '121 Drivers Edge', 'Traverse City', 'MI', '49684', ' 877-922-9701', 'auto@hagerty.com'),
(300, 'Traverse City Area Public Schools ', '412 Webster Street', 'Traverse City', 'MI', '49686', '231-933-1700', 'emailinfo@tcaps.net'),
(350, 'Holiday Inn Traverse City', '615 E Front Street', 'Traverse City', 'MI', '49686', '231-947-3700', 'WestBayBeach@thedelmar.com'),
(400, 'Cherry Street Boutique', '1400 Cherry Street', 'Traverse City', 'MI', '49684', '231-342-1400', 'cherryboutique@gmail.com'),
(450, 'The Brewery', '955 Cass Street', 'Traverse City', 'MI', '49684', '231-555-1212', 'Brewbyyou@mail.com');

-- --------------------------------------------------------

--
-- Table structure for table `OrgRoom`
--

CREATE TABLE `OrgRoom` (
  `bldg` varchar(30) DEFAULT NULL,
  `orgId` int(11) DEFAULT NULL,
  `piId` int(11) DEFAULT NULL,
  `uuid` varchar(100) DEFAULT NULL,
  `roomId` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `OrgRoom`
--

INSERT INTO `OrgRoom` (`bldg`, `orgId`, `piId`, `uuid`, `roomId`) VALUES
('Munson', 100, 1, '111', '1155'),
('MCHC', 200, 4, '444', '400'),
('Beckett', 100, 3, '333', '215'),
('Beckett', 100, 2, '222', 'JB202'),
('Long Lake Elementary', 300, 4, '444', 'K200');

-- --------------------------------------------------------

--
-- Table structure for table `Pi`
--

CREATE TABLE `Pi` (
  `uuid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Pi`
--

INSERT INTO `Pi` (`uuid`) VALUES
('111'),
('15f09627641d462bb6efa93b785ea3b5'),
('222'),
('3010f2a520594012bdad126152ab8c64'),
('333'),
('444'),
('8ed4c17970ef4c0ca1286e22f93f93f6'),
('d3dfcac0de4942b6893bd9f92e0e4d07');

-- --------------------------------------------------------

--
-- Stand-in structure for view `PiForUserOrg`
-- (See below for the actual view)
--
CREATE TABLE `PiForUserOrg` (
`OrgName` varchar(254)
,`RoomID` varchar(30)
,`PiId` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `Remembered_logins`
--

CREATE TABLE `Remembered_logins` (
  `token_hash` varchar(64) NOT NULL,
  `user_id` int(11) NOT NULL,
  `expires_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TempData`
--

CREATE TABLE `TempData` (
  `uuid` varchar(100) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `temp_fahrenheit` decimal(5,2) DEFAULT NULL,
  `temp_celsius` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `TempData`
--

INSERT INTO `TempData` (`uuid`, `date`, `time`, `temp_fahrenheit`, `temp_celsius`) VALUES
('222', '2019/04/06', '12:00', '74.00', '23.00'),
('222', '2019/04/06', '12:30', '75.00', '24.00'),
('222', '2019/04/06', '1:00', '72.00', '22.00'),
('222', '2019/04/06', '1:15', '73.00', '23.00'),
('333', '2019/04/05', '8:00', '64.00', '18.00'),
('333', '2019/04/05', '9:00', '68.00', '20.00'),
('333', '2019/04/06', '8:15', '67.00', '19.00'),
('333', '2019/04/05', '8:45', '67.00', '19.00'),
('15f09627641d462bb6efa93b785ea3b5', '2019-04-04', '11:06:01.063674', '71.00', '22.00'),
('15f09627641d462bb6efa93b785ea3b5', '2019-04-04', '11:06:01.063674', '71.00', '22.00'),
('15f09627641d462bb6efa93b785ea3b5', '2019-04-04', '11:06:01.063674', '71.00', '22.00'),
('15f09627641d462bb6efa93b785ea3b5', '2019-04-04', '11:06:01.063674', '71.00', '22.00'),
('15f09627641d462bb6efa93b785ea3b5', '2019-04-07', '19:24:58.735346', '56.00', '45.00'),
('222', '2019/04/06', '11:55:15', '70.00', '21.11'),
('222', '2019/04/06', '11:50:00', '71.00', '21.67'),
('222', '2019/04/06', '11:53:30', '71.60', '22.00'),
('222', '2019/04/06', '11:45:00', '72.00', '22.22'),
('333', '2019-04-05', '19:00:00', '80.00', '26.67'),
('333', '2019/04/05', '19:01:00', '78.00', '25.56'),
('333', '2019-04-05', '19:02:30', '78.60', '25.89'),
('333', '2019-04-05', '19:40:00', '78.50', '25.83'),
('333', '2019-04-05', '08:30:30', '75.00', '23.89'),
('333', '2019-04-05', '10:13:30', '75.60', '24.22'),
('333', '2019-04-05', '11:00:00', '75.40', '24.11'),
('333', '2019-04-05', '13:00:30', '76.00', '24.44'),
('333', '2019-04-05', '14:00:30', '76.50', '24.72'),
('333', '2019-04-05', '15:10:00', '77.00', '25.00'),
('d3dfcac0de4942b6893bd9f92e0e4d07', '2019-04-07', '21:31:16.461019', '56.00', '45.00'),
('d3dfcac0de4942b6893bd9f92e0e4d07', '2019-04-07', '21:31:16.461019', '56.00', '45.00'),
('3010f2a520594012bdad126152ab8c64', '2019-04-15', '19:54:08.768961', '56.00', '45.00'),
('3010f2a520594012bdad126152ab8c64', '2019-04-15', '19:55:12.046984', '56.00', '45.00'),
('3010f2a520594012bdad126152ab8c64', '2019-04-15', '19:56:15.275840', '56.00', '45.00'),
('3010f2a520594012bdad126152ab8c64', '2019-04-15', '19:57:18.468957', '56.00', '45.00'),
('3010f2a520594012bdad126152ab8c64', '2019-04-15', '19:58:21.518118', '56.00', '45.00'),
('3010f2a520594012bdad126152ab8c64', '2019-04-15', '19:59:24.366393', '56.00', '45.00'),
('3010f2a520594012bdad126152ab8c64', '2019-04-15', '20:00:27.308183', '56.00', '45.00'),
('3010f2a520594012bdad126152ab8c64', '2019-04-15', '20:01:30.893913', '56.00', '45.00'),
('3010f2a520594012bdad126152ab8c64', '2019-04-15', '20:02:34.521274', '56.00', '45.00'),
('3010f2a520594012bdad126152ab8c64', '2019-04-15', '20:03:37.855502', '56.00', '45.00'),
('3010f2a520594012bdad126152ab8c64', '2019-04-15', '20:04:40.905525', '56.00', '45.00'),
('3010f2a520594012bdad126152ab8c64', '2019-04-15', '20:05:43.930319', '56.00', '45.00'),
('3010f2a520594012bdad126152ab8c64', '2019-04-15', '20:06:47.110418', '56.00', '45.00'),
('3010f2a520594012bdad126152ab8c64', '2019-04-15', '20:07:51.718268', '56.00', '45.00'),
('3010f2a520594012bdad126152ab8c64', '2019-04-15', '20:09:06.342292', '56.00', '45.00'),
('3010f2a520594012bdad126152ab8c64', '2019-04-15', '20:10:09.503410', '56.00', '45.00'),
('3010f2a520594012bdad126152ab8c64', '2019-04-15', '20:11:12.421770', '56.00', '45.00'),
('3010f2a520594012bdad126152ab8c64', '2019-04-15', '20:12:15.479202', '56.00', '45.00'),
('3010f2a520594012bdad126152ab8c64', '2019-04-15', '20:13:28.493527', '56.00', '45.00'),
('8ed4c17970ef4c0ca1286e22f93f93f6', '2019-04-20', '19:42:03.986446', '56.00', '45.00'),
('15f09627641d462bb6efa93b785ea3b5', '2019-04-25', '09:52:56.538678', '76.66', '24.81'),
('15f09627641d462bb6efa93b785ea3b5', '2019-04-25', '09:54:00.697989', '76.89', '24.94'),
('15f09627641d462bb6efa93b785ea3b5', '2019-04-25', '09:55:04.218585', '76.89', '24.94'),
('15f09627641d462bb6efa93b785ea3b5', '2019-04-25', '09:56:07.818593', '76.89', '24.94'),
('15f09627641d462bb6efa93b785ea3b5', '2019-04-25', '09:57:12.778361', '76.78', '24.88'),
('15f09627641d462bb6efa93b785ea3b5', '2019-04-25', '09:58:16.138397', '76.89', '24.94'),
('15f09627641d462bb6efa93b785ea3b5', '2019-04-25', '09:59:19.498572', '76.89', '24.94'),
('15f09627641d462bb6efa93b785ea3b5', '2019-04-25', '10:00:22.858449', '76.89', '24.94'),
('15f09627641d462bb6efa93b785ea3b5', '2019-04-25', '10:01:26.938407', '77.00', '25.00'),
('15f09627641d462bb6efa93b785ea3b5', '2019-04-25', '10:02:30.378507', '76.89', '24.94'),
('15f09627641d462bb6efa93b785ea3b5', '2019-04-25', '10:03:33.898494', '76.89', '24.94'),
('15f09627641d462bb6efa93b785ea3b5', '2019-04-25', '10:04:37.258541', '76.89', '24.94'),
('15f09627641d462bb6efa93b785ea3b5', '2019-04-25', '10:05:40.698386', '76.66', '24.81'),
('15f09627641d462bb6efa93b785ea3b5', '2019-04-25', '10:06:43.978444', '76.44', '24.69'),
('15f09627641d462bb6efa93b785ea3b5', '2019-04-25', '10:07:47.498318', '76.21', '24.56'),
('15f09627641d462bb6efa93b785ea3b5', '2019-04-25', '10:08:50.938320', '76.10', '24.50'),
('15f09627641d462bb6efa93b785ea3b5', '2019-04-25', '10:09:54.778362', '76.21', '24.56'),
('15f09627641d462bb6efa93b785ea3b5', '2019-04-25', '10:10:59.178321', '76.21', '24.56');

--
-- Triggers `TempData`
--
DELIMITER $$
CREATE TRIGGER `copy_uuid` BEFORE INSERT ON `TempData` FOR EACH ROW INSERT INTO Pi(uuid)
SELECT uuid FROM TempData
WHERE NOT EXISTS( SELECT 
            1
        FROM
            Pi
        WHERE
            Pi.uuid = TempData.uuid)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `userId` int(11) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(15) NOT NULL,
  `orgId` int(11) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `password_reset_hash` varchar(64) DEFAULT NULL,
  `password_reset_expires_at` datetime DEFAULT NULL,
  `activation_hash` varchar(64) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`userId`, `lastName`, `firstName`, `email`, `role`, `orgId`, `password_hash`, `password_reset_hash`, `password_reset_expires_at`, `activation_hash`, `is_active`) VALUES
(10, 'Velis', 'John', 'bonzo@nmc.com', 'Admin', 100, '', NULL, NULL, NULL, 1),
(20, 'Schultz', 'Thresa', 'tschultz@mail.edu', 'Admin', 150, '', NULL, NULL, NULL, 1),
(30, 'Johnson', 'Samuel', 'sammyj@somewhere.com', 'User', 200, '', NULL, NULL, NULL, 0),
(40, 'Carter', 'Aaron', 'Carteraa@mmc.org', 'User', 250, '', NULL, NULL, NULL, 1),
(55, 'Apple', 'John', 'japple@mail.net', 'user', 100, '', NULL, NULL, NULL, 0),
(60, 'Brown', 'Jerry', 'jbrown@mail.com', 'user', 300, '', NULL, NULL, NULL, 0),
(65, 'Vanburen', 'Jamie', 'jvanburen@mail.org', 'admin', 350, '', NULL, NULL, NULL, 0),
(70, 'Smart', 'Marty', 'msmart@mail.net', 'user', 400, '', NULL, NULL, NULL, 0),
(75, 'Arkin', 'Alese', 'aarkin@mail.org', 'admin', 450, '', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Structure for view `PiForUserOrg`
--
DROP TABLE IF EXISTS `PiForUserOrg`;

CREATE ALGORITHM=UNDEFINED DEFINER=`thresa`@`localhost` SQL SECURITY DEFINER VIEW `PiForUserOrg`  AS  select `Organization`.`orgName` AS `OrgName`,`OrgRoom`.`roomId` AS `RoomID`,`OrgRoom`.`piId` AS `PiId` from ((`OrgRoom` left join `Organization` on((`OrgRoom`.`orgId` = `Organization`.`orgId`))) join `Users` on((`Users`.`orgId` = `OrgRoom`.`orgId`))) where (`Users`.`orgId` = `OrgRoom`.`orgId`) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Organization`
--
ALTER TABLE `Organization`
  ADD PRIMARY KEY (`orgId`);

--
-- Indexes for table `OrgRoom`
--
ALTER TABLE `OrgRoom`
  ADD KEY `fk_org` (`orgId`),
  ADD KEY `fk_id` (`uuid`);

--
-- Indexes for table `Pi`
--
ALTER TABLE `Pi`
  ADD PRIMARY KEY (`uuid`),
  ADD UNIQUE KEY `uuid` (`uuid`),
  ADD UNIQUE KEY `uuid_2` (`uuid`);

--
-- Indexes for table `Remembered_logins`
--
ALTER TABLE `Remembered_logins`
  ADD PRIMARY KEY (`token_hash`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `TempData`
--
ALTER TABLE `TempData`
  ADD KEY `TempData` (`uuid`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_hash` (`password_reset_hash`),
  ADD UNIQUE KEY `activation_hash` (`activation_hash`),
  ADD KEY `OrgId` (`orgId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `OrgRoom`
--
ALTER TABLE `OrgRoom`
  ADD CONSTRAINT `OrgRoom_ibfk_1` FOREIGN KEY (`orgId`) REFERENCES `Organization` (`orgId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `OrgRoom_ibfk_2` FOREIGN KEY (`uuid`) REFERENCES `Pi` (`uuid`) ON UPDATE CASCADE;

--
-- Constraints for table `Remembered_logins`
--
ALTER TABLE `Remembered_logins`
  ADD CONSTRAINT `Remembered_logins_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `Users` (`userId`);

--
-- Constraints for table `TempData`
--
ALTER TABLE `TempData`
  ADD CONSTRAINT `TempData_ibfk_1` FOREIGN KEY (`uuid`) REFERENCES `Pi` (`uuid`) ON UPDATE CASCADE;

--
-- Constraints for table `Users`
--
ALTER TABLE `Users`
  ADD CONSTRAINT `Users_ibfk_1` FOREIGN KEY (`orgId`) REFERENCES `Organization` (`orgId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
