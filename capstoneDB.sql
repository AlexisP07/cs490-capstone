-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2020 at 08:53 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capstone`
--

DELIMITER $$
--
-- Procedures
--
DROP PROCEDURE IF EXISTS `getAllFaculty`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllFaculty` ()  NO SQL
BEGIN
SELECT * FROM faculty;
END$$

DROP PROCEDURE IF EXISTS `getAstrCourses`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAstrCourses` ()  NO SQL
BEGIN
SELECT courseNum, courseName, credits FROM astronomycourses;
END$$

DROP PROCEDURE IF EXISTS `getCsCourses`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getCsCourses` ()  NO SQL
BEGIN
SELECT * FROM cscourses;
END$$

DROP PROCEDURE IF EXISTS `getInscCourses`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getInscCourses` ()  NO SQL
BEGIN
SELECT * FROM insccourses;
END$$

DROP PROCEDURE IF EXISTS `getMathCourses`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getMathCourses` ()  NO SQL
BEGIN
SELECT * FROM mathcourses;
END$$

DROP PROCEDURE IF EXISTS `getSugCourses`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getSugCourses` ()  NO SQL
BEGIN
SELECT * FROM addcourse;
END$$

DROP PROCEDURE IF EXISTS `verifyEmail`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `verifyEmail` (IN `email` VARCHAR(30))  NO SQL
BEGIN
SELECT COUNT(*) FROM register
WHERE (email='$email');
END$$

DROP PROCEDURE IF EXISTS `verifyLogin`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `verifyLogin` (IN `username` VARCHAR(30))  NO SQL
BEGIN
SELECT COUNT(*) FROM register
WHERE (username = username);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `addcourse`
--

DROP TABLE IF EXISTS `addcourse`;
CREATE TABLE `addcourse` (
  `area` varchar(65) NOT NULL,
  `title` varchar(65) NOT NULL,
  `descrip` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addcourse`
--

INSERT INTO `addcourse` (`area`, `title`, `descrip`) VALUES
('math', 'college basics', 'simple math'),
('computer science', 'cs for seniors', 'this course prepares senior students to find jobs in the cs field');

-- --------------------------------------------------------

--
-- Table structure for table `astronomycourses`
--

