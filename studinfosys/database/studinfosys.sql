-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Server version: 8.0.31
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studinfosys`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'bayalgapol2023');

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `code` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`code`, `name`) VALUES
('CASS', 'College of Arts and Social Sciences'),
('CCS', 'College of Computer Studies'),
('CEBA', 'College of Economics, Business, and Accountancy'),
('CED', 'College of Education'),
('COET', 'College of Engineering and Technology'),
('CON', 'College Of Nursing'),
('CSM', 'College of Science and Mathematics');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `college` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`code`, `name`, `college`) VALUES
('BAELS', 'Bachelor of Arts In English Language Studies', 'CASS'),
('BAFIL', 'Bachelor Of Arts In Filipino', 'CASS'),
('BAHIST', 'Bachelor Of Arts In History', 'CASS'),
('BAPOLSCI', 'Bachelor Of Arts In Political Science', 'CASS'),
('BAPSYCH', 'Bachelor Of Arts In Psychology', 'CASS'),
('BASOCIO', 'Bachelor Of Arts In Sociology', 'CASS'),
('BEED SCIMATH', 'Bachelor Of Elementary Education (Science And Mathematics)', 'CED'),
('BPED', 'Bachelor Of Physical Education', 'CED'),
('BSA', 'Bachelor Of Science In Accountancy', 'CEBA'),
('BSANBIO', 'Bachelor Of Science In Biology (Animal Biology)', 'CSM'),
('BSBA BUSECON', 'Bachelor Of Science In Business Administration (Business Economics)', 'CEBA'),
('BSBA MM', 'Bachelor Of Science In Business Administration (Marketing Management)', 'CEBA'),
('BSBIODIV', 'Bachelor Of Science In Biology (Biodiversity)', 'CSM'),
('BSCA', 'Bachelor Of Science In Computer Applications', 'CCS'),
('BSCE', 'Bachelor Of Science In Civil Engineering', 'COET'),
('BSCERE', 'Bachelor Of Science In Ceramics Engineering', 'COET'),
('BSCHE', 'Bachelor Of Science In Chemical Engineering', 'COET'),
('BSCHEM', 'Bachelor Of Science In Chemistry', 'CSM'),
('BSCOME', 'Bachelor Of Science In Computer Engineering', 'COET'),
('BSCS', 'Bachelor Of Science In Computer Science', 'CCS'),
('BSECON', 'Bachelor Of Science In Economics', 'CEBA'),
('BSED CHEM', 'Bachelor Of Secondary Education (Chemistry)', 'CED'),
('BSED FIL', 'Bachelor Of Secondary Education (Filipino)', 'CED'),
('BSED LANGEDU', 'Bachelor Of Secondary Education (Language Education)', 'CED'),
('BSED MATH', 'Bachelor Of Secondary Education (Mathematics)', 'CED'),
('BSHM', 'Bachelor Of Science In Hospitality Management', 'CEBA'),
('BSIAM', 'Bachelor Of Science In Industrial Automation And Mechatronics', 'COET'),
('BSIS', 'Bachelor Of Science In Information Systems', 'CCS'),
('BSIT', 'Bachelor Of Science In Information Technology', 'CCS'),
('BSMARSCI', 'Bachelor Of Science In Biology (Marine Science)', 'CSM'),
('BSMATH', 'Bachelor Of Science In Mathematics', 'CSM'),
('BSMICROBIO', 'Bachelor Of Science In Biology (Microbiology)', 'CSM'),
('BSN', 'Bachelor Of Science In Nursing', 'CON'),
('BSPHYSICS', 'Bachelor Of Science In Physics', 'CSM'),
('BSPLANTBIO', 'Bachelor Of Science In Biology (Plant Biology)', 'CSM'),
('BSPSYCH', 'Bachelor Of Science In Psychology', 'CASS'),
('BSSTAT', 'Bachelor Of Science In Statistics', 'CSM');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` varchar(9) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `year` int NOT NULL,
  `gender` varchar(10) NOT NULL,
  `coursecode` varchar(10) NOT NULL,
  `collegecode` varchar(10) DEFAULT NULL,
  `photo` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `firstname`, `middlename`, `lastname`, `year`, `gender`, `coursecode`, `collegecode`, `photo`) VALUES
