-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2024 at 12:53 PM
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
-- Database: `mrsabuj`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `details` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `details`, `created_at`, `updated_at`) VALUES
(1, 'My name is Start Bootstrap and I help brands grow.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit dolorum itaque qui unde quisquam consequatur autem. Eveniet quasi nobis aliquid cumque officiis sed rem iure ipsa! Praesentium ratione atque dolorem?', '2024-07-15 10:55:03', '2024-07-15 10:55:03');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `fullName`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Mohammad Sabuj Khan', 'sabuj@khan.com', '1234567890', 'This is our message', '2024-07-16 19:51:58', '2024-07-16 19:51:58'),
(2, 'Mohammad SabShojibuj Khan', 'sojib@khan.com', '1234567890', 'This is our message from Shojib Khan', '2024-07-17 12:40:45', '2024-07-17 12:40:45'),
(3, 'MOhammad Sabuj Khan', 'shobuj.khan1231@gmail.com', '0987654321', 'test message', '2024-07-17 22:42:43', '2024-07-17 22:42:43'),
(4, 'Rupantor Khan', 'rupantor@khan.com', '01908241281', 'This is the message from Rupantor Khan.', '2024-07-17 22:43:53', '2024-07-17 22:43:53'),
(5, 'Habijabi Khan', 'habi@jabi.com', '01928381818', 'This is habijabi message from habijabi. And this is a test message. I hope it will work as it should work.', '2024-07-23 08:34:55', '2024-07-23 08:34:55');

-- --------------------------------------------------------

--
-- Table structure for table `educations`
--

CREATE TABLE `educations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `duration` varchar(50) NOT NULL,
  `institute` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `field` varchar(100) NOT NULL,
  `details` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `educations`
--

INSERT INTO `educations` (`id`, `duration`, `institute`, `address`, `degree`, `field`, `details`, `created_at`, `updated_at`) VALUES
(1, '2015 - 2017', 'Barnett College', 'Fairfield, NY', 'Master\'s', 'Web Development', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus laudantium, voluptatem quis repellendus eaque sit animi illo ipsam amet officiis corporis sed aliquam non voluptate corrupti excepturi maxime porro fuga.', '2024-07-15 11:01:45', '2024-07-15 11:01:45'),
(2, '2011 - 2015', 'ULA', 'Los Angeles, CA', 'Undergraduate', 'Computer Science', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus laudantium, voluptatem quis repellendus eaque sit animi illo ipsam amet officiis corporis sed aliquam non voluptate corrupti excepturi maxime porro fuga.', '2024-07-15 11:01:45', '2024-07-15 11:01:45'),
(3, '2017 - 2020', 'ADSITU', 'Banani, Dhaka', 'BBA', 'Human Resources Management', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus laudantium, voluptatem quis repellendus eaque sit animi illo ipsam amet officiis corporis sed aliquam non voluptate corrupti excepturi maxime porro fuga.', '2024-07-17 20:12:15', '2024-07-17 20:12:15');

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `duration` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `company` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `details` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `duration`, `designation`, `company`, `address`, `details`, `created_at`, `updated_at`) VALUES
(1, '2019 - Present', 'Web Developer', 'Stark Industries', 'Los Angeles, CA', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus laudantium, voluptatem quis repellendus eaque sit animi illo ipsam amet officiis corporis sed aliquam non voluptate corrupti excepturi maxime porro fuga.', '2024-07-15 10:58:51', '2024-07-15 10:58:51'),
(2, '2017 - 2019', 'SEM Specialist', 'Wayne Enterprises', 'Gotham City, NY', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus laudantium, voluptatem quis repellendus eaque sit animi illo ipsam amet officiis corporis sed aliquam non voluptate corrupti excepturi maxime porro fuga.', '2024-07-15 10:58:51', '2024-07-15 10:58:51'),
(3, '2020 - 2025', 'WordPress developer', 'One Stop Classics', 'Los Angeles, California', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus laudantium, voluptatem quis repellendus eaque sit animi illo ipsam amet officiis corporis sed aliquam non voluptate corrupti excepturi maxime porro fuga.', '2024-07-17 20:04:10', '2024-07-17 20:04:10');

-- --------------------------------------------------------

--
-- Table structure for table `heroproperties`
--

CREATE TABLE `heroproperties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `keyLine` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `shortTitle` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `heroproperties`
--

