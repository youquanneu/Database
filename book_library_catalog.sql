-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2025 at 02:39 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_library_catalog`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `Author_ID` int(7) NOT NULL,
  `Author_Name` varchar(127) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`Author_ID`, `Author_Name`) VALUES
(1, 'Arthur Conan Doyle'),
(2, 'J. K. Rowling'),
(3, 'George R. R. Martin'),
(4, 'Mike Joy'),
(5, 'Stephen A. Jarvis'),
(6, 'Michael Luck'),
(7, 'Hector Garcia-Molina'),
(8, 'Jeffrey D. Ullman'),
(9, 'Jennifer Widom'),
(10, 'Thomas H. Cormen'),
(11, 'Charles Eric Leiserson'),
(12, 'Ronald L. Rivest'),
(13, 'Clifford Stein'),
(14, 'Robert L. Drydale'),
(15, 'Kenneth P. Bogart'),
(16, 'William Stallings'),
(17, 'Peter Zeno'),
(18, 'C. R. Jesshope'),
(19, 'Cay S. Horstmann'),
(20, 'Stephen King');

-- --------------------------------------------------------

--
-- Table structure for table `book's_author`
--

CREATE TABLE `book's_author` (
  `Author_ID` int(7) NOT NULL,
  `ISBN` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book's_author`
--

INSERT INTO `book's_author` (`Author_ID`, `ISBN`) VALUES
(1, 9780199536955),
(2, 9780747532699),
(2, 9780747538493),
(2, 9780747542155),
(2, 9780747546245),
(2, 9780747551003),
(2, 9780747581086),
(2, 9780747591054),
(3, 9780002245845),
(3, 9780002245869),
(3, 9780007456376),
(3, 9780553108033),
(3, 9780553801507),
(4, 9780333987636),
(5, 9780333987636),
(6, 9780333987636),
(7, 9781292037301),
(8, 9781292037301),
(9, 9781292037301),
(10, 9780262046305),
(11, 9780262046305),
(12, 9780262046305),
(13, 9780132122719),
(13, 9780262046305),
(14, 9780132122719),
(15, 9780132122719),
(16, 9781292420103),
(17, 9781292420103),
(18, 9781292420103),
(19, 9780137673810),
(19, 9780137870967),
(20, 9780385121675);

-- --------------------------------------------------------

--
-- Table structure for table `book's_genre`
--

CREATE TABLE `book's_genre` (
  `Genre_ID` int(7) NOT NULL,
  `ISBN` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book's_genre`
--

INSERT INTO `book's_genre` (`Genre_ID`, `ISBN`) VALUES
(1, 9780002245845),
(1, 9780002245869),
(1, 9780007456376),
(1, 9780199536955),
(1, 9780385121675),
(1, 9780553108033),
(1, 9780553801507),
(1, 9780747532699),
(1, 9780747538493),
(1, 9780747542155),
(1, 9780747546245),
(1, 9780747551003),
(1, 9780747581086),
(1, 9780747591054),
(2, 9780132122719),
(2, 9780137673810),
(2, 9780137870967),
(2, 9780262046305),
(2, 9780333987636),
(2, 9781292037301),
(2, 9781292420103),
(3, 9780132122719),
(3, 9780137673810),
(3, 9780137870967),
(3, 9780262046305),
(3, 9780333987636),
(3, 9781292037301),
(3, 9781292420103),
(4, 9780132122719),
(5, 9780132122719),
(5, 9780137673810),
(5, 9780137870967),
(5, 9780262046305),
(5, 9780333987636),
(5, 9781292037301),
(5, 9781292420103),
(6, 9780002245845),
(6, 9780002245869),
(6, 9780007456376),
(6, 9780553108033),
(6, 9780553801507),
(6, 9780747532699),
(6, 9780747538493),
(6, 9780747542155),
(6, 9780747546245),
(6, 9780747551003),
(6, 9780747581086),
(6, 9780747591054),
(7, 9780747532699),
(7, 9780747538493),
(7, 9780747542155),
(7, 9780747546245),
(7, 9780747551003),
(7, 9780747581086),
(7, 9780747591054),
(8, 9780199536955),
(9, 9780002245845),
(9, 9780002245869),
(9, 9780007456376),
(9, 9780553108033),
(9, 9780553801507),
(11, 9780132122719),
(13, 9780385121675),
(16, 9780385121675),
(19, 9780137673810),
(19, 9780137870967),
(19, 9780262046305);

-- --------------------------------------------------------

--
-- Table structure for table `book_copy`
--

CREATE TABLE `book_copy` (
  `Book_Copy_ID` bigint(15) NOT NULL,
  `ISBN` bigint(12) NOT NULL,
  `IsAvailable` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_copy`
--

INSERT INTO `book_copy` (`Book_Copy_ID`, `ISBN`, `IsAvailable`) VALUES
(1, 9780002245845, 1),
(2, 9780002245869, 1),
(3, 9780007456376, 1),
(4, 9780132122719, 1),
(5, 9780137673810, 1),
(6, 9780137870967, 1),
(7, 9780199536955, 1),
(8, 9780262046305, 1),
(9, 9780333987636, 1),
(10, 9780385121675, 1),
(11, 9780553108033, 1),
(12, 9780553801507, 1),
(13, 9780747532699, 1),
(14, 9780747538493, 1),
(15, 9780747542155, 1),
(16, 9780747546245, 1),
(17, 9780747551003, 1),
(18, 9780747581086, 1),
(19, 9780747591054, 1),
(20, 9781292037301, 1),
(21, 9781292420103, 1),
(32, 9780002245845, 1),
(33, 9780002245869, 1),
(34, 9780007456376, 1),
(35, 9780132122719, 1),
(36, 9780137673810, 1),
(37, 9780137870967, 1),
(38, 9780199536955, 1),
(39, 9780262046305, 1),
(40, 9780333987636, 1),
(41, 9780385121675, 1),
(42, 9780553108033, 1),
(43, 9780553801507, 1),
(44, 9780747532699, 1),
(45, 9780747538493, 1),
(46, 9780747542155, 1),
(47, 9780747546245, 1),
(48, 9780747551003, 1),
(49, 9780747581086, 1),
(50, 9780747591054, 1),
(51, 9781292037301, 1),
(52, 9781292420103, 1),
(63, 9780747532699, 1),
(64, 9780747538493, 1),
(65, 9780747542155, 1),
(66, 9780747546245, 1),
(67, 9780747551003, 1),
(68, 9780747581086, 1),
(69, 9780747591054, 1),
(70, 9780002245845, 1),
(71, 9780002245869, 1),
(72, 9780007456376, 1),
(73, 9780553108033, 1),
(74, 9780553801507, 1);

-- --------------------------------------------------------

--
-- Table structure for table `book_details`
--

CREATE TABLE `book_details` (
  `ISBN` bigint(12) NOT NULL,
  `Title` varchar(127) NOT NULL,
  `Publication_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_details`
--

INSERT INTO `book_details` (`ISBN`, `Title`, `Publication_Date`) VALUES
(9780002245845, 'A Game of Thrones', '1996-08-01'),
(9780002245869, 'A Storm of Swords', '2000-08-08'),
(9780007456376, 'A Dance with Dragons', '2011-07-12'),
(9780132122719, 'Discrete Mathematics for Computer Scientists', '2010-03-13'),
(9780137673810, 'Core Java: Fundamentals, Volume 1', '2021-12-21'),
(9780137870967, 'Core Java: Advanced Features, Volume 2', '2022-04-19'),
(9780199536955, 'The Adventures of Sherlock Holmes (Oxford World\'s Classics)', '2009-02-01'),
(9780262046305, 'Introduction to Algorithms, Fourth Edition', '2022-04-05'),
(9780333987636, 'Introducing UNIX and Linux', '2002-07-23'),
(9780385121675, 'The Shining', '1977-01-28'),
(9780553108033, 'A Clash of Kings', '1998-11-16'),
(9780553801507, 'A Feast for Crows', '2005-11-08'),
(9780747532699, 'Harry Potter and the Philosopher\'s Stone', '1997-06-27'),
(9780747538493, 'Harry Potter and the Chamber of Secrets', '1998-07-02'),
(9780747542155, 'Harry Potter and the Prisoner of Azkaban', '1999-07-08'),
(9780747546245, 'Harry Potter and the Goblet of Fire', '2000-07-08'),
(9780747551003, 'Harry Potter and the Order of the Phoenix', '2003-06-21'),
(9780747581086, 'Harry Potter and the Half-Blood Prince', '2005-07-15'),
(9780747591054, 'Harry Potter and the Deathly Hallows', '2007-07-21'),
(9781292037301, 'Database Systems: The Complete Book: Pearson New International Edition', '2013-08-29'),
(9781292420103, 'Computer Organization and Architecture, Global Edition', '2021-11-23');

-- --------------------------------------------------------

--
-- Table structure for table `borrowing_history`
--

CREATE TABLE `borrowing_history` (
  `Borrowing_History_ID` bigint(15) NOT NULL,
  `Book_Copy_ID` bigint(15) NOT NULL,
  `User_ID` int(7) NOT NULL,
  `BorrowingDateTime` datetime NOT NULL DEFAULT current_timestamp(),
  `ReturningDateTime` datetime DEFAULT NULL,
  `Remarks` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `borrowing_history`
--

INSERT INTO `borrowing_history` (`Borrowing_History_ID`, `Book_Copy_ID`, `User_ID`, `BorrowingDateTime`, `ReturningDateTime`, `Remarks`) VALUES
(1, 10, 1, '2014-05-01 15:50:59', '2014-05-14 09:18:48', NULL),
(2, 4, 4, '2015-06-07 17:30:43', '2015-07-04 13:02:08', 'Extend for two weeks on 2015-06-21 15:50:59'),
(3, 9, 6, '2016-08-06 09:50:19', '2016-08-20 09:02:37', NULL),
(4, 51, 14, '2020-04-08 10:50:59', '2020-04-28 10:50:59', 'fine for 1 week'),
(5, 39, 9, '2022-07-15 18:29:33', '2022-07-29 18:48:31', NULL),
(6, 36, 10, '2023-02-01 10:11:48', '2023-02-14 18:20:19', NULL),
(7, 6, 10, '2023-02-01 10:12:26', '2023-02-14 18:20:49', NULL),
(8, 38, 18, '2023-08-31 17:50:49', '2023-09-10 11:09:00', NULL),
(9, 44, 19, '2024-02-11 18:58:41', '2024-02-15 18:00:48', NULL),
(10, 45, 19, '2024-02-15 18:57:33', '2024-02-19 18:20:03', NULL),
(11, 15, 19, '2024-02-19 18:58:47', '2024-02-23 17:01:12', NULL),
(12, 16, 19, '2024-02-23 18:59:01', '2024-02-29 18:02:01', NULL),
(13, 48, 19, '2024-02-29 18:57:03', '2024-03-03 11:48:30', NULL),
(14, 1, 20, '2024-03-01 18:20:13', '2024-03-03 15:00:44', NULL),
(15, 68, 19, '2024-03-03 16:30:59', '2024-03-09 14:13:33', NULL),
(16, 42, 20, '2024-03-03 18:22:44', '2024-03-05 13:02:18', NULL),
(17, 71, 20, '2024-03-05 18:02:58', '2024-03-07 14:48:55', NULL),
(18, 74, 20, '2024-03-07 17:59:44', '2024-03-09 17:22:40', NULL),
(19, 69, 19, '2024-03-09 17:03:24', '2024-03-13 18:20:25', NULL),
(20, 3, 20, '2024-03-09 18:19:27', '2024-03-11 14:02:51', NULL),
(21, 1, 20, '2024-03-01 18:20:13', '2024-03-03 15:00:44', NULL),
(22, 42, 20, '2024-03-03 18:22:44', '2024-03-05 13:02:18', NULL),
(23, 74, 20, '2024-03-07 17:59:44', '2024-03-09 17:22:40', NULL),
(24, 3, 20, '2024-03-09 18:19:27', '2024-03-11 14:02:51', NULL),
(25, 42, 20, '2024-03-03 18:22:44', '2024-03-05 13:02:18', NULL),
(26, 74, 20, '2024-03-07 17:59:44', '2024-03-09 17:22:40', NULL),
(27, 3, 20, '2024-03-09 18:19:27', '2024-03-11 14:02:51', NULL),
(28, 3, 20, '2024-03-09 18:19:27', '2024-03-11 14:02:51', NULL),
(29, 42, 20, '2024-03-03 18:22:44', '2024-03-05 13:02:18', NULL),
(35, 42, 20, '2024-03-03 18:22:44', NULL, NULL),
(36, 74, 20, '2024-03-07 17:59:44', NULL, NULL),
(37, 3, 20, '2024-03-09 18:19:27', NULL, NULL),
(38, 3, 20, '2024-03-09 18:19:27', NULL, NULL),
(39, 42, 20, '2024-03-03 18:22:44', NULL, NULL),
(40, 42, 22, '2024-03-03 18:22:44', '2024-03-05 13:02:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `Genre_ID` int(7) NOT NULL,
  `Genre_Name` varchar(63) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`Genre_ID`, `Genre_Name`) VALUES
(1, 'Fiction'),
(2, 'Non-Fiction'),
(3, 'Educational'),
(4, 'Science'),
(5, 'Computer'),
(6, 'Fantasy'),
(7, 'Young Adult'),
(8, 'Mystery'),
(9, 'Drama'),
(10, 'Comedy'),
(11, 'Mathematics'),
(12, 'Historical'),
(13, 'Horror'),
(14, 'Romance'),
(15, 'Science Fiction'),
(16, 'Thriller'),
(17, 'Religious'),
(18, 'Biography'),
(19, 'Programming'),
(20, 'Short Story');

-- --------------------------------------------------------

--
-- Table structure for table `reading_history`
--

CREATE TABLE `reading_history` (
  `Reading_History_ID` bigint(15) NOT NULL,
  `ISBN` bigint(12) NOT NULL,
  `User_ID` int(7) NOT NULL,
  `ReadingDateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reading_history`
--

INSERT INTO `reading_history` (`Reading_History_ID`, `ISBN`, `User_ID`, `ReadingDateTime`) VALUES
(4, 9781292037301, 14, '2020-04-08 09:09:35'),
(6, 9780137673810, 10, '2023-02-01 09:34:17'),
(7, 9780137870967, 10, '2023-02-01 09:58:41'),
(8, 9780199536955, 18, '2023-08-31 16:00:45'),
(9, 9780747532699, 19, '2024-02-11 18:05:08'),
(10, 9780747538493, 19, '2024-02-15 18:35:14'),
(11, 9780747542155, 19, '2024-02-19 18:29:10'),
(12, 9780747546245, 19, '2024-02-23 17:10:12'),
(13, 9780747551003, 19, '2024-02-29 18:05:08'),
(14, 9780002245845, 20, '2024-03-01 17:08:08'),
(15, 9780747581086, 19, '2024-03-03 12:05:08'),
(16, 9780553108033, 20, '2024-03-03 15:05:08'),
(17, 9780002245869, 20, '2024-03-05 13:17:59'),
(18, 9780553801507, 20, '2024-03-07 14:55:47'),
(19, 9780747591054, 19, '2024-03-09 14:26:37'),
(20, 9780007456376, 20, '2024-03-09 17:27:48'),
(25, 9781292037301, 14, '2020-04-08 09:09:35'),
(27, 9780137673810, 10, '2023-02-01 09:34:17'),
(28, 9780137870967, 10, '2023-02-01 09:58:41'),
(29, 9780199536955, 18, '2023-08-31 16:00:45'),
(30, 9780747532699, 19, '2024-02-11 18:05:08'),
(31, 9780747538493, 19, '2024-02-15 18:35:14'),
(32, 9780747542155, 19, '2024-02-19 18:29:10'),
(33, 9780747546245, 19, '2024-02-23 17:10:12'),
(34, 9780747551003, 19, '2024-02-29 18:05:08'),
(35, 9780002245845, 20, '2024-03-01 17:08:08'),
(36, 9780747581086, 19, '2024-03-03 12:05:08'),
(37, 9780553108033, 20, '2024-03-03 15:05:08'),
(38, 9780002245869, 20, '2024-03-05 13:17:59'),
(39, 9780553801507, 20, '2024-03-07 14:55:47'),
(40, 9780747591054, 19, '2024-03-09 14:26:37'),
(41, 9780007456376, 20, '2024-03-09 17:27:48'),
(46, 9781292037301, 14, '2020-04-08 09:09:35'),
(48, 9780137673810, 10, '2023-02-01 09:34:17'),
(49, 9780137870967, 10, '2023-02-01 09:58:41'),
(50, 9780199536955, 18, '2023-08-31 16:00:45'),
(51, 9780747532699, 19, '2024-02-11 18:05:08'),
(52, 9780747538493, 19, '2024-02-15 18:35:14'),
(53, 9780747542155, 19, '2024-02-19 18:29:10'),
(54, 9780747546245, 19, '2024-02-23 17:10:12'),
(55, 9780747551003, 19, '2024-02-29 18:05:08'),
(56, 9780002245845, 20, '2024-03-01 17:08:08'),
(57, 9780747581086, 19, '2024-03-03 12:05:08'),
(58, 9780553108033, 20, '2024-03-03 15:05:08'),
(59, 9780002245869, 20, '2024-03-05 13:17:59'),
(60, 9780553801507, 20, '2024-03-07 14:55:47'),
(61, 9780747591054, 19, '2024-03-09 14:26:37'),
(62, 9780007456376, 20, '2024-03-09 17:27:48'),
(67, 9781292037301, 14, '2020-04-08 09:09:35'),
(69, 9780137673810, 10, '2023-02-01 09:34:17'),
(70, 9780137870967, 10, '2023-02-01 09:58:41'),
(71, 9780199536955, 18, '2023-08-31 16:00:45'),
(72, 9780747532699, 19, '2024-02-11 18:05:08'),
(73, 9780747538493, 19, '2024-02-15 18:35:14'),
(74, 9780747542155, 19, '2024-02-19 18:29:10'),
(75, 9780747546245, 19, '2024-02-23 17:10:12'),
(76, 9780747551003, 19, '2024-02-29 18:05:08'),
(77, 9780002245845, 20, '2024-03-01 17:08:08'),
(78, 9780747581086, 19, '2024-03-03 12:05:08'),
(79, 9780553108033, 20, '2024-03-03 15:05:08'),
(80, 9780002245869, 20, '2024-03-05 13:17:59'),
(81, 9780553801507, 20, '2024-03-07 14:55:47'),
(82, 9780747591054, 19, '2024-03-09 14:26:37'),
(83, 9780007456376, 20, '2024-03-09 17:27:48'),
(85, 9780553801507, 20, '2024-03-23 14:55:47'),
(86, 9780747591054, 19, '2024-03-08 14:26:37'),
(87, 9780007456376, 20, '2024-03-22 17:27:48'),
(92, 9780747591054, 19, '2024-02-20 14:26:37');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_ID` int(7) NOT NULL,
  `Username` varchar(63) NOT NULL,
  `Email` varchar(127) NOT NULL,
  `Password` varchar(127) NOT NULL,
  `BirthDate` date NOT NULL,
  `RegisterDateTime` datetime NOT NULL DEFAULT current_timestamp(),
  `Remarks` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_ID`, `Username`, `Email`, `Password`, `BirthDate`, `RegisterDateTime`, `Remarks`) VALUES
(1, 'Stanley', 'stanley@icloud.com', 'tsunafin2008', '1997-09-16', '2013-04-19 12:50:47', NULL),
(2, 'Charlie', 'charlie@gmail.com', 'charlieqazplm123', '1989-01-01', '2014-03-19 09:40:17', NULL),
(3, 'Powell', 'powell@icloud.com', '2begod4US', '1983-02-04', '2014-09-21 10:33:59', NULL),
(4, 'Bill', 'bill@outlook.com', 'techc098ms', '1995-10-28', '2015-06-07 15:15:10', NULL),
(5, 'Bun', 'bun@yahoo.com', 'xi1228tler', '1993-06-15', '2016-04-20 16:57:12', NULL),
(6, 'Steve', 'steve@icloud.com', 'AAPL199.62', '1994-02-24', '2016-07-31 18:05:27', NULL),
(7, 'Jobs', 'jobs@icloud.com', 'ios47yrs', '1976-04-01', '2017-01-31 08:45:17', NULL),
(8, 'Gates', 'gates@outlook.com', 'mso365greedy', '1975-04-04', '2017-12-31 19:25:33', NULL),
(9, 'Jerome', 'jerome@outlook.com', 'up5%FED', '1992-04-07', '2018-02-26 09:05:01', NULL),
(10, 'Winnie', 'winnie@yahoo.com', 'emp2wall', '1989-06-04', '2019-04-06 11:35:54', NULL),
(11, 'Morgan', 'morgans@gmail.com', 'moneyblackhole1900', '1980-04-17', '2019-11-11 11:20:05', NULL),
(12, 'Warren', 'warren@outlook.com', 'warren123qazplm', '1998-08-30', '2020-01-01 17:45:17', NULL),
(13, 'Donald', 'donald@gmail.com', ' mu9tega', '1986-06-14', '2020-02-20 15:09:47', NULL),
(14, 'Joe', 'joe@outlook.com', 'finish524j', '1982-11-20', '2020-04-07 19:15:27', NULL),
(15, 'Larry', 'larry@gmail.com', 'gogogo1ABC', '1997-03-26', '2021-01-16 14:03:19', NULL),
(16, 'Tim', 'tim@icloud.com', 'worap5!', '1990-11-01', '2021-06-21 09:01:17', NULL),
(17, 'Bruce', 'bruce@yahoo.com', 'kkckkc879', '1993-11-27', '2022-10-06 11:05:02', NULL),
(18, 'Jackie', 'jackie@yahoo.com', 'h78wef66k', '1984-04-07', '2023-08-31 13:47:20', NULL),
(19, 'Page', 'page@gmai.com', 'alphabet2A-Z', '2015-10-02', '2024-02-11 17:05:07', 'PG'),
(20, 'Terry', 'terry@yahoo.com', 'tos11tsang', '2013-01-28', '2024-03-01 17:03:08', 'PG'),
(22, 'Terry2', 'terry2@yahoo.com', 'tos11tsang22', '2013-01-28', '2024-03-14 17:03:08', 'PG');

-- --------------------------------------------------------

--
-- Table structure for table `user_rating`
--

CREATE TABLE `user_rating` (
  `Rating_ID` double(31,0) UNSIGNED NOT NULL,
  `ISBN` bigint(12) NOT NULL,
  `User_ID` int(7) NOT NULL,
  `DateTime` datetime NOT NULL,
  `Rating` enum('1','2','3','4','5') NOT NULL,
  `Review` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_rating`
--

INSERT INTO `user_rating` (`Rating_ID`, `ISBN`, `User_ID`, `DateTime`, `Rating`, `Review`) VALUES
(1, 9780385121675, 1, '2014-05-14 09:35:02', '4', 'I like it, but I think there\'s still room for improvement.'),
(2, 9780132122719, 4, '2015-07-04 13:05:49', '5', 'That\'s great, it helped me solve my problem!'),
(3, 9780333987636, 6, '2016-08-20 09:07:55', '5', 'Nice explanation.'),
(4, 9781292037301, 14, '2020-04-28 11:00:00', '5', 'This syllabus is a bit difficult.'),
(5, 9780262046305, 9, '2022-07-29 18:51:55', '5', NULL),
(6, 9780137673810, 10, '2023-02-14 18:24:21', '1', 'I can\'t understand what he wrote!'),
(7, 9780137870967, 10, '2023-02-14 18:25:28', '1', 'All other books should be low marks too!'),
(8, 9780199536955, 18, '2023-08-31 17:53:22', '4', 'Wonderful story.'),
(9, 9780747532699, 19, '2024-02-15 18:02:59', '5', 'Magic is so amazing!'),
(10, 9780747538493, 19, '2024-02-19 18:27:47', '5', NULL),
(11, 9780747542155, 19, '2024-02-23 17:04:11', '5', NULL),
(12, 9780747546245, 19, '2024-02-29 18:07:45', '5', NULL),
(13, 9780747551003, 19, '2024-03-03 12:00:02', '5', NULL),
(14, 9780002245845, 20, '2024-03-03 15:05:07', '5', NULL),
(15, 9780747581086, 19, '2024-03-09 14:17:09', '5', NULL),
(16, 9780553108033, 20, '2024-03-05 13:09:17', '5', NULL),
(17, 9780002245869, 20, '2024-03-07 14:53:15', '5', NULL),
(18, 9780553801507, 20, '2024-03-09 17:29:35', '5', NULL),
(19, 9780747591054, 19, '2024-03-13 18:29:32', '5', 'I love this series so much! thank you J.K Rowling!'),
(20, 9780007456376, 20, '2024-03-11 14:05:07', '5', 'Waiting for next episode ZZZ...'),
(21, 9780553108033, 20, '2024-03-05 13:09:17', '1', NULL),
(22, 9780002245869, 20, '2024-03-07 14:53:15', '1', NULL),
(23, 9780553801507, 20, '2024-03-09 17:29:35', '1', NULL),
(24, 9780747591054, 19, '2024-03-13 18:29:32', '1', 'I love this series so much! thank you J.K Rowling!'),
(25, 9780007456376, 20, '2024-03-11 14:05:07', '1', 'Waiting for next episode ZZZ...'),
(26, 9780385121675, 1, '2014-05-14 09:35:02', '3', 'I like it, but I think there\'s still room for improvement.'),
(27, 9780132122719, 4, '2015-07-04 13:05:49', '5', 'That\'s great, it helped me solve my problem!'),
(28, 9780333987636, 6, '2016-08-20 09:07:55', '5', 'Nice explanation.'),
(29, 9781292037301, 14, '2020-04-28 11:00:00', '5', 'This syllabus is a bit difficult.'),
(30, 9780262046305, 9, '2022-07-29 18:51:55', '5', NULL),
(31, 9780137673810, 6, '2023-02-14 18:24:21', '5', 'I can\'t understand what he wrote!'),
(32, 9780137870967, 22, '2023-02-14 18:25:28', '5', 'All other books should be low marks too!'),
(33, 9780199536955, 18, '2023-08-31 17:53:22', '5', 'Wonderful story.'),
(34, 9780747532699, 19, '2024-02-15 18:02:59', '5', 'Magic is so amazing!'),
(35, 9780747538493, 19, '2024-02-19 18:27:47', '5', NULL),
(36, 9780747542155, 19, '2024-02-23 17:04:11', '5', NULL),
(37, 9780747546245, 19, '2024-02-29 18:07:45', '5', NULL),
(38, 9780747551003, 19, '2024-03-03 12:00:02', '2', NULL),
(39, 9780002245845, 20, '2024-03-03 15:05:07', '5', NULL),
(40, 9780747581086, 19, '2024-03-09 14:17:09', '3', NULL),
(41, 9780553108033, 20, '2024-03-05 13:09:17', '5', NULL),
(42, 9780002245869, 20, '2024-03-07 14:53:15', '5', NULL),
(43, 9780553801507, 20, '2024-03-09 17:29:35', '5', NULL),
(44, 9780747591054, 19, '2024-03-13 18:29:32', '5', 'I love this series so much! thank you J.K Rowling!'),
(45, 9780007456376, 20, '2024-03-11 14:05:07', '5', 'Waiting for next episode ZZZ...'),
(46, 9780553108033, 20, '2024-03-05 13:09:17', '3', NULL),
(47, 9780002245869, 20, '2024-03-07 14:53:15', '5', NULL),
(48, 9780553801507, 20, '2024-03-09 17:29:35', '2', NULL),
(49, 9780747591054, 19, '2024-03-13 18:29:32', '4', 'I love this series so much! thank you J.K Rowling!'),
(50, 9780007456376, 20, '2024-03-11 14:05:07', '1', 'Waiting for next episode ZZZ...'),
(51, 9780262046305, 9, '2022-07-29 18:51:55', '5', NULL),
(52, 9780747538493, 19, '2024-02-19 18:27:47', '5', NULL),
(53, 9780747542155, 19, '2024-02-23 17:04:11', '5', NULL),
(54, 9780747546245, 19, '2024-02-29 18:07:45', '5', NULL),
(55, 9780747551003, 19, '2024-03-03 12:00:02', '5', NULL),
(56, 9780002245845, 20, '2024-03-03 15:05:07', '5', NULL),
(57, 9780747581086, 19, '2024-03-09 14:17:09', '5', NULL),
(58, 9780553108033, 20, '2024-03-05 13:09:17', '5', NULL),
(59, 9780002245869, 20, '2024-03-07 14:53:15', '5', NULL),
(60, 9780553801507, 20, '2024-03-09 17:29:35', '5', NULL),
(61, 9780553108033, 20, '2024-03-05 13:09:17', '1', NULL),
(62, 9780002245869, 20, '2024-03-07 14:53:15', '1', NULL),
(63, 9780553801507, 20, '2024-03-09 17:29:35', '1', NULL),
(64, 9780747538493, 19, '2024-02-19 18:27:47', '5', NULL),
(65, 9780747542155, 19, '2024-02-23 17:04:11', '5', NULL),
(66, 9780747546245, 19, '2024-02-29 18:07:45', '5', NULL),
(67, 9780747551003, 19, '2024-03-03 12:00:02', '2', NULL),
(68, 9780002245845, 20, '2024-03-03 15:05:07', '5', NULL),
(69, 9780747581086, 19, '2024-03-09 14:17:09', '3', NULL),
(70, 9780553108033, 20, '2024-03-05 13:09:17', '5', NULL),
(71, 9780002245869, 20, '2024-03-07 14:53:15', '5', NULL),
(72, 9780553801507, 20, '2024-03-09 17:29:35', '5', NULL),
(73, 9780553108033, 20, '2024-03-05 13:09:17', '3', NULL),
(74, 9780002245869, 20, '2024-03-07 14:53:15', '5', NULL),
(75, 9780553801507, 20, '2024-03-09 17:29:35', '2', NULL),
(76, 9780262046305, 9, '2022-07-29 18:51:55', '5', NULL),
(77, 9780137673810, 10, '2023-02-14 18:24:21', '1', 'I can\'t understand what he wrote!'),
(78, 9780137870967, 10, '2023-02-14 18:25:28', '1', 'All other books should be low marks too!'),
(79, 9780199536955, 18, '2023-08-31 17:53:22', '4', 'Wonderful story.'),
(80, 9780747532699, 19, '2024-02-15 18:02:59', '5', 'Magic is so amazing!'),
(81, 9780747538493, 19, '2024-02-19 18:27:47', '5', NULL),
(82, 9780747542155, 19, '2024-02-23 17:04:11', '5', NULL),
(83, 9780262046305, 9, '2022-07-29 18:51:55', '5', NULL),
(84, 9780137673810, 10, '2023-02-14 18:24:21', '1', 'I can\'t understand what he wrote!'),
(85, 9780137870967, 10, '2023-02-14 18:25:28', '1', 'All other books should be low marks too!'),
(86, 9780199536955, 18, '2023-08-31 17:53:22', '4', 'Wonderful story.'),
(87, 9780747532699, 19, '2024-02-15 18:02:59', '5', 'Magic is so amazing!'),
(88, 9780747538493, 19, '2024-02-19 18:27:47', '5', NULL),
(89, 9780747542155, 19, '2024-02-23 17:04:11', '5', NULL),
(90, 9780262046305, 9, '2022-07-29 18:51:55', '5', NULL),
(91, 9780137673810, 10, '2023-02-14 18:24:21', '1', 'I can\'t understand what he wrote!'),
(92, 9780137870967, 10, '2023-02-14 18:25:28', '1', 'All other books should be low marks too!'),
(93, 9780199536955, 18, '2023-08-31 17:53:22', '4', 'Wonderful story.'),
(94, 9780747532699, 19, '2024-02-15 18:02:59', '5', 'Magic is so amazing!'),
(95, 9780747538493, 19, '2024-02-19 18:27:47', '5', NULL),
(96, 9780747542155, 19, '2024-02-23 17:04:11', '5', NULL),
(97, 9780262046305, 9, '2022-07-29 18:51:55', '5', NULL),
(98, 9780137673810, 10, '2023-02-14 18:24:21', '1', 'I can\'t understand what he wrote!'),
(99, 9780137870967, 10, '2023-02-14 18:25:28', '1', 'All other books should be low marks too!'),
(100, 9780199536955, 18, '2023-08-31 17:53:22', '4', 'Wonderful story.'),
(101, 9780747532699, 19, '2024-02-15 18:02:59', '5', 'Magic is so amazing!'),
(102, 9780747538493, 19, '2024-02-19 18:27:47', '5', NULL),
(103, 9780747542155, 19, '2024-02-23 17:04:11', '5', NULL),
(104, 9780262046305, 9, '2022-07-29 18:51:55', '5', NULL),
(105, 9780137673810, 10, '2023-02-14 18:24:21', '1', 'I can\'t understand what he wrote!'),
(106, 9780137870967, 10, '2023-02-14 18:25:28', '1', 'All other books should be low marks too!'),
(107, 9780199536955, 18, '2023-08-31 17:53:22', '4', 'Wonderful story.'),
(108, 9780747532699, 19, '2024-02-15 18:02:59', '5', 'Magic is so amazing!'),
(109, 9780747538493, 19, '2024-02-19 18:27:47', '5', NULL),
(110, 9780747542155, 19, '2024-02-23 17:04:11', '5', NULL),
(111, 9780262046305, 9, '2022-07-29 18:51:55', '5', NULL),
(112, 9780137673810, 10, '2023-02-14 18:24:21', '1', 'I can\'t understand what he wrote!'),
(113, 9780137870967, 10, '2023-02-14 18:25:28', '1', 'All other books should be low marks too!'),
(114, 9780199536955, 18, '2023-08-31 17:53:22', '4', 'Wonderful story.'),
(115, 9780747532699, 19, '2024-02-15 18:02:59', '5', 'Magic is so amazing!'),
(116, 9780747538493, 19, '2024-02-19 18:27:47', '5', NULL),
(117, 9780747542155, 19, '2024-02-23 17:04:11', '5', NULL),
(118, 9780262046305, 9, '2022-07-29 18:51:55', '5', NULL),
(119, 9780137673810, 10, '2023-02-14 18:24:21', '1', 'I can\'t understand what he wrote!'),
(120, 9780137870967, 10, '2023-02-14 18:25:28', '1', 'All other books should be low marks too!'),
(121, 9780199536955, 18, '2023-08-31 17:53:22', '4', 'Wonderful story.'),
(122, 9780747532699, 19, '2024-02-15 18:02:59', '5', 'Magic is so amazing!'),
(123, 9780747538493, 19, '2024-02-19 18:27:47', '5', NULL),
(124, 9780747542155, 19, '2024-02-23 17:04:11', '5', NULL),
(125, 9780262046305, 9, '2022-07-29 18:51:55', '5', NULL),
(126, 9780137673810, 10, '2023-02-14 18:24:21', '1', 'I can\'t understand what he wrote!'),
(127, 9780137870967, 10, '2023-02-14 18:25:28', '1', 'All other books should be low marks too!'),
(128, 9780199536955, 18, '2023-08-31 17:53:22', '4', 'Wonderful story.'),
(129, 9780747532699, 19, '2024-02-15 18:02:59', '5', 'Magic is so amazing!'),
(130, 9780747538493, 19, '2024-02-19 18:27:47', '5', NULL),
(131, 9780747542155, 19, '2024-02-23 17:04:11', '5', NULL),
(132, 9780262046305, 9, '2022-07-29 18:51:55', '5', NULL),
(133, 9780137673810, 10, '2023-02-14 18:24:21', '1', 'I can\'t understand what he wrote!'),
(134, 9780137870967, 10, '2023-02-14 18:25:28', '1', 'All other books should be low marks too!'),
(135, 9780199536955, 18, '2023-08-31 17:53:22', '4', 'Wonderful story.'),
(136, 9780747532699, 19, '2024-02-15 18:02:59', '5', 'Magic is so amazing!'),
(137, 9780747538493, 19, '2024-02-19 18:27:47', '5', NULL),
(138, 9780747542155, 19, '2024-02-23 17:04:11', '5', NULL),
(139, 9780262046305, 9, '2022-07-29 18:51:55', '5', NULL),
(140, 9780137673810, 10, '2023-02-14 18:24:21', '1', 'I can\'t understand what he wrote!'),
(141, 9780137870967, 10, '2023-02-14 18:25:28', '1', 'All other books should be low marks too!'),
(142, 9780199536955, 18, '2023-08-31 17:53:22', '4', 'Wonderful story.'),
(143, 9780747532699, 19, '2024-02-15 18:02:59', '5', 'Magic is so amazing!'),
(144, 9780747538493, 19, '2024-02-19 18:27:47', '5', NULL),
(145, 9780747542155, 19, '2024-02-23 17:04:11', '5', NULL),
(146, 9780262046305, 9, '2022-07-29 18:51:55', '5', NULL),
(147, 9780137673810, 10, '2023-02-14 18:24:21', '1', 'I can\'t understand what he wrote!'),
(148, 9780137870967, 10, '2023-02-14 18:25:28', '1', 'All other books should be low marks too!'),
(149, 9780199536955, 18, '2023-08-31 17:53:22', '4', 'Wonderful story.'),
(150, 9780747532699, 19, '2024-02-15 18:02:59', '5', 'Magic is so amazing!'),
(151, 9780747538493, 19, '2024-02-19 18:27:47', '5', NULL),
(152, 9780747542155, 19, '2024-02-23 17:04:11', '5', NULL),
(153, 9780262046305, 9, '2022-07-29 18:51:55', '5', NULL),
(154, 9780137673810, 10, '2023-02-14 18:24:21', '1', 'I can\'t understand what he wrote!'),
(155, 9780137870967, 10, '2023-02-14 18:25:28', '1', 'All other books should be low marks too!'),
(156, 9780199536955, 18, '2023-08-31 17:53:22', '4', 'Wonderful story.'),
(157, 9780747532699, 19, '2024-02-15 18:02:59', '5', 'Magic is so amazing!'),
(158, 9780747538493, 19, '2024-02-19 18:27:47', '5', NULL),
(159, 9780747542155, 19, '2024-02-23 17:04:11', '5', NULL),
(160, 9780262046305, 9, '2022-07-29 18:51:55', '5', NULL),
(161, 9780137673810, 10, '2023-02-14 18:24:21', '1', 'I can\'t understand what he wrote!'),
(162, 9780137870967, 10, '2023-02-14 18:25:28', '1', 'All other books should be low marks too!'),
(163, 9780199536955, 18, '2023-08-31 17:53:22', '4', 'Wonderful story.'),
(164, 9780747532699, 19, '2024-02-15 18:02:59', '5', 'Magic is so amazing!'),
(165, 9780747538493, 19, '2024-02-19 18:27:47', '5', NULL),
(166, 9780747542155, 19, '2024-02-23 17:04:11', '5', NULL),
(167, 9780137673810, 20, '2023-02-14 18:24:21', '5', 'I can\'t und');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`Author_ID`);

--
-- Indexes for table `book's_author`
--
ALTER TABLE `book's_author`
  ADD PRIMARY KEY (`Author_ID`,`ISBN`),
  ADD KEY `ISBN` (`ISBN`);

--
-- Indexes for table `book's_genre`
--
ALTER TABLE `book's_genre`
  ADD PRIMARY KEY (`Genre_ID`,`ISBN`),
  ADD KEY `ISBN` (`ISBN`);

--
-- Indexes for table `book_copy`
--
ALTER TABLE `book_copy`
  ADD PRIMARY KEY (`Book_Copy_ID`),
  ADD KEY `ISBN` (`ISBN`);

--
-- Indexes for table `book_details`
--
ALTER TABLE `book_details`
  ADD PRIMARY KEY (`ISBN`);

--
-- Indexes for table `borrowing_history`
--
ALTER TABLE `borrowing_history`
  ADD PRIMARY KEY (`Borrowing_History_ID`),
  ADD KEY `User_ID` (`User_ID`),
  ADD KEY `Book_Copy_ID` (`Book_Copy_ID`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`Genre_ID`);

--
-- Indexes for table `reading_history`
--
ALTER TABLE `reading_history`
  ADD PRIMARY KEY (`Reading_History_ID`),
  ADD KEY `ISBN` (`ISBN`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_ID`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `user_rating`
--
ALTER TABLE `user_rating`
  ADD PRIMARY KEY (`Rating_ID`),
  ADD KEY `ISBN` (`ISBN`),
  ADD KEY `User_ID` (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `Author_ID` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `book_copy`
--
ALTER TABLE `book_copy`
  MODIFY `Book_Copy_ID` bigint(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `borrowing_history`
--
ALTER TABLE `borrowing_history`
  MODIFY `Borrowing_History_ID` bigint(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `Genre_ID` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `reading_history`
--
ALTER TABLE `reading_history`
  MODIFY `Reading_History_ID` bigint(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `User_ID` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user_rating`
--
ALTER TABLE `user_rating`
  MODIFY `Rating_ID` double(31,0) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book's_author`
--
ALTER TABLE `book's_author`
  ADD CONSTRAINT `book's_author_ibfk_1` FOREIGN KEY (`Author_ID`) REFERENCES `author` (`Author_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book's_author_ibfk_2` FOREIGN KEY (`ISBN`) REFERENCES `book_details` (`ISBN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `book's_genre`
--
ALTER TABLE `book's_genre`
  ADD CONSTRAINT `book's_genre_ibfk_1` FOREIGN KEY (`Genre_ID`) REFERENCES `genre` (`Genre_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book's_genre_ibfk_2` FOREIGN KEY (`ISBN`) REFERENCES `book_details` (`ISBN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `book_copy`
--
ALTER TABLE `book_copy`
  ADD CONSTRAINT `book_copy_ibfk_1` FOREIGN KEY (`ISBN`) REFERENCES `book_details` (`ISBN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `borrowing_history`
--
ALTER TABLE `borrowing_history`
  ADD CONSTRAINT `borrowing_history_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `borrowing_history_ibfk_2` FOREIGN KEY (`Book_Copy_ID`) REFERENCES `book_copy` (`Book_Copy_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reading_history`
--
ALTER TABLE `reading_history`
  ADD CONSTRAINT `reading_history_ibfk_1` FOREIGN KEY (`ISBN`) REFERENCES `book_details` (`ISBN`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reading_history_ibfk_2` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_rating`
--
ALTER TABLE `user_rating`
  ADD CONSTRAINT `user_rating_ibfk_1` FOREIGN KEY (`ISBN`) REFERENCES `book_details` (`ISBN`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_rating_ibfk_2` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
