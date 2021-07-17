-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Φιλοξενητής: 127.0.0.1
-- Χρόνος δημιουργίας: 20 Ιουν 2021 στις 19:31:06
-- Έκδοση διακομιστή: 10.1.13-MariaDB
-- Έκδοση PHP: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `gradeform`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `allowjoins`
--

CREATE TABLE `allowjoins` (
  `al_id` int(2) NOT NULL,
  `Allow` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `allowjoins`
--

INSERT INTO `allowjoins` (`al_id`, `Allow`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `all_users`
--

CREATE TABLE `all_users` (
  `u_id` int(4) NOT NULL,
  `username` varchar(10) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `urole` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `image` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `uyear` int(4) NOT NULL,
  `kind` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `all_users`
--

INSERT INTO `all_users` (`u_id`, `username`, `firstname`, `lastname`, `urole`, `email`, `phone`, `image`, `password`, `uyear`, `kind`) VALUES
(1, 'icsd16041', 'Δέσποινα', 'Ζωγραφίδου', 'Student', 'icsd16041@aegean.gr', '6975571140', '6084a092a19831.78308534.jpg', 'D130898@', 2016, 'Undergraduate student'),
(12, 'icsd15087', 'Αβραάμ', 'Κατσίγρας', 'Student', 'icsd15087@aegean.gr', '6985960422', '60876c09bbb334.83681421.jpg', '1234567890', 2015, 'Undergraduate student'),
(13, 'icsd17158', 'Αντώνης', 'Πίττας', 'Student', 'icsd17158@aegea.gr', '6578909146', '60876bf76deb14.88608385.jpg', 'Maria1234@', 2017, 'Undergraduate student'),
(14, 'Admin', 'θοδωρής', 'Λεουτσάκος', 'Admin', 'tleoutsakos@aegean.gr', '2273082245', '60cb80256bcd60.84855893.jpg', 'Loutsakos', 2000, 'Professor'),
(15, 'Secret1', 'Ειρήνη', 'Γραμματικού', 'Secretariat', 'rena@aegean.gr', '2273082202', '608492eb063739.34765261.jpg', 'Grammatikou', 2001, 'Secretariat'),
(16, 'Teatcher1', 'Εμμανουήλ', 'Καλλίγερος', 'Teacher', 'Kalliger@aegean.gr', '2273082238', '6084940cb04045.30662089.png', 'Kalligeros', 2001, 'Assistant Professor'),
(17, 'Teatcher2', 'Χρήστος', 'Γκουμόπουλος', 'Teacher', 'goumop@aegean.gr', '2273082220', '608494cead3c39.67985776.png', 'Goumopoulos', 2000, 'Associate Professor'),
(18, 'Teatcher3', 'Κυριάκος', 'Κρητικός', 'Teacher', 'kkritikos@aegean.gr', '2273080000', '608495e7c59155.38863525.jpg', 'Kritikos', 2000, 'Associate Professor'),
(21, 'icsd21025', 'Μαρία ', 'Παππά', ' ', 'icsd21025@aegean.gr', '6789054321', '608e5d41a71a78.92924079.jpg', 'mariapappa', 2021, ' ');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `join_lesson`
--

CREATE TABLE `join_lesson` (
  `j_id` int(4) NOT NULL,
  `l_id` int(4) NOT NULL,
  `s_id` int(4) NOT NULL,
  `theorygrade` decimal(4,2) NOT NULL,
  `labgrade` decimal(4,2) NOT NULL,
  `grade` decimal(4,2) NOT NULL,
  `date` date NOT NULL,
  `finalisegrade` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `join_lesson`
--

INSERT INTO `join_lesson` (`j_id`, `l_id`, `s_id`, `theorygrade`, `labgrade`, `grade`, `date`, `finalisegrade`) VALUES
(1, 1, 1, '0.00', '0.00', '0.00', '2021-02-04', 0),
(2, 1, 13, '0.00', '0.00', '0.00', '2021-04-05', 0),
(3, 2, 1, '6.00', '9.00', '7.50', '2019-10-06', 1),
(4, 2, 12, '10.00', '9.00', '9.50', '2020-10-03', 0),
(5, 2, 13, '8.00', '9.00', '8.50', '2020-10-03', 1),
(6, 3, 12, '5.00', '6.00', '5.70', '2021-04-05', 0),
(7, 5, 1, '5.00', '5.00', '5.00', '2021-02-12', 0),
(8, 5, 13, '0.00', '0.00', '0.00', '2021-04-15', 0),
(9, 4, 12, '7.00', '8.00', '7.60', '2020-10-02', 1),
(10, 4, 1, '6.00', '8.00', '7.20', '2020-10-16', 1),
(11, 5, 12, '7.00', '0.00', '4.20', '2021-04-10', 0);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `lesson`
--

CREATE TABLE `lesson` (
  `l_id` int(4) NOT NULL,
  `t_id` int(4) NOT NULL,
  `title` varchar(100) NOT NULL,
  `semester` varchar(4) NOT NULL,
  `theory` decimal(2,2) NOT NULL,
  `lab` decimal(2,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `lesson`
--

INSERT INTO `lesson` (`l_id`, `t_id`, `title`, `semester`, `theory`, `lab`) VALUES
(1, 17, 'Αρχιτεκτονική Υπολογιστών', '3ο ', '0.60', '0.40'),
(2, 16, 'Λογική Σχεδίαση', '1ο', '0.50', '0.50'),
(3, 18, 'Προγραμματισμός στο Διαδίκτυο', '6ο ', '0.70', '0.30'),
(4, 18, 'Αντικειμενοστραφής Προγραμματισμός I', '1ο ', '0.70', '0.30'),
(5, 18, 'Τεχνολογίες Δικτύων και Νέφους', '8o', '0.60', '0.40');

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `allowjoins`
--
ALTER TABLE `allowjoins`
  ADD PRIMARY KEY (`al_id`);

--
-- Ευρετήρια για πίνακα `all_users`
--
ALTER TABLE `all_users`
  ADD PRIMARY KEY (`u_id`);

--
-- Ευρετήρια για πίνακα `join_lesson`
--
ALTER TABLE `join_lesson`
  ADD PRIMARY KEY (`j_id`);

--
-- Ευρετήρια για πίνακα `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`l_id`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `allowjoins`
--
ALTER TABLE `allowjoins`
  MODIFY `al_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT για πίνακα `all_users`
--
ALTER TABLE `all_users`
  MODIFY `u_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT για πίνακα `join_lesson`
--
ALTER TABLE `join_lesson`
  MODIFY `j_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT για πίνακα `lesson`
--
ALTER TABLE `lesson`
  MODIFY `l_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