('2020-1212', 'Excel Yrome', 'Tuyan', 'Yaranon', 3, 'Male', 'BSCOME', 'COET', 'http://res.cloudinary.com/dukw52oeu/image/upload/v1674576778/bj82xj1nqsvqzch7dmks.jpg'),
('2020-1214', 'Kyle David', 'Delfin', 'Paalisbo', 3, 'Male', 'BSCHE', 'COET', 'http://res.cloudinary.com/dukw52oeu/image/upload/v1674577228/icdnoeqz2ryknk5eh5sy.jpg'),
('2020-1298', 'Joshua', 'Samorin', 'Toylo', 3, 'Female', 'BSHM', 'CEBA', 'http://res.cloudinary.com/dukw52oeu/image/upload/v1674577879/fi78cvxyh3khgisu0ftq.jpg'),
('2020-1456', 'Maria Alyssa', 'Dedumo', 'Magallon', 3, 'Female', 'BSCHE', 'COET', 'http://res.cloudinary.com/dukw52oeu/image/upload/v1674577124/atf67ysvexbti5zjivpm.jpg'),
('2020-1459', 'Queenie Kate', 'Sibi', 'Cabanilla', 3, 'Female', 'BSIS', 'CCS', 'http://res.cloudinary.com/dukw52oeu/image/upload/v1674578848/lbzlpexa12rpfzul0gud.jpg'),
('2020-1685', 'Jezel Marie', 'Gumba', 'Inutan', 3, 'Female', 'BSSTAT', 'CSM', 'http://res.cloudinary.com/dukw52oeu/image/upload/v1674578133/wtd38t58cmzvvuj0nwvn.jpg'),
('2020-1785', 'Van Igor', 'Undag', 'Omblero', 3, 'Male', 'BSMARSCI', 'CSM', 'http://res.cloudinary.com/dukw52oeu/image/upload/v1674578401/debw76u7kfyt0qx0n8sc.jpg'),
('2020-1798', 'Jewell', 'Lim', 'Garsuta', 3, 'Female', 'BSIT', 'CCS', 'http://res.cloudinary.com/dukw52oeu/image/upload/v1674578485/dmjj920snpwb5mqwzu0a.jpg'),
('2020-2066', 'Fel Andrei', 'Dionela', 'Rabago', 3, 'Male', 'BSSTAT', 'CSM', 'http://res.cloudinary.com/dukw52oeu/image/upload/v1674578017/ribjyj2uhyusha4jbwxb.jpg'),
('2020-2121', 'Juan', 'Dela', 'Cruz', 5, 'Male', 'BSECON', 'CEBA', 'http://res.cloudinary.com/dukw52oeu/image/upload/v1674573039/ajofydh7xrc9pfovnkjo.jpg'),
('2020-2465', 'Johanah', 'Tanggote', 'Fernando', 3, 'Female', 'BSN', 'CON', 'http://res.cloudinary.com/dukw52oeu/image/upload/v1674577589/vw8iwztdbcov78ijw5jb.png'),
('2020-3587', 'Jason', 'Norbert', 'Besin', 3, 'Male', 'BSIT', 'CCS', 'http://res.cloudinary.com/dukw52oeu/image/upload/v1674578555/utbvaix0hzhugqdora3g.jpg'),
('2020-3924', 'Rolan Vince', 'Cajes', 'Sacal', 3, 'Male', 'BAELS', 'CASS', 'http://res.cloudinary.com/dukw52oeu/image/upload/v1674579207/ajt3lgbjjhgh1epftioa.jpg'),
('2020-4545', 'Kathleen Claire', 'Uy', 'Revelo', 3, 'Female', 'BSSTAT', 'CSM', 'http://res.cloudinary.com/dukw52oeu/image/upload/v1674576558/b0wta80iua7xl69r89nx.jpg'),
('2020-4752', 'Michille', 'Dael', 'Cajes', 3, 'Female', 'BSPHYSICS', 'CSM', 'http://res.cloudinary.com/dukw52oeu/image/upload/v1674578303/jc13k98wnbb7winnj44w.png'),
('2020-4823', 'Princess Kylyn', 'Sampid', 'Diapera', 1, 'Female', 'BSECON', 'CEBA', 'http://res.cloudinary.com/dukw52oeu/image/upload/v1674579025/ljldm2ex5jj34hj4wins.png'),
('2020-4872', 'Jerel Jane', 'M.', 'Bayal', 3, 'Female', 'BSSTAT', 'CSM', 'http://res.cloudinary.com/dukw52oeu/image/upload/v1674463874/pqhfn5esqnd6ztsk0m9s.jpg'),
('2020-5124', 'Christian Laurence', 'Dare', 'Alivio', 3, 'Male', 'BAFIL', 'CASS', 'http://res.cloudinary.com/dukw52oeu/image/upload/v1674579767/hpgwm1hf0qtq5bmns033.jpg'),
('2020-6565', 'Clint Juluar', 'Laragon', 'Gapol', 3, 'Male', 'BSSTAT', 'CSM', 'http://res.cloudinary.com/dukw52oeu/image/upload/v1674576475/n94tkf3phexdxpsb8zws.jpg'),
('2021-1235', 'Jamaica Mae', 'Barientos', 'Uy', 2, 'Female', 'BSCERE', 'COET', 'http://res.cloudinary.com/dukw52oeu/image/upload/v1674580062/ih7jgn8puxjmeudvmm8r.png'),
('2021-4875', 'Jan Rafael', 'Datu', 'Maulas', 2, 'Male', 'BSIAM', 'COET', 'http://res.cloudinary.com/dukw52oeu/image/upload/v1674578714/elifmxbdotmzcaya3zek.jpg'),
('2022-1456', 'Katrina Celeste', 'Uy', 'Revelo', 1, 'Female', 'BSCERE', 'COET', 'http://res.cloudinary.com/dukw52oeu/image/upload/v1674579908/eav5iy3skeg6aofa9co4.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coursecode` (`coursecode`),
  ADD KEY `collegecode` (`collegecode`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`coursecode`) REFERENCES `course` (`code`),
  ADD CONSTRAINT `students_ibfk_2` FOREIGN KEY (`collegecode`) REFERENCES `college` (`code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