DROP TABLE IF EXISTS `astronomycourses`;
CREATE TABLE `astronomycourses` (
  `courseNum` varchar(15) NOT NULL,
  `courseName` varchar(65) NOT NULL,
  `credits` varchar(15) NOT NULL,
  `detail` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `astronomycourses`
--

INSERT INTO `astronomycourses` (`courseNum`, `courseName`, `credits`, `detail`) VALUES
('ASTR 250', 'The Solar System', '3 Credits', 'Introduction to the current state and past evolution of the Sun and its family of planets, moons, asteroids, and comets. Critical focus is on developing an understanding of the Earth as a planetary body and learning how the studies of other planets and satellites influence models of the climatic, geologic, and biologic history of our home world.'),
('ASTR 260', 'Galaxies, Relativity, and Cosmology', '3 Credits', 'Introduction to the study of the structure and history of the universe. Topics include the basic properties of energy and gravity, thermonuclear fusion in stars, composition and distribution of galaxies, spacetime, Einstein\'s special and general relativity, cosmic microwave background, expansion of the universe, dark energy, and the theories of the big bang and inflation.');

-- --------------------------------------------------------

--
-- Table structure for table `cscourses`
--

DROP TABLE IF EXISTS `cscourses`;
CREATE TABLE `cscourses` (
  `courseNum` varchar(15) NOT NULL,
  `courseName` varchar(65) NOT NULL,
  `credits` varchar(15) NOT NULL,
  `detail` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cscourses`
--

INSERT INTO `cscourses` (`courseNum`, `courseName`, `credits`, `detail`) VALUES
('CS 111', 'Problem-Solving and the Computer', '3 Credits', 'An introduction to computers as a tool in problem-solving, using BASIC as a language. Includes simple programming of problems in algebra or statistics. Draws models from the social and physical sciences. Does not require previous computer experience.'),
('CS 142', 'Programming in C++', '3 Credits', 'An introduction to advanced software engineering concepts using C++ and structured programming. Rudiments of the language and program optimization are stressed.'),
('CS 150', 'Object Oriented Programming', '3 Credits', 'An introduction to the theory and practice of object oriented programming. Topics include objects, classes, inheritance, simple data structures, and basic concepts of software development. Prerequisite: CS 142'),
('CS 241', 'Machine Language with Assembler', '3 Credits', 'Basic principles of machine language programming. Computer organization and representation of numbers, strings, arrays, list structures, all at the machine level. Includes Assembler language. Prerequisite: CS 142.'),
('CS 242', 'Computer Architecture', '3 Credits', 'This course introduces students to the fundamentals of computer architecture. Topics include transistors, logic gates, basic processor components, memory, input/output devices, and low-level machine instructions. Prerequisite: CS 142'),
('CS 245', 'Computer Data Structures', '3 Credits', 'A study of the use of a high-level language to implement complex data structures. These include lists, trees, graphs, networks, storage allocations, file structure, and information storage and retrieval. Prerequisite: CS 142.'),
('CS 250', 'Database and Applications', '3 Credits', 'This course introduces students to the theory and practice of relational databases. Topics include data modeling and database design, the relational algebra and relational calculus, data definition and manipulation languages using SQL, query processing and optimization, transaction management, security, privacy, integrity management. Prerequisite: CS 142'),
('CS 314', 'Mathematical Models and Computer Techniques', '3 Credits', 'Mathematical models with an emphasis on constrained optimization problems. Topics include linear programming, network and integer models, and multi-objective optimization. Prerequisites: CS 142, MATH 202.'),
('CS 320', 'Software Engineering', '3 Credits', 'This course is an introduction to the software development process and design. Topics covered include concepts and techniques for designing, developing, and modifying large software systems; design patterns and modeling languages; specification and documentation; version control; testing and debugging; project team organization and management. Prerequisite: CS 150'),
('CS 322', 'Computer Networks', '3 Credits', 'This course is an introduction to the theory and practice of computer networks, the software protocols that allow them to operate, and the applications that make use of them. Topics covered include direct-link networks, packet switching, internetworking, end-to-end protocols, network applications, and network security. Prerequisite: CS 242'),
('CS 341', 'Analysis of Algorithms', '3 Credits', 'Theoretical analysis of various algorithms. Topics to include sorting, searching, selection, matrix multiplication and multiplication of real numbers. Prerequisite: CS 245.'),
('CS 342', 'Principles of Compilers', '3 Credits', 'This course introduces students to the essential elements of building a compiler: scanning, parsing, semantic analysis, and code-generation etc. Familiarity with how modern programming languages behave is assumed. Prerequisites: CS 150 and CS 242'),
('CS 344', 'Operating System Principles', '3 Credits', 'Analysis of the computer operating systems including Batch, Timesharing, and Realtime systems. Topics to include sequential and concurrent processes, processor and storage management, resource protection, processor multiplexing, and handling of interrupts from peripheral devices. Prerequisite: CS 245.'),
('CS 350', 'Computer Graphics', '3 Credits', 'This course studies the principles of computer graphics. Topics include geometric modeling, 3D viewing and projection, lighting and shading, color, and the use of one or more technologies and packages such as OpenGL. Prerequisite: CS 150, MATH 204'),
('CS 352', 'Web Applications and Development', '3 Credits', 'This course covers fundamentals of web applications and development, including common web protocols and standards. Topics include HTML, CSS, and development using JSP. Prerequisite: CS 150'),
('CS 456', 'Introduction to Programming Languages', '3 Credits', 'This course introduces students to the key features of programming languages. Topics include structuring data, computation, and whole programs, data types, type checking, exception handling, concurrent processes, synchronization, modularity, encapsulation, interfaces, separate compilation, inheritance, polymorphism, dynamic binding, subtyping, overloading etc. Prerequisite: CS 342 and CS 344.'),
('CS 463', 'Introduction to Numerical Methods', '3 Credits', 'Deals with solutions to equations, matrix methods, linear systems of equations, matrix inversion, eigenvalue problems, numerical differentiation. Prerequisites: CS 142, MATH 204, 322.'),
('CS 483', 'Introduction to the Theory of Computation', '3 Credits', 'This course is an introduction to the main theory and concepts in computation. The main topics include Turing machines, the Church-Turing thesis; decidability; halting problem; reducibility; undecidable problems; time classes; P, NP, NP-complete; space classes; hierarchy theorems; probabilistic algorithms. Prerequisite: CS 341, CS 342'),
('CS 490', 'Capstone Project', '3 Credits', 'This course is designed to be the culminating experience for Computer Science and Information Security majors. Students are expected to complete a significant project under the supervision of a faculty member. Knowledge and skills learned in the curriculum are to be applied, documented and demonstrated in the capstone project.'),
('CS 498', 'Special Topics in Computer Science', 'Variable', 'This course will cover special topics not available in the current CS curriculum when significant interest among students and faculty arises.');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
CREATE TABLE `faculty` (
  `Name` varchar(60) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `Area` varchar(30) DEFAULT NULL,
  `Office` varchar(20) DEFAULT NULL,
  `Phone_Number` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`Name`, `Email`, `Area`, `Office`, `Phone_Number`) VALUES
('Anthony Pusateri', 'apusateri@marywood.edu', NULL, 'CNHS 350', NULL),
('Chunchao Lane', 'clane@marywood.edu', 'Computer Science', 'CNHS 335', NULL),
('Craig Johnson', 'johnsonc@marywood.edu', 'Mathematics', 'CNHS 319', '570-348-6291'),
('Dhanapati Adhikari', 'dadhikarki@marywood.edu', 'Mathematics', 'CNHS 339', '570-348-6211'),
('Don White', 'dwwhite@maryu.marywood.edu', NULL, 'CNHS 350', NULL),
('Josh Carey', 'jocarey@marywood.edu', 'Mathematics', 'CNHS 320', '570-961-4521'),
('Katherine Fisne', 'fisne@marywood.edu', NULL, 'CNHS 350', NULL),
('Kayla Troast', 'katroast@maryu.marywood.edu', NULL, NULL, NULL),
('Larry Hahn', 'lehahn@maryu.marywood.edu', NULL, 'CNHS 350', NULL),
('Michael Koscho', 'mkoscho@maryu.marywood.edu', 'Computer Science', 'CNHS 334', '570-961-4727');

-- --------------------------------------------------------

--
-- Table structure for table `insccourses`
--

DROP TABLE IF EXISTS `insccourses`;
CREATE TABLE `insccourses` (
  `courseNum` varchar(15) NOT NULL,
  `courseName` varchar(65) NOT NULL,
  `credits` varchar(15) NOT NULL,
  `detail` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `insccourses`
--

INSERT INTO `insccourses` (`courseNum`, `courseName`, `credits`, `detail`) VALUES
('INSC 410/510', 'Legal Issues in Information Security', '3 Credits', 'This course is an introduction to the legal and regulatory issues in the field of information security. Federal laws and regulations, including OMB and NIST standards, are examined. Moral and ethical issues for professionals in the field are also considered.'),
('INSC 420/520', 'Introduction to Computer Security', '3 Credits', 'This course is an introduction to the fundamental principles and common practices of computer and information security. It provides an overview of such topics as cryptography, network intrusion and detection, software and operating system security, VPN etc. Prerequisite: CS 242, CS 322'),
('INSC 430/530', 'Network Security', '3 Credits', 'The course is an introduction to the field of network security. The course covers network security services such as authentication and access control, integrity and confidentiality of data, firewalls and related technologies, Web security and privacy. Prerequisite: CS 322'),
('INSC 440/540', 'Introduction to Cryptography', '3 Credits', 'This course is an introduction to the theory and practice in the field of cryptography. Topics include classic and modern ciphers (DES, AES, RSA etc.), digital signature, message digest, key exchange protocols, and PKI. Prerequisite: CS 150, MATH 323'),
('INSC 445/545', 'Security Policies and Implementations', '3 Credits', 'This course provides an overview of the best practices of developing and implementing effective organizational policies and programs on information security. Topics include privacy, contingency response, infrastructure reliability, risk assessment and management, and organizational roles and responsibilities.'),
('INSC 450/550', 'Digital Forensics', '3 Credits', 'This course introduces students to the field of digital forensics and it will focus on the contemporary policy issues and applied technologies. Topics to be covered include: legal and regulatory issues, investigation techniques, data analysis approaches, and incident response procedures for Windows and UNIX systems. Prerequisite: CS 242, CS 245'),
('INSC 560', 'Applied Cryptography and Secure Communication', '3 Credits', 'This course introduces students to the field of digital forensics and it will focus on the contemporary policy issues and applied technologies. Topics to be covered include: legal and regulatory issues, investigation techniques, data analysis approaches, and incident response procedures for Windows and UNIX systems. Prerequisite: CS 242, CS 245'),
('INSC 565', 'Operating Systems Security', '3 Credits', 'This course covers the fundamental theory and practice in Operating System security. OS level security architectures and mechanisms will be studied. Topics include OS level security architectures and mechanism, OS security policies, and basic OS security techniques. Prerequisite: CS 344'),
('INSC 590', 'Special Topics in Information Security', '3 Credits', 'This course covers the fundamental theory and practice in Operating System security. OS level security architectures and mechanisms will be studied. Topics include OS level security architectures and mechanism, OS security policies, and basic OS security techniques. Prerequisite: CS 344'),
('INSC 620', 'Cloud Computing Security', '3 Credits', 'This course investigates the security issues related to cloud computing, such as confidentiality, integrity, and availability of data and computations. Practical applications of secure cloud computing will be explored, current research publications will be the focus of this course. Prerequisite: INSC 420/520'),
('INSC 630', 'Data Protection and Recovery', '3 Credits', 'In this course, students will study computer file storage systems, with the focus on data protection and recovery. Topics include data backups, diversification, RAID systems, disaster response and recovery etc. Prerequisite: INSC 420/520'),
('INSC 640', 'Mobile System Security', '3 Credits', 'This course will investigate security issues in mobile systems. When devices such as smart phones and tablets are carrying more and more personal as well as business data, security threats from mobile systems must be dealt with by developing consistent security policies and implementing effective security programs across all platforms. Both policy and technical considerations will be covered in this course. Prerequisite: INSC 420/520'),
('INSC 650', 'Corporate Information Security', '3 Credits', 'This course examines information security in the corporate environment. Common sources of security threats are identified and addressed. Technological, human behavioral, and policy solutions are considered. Further topics include incident response, legal issues, and public relations. Prerequisite: INSC 410/510');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `username` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('apalys', '$2y$10$U2POz3.9fojQrDgLujn2tObrImcBGvnqKLeFwKAYuIfG1/gvNSEzS'),
('lexipal27', '$2y$10$vpUVlxgjqeOaOxtB7tsMC.gl6j2VZJ9ReNzOnZSi9xQZ4Pni63y.q');

-- --------------------------------------------------------

--
-- Table structure for table `mathcourses`
--

DROP TABLE IF EXISTS `mathcourses`;
CREATE TABLE `mathcourses` (
  `courseNum` varchar(15) NOT NULL,
  `courseName` varchar(65) NOT NULL,
  `credits` varchar(15) NOT NULL,
  `detail` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mathcourses`
--

INSERT INTO `mathcourses` (`courseNum`, `courseName`, `credits`, `detail`) VALUES
('MATH 095', 'Fundamentals of Mathematics', '3 Credits', 'Topics include exponents, radicals, factoring, linear and quadratic equations, graphing of linear and polynomial functions, area, volume, systems of equations, and problem-solving. Normally offered fall and spring semesters.  This course does not satisfy the core math requirements.'),
('MATH 120', 'Mathematics in the Liberal Arts', '3 Credits', 'Designed to implement NCTM curriculum standards with emphasis on problem-solving, patterns and relationships, functions, estimation, and mathematical connections to other disciplines. Topics are chosen from this list: functions, mathematical modeling, basic trigonometry, geometry, astronomy, music, elementary statistics, voting methods, and logic. No prior knowledge of any of these topics is assumed.  Normally offered fall and spring semesters.  There are no prerequisites for MATH 120.'),
('MATH 130', 'Mathematics for Contemporary Society', '3 Credits', 'The topics studied will include techniques and applications of set theory, counting techniques, matrices, linear systems, statistics and probability, and linear programming.  Normally offered fall and spring semesters.  Prerequisite:  a passing grade (at least a 40%) on the Math Placement Exam.'),
('MATH 155', 'Statistics for Behavioral and Social Sciences', '3 Credits', 'Surveys the basic statistical concepts applicable to problems in the behavioral and social sciences. Includes descriptive statistics, regression and correlative, hypothesis testing, nonparametric methods, and analysis of variance. Computer software will be utilized for calculations. Normally offered fall, spring, and summer I semesters.  Prerequisite:  a passing grade (at least a 40 %) on the Math Placement Exam.'),
('MATH 160', 'Analysis of Functions (Pre-Calculus)', '3 Credits', 'Topics include polynomial, rational, exponential, logarithmic and trigonometric functions, as well as conic sections. Normally offered fall and spring semesters.  Prerequisite:  a passing grade (at least a 40%) on the Math Placement Exam.'),
('MATH 170', 'Applications of Mathematics to Biology', '3 Credits', 'Examines problems in biology through the use of a variety of mathematical tools and models. Topics are chosen from linear, exponential, and logarithmic functions, set theory, linear systems, probability, and an introduction to calculus.  Normally offered spring and summer I semesters. Prerequisites: algebra and trigonometry. Prerequisite: C or better in MATH 160, or passing the Math Placement Exam with at least a 75%.'),
('MATH 211', 'Calculus I', '4 Credits', 'Limits, continuity, and differentiation of algebraic and transcendental functions; applications of differentiation to related rates and optimization problems; extremum and concavity of functions; antiderivatives, integrals and the Fundamental Theorem of Calculus; and integration by substitution.  Normally offered spring semester.  Prerequisites:  algebra and trigonometry, or at least a grade of C in MATH 160, or passing the Math Placement Exam with at least a 75%..'),
('MATH 212', 'Calculus II', '4 Credits', 'Techniques of integration including integration of logarithmic, exponential, gyperbolic, trigonometric and inverse functions; improper integrals; infinite sequences and series; parametric equations; polar coordinates and polar graphs.  Normally offered fall semester.  Prerequisite: MATH 211.'),
('MATH 213', 'Calculus III', '4 Credits', 'Vectors; lines and planes in three-dimensional space; vector-valued functions; functions of several variables; partial derivatives; multiple integrals; and vector Calculus. Normally offered spring semester.  Prerequisite: MATH 212.'),
('MATH 219', 'History of Mathematics', '3 Credits', 'The study of mathematical concepts from arithmetic to calculus in their historical perspective. This study will be supplemented by historical background material, biographies of mathematicians and translations of source manuscripts in which mathematical discoveries were first announced. Attention will be given to the relationship of mathematics to other disciplines. For Mathematics majors and minors. Normally offered fall semester.'),
('MATH 220', 'Introduction to Probability and Statistics', '3 Credits', 'Acquaints the student with elements of probability, Bayes theorem, measures of central tendency, dispersion, probability distribution, hypothesis tests, nonparametric tests, linear regression, and correlation.'),
('MATH 311', 'Differential Equations', '3 Credits', 'The study of differential equations and first-order linear systems through a combination of analytical, numerical, and qualitative techniques. Topics include the standard analytical methods of solving nth-order linear equations, eigenvalues and eigenvectors for systems, phase-plane trajectories, the Laplace transform, and numerical approximations. Technology is used in conjunction with theory to approximate and analyze solutions. Modeling physical phenomena is emphasized through a rich variety of applications. Prerequisite: MATH 212.'),
('MATH 321', 'Abstract Algebra', '3 Credits', 'Provides an introduction to groups, rings, ideals, integral domains and fields. Normally offered even numbered spring semesters.  rerequisite: MATH 211.'),
('MATH 322', 'Linear Algebra', '3 Credits', 'Deals with vector spaces, matrices, linear transformations, canonical forms, and determinants. Must be taken with MATH 322L. Prerequisite: MATH 211.'),
('MATH 322L', 'Linear Algebra Lab', '3 Credits', 'Laboratory to accompany MATH 322 in order to use a computer algebra system (such as Mathematica or Maple) to provide visual re-enforcement of central concepts. Must be taken with MATH 322.'),
('MATH 323', 'Theory of Numbers', '3 Credits', 'An introduction to basic number theory: properties of the integers, congruence, Fermat\'s and Wilson\'s Theorem, number theoretic functions, Diophantine equations, and primes. Normally offered odd numbered fall semesters.  Prerequisite: MATH 211.'),
('MATH 324', 'College Geometry', '3 Credits', 'The study of axiomatic systems and the notions of proof and consistency. Examines finite, elliptical, and hyperbolic geometries, and advanced topics in Euclidean Geometry. Software is used to enhance exploration and discovery of theorems. Prerequisite: MATH 211.'),
('MATH 411B', 'Curriculum Methods and Materials in Mathematics', '3 Credits', 'See EDUC 411.'),
('MATH 420', 'Discrete Mathematics', '3 Credits', 'An introduction to the algebraic concepts, methods, and techniques that form the theoretical basis for computer science, including relevant areas of logic, set theory, relations and functions, and Boolean algebra. Prerequisite: MATH 212.'),
('MATH 425', 'Topology', '3 Credits', 'Introduction to point-set topology at the undergraduate level. Topics include topological spaces, limit points, continuity, connectedness, compactness, separability, and the fundamental group. Prerequisite: MATH 213.'),
('MATH 430', 'Real Analysis', '3 Credits', 'An introduction to the analysis of real numbers, variables, and functions. Topics include the topology of the real numbers, sequences and series, limits, continuity and uniform continuity, differentiation, the Riemann integral, and sequences of functions. Prerequisite: MATH 213.'),
('MATH 440', 'Complex Variables', '3 Credits', 'An introduction to the theory of complex numbers, variables, and functions. Topics include transformations and mappings, elementary and analytic functions, complex integration and Cauchy’s theorem, Taylor and Laurent expansions, residues, harmonic functions, and conformal mappings. Prerequisite: MATH 213.'),
('MATH 447', 'Special Projects', 'Variable', 'Definition, formulation, solution, documentation, and testing of a problem under close faculty supervision.'),
('MATH 456', 'Mathematical Statistics', '3 Credits', 'Deals with probability distributions, limit theorems, estimation, hypothesis tests, correlation and regression, analysis of variance. Prerequisites: MATH 213, 220.'),
('MATH 495', 'Senior Seminar', '3 Credits', 'Analysis of the underlying foundational questions of mathematics including the notions of proof and consistency within a specific mathematical framework. Examination of the considerable impact of mathematics on culture and society from ancient to modern times.'),
('MATH 498', 'Special Topics', 'Variable', 'Special topics in mathematics.');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
CREATE TABLE `register` (
  `email` varchar(65) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `passwordRepeat` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`email`, `username`, `password`, `passwordRepeat`) VALUES
('apalys@m.marywood.edu', 'apalys', '$2y$10$KWAYG3IPF8p2psCVLckuReWC0ISZ0yMlMEeWwBXG1xQ9.8ZPMdqge', '0eh9ycuv'),
('lexipalys@yahoo.com', 'lexipal27', '$2y$10$MHvZsaOmUjiSqzcwNoJL3.gsDhAdImf7eO6WoCzAZeQ3WhhbLV74O', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addcourse`
--
ALTER TABLE `addcourse`
  ADD PRIMARY KEY (`title`);

--
-- Indexes for table `astronomycourses`
--
ALTER TABLE `astronomycourses`
  ADD PRIMARY KEY (`courseNum`);

--
-- Indexes for table `cscourses`
--
ALTER TABLE `cscourses`
  ADD PRIMARY KEY (`courseNum`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `insccourses`
--
ALTER TABLE `insccourses`
  ADD PRIMARY KEY (`courseNum`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `mathcourses`
--
ALTER TABLE `mathcourses`
  ADD PRIMARY KEY (`courseNum`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