INSERT INTO `heroproperties` (`id`, `keyLine`, `title`, `shortTitle`, `img`, `created_at`, `updated_at`) VALUES
(1, 'DESIGN · DEVELOPMENT · MARKETING', 'Get online and grow fast', 'I can help your business to', 'https://i.postimg.cc/x1gHB6hV/profile.png', '2024-07-15 10:53:50', '2024-07-15 10:53:50');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'HTML', '2024-07-15 11:05:22', '2024-07-15 11:05:22'),
(2, 'CSS', '2024-07-15 11:05:22', '2024-07-15 11:05:22'),
(3, 'JavaScrit', '2024-07-15 11:06:04', '2024-07-15 11:06:04'),
(4, 'jQuery', '2024-07-15 11:06:04', '2024-07-15 11:06:04'),
(5, 'MySQL', '2024-07-15 11:06:23', '2024-07-15 11:06:23'),
(6, 'PHP\r\n', '2024-07-15 11:06:23', '2024-07-15 11:06:23'),
(7, 'Laravel', '2024-07-15 11:06:36', '2024-07-15 11:06:36');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2024_07_14_180340_create_contacts_table', 1),
(2, '2024_07_14_222951_create_heroproperties_table', 2),
(3, '2024_07_14_223426_create_abouts_table', 3),
(4, '2024_07_14_224443_create_socials_table', 4),
(5, '2024_07_14_224742_create_experiences_table', 5),
(6, '2024_07_14_225522_create_educations_table', 6),
(7, '2024_07_14_225923_create_resumes_table', 7),
(8, '2024_07_14_230109_create_skills_table', 8),
(9, '2024_07_14_230239_create_languages_table', 9),
(10, '2024_07_14_230449_create_projects_table', 10),
(11, '2024_07_14_231014_create_seoproperties_table', 11),
(12, '2024_07_15_091336_create_sessions_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `previewLink` varchar(100) NOT NULL,
  `thumbnailLink` varchar(100) NOT NULL,
  `details` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `previewLink`, `thumbnailLink`, `details`, `created_at`, `updated_at`) VALUES
(1, 'One Stop Classics', 'https://i.postimg.cc/xTmJtWd2/demoimage.jpg', 'https://i.postimg.cc/xTmJtWd2/demoimage.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius at enim eum illum aperiam placeat esse? Mollitia omnis minima saepe recusandae libero, iste ad asperiores! Explicabo commodi quo itaque! Ipsam!', '2024-07-15 12:26:36', '2024-07-17 19:52:54'),
(2, 'Mr Sabuj Khan', 'https://i.postimg.cc/xTmJtWd2/demoimage.jpg', 'https://i.postimg.cc/xTmJtWd2/demoimage.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius at enim eum illum aperiam placeat esse? Mollitia omnis minima saepe recusandae libero, iste ad asperiores! Explicabo commodi quo itaque! Ipsam!', '2024-07-15 12:26:36', '2024-07-17 19:53:16'),
(3, 'River Place North', 'https://i.postimg.cc/xTmJtWd2/demoimage.jpg', 'https://i.postimg.cc/xTmJtWd2/demoimage.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius at enim eum illum aperiam placeat esse? Mollitia omnis minima saepe recusandae libero, iste ad asperiores! Explicabo commodi quo itaque! Ipsam!', '2024-07-17 19:53:56', '2024-07-17 19:53:56');

-- --------------------------------------------------------

--
-- Table structure for table `resumes`
--

CREATE TABLE `resumes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `downloadLink` varchar(155) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resumes`
--

INSERT INTO `resumes` (`id`, `downloadLink`, `created_at`, `updated_at`) VALUES
(1, 'https://onestopclassics.com/', '2024-07-17 22:24:20', '2024-07-17 22:24:20');

-- --------------------------------------------------------

--
-- Table structure for table `seoproperties`
--

