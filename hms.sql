-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2025 at 03:48 PM
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
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `Customer_id` varchar(50) DEFAULT NULL,
  `room_no` varchar(10) DEFAULT NULL,
  `check_in` date DEFAULT NULL,
  `check_out` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `Customer_id`, `room_no`, `check_in`, `check_out`, `status`, `amount`, `payment_status`) VALUES
(5, '123456', '101', '2025-08-07', '2025-08-11', 'Checked Out', 20000.00, 'Paid'),
(6, '884455', '103', '2025-08-11', '2025-08-11', 'Checked Out', 1000.00, 'Paid'),
(7, '113322', '101', '2025-08-11', '2025-08-11', 'Checked Out', 5000.00, 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` varchar(50) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `gender` varchar(20) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `gender`, `phone_number`, `email`, `address`, `nationality`) VALUES
('113322', 'Sihab', 'Male', '01921784321', 'sihab@gmail.com', 'Barishal', 'Bangladeshi'),
('123456', 'Fahim', 'Male', '01581773123', 'fahim@gmail.com', 'DSC', 'Bangladeshi'),
('232156', 'modu', 'Male', '01630972700', 'gmail@gmail.com', 'dsff', 'indian'),
('884455', 'Modhumita Roy', 'Female', '01793771735', 'modhu@gmail.com', 'Cumilla', 'Bangladeshi');

-- --------------------------------------------------------

--
-- Table structure for table `employees_details`
--

CREATE TABLE `employees_details` (
  `emp_id` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `nid` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `emg_cont_name` varchar(100) NOT NULL,
  `emg_cont_phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees_details`
--

INSERT INTO `employees_details` (`emp_id`, `name`, `phone`, `dob`, `gender`, `nid`, `email`, `emg_cont_name`, `emg_cont_phone`) VALUES
(1000, 'Md.Fahim Muntasir', '01844286884', '2003-04-29', 'male', '123456789', 'fahim@gmail.com', 'ASLAM', '01581773123');

-- --------------------------------------------------------

--
-- Table structure for table `employee_address`
--

CREATE TABLE `employee_address` (
  `emp_id` int(11) NOT NULL,
  `address_type` enum('present','permanent') NOT NULL,
  `area` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_address`
--

INSERT INTO `employee_address` (`emp_id`, `address_type`, `area`, `city`, `district`) VALUES
(1000, 'present', 'DSC', 'SAVAR', 'DHAKA'),
(1000, 'permanent', 'DSC', 'SAVAR', 'DHAKA');

-- --------------------------------------------------------

--
-- Table structure for table `employee_job_details`
--

CREATE TABLE `employee_job_details` (
  `emp_id` int(11) NOT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `dept` varchar(100) DEFAULT NULL,
  `joining_date` date DEFAULT curdate(),
  `employee_type` enum('Intern','Permanent','Part Time','Temporary') DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT 15000.00,
  `status` enum('Active','Terminated','Resigned','Suspended','Deceased') DEFAULT 'Active',
  `password` varchar(255) DEFAULT '12345'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_job_details`
--

INSERT INTO `employee_job_details` (`emp_id`, `designation`, `dept`, `joining_date`, `employee_type`, `salary`, `status`, `password`) VALUES
(1, 'Software Engineer', 'IT', '2023-01-15', 'Permanent', 75000.00, 'Active', '12345'),
(2, 'HR Manager', 'HR', '2022-05-20', 'Permanent', 65000.00, 'Active', '12345'),
(3, 'Marketing Executive', 'Marketing', '2023-03-10', 'Permanent', 55000.00, 'Active', '12345'),
(4, 'Data Analyst', 'Data Science', '2024-02-01', 'Permanent', 60000.00, 'Active', '12345'),
(5, 'Accountant', 'Finance', '2023-07-01', 'Permanent', 50000.00, 'Active', '12345'),
(6, 'Graphic Designer', 'Creative', '2024-04-05', 'Permanent', 45000.00, 'Active', '12345'),
(7, 'Intern', 'IT', '2024-06-15', 'Intern', 20000.00, 'Active', '12345'),
(8, 'Sales Manager', 'Sales', '2022-11-11', 'Permanent', 70000.00, 'Active', '12345'),
(9, 'Recruitment Specialist', 'HR', '2023-09-25', 'Permanent', 58000.00, 'Active', '12345'),
(10, 'Business Development Officer', 'Sales', '2023-08-12', 'Permanent', 52000.00, 'Active', '12345'),
(11, 'Web Developer', 'IT', '2023-02-28', 'Permanent', 72000.00, 'Active', '12345'),
(12, 'Financial Analyst', 'Finance', '2022-12-05', 'Permanent', 68000.00, 'Active', '12345'),
(13, 'SEO Specialist', 'Marketing', '2024-01-20', 'Permanent', 54000.00, 'Active', '12345'),
(14, 'Project Manager', 'Project Management', '2022-09-01', 'Permanent', 85000.00, 'Active', '12345'),
(15, 'UX/UI Designer', 'Creative', '2023-04-18', 'Permanent', 62000.00, 'Active', '12345'),
(16, 'Quality Assurance Engineer', 'IT', '2023-06-22', 'Permanent', 60000.00, 'Active', '12345'),
(17, 'Operations Manager', 'Operations', '2022-10-30', 'Permanent', 80000.00, 'Active', '12345'),
(18, 'Customer Support Executive', 'Customer Service', '2024-03-08', 'Permanent', 48000.00, 'Active', '12345'),
(19, 'Content Writer', 'Marketing', '2023-05-15', 'Permanent', 50000.00, 'Active', '12345'),
(20, 'System Administrator', 'IT', '2022-07-25', 'Permanent', 78000.00, 'Active', '12345'),
(1000, 'MANAGER', 'HR', '2025-08-07', 'Permanent', 40000.00, 'Active', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_no` varchar(10) NOT NULL,
  `room_type` varchar(50) DEFAULT NULL,
  `bed` varchar(50) NOT NULL,
  `price` double DEFAULT NULL,
  `booking_status` varchar(50) DEFAULT 'Available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_no`, `room_type`, `bed`, `price`, `booking_status`) VALUES
('101', 'AC', 'Double', 5000, 'Available'),
('102', 'AC', 'Double', 4000, 'Available'),
('103', 'Non-AC', 'Double', 1000, 'Available');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `id_proof_number` (`Customer_id`),
  ADD KEY `room_no` (`room_no`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees_details`
--
ALTER TABLE `employees_details`
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `nid` (`nid`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `emp_id` (`emp_id`);

--
-- Indexes for table `employee_address`
--
ALTER TABLE `employee_address`
  ADD PRIMARY KEY (`emp_id`,`address_type`);

--
-- Indexes for table `employee_job_details`
--
ALTER TABLE `employee_job_details`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `employee_job_details`
--
ALTER TABLE `employee_job_details`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`room_no`) REFERENCES `room` (`room_no`);

--
-- Constraints for table `employees_details`
--
ALTER TABLE `employees_details`
  ADD CONSTRAINT `employees_details_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employee_job_details` (`emp_id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_address`
--
ALTER TABLE `employee_address`
  ADD CONSTRAINT `employee_address_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employees_details` (`emp_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
