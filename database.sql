-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Client :  localhost
-- Généré le :  Mar 03 Juillet 2018 à 16:48
-- Version du serveur :  5.7.17-log
-- Version de PHP :  7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ram`
--

-- --------------------------------------------------------

--
-- Structure de la table `library`
--

CREATE TABLE `library` (
  `id` int(11) NOT NULL,
  `ERD` varchar(255) CHARACTER SET utf8 NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `location_id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `library`
--

INSERT INTO `library` (`id`, `ERD`, `name`, `location_id`, `description`, `link`) VALUES
(1, 'M2161001', 'Left Pack Control Unit', 'LS2035479', 'PCU-L CH 2', 'HAM56-21PC-1030'),
(2, 'M2161002', 'Right Pack Control Unit', 'LS1571467', 'PCU-R CH 1', 'HAM56-21PC-1030'),
(3, 'M2161002', 'Right Pack Control Unit', 'LS1861485', 'PCU-R CH 2', 'HAM56-21PC-1030'),
(4, 'M2131003', 'Forward Valve Control Unit', 'LS1671729', 'VCU-FWD CH L', 'NMF51-21VC-0200'),
(5, 'M2131003', 'Forward Valve Control Unit', 'LS1341797', 'VCU-FWD CH R', 'NMF51-21VC-0200'),
(6, 'M2131004', 'Aft Valve Control Unit', 'LS1451590', 'VCU-AFT CH L', 'NMF51-21VC-0200'),
(7, 'M2131004', 'Aft Valve Control Unit', 'LS1201688', 'VCU-AFT CH R', 'NMF51-21VC-0200'),
(8, 'M2315101', 'Left Satellite Receiver Transmitter', 'LS1934435', '23 SATCOM-L', 'COL40-0001-0001'),
(9, 'M2315101', 'Left Satellite Receiver Transmitter', 'LS1934435', '23 SATCOM-L', 'RAM28-SAT1-0001'),
(10, 'M2315101', 'Left Satellite Receiver Transmitter', 'LS1934435', '23 SATCOM-L', 'COL41-0022-0001'),
(11, 'M2351011', 'Left Forward Audio Gateway Unit', 'LS1813837', 'AGU-L FWD', 'COL40-0003-0003'),
(12, 'M2351014', 'Left Aft Audio Gateway Unit', 'LS1513945', 'AGU-L AFT', 'COL40-0003-0003'),
(13, 'M2351013', 'Right Forward Audio Gateway Unit', 'LS1394034', 'AGU-R FWD', 'COL40-0003-0003'),
(14, 'M2351015', 'Right Aft Audio Gateway Unit', 'LS1444092', 'AGU-R AFT', 'COL40-0003-0003'),
(15, 'M2351001', 'Captain`s Audio Control Panel', 'LS1353630', 'ACP-CAPT', 'COL41-0002-0003'),
(16, 'M2351002', 'First Officer`s Audio Control Panel', 'LS1393491', 'ACP-FO', 'COL41-0002-0003'),
(17, 'M2351003', 'First Observer`s Audio Control Panel', 'LS1753507', 'ACP-FOBS', 'COL41-0002-0003'),
(18, 'M2409032', 'P300M1 Slot-1 Standard Circuit Card', 'LS2663738', 'SPDU-P300 1', 'HAM4F-0700-6831'),
(19, 'M2409032', 'P300M1 Slot-1 Standard Circuit Card', 'LS2663738', 'SPDU-P300 1', 'HAM44-0700-6809'),
(20, 'M2409033', 'P300M2 Slot-18 Standard Circuit Card', 'LS2383759', 'SPDU-P300 2', 'HAM4F-0700-6831'),
(21, 'M2409033', 'P300M2 Slot-18 Standard Circuit Card', 'LS2383759', 'SPDU-P300 2', 'HAM44-0700-6809'),
(22, 'M2409052', 'P400M1 Slot-1 Standard Circuit Card', 'LS2533917', 'SPDU-P400 1', 'HAM4F-0700-6831'),
(23, 'M2409052', 'P400M1 Slot-1 Standard Circuit Card', 'LS2533917', 'SPDU-P400 1', 'HAM44-0700-6809'),
(24, 'M2409053', 'P400M2 Slot-18 Standard Circuit Card', 'LS2063941', 'SPDU-P400 2', 'HAM4F-0700-6831'),
(25, 'M2409053', 'P400M2 Slot-18 Standard Circuit Card', 'LS2063941', 'SPDU-P400 2', 'HAM44-0700-6809'),
(26, 'M2409001', 'P100M1 ELCU Communications Circuit Card', 'LS2603956', 'ELCU-P100 1', 'HAM41-0700-6073'),
(27, 'M2409001', 'P100M1 ELCU Communications Circuit Card', 'LS2603956', 'ELCU-P100 1', 'ITE56-7793-0523'),
(28, 'M2409002', 'P100M2 ELCU Communications Circuit Card', 'LS2354058', 'ELCU-P100 2', 'HAM41-0700-6073'),
(29, 'M2409002', 'P100M2 ELCU Communications Circuit Card', 'LS2354058', 'ELCU-P100 2', 'ITE56-7793-0523'),
(30, 'M2409014', 'P200M1 ELCU Communications Circuit Card', 'LS2134096', 'ELCU-P200 1', 'HAM41-0700-6073'),
(31, 'M2409014', 'P200M1 ELCU Communications Circuit Card', 'LS2134096', 'ELCU-P200 1', 'ITE56-7793-0523'),
(32, 'M2409015', 'P200M2 ELCU Communications Circuit Card', 'LS2674176', 'ELCU-P200 2', 'HAM41-0700-6073'),
(33, 'M2409015', 'P200M2 ELCU Communications Circuit Card', 'LS2674176', 'ELCU-P200 2', 'ITE56-7793-0523'),
(34, 'M2409026', 'P300M1 ELCU Communications Circuit Card', 'LS2114209', 'ELCU-P300 1', 'HAM41-0700-6073'),
(35, 'M2409026', 'P300M1 ELCU Communications Circuit Card', 'LS2114209', 'ELCU-P300 1', 'ITE56-7793-0523'),
(36, 'M2409027', 'P300M2 ELCU Communications Circuit Card', 'LS2044213', 'ELCU-P300 2', 'HAM41-0700-6073'),
(37, 'M2409027', 'P300M2 ELCU Communications Circuit Card', 'LS2044213', 'ELCU-P300 2', 'ITE56-7793-0523'),
(38, 'M2409047', 'P400M1 ELCU Communications Circuit Card', 'LS2434327', 'ELCU-P400 1', 'HAM41-0700-6073'),
(39, 'M2409047', 'P400M1 ELCU Communications Circuit Card', 'LS2434327', 'ELCU-P400 1', 'ITE56-7793-0523'),
(40, 'M2409048', 'P400M2 ELCU Communications Circuit Card', 'LS2264344', 'ELCU-P400 2', 'HAM41-0700-6073'),
(41, 'M2409048', 'P400M2 ELCU Communications Circuit Card', 'LS2264344', 'ELCU-P400 2', 'ITE56-7793-0523'),
(42, 'M2415012', 'Common Motor Start Controller (Left 1 EMP)', 'LS2611134', 'CMSC EMP-L1', 'HAM4A-0720-0496'),
(43, 'M2415032', 'Common Motor Start Controller (Right 1 EMP)', 'LS2681309', 'CMSC EMP-R1', 'HAM4A-0720-0496'),
(44, 'M2415011', 'Common Motor Start Controller (Left 1 CAC)', 'LS2011225', 'CMSC CAC-L1', 'HAM4A-0720-0496'),
(45, 'M2415031', 'Common Motor Start Controller (Right 1 CAC)', 'LS2031354', 'CMSC CAC-R1', 'HAM4A-0720-0496'),
(46, 'M2415022', 'Common Motor Start Controller (Left 2 EMP)', 'LS2861270', 'CMSC EMP-L2', 'HAM4A-0720-0496'),
(47, 'M2415042', 'Common Motor Start Controller (Right 2 EMP)', 'LS2301380', 'CMSC EMP-R2', 'HAM4A-0720-0496'),
(48, 'M2415021', 'Common Motor Start Controller (Left 2 CAC)', 'LS2471281', 'CMSC CAC-L2', 'HAM4A-0720-0496'),
(49, 'M2415041', 'Common Motor Start Controller (Right 2 CAC)', 'LS2871436', 'CMSC CAC-R2', 'HAM4A-0720-0496'),
(50, 'M2441001', 'Left Bus Power Control Unit', 'LS2994424', 'BPCU GATEWAY-L', 'HAM4C-0720-0508'),
(51, 'M2441001', 'Left Bus Power Control Unit', 'LS3561894', 'BPCU LOGIC-L', 'HAM40-0720-0504'),
(52, 'M2441002', 'Right Bus Power Control Unit', 'LS2364481', 'BPCU GATEWAY-R', 'HAM4C-0720-0508'),
(53, 'M2441002', 'Right Bus Power Control Unit', 'LS3671931', 'BPCU LOGIC-R', 'HAM40-0720-0504'),
(54, 'M2422001', 'Left 1 Generator Control Unit', 'LS2234775', 'GCU-L1', 'HAM47-0720-0512'),
(55, 'M2422002', 'Left 2 Generator Control Unit', 'LS2444874', 'GCU-L2', 'HAM47-0720-0512'),
(56, 'M2422003', 'Right 1 Generator Control Unit', 'LS2734939', 'GCU-R1', 'HAM47-0720-0512'),
(57, 'M2422004', 'Right 2 Generator Control Unit', 'LS2684988', 'GCU-R2', 'HAM47-0720-0512'),
(58, 'M2422005', 'Left Aux Generator Control Unit', 'LS2464990', 'AGCU-L', 'HAM47-0720-0512'),
(59, 'M2422006', 'Right Aux Generator Control Unit', 'LS2845014', 'AGCU-R', 'HAM47-0720-0512'),
(60, 'M2471021M1', 'RPDU 21M1 Standard Circuit Card', 'LS2322179', 'RPDU-21 CH A', 'HAM4A-0700-6834'),
(61, 'M2471021M1', 'RPDU 21M1 Standard Circuit Card', 'LS2322179', 'RPDU-21 CH A', 'HAM44-0700-6809'),
(62, 'M2471021M8', 'RPDU 21M8 Standard Circuit Card', 'LS2605467', 'RPDU-21 CH B', 'HAM4A-0700-6834'),
(63, 'M2471021M8', 'RPDU 21M8 Standard Circuit Card', 'LS2605467', 'RPDU-21 CH B', 'HAM44-0700-6809'),
(64, 'M2471071M1', 'RPDU 71M1 Gateway Circuit Card', 'LS2852521', 'RPDU-71 CH A', 'HAM4A-0700-6834'),
(65, 'M2471071M1', 'RPDU 71M1 Gateway Circuit Card', 'LS2852521', 'RPDU-71 CH A', 'HAM44-0700-6809'),
(66, 'M2471071M8', 'RPDU 71M8 Gateway Circuit Card', 'LS2922731', 'RPDU-71 CH B', 'HAM4A-0700-6834'),
(67, 'M2471071M8', 'RPDU 71M8 Gateway Circuit Card', 'LS2922731', 'RPDU-71 CH B', 'HAM44-0700-6809'),
(68, 'M2471073M1', 'RPDU 73M1 Standard Circuit Card', 'LS2781722', 'RPDU-73 CH A', 'HAM4A-0700-6834'),
(69, 'M2471073M1', 'RPDU 73M1 Standard Circuit Card', 'LS2781722', 'RPDU-73 CH A', 'HAM44-0700-6809'),
(70, 'M2471073M8', 'RPDU 73M8 Standard Circuit Card', 'LS2531733', 'RPDU-73 CH B', 'HAM4A-0700-6834'),
(71, 'M2471073M8', 'RPDU 73M8 Standard Circuit Card', 'LS2531733', 'RPDU-73 CH B', 'HAM44-0700-6809'),
(72, 'M2471075M1', 'RPDU 75M1 Standard Circuit Card', 'LS2621885', 'RPDU-75 CH A', 'HAM4A-0700-6834'),
(73, 'M2471075M1', 'RPDU 75M1 Standard Circuit Card', 'LS2621885', 'RPDU-75 CH A', 'HAM44-0700-6809'),
(74, 'M2471075M8', 'RPDU 75M8 Standard Circuit Card', 'LS2561929', 'RPDU-75 CH B', 'HAM4A-0700-6834'),
(75, 'M2471075M8', 'RPDU 75M8 Standard Circuit Card', 'LS2561929', 'RPDU-75 CH B', 'HAM44-0700-6809'),
(76, 'M2471022M1', 'RPDU 22M1 Standard Circuit Card', 'LS2552310', 'RPDU-22 CH A', 'HAM4D-0700-6998'),
(77, 'M2471022M1', 'RPDU 22M1 Standard Circuit Card', 'LS2552310', 'RPDU-22 CH A', 'HAM44-0700-6809'),
(78, 'M2471022M8', 'RPDU 22M8 Standard Circuit Card', 'LS2282323', 'RPDU-22 CH B', 'HAM4D-0700-6998'),
(79, 'M2471022M8', 'RPDU 22M8 Standard Circuit Card', 'LS2282323', 'RPDU-22 CH B', 'HAM44-0700-6809'),
(80, 'M2471072M1', 'RPDU 72M1 Gateway Circuit Card', 'LS2632760', 'RPDU-72 CH A', 'HAM4D-0700-6998'),
(81, 'M2471072M1', 'RPDU 72M1 Gateway Circuit Card', 'LS2632760', 'RPDU-72 CH A', 'HAM44-0700-6809'),
(82, 'M2471072M8', 'RPDU 72M8 Gateway Circuit Card', 'LS2522843', 'RPDU-72 CH B', 'HAM4D-0700-6998'),
(83, 'M2471072M8', 'RPDU 72M8 Gateway Circuit Card', 'LS2522843', 'RPDU-72 CH B', 'HAM44-0700-6809'),
(84, 'M2471074M1', 'RPDU 74M1 Standard Circuit Card', 'LS2041807', 'RPDU-74 CH A', 'HAM4D-0700-6998'),
(85, 'M2471074M1', 'RPDU 74M1 Standard Circuit Card', 'LS2041807', 'RPDU-74 CH A', 'HAM44-0700-6809'),
(86, 'M2471074M8', 'RPDU 74M8 Standard Circuit Card', 'LS2391878', 'RPDU-74 CH B', 'HAM4D-0700-6998'),
(87, 'M2471074M8', 'RPDU 74M8 Standard Circuit Card', 'LS2391878', 'RPDU-74 CH B', 'HAM44-0700-6809'),
(88, 'M2471076M1', 'RPDU 76M1 Standard Circuit Card', 'LS2151984', 'RPDU-76 CH A', 'HAM4D-0700-6998'),
(89, 'M2471076M1', 'RPDU 76M1 Standard Circuit Card', 'LS2151984', 'RPDU-76 CH A', 'HAM44-0700-6809'),
(90, 'M2471076M8', 'RPDU 76M8 Standard Circuit Card', 'LS2432005', 'RPDU-76 CH B', 'HAM4D-0700-6998'),
(91, 'M2471076M8', 'RPDU 76M8 Standard Circuit Card', 'LS2432005', 'RPDU-76 CH B', 'HAM44-0700-6809'),
(92, 'M2471031M1', 'RPDU 31M1 Standard Circuit Card', 'LS2332444', 'RPDU-31 CH A', 'HAM46-0700-6829'),
(93, 'M2471031M1', 'RPDU 31M1 Standard Circuit Card', 'LS2332444', 'RPDU-31 CH A', 'HAM44-0700-6809'),
(94, 'M2471031M8', 'RPDU 31M8 Standard Circuit Card', 'LS2182455', 'RPDU-31 CH B', 'HAM46-0700-6829'),
(95, 'M2471031M8', 'RPDU 31M8 Standard Circuit Card', 'LS2182455', 'RPDU-31 CH B', 'HAM44-0700-6809'),
(96, 'M2471033M1', 'RPDU 33M1 Standard Circuit Card', 'LS2052034', 'RPDU-33 CH A', 'HAM46-0700-6829'),
(97, 'M2471033M1', 'RPDU 33M1 Standard Circuit Card', 'LS2052034', 'RPDU-33 CH A', 'HAM44-0700-6809'),
(98, 'M2471033M8', 'RPDU 33M8 Standard Circuit Card', 'LS2812080', 'RPDU-33 CH B', 'HAM46-0700-6829'),
(99, 'M2471033M8', 'RPDU 33M8 Standard Circuit Card', 'LS2812080', 'RPDU-33 CH B', 'HAM44-0700-6809'),
(100, 'M2471041M1', 'RPDU 41M1 Standard Circuit Card', 'LS2793228', 'RPDU-41 CH A', 'HAM46-0700-6829'),
(101, 'M2471041M1', 'RPDU 41M1 Standard Circuit Card', 'LS2793228', 'RPDU-41 CH A', 'HAM44-0700-6809'),
(102, 'M2471041M8', 'RPDU 41M8 Standard Circuit Card', 'LS2523239', 'RPDU-41 CH B', 'HAM46-0700-6829'),
(103, 'M2471041M8', 'RPDU 41M8 Standard Circuit Card', 'LS2523239', 'RPDU-41 CH B', 'HAM44-0700-6809'),
(104, 'M2471081M1', 'RPDU 81M1 Gateway Circuit Card', 'LS2012868', 'RPDU-81 CH A', 'HAM46-0700-6829'),
(105, 'M2471081M1', 'RPDU 81M1 Gateway Circuit Card', 'LS2012868', 'RPDU-81 CH A', 'HAM44-0700-6809'),
(106, 'M2471081M8', 'RPDU 81M8 Gateway Circuit Card', 'LS2882896', 'RPDU-81 CH B', 'HAM46-0700-6829'),
(107, 'M2471081M8', 'RPDU 81M8 Gateway Circuit Card', 'LS2882896', 'RPDU-81 CH B', 'HAM44-0700-6809'),
(108, 'M2471032M1', 'RPDU 32M1 Standard Circuit Card', 'LS2633072', 'RPDU-32 CH A', 'HAM4E-0700-6830'),
(109, 'M2471032M1', 'RPDU 32M1 Standard Circuit Card', 'LS2633072', 'RPDU-32 CH A', 'HAM44-0700-6809'),
(110, 'M2471032M8', 'RPDU 32M8 Standard Circuit Card', 'LS2983184', 'RPDU-32 CH B', 'HAM4E-0700-6830'),
(111, 'M2471032M8', 'RPDU 32M8 Standard Circuit Card', 'LS2983184', 'RPDU-32 CH B', 'HAM44-0700-6809'),
(112, 'M2471034M1', 'RPDU 34M1 Standard Circuit Card', 'LS2902103', 'RPDU-34 CH A', 'HAM4E-0700-6830'),
(113, 'M2471034M1', 'RPDU 34M1 Standard Circuit Card', 'LS2902103', 'RPDU-34 CH A', 'HAM44-0700-6809'),
(114, 'M2471034M8', 'RPDU 34M8 Standard Circuit Card', 'LS2492137', 'RPDU-34 CH B', 'HAM4E-0700-6830'),
(115, 'M2471034M8', 'RPDU 34M8 Standard Circuit Card', 'LS2492137', 'RPDU-34 CH B', 'HAM44-0700-6809'),
(116, 'M2471042M1', 'RPDU 42M1 Standard Circuit Card', 'LS2183347', 'RPDU-42 CH A', 'HAM4E-0700-6830'),
(117, 'M2471042M1', 'RPDU 42M1 Standard Circuit Card', 'LS2183347', 'RPDU-42 CH A', 'HAM44-0700-6809'),
(118, 'M2471042M8', 'RPDU 42M8 Standard Circuit Card', 'LS2453411', 'RPDU-42 CH B', 'HAM4E-0700-6830'),
(119, 'M2471042M8', 'RPDU 42M8 Standard Circuit Card', 'LS2453411', 'RPDU-42 CH B', 'HAM44-0700-6809'),
(120, 'M2471082M1', 'RPDU 82M1 Gateway Circuit Card', 'LS2893007', 'RPDU-82 CH A', 'HAM4E-0700-6830'),
(121, 'M2471082M1', 'RPDU 82M1 Gateway Circuit Card', 'LS2893007', 'RPDU-82 CH A', 'HAM44-0700-6809'),
(122, 'M2471082M8', 'RPDU 82M8 Gateway Circuit Card', 'LS2253043', 'RPDU-82 CH B', 'HAM4E-0700-6830'),
(123, 'M2471082M8', 'RPDU 82M8 Gateway Circuit Card', 'LS2253043', 'RPDU-82 CH B', 'HAM44-0700-6809'),
(124, 'M2471092M1', 'RPDU 92M1 Standard Circuit Card', 'LS2343616', 'RPDU-92 CH A', 'HAM4E-0700-6830'),
(125, 'M2471092M1', 'RPDU 92M1 Standard Circuit Card', 'LS2343616', 'RPDU-92 CH A', 'HAM44-0700-6809'),
(126, 'M2471092M8', 'RPDU 92M8 Standard Circuit Card', 'LS2933665', 'RPDU-92 CH B', 'HAM4E-0700-6830'),
(127, 'M2471092M8', 'RPDU 92M8 Standard Circuit Card', 'LS2933665', 'RPDU-92 CH B', 'HAM44-0700-6809'),
(128, 'M2611101', 'Left Main Engine Data Concentrator', 'LS2747299', 'MEDC MES-L CH A', 'GRH5C-0118-9101'),
(129, 'M2611101', 'Left Main Engine Data Concentrator', 'LS2617216', 'MEDC MES-L CH B', 'GRH5C-0118-9101'),
(130, 'M2611201', 'Right Main Engine Data Concentrator', 'LS2247585', 'MEDC MES-R CH A', 'GRH5C-0118-9101'),
(131, 'M2611201', 'Right Main Engine Data Concentrator', 'LS2357493', 'MEDC MES-R CH B', 'GRH5C-0118-9101'),
(132, 'M2611101', 'Left Main Engine Data Concentrator', 'LS2766714', 'MEDC DCS-L CH A', 'GRH54-0119-0101'),
(133, 'M2611101', 'Left Main Engine Data Concentrator', 'LS2836649', 'MEDC DCS-L CH B', 'GRH54-0119-0101'),
(134, 'M2611201', 'Right Main Engine Data Concentrator', 'LS2117181', 'MEDC DCS-R CH A', 'GRH54-0119-0101'),
(135, 'M2611201', 'Right Main Engine Data Concentrator', 'LS2266958', 'MEDC DCS-R CH B', 'GRH54-0119-0101'),
(136, 'E2702003M3', 'Left Flight Controls Module', 'LS1731825', 'FCM-L', 'HNP21-AD0E-5002'),
(137, 'E2702003M3', 'Left Flight Controls Module', 'LS1731825', 'FCM-L', 'HNP51-AD04-5003'),
(138, 'E2702003M3', 'Left Flight Controls Module', 'LS1731825', 'FCM-L', 'HNP5F-AD09-5022'),
(139, 'E2702003M3', 'Left Flight Controls Module', 'LS1731825', 'FCM-L', 'HNP5F-AL01-5022'),
(140, 'E2702001M3', 'C1 Flight Controls Module', 'LS1521993', 'FCM-C', 'HNP21-AD0E-5002'),
(141, 'E2702001M3', 'C1 Flight Controls Module', 'LS1521993', 'FCM-C', 'HNP51-AD04-5003'),
(142, 'E2702001M3', 'C1 Flight Controls Module', 'LS1521993', 'FCM-C', 'HNP5F-AD09-5022'),
(143, 'E2702001M3', 'C1 Flight Controls Module', 'LS1521993', 'FCM-C', 'HNP5F-AL01-5022'),
(144, 'E2702004M3', 'Right Flight Controls Module', 'LS1071950', 'FCM-R', 'HNP21-AD0E-5002'),
(145, 'E2702004M3', 'Right Flight Controls Module', 'LS1071950', 'FCM-R', 'HNP51-AD04-5003'),
(146, 'E2702004M3', 'Right Flight Controls Module', 'LS1071950', 'FCM-R', 'HNP5F-AD09-5022'),
(147, 'E2702004M3', 'Right Flight Controls Module', 'LS1071950', 'FCM-R', 'HNP5F-AL01-5022'),
(148, 'M2822601', 'Fuel Shutoff Module', 'LS2395605', 'FSM', 'GRH5D-0118-8202'),
(149, 'M2841102', 'Center Fuel Quantity Data Concentrator', 'LS1122392', 'FQDC-C CH A', 'GRH51-0118-4101'),
(150, 'M2841102', 'Center Fuel Quantity Data Concentrator', 'LS1292446', 'FQDC-C CH B', 'GRH53-0118-5102'),
(151, 'M2841102', 'Center Fuel Quantity Data Concentrator', 'LS1292446', 'FQDC-C CH B', 'GRH51-0118-4101'),
(152, 'M2841101', 'Left Fuel Quantity Data Concentrator', 'LS1112008', 'FQDC-L CH A', 'GRH51-0118-4101'),
(153, 'M2841101', 'Left Fuel Quantity Data Concentrator', 'LS1662109', 'FQDC-L CH B', 'GRH53-0118-5102'),
(154, 'M2841101', 'Left Fuel Quantity Data Concentrator', 'LS1662109', 'FQDC-L CH B', 'GRH51-0118-4101'),
(155, 'M2841103', 'Right Fuel Quantity Data Concentrator', 'LS1972223', 'FQDC-R CH A', 'GRH51-0118-4101'),
(156, 'M2841103', 'Right Fuel Quantity Data Concentrator', 'LS1712319', 'FQDC-R CH B', 'GRH53-0118-5102'),
(157, 'M2841103', 'Right Fuel Quantity Data Concentrator', 'LS1712319', 'FQDC-R CH B', 'GRH51-0118-4101'),
(158, 'M2821000', 'Refuel Control Panel', 'LS1302513', 'RCP-CH A', 'GRH53-0118-6101'),
(159, 'M2821000', 'Refuel Control Panel', 'LS1482529', 'RCP-CH B', 'GRH53-0118-6101'),
(160, 'M3011001M26', 'Wing Ice Protection Controller Unit', 'LS2386025', 'WIPCU', 'UEL28-001A-1063'),
(161, 'M3011001M26', 'Wing Ice Protection Controller Unit', 'LS2386025', 'WIPCU', 'UEL28-001A-1063'),
(162, 'M3131001', 'Forward Flight Recorder Module', 'LS1254168', 'FLT REC-FWD', 'COL41-0004-0005'),
(163, 'M3131001', 'Forward Flight Recorder Module', 'LS1254168', 'FLT REC-FWD', 'BCG23-U000-0264'),
(164, 'M3131002', 'Aft Flight Recorder Module', 'LS1144323', 'FLT REC-AFT', 'COL41-0004-0005'),
(165, 'M3131002', 'Aft Flight Recorder Module', 'LS1144323', 'FLT REC-AFT', 'BCG23-U000-0264'),
(166, 'M3133001', 'Flight Deck Printer Module 1', 'LS1075315', 'FD PRINTER', 'TMD59-0200-0600'),
(167, 'E4220001M11', 'Left 1 Graphic Generator Module', 'LS1854933', 'GGM-1', 'COL47-0015-0021'),
(168, 'E4220001M11', 'Left 1 Graphic Generator Module', 'LS1854933', 'GGM-1', 'COL48-0029-0021'),
(169, 'E4220001M11', 'Left 1 Graphic Generator Module', 'LS1854933', 'GGM-1', 'COL47-0016-0022'),
(170, 'E4220001M11', 'Left 1 Graphic Generator Module', 'LS1854933', 'GGM-1', 'COL4B-0019-0021'),
(171, 'E4220001M11', 'Left 1 Graphic Generator Module', 'LS1854933', 'GGM-1', 'COL41-0020-0021'),
(172, 'E4220001M11', 'Left 1 Graphic Generator Module', 'LS1854933', 'GGM-1', 'HAM47-0700-3315'),
(173, 'E4220001M11', 'Left 1 Graphic Generator Module', 'LS1854933', 'GGM-1', 'HNP52-AD22-5004'),
(174, 'E4220001M11', 'Left 1 Graphic Generator Module', 'LS1854933', 'GGM-1', 'BSM2E-E099-0034'),
(175, 'E4220001M11', 'Left 1 Graphic Generator Module', 'LS1854933', 'GGM-1', 'HNP56-AD32-5001'),
(176, 'E4220001M11', 'Left 1 Graphic Generator Module', 'LS1854933', 'GGM-1', 'HNP51-AD14-5002 '),
(177, 'E4220001M11', 'Left 1 Graphic Generator Module', 'LS1854933', 'GGM-1', 'COL43-0013-0100'),
(178, 'E4220001M10', 'Left 2 Graphic Generator Module', 'LS1294977', 'GGM-2', 'COL47-0015-0021'),
(179, 'E4220001M10', 'Left 2 Graphic Generator Module', 'LS1294977', 'GGM-2', 'COL48-0029-0021'),
(180, 'E4220001M10', 'Left 2 Graphic Generator Module', 'LS1294977', 'GGM-2', 'COL47-0016-0022'),
(181, 'E4220001M10', 'Left 2 Graphic Generator Module', 'LS1294977', 'GGM-2', 'COL4B-0019-0021'),
(182, 'E4220001M10', 'Left 2 Graphic Generator Module', 'LS1294977', 'GGM-2', 'COL41-0020-0021'),
(183, 'E4220001M10', 'Left 2 Graphic Generator Module', 'LS1294977', 'GGM-2', 'HAM47-0700-3315'),
(184, 'E4220001M10', 'Left 2 Graphic Generator Module', 'LS1294977', 'GGM-2', 'HNP52-AD22-5004'),
(185, 'E4220001M10', 'Left 2 Graphic Generator Module', 'LS1294977', 'GGM-2', 'BSM2E-E099-0034'),
(186, 'E4220001M10', 'Left 2 Graphic Generator Module', 'LS1294977', 'GGM-2', 'HNP56-AD32-5001'),
(187, 'E4220001M10', 'Left 2 Graphic Generator Module', 'LS1294977', 'GGM-2', 'HNP51-AD14-5002'),
(188, 'E4220001M10', 'Left 2 Graphic Generator Module', 'LS1294977', 'GGM-2', 'COL43-0013-0100'),
(189, 'E4220002M11', 'Right 3 Graphic Generator Module', 'LS1025067', 'GGM-3', 'COL47-0015-0021'),
(190, 'E4220002M11', 'Right 3 Graphic Generator Module', 'LS1025067', 'GGM-3', 'COL48-0029-0021'),
(191, 'E4220002M11', 'Right 3 Graphic Generator Module', 'LS1025067', 'GGM-3', 'COL47-0016-0022'),
(192, 'E4220002M11', 'Right 3 Graphic Generator Module', 'LS1025067', 'GGM-3', 'COL4B-0019-0021'),
(193, 'E4220002M11', 'Right 3 Graphic Generator Module', 'LS1025067', 'GGM-3', 'COL41-0020-0021'),
(194, 'E4220002M11', 'Right 3 Graphic Generator Module', 'LS1025067', 'GGM-3', 'HAM47-0700-3315'),
(195, 'E4220002M11', 'Right 3 Graphic Generator Module', 'LS1025067', 'GGM-3', 'HNP52-AD22-5004'),
(196, 'E4220002M11', 'Right 3 Graphic Generator Module', 'LS1025067', 'GGM-3', 'BSM2E-E099-0034'),
(197, 'E4220002M11', 'Right 3 Graphic Generator Module', 'LS1025067', 'GGM-3', 'HNP56-AD32-5001'),
(198, 'E4220002M11', 'Right 3 Graphic Generator Module', 'LS1025067', 'GGM-3', 'HNP51-AD14-5002'),
(199, 'E4220002M11', 'Right 3 Graphic Generator Module', 'LS1025067', 'GGM-3', 'COL43-0013-0100'),
(200, 'E4220002M10', 'Right 4 Graphic Generator Module', 'LS1495089', 'GGM-4', 'COL47-0015-0021'),
(201, 'E4220002M10', 'Right 4 Graphic Generator Module', 'LS1495089', 'GGM-4', 'COL48-0029-0021'),
(202, 'E4220002M10', 'Right 4 Graphic Generator Module', 'LS1495089', 'GGM-4', 'COL47-0016-0022'),
(203, 'E4220002M10', 'Right 4 Graphic Generator Module', 'LS1495089', 'GGM-4', 'COL4B-0019-0021'),
(204, 'E4220002M10', 'Right 4 Graphic Generator Module', 'LS1495089', 'GGM-4', 'COL41-0020-0021'),
(205, 'E4220002M10', 'Right 4 Graphic Generator Module', 'LS1495089', 'GGM-4', 'HAM47-0700-3315'),
(206, 'E4220002M10', 'Right 4 Graphic Generator Module', 'LS1495089', 'GGM-4', 'HNP52-AD22-5004'),
(207, 'E4220002M10', 'Right 4 Graphic Generator Module', 'LS1495089', 'GGM-4', 'BSM2E-E099-0034'),
(208, 'E4220002M10', 'Right 4 Graphic Generator Module', 'LS1495089', 'GGM-4', 'HNP56-AD32-5001'),
(209, 'E4220002M10', 'Right 4 Graphic Generator Module', 'LS1495089', 'GGM-4', 'HNP51-AD14-5002'),
(210, 'E4220002M10', 'Right 4 Graphic Generator Module', 'LS1495089', 'GGM-4', 'COL43-0013-0100'),
(211, 'M3208001', 'Proximity Sensing Data Concentrator Module 1', 'LS2350966', 'PSDC-1', 'GRH55-0118-3102'),
(212, 'M3208002', 'Proximity Sensing Data Concentrator Module 2', 'LS2810972', 'PSDC-2', 'GRH55-0118-3102'),
(213, 'M3208003', 'Proximity Sensing Data Concentrator Module 3', 'LS2970989', 'PSDC-3', 'GRH55-0118-3102'),
(214, 'M3208004', 'Proximity Sensing Data Concentrator Module 4', 'LS2501004', 'PSDC-4', 'GRH55-0118-3102'),
(215, 'M3208005', 'Proximity Sensing Data Concentrator Module 5', 'LS2081018', 'PSDC-5', 'GRH55-0118-3102'),
(216, 'M3208006', 'Proximity Sensing Data Concentrator Module 6', 'LS2941069', 'PSDC-6', 'GRH55-0118-3102'),
(217, 'M5211101', 'Door 1L EPAS Module', 'LS2570515', 'EPAS-1L', 'GRH50-0118-7103'),
(218, 'M5211201', 'Door 1R EPAS Module', 'LS2840768', 'EPAS-1R', 'GRH50-0118-7103'),
(219, 'M5211102', 'Door 2&amp;3L EPAS Module', 'LS2740547', 'EPAS-2L', 'GRH50-0118-7103'),
(220, 'M5211202', 'Door 2&amp;3R EPAS Module', 'LS2980827', 'EPAS-2R', 'GRH50-0118-7103'),
(221, 'M5211102', 'Door 2&amp;3L EPAS Module', 'LS2520667', 'EPAS-3L', 'GRH50-0118-7103'),
(222, 'M5211202', 'Door 2&amp;3R EPAS Module', 'LS2170831', 'EPAS-3R', 'GRH50-0118-7103'),
(223, 'M5211104', 'Door 4L EPAS Module', 'LS2480746', 'EPAS-4L', 'GRH50-0118-7103'),
(224, 'M5211204', 'Door 4R EPAS Module', 'LS2220898', 'EPAS-4R', 'GRH50-0118-7103'),
(225, 'M3241005', 'Wheels 1&amp;5 Electric Brake Actuation Controller', 'LS1380567', 'EBAC-LO FWD', 'FMB39-1001-02C1'),
(226, 'M3241005', 'Wheels 1&amp;5 Electric Brake Actuation Controller', 'LS1380567', 'EBAC-LO FWD', 'FMB3B-1002-02B1'),
(227, 'M3241005', 'Wheels 1&amp;5 Electric Brake Actuation Controller', 'LS1380567', 'EBAC-LO FWD', 'FMB39-1003-02A1'),
(228, 'M3241005', 'Wheels 1&amp;5 Electric Brake Actuation Controller', 'LS1380567', 'EBAC-LO FWD', 'FMB3E-1004-02A1'),
(229, 'M3241005', 'Wheels 1&amp;5 Electric Brake Actuation Controller', 'LS1380567', 'EBAC-LO FWD', 'FMB3C-1005-02B1');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `library`
--
ALTER TABLE `library`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `library`
--
ALTER TABLE `library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
