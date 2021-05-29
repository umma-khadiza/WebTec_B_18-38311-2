
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- Database: `hospital`

-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `fromm` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `too` varchar(255) NOT NULL,
  `cTime` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `name`, `fromm`, `phone`, `message`, `too`, `cTime`) VALUES
(1, 'rohima khatun', '4066', '0725667841', 'I want to see you tomorrow', '7854uiplk87dadkl87', '1554916571'),
(2, 'Doctor', '7854uiplk87dadkl87', '0725895256', 'OKay no problem I will be available', '4066', '1554917369');

-- --------------------------------------------------------

--
-- Table structure for table `coronavirus`
--

CREATE TABLE `coronavirus` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `moc` varchar(255) NOT NULL,
  `dComments` text NOT NULL,
  `cTime` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coronavirus`
--

INSERT INTO `coronavirus` (`id`, `name`, `age`, `location`, `moc`, `dComments`, `cTime`, `token`) VALUES
(1, 'fahim khan', '30', 'uttara ', 'Blood Transfusion', 'This what it happened', '1554814784', 'e5f5f3afdfab4b6a11a3aed3932eee20');

-- --------------------------------------------------------

--
-- Table structure for table `outbreaks`
--

CREATE TABLE `outbreaks` (
  `id` int(11) NOT NULL,
  `outBreak` varchar(255) NOT NULL,
  `comments` text NOT NULL,
  `location` varchar(255) NOT NULL,
  `cTime` varchar(255) NOT NULL,
  `measures` text NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `outbreaks`
--

INSERT INTO `outbreaks` (`id`, `outBreak`, `comments`, `location`, `cTime`, `measures`, `token`) VALUES
(1, 'Tb', 'There is a serious problem', 'Muranga Township Ward', '1554913667', 'testing', 'f946c63a3187a5059ac6eed1fc82c1e4');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `dateOfBirth` varchar(255) NOT NULL,
  `cTime` varchar(255) NOT NULL,
  `diagnosis` text NOT NULL,
  `prescription` text NOT NULL,
  `token` varchar(255) NOT NULL,
  `doctor` varchar(255) NOT NULL,
  `number` varchar(255) DEFAULT NULL,
  `pcondition` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `name`, `location`, `age`, `gender`, `phone`, `dateOfBirth`, `cTime`, `diagnosis`, `prescription`, `token`, `doctor`, `number`, `pcondition`) VALUES
(2, 'rohima', 'khatun', '40', 'Female', '0725667841', '04 - 04 - 1979', '1554756586', 'Headache\r<br />Vomiting\r<br />Neusea', 'C/h4 x3\r<br />Cs4/w\r<br />CQ-WS', 'c760e767719b5196ce99cb0ed4b29c63', '7854uiplk87dadkl87', '4066', NULL),
(3, 'korim', 'mia', '40', 'Male', '0171334567', '01 - 01 - 1979', '1554817535', 'Vomiting\r<br />Coughing\r<br />Others', 'i9\r<br />op09jk\r<br />kjdkfa', '6dc616e76193284f5078080b97067e30', '7854uiplk87dadkl87', '1234', NULL),
(4, 'shimul', 'mirza', '25', 'Male', '0725667841', '04 - 04 - 1998', '1554903224', 'sdfafadf', 'dfada', 'aada38f92af7dabbe949bb03c2c995d1', '7854uiplk87dadkl87', '4066', 'Outpatient');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `secondName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `gender` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `secondName`, `email`, `password`, `token`, `status`, `phone`, `profile`, `gender`, `role`) VALUES
(1, 'mijan', 'shovon', 'mijanshovon@gmail.com', 'shovon', '1236548lpoik58965', 1, '0171234567', NULL, 'Male', NULL),
(2, 'umma', 'oyshi', 'oyshi@gmail.com', '12345', '7854uiplk87dadkl87', 2, '01712345671', NULL, 'Female', 'Surgeon'),
(4, 'mijan', 'rahman', 'mijan@gmail.com', 'hospital', 'dd69920006c75a4f5b0166e37b1da51b', 2, '01725667841', NULL, 'Male', 'Clinical Officer'),
(5, 'jannatul ', 'sharan', 'sharan@gmail.com', 'hospital', '8f74e46b7b9ad477aa0d06af059be1f1', 2, '01779437591', NULL, 'Female', 'medicine');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coronavirus`
--
ALTER TABLE `coronavirus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outbreaks`
--
ALTER TABLE `outbreaks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coronavirus`
--
ALTER TABLE `coronavirus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `outbreaks`
--
ALTER TABLE `outbreaks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;