CREATE TABLE `seoproperties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pageName` enum('home','resume','projects','contact') NOT NULL,
  `title` varchar(100) NOT NULL,
  `keywords` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL,
  `ogSiteName` varchar(100) NOT NULL,
  `ogUrl` varchar(100) NOT NULL,
  `ogTitle` varchar(100) NOT NULL,
  `ogDescription` varchar(500) NOT NULL,
  `ogImg` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seoproperties`
--

INSERT INTO `seoproperties` (`id`, `pageName`, `title`, `keywords`, `description`, `ogSiteName`, `ogUrl`, `ogTitle`, `ogDescription`, `ogImg`, `created_at`, `updated_at`) VALUES
(1, 'home', 'Home Page', 'Home Keywords Here', 'Home Description Here', 'Site Name Here', 'www.demo.com', 'Home og Title', 'Home og Description', 'https://i.postimg.cc/xTmJtWd2/demoimage.jpg', '2024-07-30 12:27:56', '2024-07-30 12:28:54'),
(2, 'resume', 'Resume Page', 'Resume Keywords Here', 'Resume Description Here', 'Site Name Here', 'www.demo.com', 'Resume og Title', 'Resume og Description', 'https://i.postimg.cc/xTmJtWd2/demoimage.jpg', '2024-07-30 12:27:56', '2024-07-30 12:28:54'),
(3, 'projects', 'Project Page', 'Project Keywords Here', 'Project Description Here', 'Site Name Here', 'www.demo.com', 'Project og Title', 'Project og Description', 'https://i.postimg.cc/xTmJtWd2/demoimage.jpg', '2024-07-30 12:27:56', '2024-07-30 12:28:54'),
(4, 'contact', 'Contact Page', 'Contact Keywords Here', 'Contact Description Here', 'Site Name Here', 'www.demo.com', 'Contact og Title', 'Contact og Description', 'https://i.postimg.cc/xTmJtWd2/demoimage.jpg', '2024-07-30 12:27:56', '2024-07-30 12:28:54');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('16CekFDnlPbIAtIrfagd8BHptC5K5s6G0ofvvPoY', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRFp4ODRmUENZcVRVV0dhd2dkUWw4c1drU204bzRqRHpQYm45cXRCMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb250YWN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1722344782),
('WyH7y7OE9nb4IQipJogR9emOHKRoSy6CIQPcQi9P', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNHR1cHpuRGdzdjkxMmlCSkdwdUxmZkh5azZ4UXVsc3JLTENiUlhiciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9leHBlcmllbmNlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1722422172);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Web Design', '2024-07-15 11:04:07', '2024-07-15 11:04:07'),
(2, 'Web Development', '2024-07-15 11:04:07', '2024-07-15 11:04:07'),
(3, 'Graphic Design', '2024-07-15 11:04:27', '2024-07-15 11:04:27'),
(4, 'PHP Developer', '2024-07-15 11:04:27', '2024-07-15 11:04:27'),
(5, 'Laravel Developer', '2024-07-15 11:04:55', '2024-07-15 11:04:55'),
(6, 'WordPress Developer', '2024-07-15 11:04:55', '2024-07-15 11:04:55'),
(7, 'Front-end Designer', '2024-07-17 20:18:57', '2024-07-17 20:18:57'),
(8, 'Back-end Developer', '2024-07-17 20:18:57', '2024-07-17 20:18:57');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facebookLink` varchar(255) NOT NULL,
  `twitterLink` varchar(255) NOT NULL,
  `linkedinLink` varchar(255) NOT NULL,
  `githubLink` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `facebookLink`, `twitterLink`, `linkedinLink`, `githubLink`, `created_at`, `updated_at`) VALUES
(1, 'www.facebook.com', 'www.twitter.com', 'www.linkedin.com', 'www.github.com', '2024-07-15 10:56:09', '2024-07-15 10:56:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `educations`
--
ALTER TABLE `educations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `heroproperties`
--
ALTER TABLE `heroproperties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resumes`
--
ALTER TABLE `resumes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seoproperties`
--
ALTER TABLE `seoproperties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `educations`
--
ALTER TABLE `educations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `heroproperties`
--
ALTER TABLE `heroproperties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `resumes`
--
ALTER TABLE `resumes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seoproperties`
--
ALTER TABLE `seoproperties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
