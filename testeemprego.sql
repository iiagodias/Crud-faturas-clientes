-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 16-Maio-2018 às 04:26
-- Versão do servidor: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testeemprego`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `consumidor`
--

CREATE TABLE `consumidor` (
  `idconsu` int(11) NOT NULL,
  `cpf` varchar(100) CHARACTER SET utf8 NOT NULL,
  `nome` varchar(100) CHARACTER SET utf8 NOT NULL,
  `telefone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `consumidor`
--

INSERT INTO `consumidor` (`idconsu`, `cpf`, `nome`, `telefone`, `email`) VALUES
(29, '58841827327', 'Laura Sheridan', '(37) 8739-5409', 'facilisi@at.com'),
(30, '18118124061', 'Kathrin Curtis', '(65) 1417-6604', 'diam@morbi.com'),
(31, '86355731296', 'Shay Kemp', '(35) 3174-9618', 'vel@velit.com'),
(32, '7700593175', 'Isis Moon', '(39) 0321-1914', 'egestas@amet.com'),
(33, '9984637441', 'Edward Ball', '(44) 9008-3865', 'donec@ipsum.com'),
(34, '17762457330', 'Odis Smith', '(86) 3017-1155', 'faucibus@id.com'),
(35, '82057135020', 'Delpha Hill', '(14) 1394-3125', 'pharetra@cras.com'),
(36, '79767590005', 'Tifany Bernard', '(13) 3943-6773', 'amet@velit.com'),
(37, '52244864596', 'Walker Traynor', '(31) 5688-2285', 'non@nunc.com'),
(38, '70996653597', 'Sang Thomson', '(53) 5902-4955', 'cras@duis.com'),
(39, '94548833056', 'Tiana Upton', '(12) 3709-6748', 'eget@duis.com'),
(40, '5097912551', 'Vanna Ashley', '(84) 6617-1871', 'urna@varius.com'),
(41, '31705994709', 'Mindy Bird', '(11) 4265-5992', 'nam@nec.com'),
(42, '62344875301', 'Rachael Grey', '(87) 8833-2786', 'in@hendrerit.com'),
(43, '34786195723', 'Phoebe Leslie', '(75) 4184-4003', 'sed@volutpat.com'),
(44, '89926917003', 'Tiffaney Bright', '(28) 5439-7783', 'varius@ut.com'),
(45, '37979578074', 'Ashleigh Hopkins', '(06) 0282-1200', 'quisque@rhoncus.com'),
(46, '20503020451', 'Tori Nixon', '(05) 0618-1087', 'at@ultrices.com'),
(47, '35480710664', 'Hisako Campbell', '(91) 1147-4996', 'a@non.com'),
(48, '7709673104', 'Barton Vickers', '(96) 6763-2465', 'tellus@vitae.com'),
(49, '38756453248', 'Miles Bruce', '(30) 3927-4052', 'mattis@ut.com'),
(50, '15926054605', 'Deedra Dolan', '(05) 6677-2668', 'vivamus@molestie.com'),
(51, '11980648034', 'Adell Clarkson', '(91) 8046-6959', 'ac@malesuada.com'),
(52, '30032631456', 'Micha Mcrae', '(45) 3062-7054', 'dictumst@vitae.com'),
(53, '19057914530', 'Elnora Neale', '(80) 8839-3621', 'dignissim@eu.com'),
(54, '19485356889', 'Stefan Baldwin', '(14) 6298-7590', 'non@volutpat.com'),
(55, '56662066729', 'Lita Bowman', '(07) 7009-4786', 'ac@odio.com'),
(56, '23228114163', 'Juliana Welch', '(00) 7671-4884', 'id@eget.com'),
(57, '95833413630', 'Soo Smith', '(59) 8654-8471', 'mattis@aliquet.com'),
(58, '52868534040', 'Lisette Welsh', '(49) 0637-6368', 'commodo@ultrices.com'),
(59, '21131593502', 'Cathryn Holding', '(08) 0098-6000', 'vestibulum@feugiat.com'),
(60, '41035582708', 'Ashley Newton', '(02) 1700-1511', 'at@elementum.com'),
(61, '58156022211', 'Jeane Horner', '(93) 0633-3147', 'congue@quis.com'),
(62, '65310549480', 'Daphne Gonzalez', '(98) 0708-7916', 'molestie@sit.com'),
(63, '65758984086', 'Wen Atkinson', '(94) 4165-6508', 'tincidunt@vitae.com'),
(64, '40311909728', 'Leora Wyatt', '(87) 3893-8567', 'faucibus@feugiat.com'),
(65, '99200580840', 'Joesph Gibbs', '(01) 9463-6857', 'risus@blandit.com'),
(66, '16075116222', 'Latasha Martins', '(20) 6363-5953', 'suscipit@metus.com'),
(67, '38198940200', 'Merle Noble', '(19) 6147-3958', 'volutpat@molestie.com'),
(68, '95737147444', 'Reiko Croft', '(62) 3083-9569', 'sed@leo.com'),
(69, '12041154861', 'Arianne Woods', '(20) 6691-9130', 'nec@fames.com'),
(70, '58993228965', 'Kimbra Rankin', '(77) 4207-1461', 'et@a.com'),
(71, '32663898678', 'Terrence Anderson', '(47) 5156-8058', 'interdum@cursus.com'),
(72, '29326829030', 'Jon Muir', '(15) 9226-2173', 'cursus@gravida.com'),
(73, '13440959503', 'Reinaldo Drake', '(47) 5002-5343', 'ullamcorper@sit.com'),
(74, '63131038071', 'Jamey Moore', '(95) 6787-3240', 'lobortis@consectetur.com'),
(75, '65264439311', 'Yuette Hough', '(16) 8842-2667', 'at@sagittis.com'),
(76, '4486035780', 'Monroe Carson', '(69) 7471-8084', 'amet@et.com'),
(77, '83754715690', 'Warner Stamp', '(73) 3768-4908', 'maecenas@posuere.com'),
(78, '97165181962', 'Shenita Mclaren', '(74) 9950-3188', 'vitae@eget.com'),
(79, '35991045658', 'Tambra Webster', '(17) 2924-9283', 'morbi@aenean.com'),
(80, '73443947905', 'Paulene Lyon', '(57) 9035-6893', 'viverra@viverra.com'),
(81, '91104592517', 'Ollie Palmer', '(07) 2001-4643', 'id@semper.com'),
(82, '45004316830', 'Tanesha Lewis', '(64) 9563-6364', 'tincidunt@cursus.com'),
(83, '86028188158', 'Laveta Patel', '(90) 9126-6181', 'proin@risus.com'),
(84, '71797320793', 'Corrie Stanley', '(85) 1232-7835', 'nunc@pretium.com'),
(85, '8909331038', 'Delila Duff', '(90) 3774-0574', 'bibendum@a.com'),
(86, '56104793479', 'Toshia Whitfield', '(39) 4805-8172', 'et@amet.com'),
(87, '16284840209', 'Sheilah Dunkley', '(11) 0957-0560', 'lectus@tempor.com'),
(88, '91682394085', 'Merle Corrigan', '(69) 1352-3250', 'velit@facilisis.com'),
(89, '72082160378', 'Alexandria Hussain', '(54) 7623-1089', 'suspendisse@vivamus.com'),
(90, '57775501260', 'Gregorio Grant', '(00) 0606-1588', 'cras@risus.com'),
(91, '6907408406', 'Albina Shaw', '(38) 2535-0201', 'dolor@lacus.com'),
(92, '69401156840', 'Louanne Preston', '(37) 2223-2537', 'fermentum@massa.com'),
(93, '35647011500', 'Tressa Perry', '(07) 3672-4191', 'vel@purus.com'),
(94, '51306236908', 'Leola Owens', '(27) 4646-4433', 'turpis@ultrices.com'),
(95, '75474429789', 'Crysta Mair', '(70) 6799-3318', 'sed@ipsum.com'),
(96, '38665350900', 'Emery Humphreys', '(64) 3275-8102', 'nunc@quis.com'),
(97, '94020648425', 'Karan Regan', '(65) 9233-2620', 'tellus@parturient.com'),
(98, '50045822115', 'Drema Haynes', '(48) 6811-4323', 'placerat@sit.com'),
(99, '76938282811', 'Mika Tucker', '(21) 9195-2938', 'facilisis@sem.com'),
(100, '77422279320', 'Cheri Simmonds', '(62) 7861-7636', 'tincidunt@tellus.com'),
(101, '36208520304', 'Mari Millington', '(10) 3957-1607', 'vestibulum@eget.com'),
(102, '75798369714', 'Odelia Power', '(36) 8364-3097', 'consectetur@pellentesque.com'),
(103, '35878780801', 'Candace Mohammed', '(54) 8958-7713', 'volutpat@consequat.com'),
(104, '22854747330', 'Thalia Schmidt', '(36) 8748-2020', 'nulla@morbi.com'),
(105, '30988669340', 'Toby Rayner', '(83) 7087-2726', 'amet@viverra.com'),
(106, '95898208755', 'Quyen Greene', '(86) 6864-7143', 'aliquam@ultrices.com'),
(107, '61049764099', 'Emilee Doherty', '(38) 3550-9892', 'eleifend@quis.com'),
(108, '15521359699', 'Ara Poole', '(50) 7924-0641', 'gravida@dolor.com'),
(109, '79778424403', 'Lane Brandrick', '(78) 8164-1279', 'egestas@amet.com'),
(110, '90428991580', 'Yu Dunn', '(13) 6824-2425', 'sit@et.com'),
(111, '63213516600', 'Nikita Joseph', '(45) 5962-6855', 'vitae@in.com'),
(112, '28501739596', 'Kirstie Black', '(35) 9239-4675', 'vitae@ultrices.com'),
(113, '12943708470', 'Stephania Richardson', '(52) 6095-6115', 'fringilla@libero.com'),
(114, '29394815805', 'Marylou Mac', '(11) 7603-1348', 'turpis@dolor.com'),
(115, '72399705904', 'Benny Holmes', '(25) 1997-8470', 'ut@aliquam.com'),
(116, '60238169405', 'Jimmie Simon', '(34) 6242-0684', 'interdum@magna.com'),
(117, '40548514950', 'Matthew John', '(49) 5570-6801', 'volutpat@enim.com'),
(118, '86503667329', 'Martin Bryant', '(35) 7584-7291', 'praesent@consectetur.com'),
(119, '2397631148', 'Cammie Mcculloch', '(86) 9503-6610', 'orci@volutpat.com'),
(120, '96777914862', 'Robyn Kearney', '(95) 0677-5886', 'donec@mattis.com'),
(121, '37804613407', 'Darcy Connelly', '(13) 2032-4620', 'malesuada@feugiat.com'),
(122, '98859781434', 'Sherrie Heath', '(22) 9038-2726', 'elit@orci.com'),
(123, '53363901780', 'Lovie Mcneill', '(69) 8628-6640', 'ac@in.com'),
(124, '40839303491', 'Kiana Sanders', '(40) 0371-5452', 'neque@scelerisque.com'),
(125, '90502387009', 'Matilde Moseley', '(93) 0025-4600', 'odio@donec.com'),
(126, '2512674827', 'Detra Reeve', '(10) 7747-2332', 'at@risus.com'),
(127, '59872802149', 'Lenita Sharpe', '(19) 1233-5661', 'a@id.com'),
(128, '51953514227', 'Pamela Haworth', '(02) 2051-4871', 'blandit@quis.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagamento`
--

CREATE TABLE `pagamento` (
  `idpagamento` int(11) NOT NULL,
  `dataPagamento` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `idplanoConsu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `pagamento`
--

INSERT INTO `pagamento` (`idpagamento`, `dataPagamento`, `idplanoConsu`) VALUES
(6, '1526436824', 66),
(7, '1526436831', 67),
(8, '1526436837', 68),
(9, '1526436845', 79),
(10, '1526436851', 83),
(11, '1526436856', 89),
(12, '1526436862', 91),
(13, '1526436868', 99),
(14, '1526436913', 106),
(15, '1526436922', 115),
(16, '1526436927', 120);

-- --------------------------------------------------------

--
-- Estrutura da tabela `planoconsumidor`
--

CREATE TABLE `planoconsumidor` (
  `idplanoConsu` int(11) NOT NULL,
  `idconsu` int(11) NOT NULL,
  `idplanos` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `data` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `planoconsumidor`
--

INSERT INTO `planoconsumidor` (`idplanoConsu`, `idconsu`, `idplanos`, `status`, `data`) VALUES
(66, 29, 1, 0, '1529028824'),
(67, 30, 1, 0, '1529028831'),
(68, 30, 2, 1, '1526436748'),
(70, 31, 3, 0, '1529027735'),
(71, 30, 3, 0, '1529027739'),
(72, 31, 2, 0, '1529027742'),
(73, 33, 2, 1, '1526436748'),
(74, 33, 1, 0, '1529027766'),
(75, 35, 1, 1, '1526436748'),
(76, 35, 3, 0, '1529027792'),
(77, 32, 3, 0, '1529027800'),
(78, 32, 1, 1, '1526436748'),
(79, 34, 1, 0, '1529028845'),
(80, 37, 1, 0, '1529027869'),
(81, 34, 3, 0, '1529027875'),
(82, 34, 3, 0, '1529027876'),
(83, 37, 1, 0, '1529028851'),
(84, 36, 2, 1, '1526436748'),
(85, 36, 3, 0, '1529027889'),
(86, 40, 1, 0, '1529027914'),
(87, 29, 2, 0, '1529028060'),
(88, 40, 2, 0, '1529028073'),
(89, 39, 2, 0, '1529028856'),
(90, 41, 3, 0, '1529028127'),
(91, 43, 1, 0, '1529028862'),
(92, 45, 2, 0, '1529028145'),
(93, 47, 2, 0, '1529028154'),
(94, 42, 2, 0, '1529028161'),
(95, 49, 3, 0, '1529028166'),
(96, 44, 1, 0, '1529028168'),
(97, 46, 3, 0, '1529028176'),
(98, 51, 1, 0, '1529028179'),
(99, 48, 2, 0, '1529028868'),
(100, 53, 2, 0, '1529028191'),
(101, 50, 2, 0, '1529028195'),
(102, 52, 3, 0, '1529028200'),
(103, 55, 1, 0, '1529028202'),
(104, 54, 1, 0, '1529028210'),
(105, 57, 2, 0, '1529028211'),
(106, 56, 3, 0, '1529028913'),
(107, 59, 2, 0, '1529028222'),
(108, 58, 2, 0, '1529028224'),
(109, 61, 3, 0, '1529028231'),
(110, 60, 2, 0, '1529028233'),
(111, 62, 1, 0, '1529028240'),
(112, 64, 3, 0, '1529028247'),
(113, 63, 2, 0, '1529028248'),
(114, 66, 2, 0, '1529028255'),
(115, 65, 2, 0, '1529028922'),
(116, 68, 1, 0, '1529028263'),
(117, 70, 2, 0, '1529028271'),
(118, 67, 2, 0, '1529028273'),
(119, 72, 2, 0, '1529028277'),
(120, 72, 2, 0, '1529028927'),
(121, 74, 3, 0, '1529028284'),
(122, 69, 3, 0, '1529028289'),
(123, 76, 3, 0, '1529028290'),
(124, 71, 2, 0, '1529028296'),
(125, 78, 1, 0, '1529028298'),
(126, 80, 2, 0, '1529028304'),
(127, 73, 3, 0, '1529028305'),
(128, 82, 1, 0, '1529028313'),
(129, 75, 2, 0, '1529028316'),
(130, 84, 2, 0, '1529028319'),
(131, 86, 2, 0, '1529028327'),
(132, 88, 1, 0, '1529028333'),
(133, 90, 2, 0, '1529028339'),
(134, 77, 2, 0, '1529028342'),
(135, 77, 2, 0, '1529028342'),
(136, 92, 2, 0, '1529028345'),
(137, 79, 2, 0, '1529028349'),
(138, 94, 2, 0, '1529028351'),
(139, 96, 2, 0, '1529028357'),
(140, 81, 3, 0, '1529028360'),
(141, 98, 3, 0, '1529028363'),
(142, 100, 2, 0, '1529028369'),
(143, 83, 2, 0, '1529028371'),
(144, 102, 2, 0, '1529028377'),
(145, 104, 2, 0, '1529028385'),
(146, 85, 3, 0, '1529028387'),
(147, 106, 2, 0, '1529028392'),
(148, 108, 2, 0, '1529028397'),
(149, 87, 2, 0, '1529028397'),
(150, 110, 2, 0, '1529028402'),
(151, 89, 2, 0, '1529028408'),
(152, 112, 1, 0, '1529028408'),
(153, 114, 3, 0, '1529028415'),
(154, 91, 3, 0, '1529028417'),
(155, 116, 1, 0, '1529028423'),
(156, 93, 2, 0, '1529028427'),
(157, 118, 1, 0, '1529028429'),
(158, 120, 2, 0, '1529028435'),
(159, 95, 2, 0, '1529028437'),
(160, 122, 3, 0, '1529028440'),
(161, 97, 1, 0, '1529028446'),
(162, 124, 2, 0, '1529028450'),
(163, 126, 3, 0, '1529028457'),
(164, 99, 2, 0, '1529028459'),
(165, 128, 1, 0, '1529028464'),
(166, 101, 2, 0, '1529028468'),
(167, 103, 2, 0, '1529028481'),
(168, 105, 1, 0, '1529028494'),
(169, 107, 3, 0, '1529028507'),
(170, 109, 2, 0, '1529028528'),
(171, 111, 3, 0, '1529028537'),
(172, 113, 3, 0, '1529028547'),
(173, 115, 3, 0, '1529028556'),
(174, 117, 2, 0, '1529028564'),
(175, 119, 2, 0, '1529028572'),
(176, 121, 2, 0, '1529028582'),
(177, 123, 3, 0, '1529028592'),
(178, 125, 2, 0, '1529028604'),
(179, 127, 3, 0, '1529028614');

-- --------------------------------------------------------

--
-- Estrutura da tabela `planos`
--

CREATE TABLE `planos` (
  `idplanos` int(11) NOT NULL,
  `valor` float NOT NULL,
  `nomePlano` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `planos`
--

INSERT INTO `planos` (`idplanos`, `valor`, `nomePlano`) VALUES
(1, 30, 'Plano I'),
(2, 40, 'Plano II'),
(3, 50, 'Plano III');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendasplano`
--

CREATE TABLE `vendasplano` (
  `idvendas` int(11) NOT NULL,
  `idconsu` int(11) NOT NULL,
  `idvendedor` varchar(200) NOT NULL,
  `idplanos` varchar(200) NOT NULL,
  `data` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `vendasplano`
--

INSERT INTO `vendasplano` (`idvendas`, `idconsu`, `idvendedor`, `idplanos`, `data`) VALUES
(57, 29, '8', '1', '1526435703'),
(58, 30, '8', '1', '1526435707'),
(59, 30, '9', '2', '1526435711'),
(60, 30, '8', '3', '1526435731'),
(61, 31, '9', '3', '1526435735'),
(63, 31, '9', '2', '1526435742'),
(64, 33, '10', '2', '1526435758'),
(65, 33, '10', '1', '1526435766'),
(66, 35, '9', '1', '1526435779'),
(67, 35, '9', '3', '1526435792'),
(68, 32, '10', '3', '1526435800'),
(69, 32, '10', '1', '1526435809'),
(70, 34, '9', '1', '1526435848'),
(71, 37, '8', '1', '1526435869'),
(72, 34, '9', '3', '1526435875'),
(73, 34, '9', '3', '1526435876'),
(74, 37, '10', '1', '1526435880'),
(75, 36, '10', '2', '1526435885'),
(76, 36, '10', '3', '1526435889'),
(77, 40, '9', '1', '1526435914'),
(78, 29, '8', '2', '1526436060'),
(79, 40, '8', '2', '1526436073'),
(80, 39, '10', '2', '1526436116'),
(81, 41, '9', '3', '1526436127'),
(82, 43, '8', '1', '1526436136'),
(83, 45, '9', '2', '1526436145'),
(84, 47, '10', '2', '1526436154'),
(85, 42, '10', '2', '1526436161'),
(86, 49, '9', '3', '1526436166'),
(87, 44, '9', '1', '1526436168'),
(88, 46, '8', '3', '1526436176'),
(89, 51, '9', '1', '1526436179'),
(90, 48, '9', '2', '1526436185'),
(91, 53, '9', '2', '1526436191'),
(92, 50, '8', '2', '1526436195'),
(93, 52, '10', '3', '1526436200'),
(94, 55, '9', '1', '1526436202'),
(95, 54, '10', '1', '1526436210'),
(96, 57, '8', '2', '1526436211'),
(97, 56, '9', '3', '1526436216'),
(98, 59, '8', '2', '1526436222'),
(99, 58, '8', '2', '1526436224'),
(100, 61, '9', '3', '1526436231'),
(101, 60, '10', '2', '1526436233'),
(102, 62, '8', '1', '1526436240'),
(103, 64, '10', '3', '1526436247'),
(104, 63, '9', '2', '1526436248'),
(105, 66, '10', '2', '1526436255'),
(106, 65, '10', '2', '1526436261'),
(107, 68, '10', '1', '1526436263'),
(108, 70, '10', '2', '1526436271'),
(109, 67, '10', '2', '1526436273'),
(110, 72, '8', '2', '1526436277'),
(111, 72, '8', '2', '1526436277'),
(112, 74, '9', '3', '1526436284'),
(113, 69, '8', '3', '1526436289'),
(114, 76, '10', '3', '1526436290'),
(115, 71, '8', '2', '1526436296'),
(116, 78, '8', '1', '1526436298'),
(117, 80, '10', '2', '1526436304'),
(118, 73, '9', '3', '1526436305'),
(119, 82, '10', '1', '1526436313'),
(120, 75, '8', '2', '1526436316'),
(121, 84, '9', '2', '1526436319'),
(122, 86, '10', '2', '1526436327'),
(123, 88, '9', '1', '1526436333'),
(124, 90, '9', '2', '1526436339'),
(125, 77, '9', '2', '1526436342'),
(126, 77, '9', '2', '1526436342'),
(127, 92, '8', '2', '1526436345'),
(128, 79, '8', '2', '1526436349'),
(129, 94, '10', '2', '1526436351'),
(130, 96, '9', '2', '1526436357'),
(131, 81, '10', '3', '1526436360'),
(132, 98, '8', '3', '1526436363'),
(133, 100, '10', '2', '1526436369'),
(134, 83, '9', '2', '1526436371'),
(135, 102, '9', '2', '1526436377'),
(136, 104, '8', '2', '1526436385'),
(137, 85, '8', '3', '1526436387'),
(138, 106, '9', '2', '1526436392'),
(139, 108, '10', '2', '1526436397'),
(140, 87, '8', '2', '1526436397'),
(141, 110, '8', '2', '1526436402'),
(142, 89, '8', '2', '1526436408'),
(143, 112, '10', '1', '1526436408'),
(144, 114, '9', '3', '1526436415'),
(145, 91, '8', '3', '1526436417'),
(146, 116, '9', '1', '1526436423'),
(147, 93, '10', '2', '1526436427'),
(148, 118, '9', '1', '1526436429'),
(149, 120, '10', '2', '1526436435'),
(150, 95, '9', '2', '1526436437'),
(151, 122, '8', '3', '1526436440'),
(152, 97, '9', '1', '1526436446'),
(153, 124, '8', '2', '1526436450'),
(154, 126, '10', '3', '1526436457'),
(155, 99, '9', '2', '1526436459'),
(156, 128, '10', '1', '1526436464'),
(157, 101, '9', '2', '1526436468'),
(158, 103, '8', '2', '1526436481'),
(159, 105, '8', '1', '1526436494'),
(160, 107, '8', '3', '1526436506'),
(161, 109, '8', '2', '1526436528'),
(162, 111, '8', '3', '1526436537'),
(163, 113, '10', '3', '1526436547'),
(164, 115, '9', '3', '1526436556'),
(165, 117, '9', '2', '1526436564'),
(166, 119, '8', '2', '1526436572'),
(167, 121, '8', '2', '1526436582'),
(168, 123, '10', '3', '1526436592'),
(169, 125, '9', '2', '1526436604'),
(170, 127, '9', '3', '1526436614');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendedor`
--

CREATE TABLE `vendedor` (
  `idvendedor` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `matricula` varchar(100) NOT NULL,
  `percentComissao` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `vendedor`
--

INSERT INTO `vendedor` (`idvendedor`, `nome`, `foto`, `matricula`, `percentComissao`, `email`) VALUES
(8, 'Roberto Santos Lima', 'fotos/688385.png', '461', '10', 'roberto@wsb.com.br'),
(9, 'Junior Ribeiro Montes', 'fotos/650036.jpg', '57569', '15', 'junior@wsb.com.br'),
(10, 'Carlos Dias Ferreira', 'fotos/229349.jpg', '51357', '20', 'carlos@wsb.com.br');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `consumidor`
--
ALTER TABLE `consumidor`
  ADD PRIMARY KEY (`idconsu`);

--
-- Indexes for table `pagamento`
--
ALTER TABLE `pagamento`
  ADD PRIMARY KEY (`idpagamento`);

--
-- Indexes for table `planoconsumidor`
--
ALTER TABLE `planoconsumidor`
  ADD PRIMARY KEY (`idplanoConsu`);

--
-- Indexes for table `planos`
--
ALTER TABLE `planos`
  ADD PRIMARY KEY (`idplanos`);

--
-- Indexes for table `vendasplano`
--
ALTER TABLE `vendasplano`
  ADD PRIMARY KEY (`idvendas`);

--
-- Indexes for table `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`idvendedor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `consumidor`
--
ALTER TABLE `consumidor`
  MODIFY `idconsu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `pagamento`
--
ALTER TABLE `pagamento`
  MODIFY `idpagamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `planoconsumidor`
--
ALTER TABLE `planoconsumidor`
  MODIFY `idplanoConsu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `planos`
--
ALTER TABLE `planos`
  MODIFY `idplanos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vendasplano`
--
ALTER TABLE `vendasplano`
  MODIFY `idvendas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `vendedor`
--
ALTER TABLE `vendedor`
  MODIFY `idvendedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
