-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2025 at 04:51 AM
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
-- Database: `finas_kundenverwaltung`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kunden`
--

CREATE TABLE `kunden` (
  `id` int(11) NOT NULL,
  `nachname` varchar(128) DEFAULT NULL,
  `vorname` varchar(128) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefonnummer` varchar(48) DEFAULT NULL,
  `strasse_nr` varchar(128) DEFAULT NULL,
  `plz` int(16) DEFAULT NULL,
  `ort` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kunden`
--

INSERT INTO `kunden` (`id`, `nachname`, `vorname`, `email`, `telefonnummer`, `strasse_nr`, `plz`, `ort`) VALUES
(5, 'Weber', 'Lisa', 'lisa.weber@finas.de', '32343248', 'Grabenstraße 19', 12458, 'Bremen'),
(7, 'Fischer', 'Nicole', 'nicole.fischer@finas.de', '1777889900', 'Osterstraße 45', 20237, 'Frankfurt'),
(10, 'Meyer', 'Anne', 'anne.meyer@finas.de', '1700123467', 'Märzstr. 29', 21435, 'Leipzig'),
(13, 'Peters', 'Johanna', 'johanna.peters@finas.de', '1722223344', 'Hohenstraße 16', 65782, 'Wiesbaden'),
(17, 'Koch', 'Sandra', 'sandra.koch@finas.de', '1721223344', 'Schillerstr. 55', 70436, 'München'),
(19, 'Wagner', 'Luise', 'ursula.wagner@finas.de', '1712223344', 'Potsdamer Str. 14', 60432, 'Frankfurt'),
(20, 'Bauer', 'Robert', 'robert.bauer@finas.de', '1731323445', 'Viktoriastr. 21', 11735, 'Stuttgart'),
(21, 'Zimmer', 'Sophie', 'sophie.zimmer@finas.de', '1742056789', 'Donaustraße 7', 32867, 'Hannover'),
(22, 'Krause', 'Claudia', 'gunter.krause@finas.de', '1757563412', 'Goethestraße 3', 20695, 'Düsseldorf'),
(24, 'Hartmann', 'Claudia', 'claudia.hartmann@finas.de', '1734211234', 'Hohenbergstr. 14', 11228, 'Hamburg'),
(25, 'Roth', 'Tobias', 'tobias.roth@finas.de', '1765432345', 'An den Mühlen 22', 50345, 'Dresden'),
(26, 'Vogel', 'Birgit', 'birgit.vogel@finas.de', '1788987766', 'Jägerstr. 35', 71322, 'Wiesbaden'),
(27, 'Schumacher', 'Bernd', 'bernd.schumacher@finas.de', '1775656789', 'Straßenallee 12', 61947, 'Düsseldorf'),
(28, 'Neumann', 'Marion', 'marion.neumann@finas.de', '1798765432', 'Schustergasse 3', 78134, 'München'),
(29, 'Ziegler', 'Dietrich', 'dietrich.ziegler@finas.de', '1756565656', 'Tannenweg 27', 94012, 'Leipzig'),
(30, 'Seidel', 'Veronika', 'veronika.seidel@finas.de', '1788776699', 'Sonnenallee 9', 91234, 'Hamburg'),
(31, 'Scholz', 'Herbert', 'herbert.scholz@finas.de', '1789778999', 'Berghofstr. 25', 46867, 'Frankfurt'),
(32, 'Friedrich', 'Andreas', 'andreas.friedrich@finas.de', '1712345678', 'Hauptstraße 40', 51713, 'München'),
(33, 'Maier', 'Bianca', 'bianca.maier@finas.de', '1710023456', 'Bismarckstraße 5', 67321, 'Berlin'),
(34, 'Arnold', 'Edgar', 'edgar.arnold@finas.de', '1723456783', 'Bäckerstr. 20', 12045, 'Stuttgart'),
(35, 'Lorenz', 'Isabel', 'isabel.lorenz@finas.de', '1711234590', 'Finkenstraße 4', 33012, 'Bremen'),
(36, 'Herrmann', 'Rita', 'rita.herrmann@finas.de', '1734567891', 'Gartenstraße 55', 44667, 'Düsseldorf'),
(37, 'Meyers', 'Sebastian', 'sebastian.meyers@finas.de', '1745234567', 'Wilhelmstraße 34', 78122, 'Leipzig'),
(38, 'Kaiser', 'Tina', 'tina.kaiser@finas.de', '1737654321', 'Parkweg 66', 43782, 'Hannover'),
(39, 'Bremer', 'Janina', 'janina.bremer@finas.de', '1722457788', 'Friedrichstr. 17', 56043, 'Köln'),
(40, 'Winter', 'Franziska', 'franziska.winter@finas.de', '1745123456', 'Dorfstr. 11', 83323, 'Wiesbaden'),
(41, 'Raab', 'Günther', 'guenther.raab@finas.de', '1731234567', 'Wegwarte 23', 59202, 'München'),
(42, 'Albrecht', 'Manuela', 'manuela.albrecht@finas.de', '1733123456', 'Rosenweg 8', 29123, 'Frankfurt'),
(43, 'Gruber', 'Gaby', 'gaby.gruber@finas.de', '1756877899', 'Kastanienweg 5', 74652, 'Leipzig'),
(44, 'Heller', 'Ute', 'ute.heller@finas.de', '1721234579', 'Bergstraße 7', 52478, 'Stuttgart'),
(45, 'Kiefer', 'Julian', 'julian.kiefer@finas.de', '1700223344', 'Bahnhofstraße 21', 90032, 'Berlin'),
(46, 'Steiner', 'Friedrich', 'friedrich.steiner@finas.de', '1787654321', 'Neumarkt 17', 31145, 'Köln'),
(47, 'Grimm', 'Petra', 'petra.grimm@finas.de', '1755889977', 'Mühlenweg 13', 20498, 'Frankfurt'),
(48, 'Frank', 'Ruth', 'ruth.frank@finas.de', '1766778899', 'Alte Straße 10', 80423, 'Hamburg'),
(49, 'Schick', 'Konrad', 'konrad.schick@finas.de', '1776453312', 'Am Stadtrand 1', 67344, 'Leipzig'),
(50, 'Loos', 'Jasmin', 'jasmin.loos@finas.de', '1755001234', 'Bodenstraße 15', 58972, 'Stuttgart'),
(51, 'Krick', 'Klara', 'klara.krick@finas.de', '1787898765', 'Rosenweg 3', 84513, 'München'),
(52, 'Bach', 'Gerald', 'gerald.bach@finas.de', '1709123456', 'In den Gärten 19', 34999, 'Bremen'),
(53, 'Gerber', 'Erika', 'erika.gerber@finas.de', '1765432165', 'Gartenallee 24', 59472, 'Düsseldorf'),
(54, 'Müller', 'Max', 'max.mueller@example.com', '123456789', 'Hauptstr 1', 12345, 'Berlin'),
(55, 'Schmidt', 'Anna', 'anna.schmidt@example.com', '987654321', 'Bergstr 5', 54321, 'Hamburg'),
(56, 'Meier', 'Johann', 'johann.meier@example.com', '123987456', 'Bahnhofstr 10', 67890, 'München'),
(57, 'Schneider', 'Lisa', 'lisa.schneider@example.com', '321654987', 'Marktplatz 4', 11223, 'Frankfurt'),
(58, 'Fischer', 'Thomas', 'thomas.fischer@example.com', '654789321', 'Kirchstr 7', 99887, 'Stuttgart'),
(59, 'Weber', 'Sophia', 'sophia.weber@example.com', '789123456', 'Waldweg 9', 33445, 'Düsseldorf'),
(60, 'Becker', 'Paul', 'paul.becker@example.com', '951753852', 'Mühlenweg 3', 55667, 'Leipzig'),
(61, 'Hoffmann', 'Marie', 'marie.hoffmann@example.com', '357951258', 'Schulstr 12', 77889, 'Dortmund'),
(62, 'Koch', 'Daniel', 'daniel.koch@example.com', '789456123', 'Gartenstr 8', 44556, 'Essen'),
(63, 'Klein', 'Julia', 'julia.klein@example.com', '258147369', 'Rosenweg 2', 66778, 'Bremen'),
(68, 'Bajalan', 'Vahid', 'vahidbajalan3@gmail.com', '015734439104', 'Klothildestr. 29A', 13156, 'Berlin'),
(75, 'Bajalan', 'Vahid', 'vahidbajalan3@gmail.com', '015734439104', 'Klothildestr. 29A', 13156, 'Berlin'),
(76, 'jkgjhgjh', 'Vahid', 'vahidbajalan3@gmail.com', '015734439104', 'Klothildestr. 29A', 13156, 'Berlin');

-- --------------------------------------------------------

--
-- Table structure for table `kundens`
--

CREATE TABLE `kundens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nachname` varchar(255) NOT NULL,
  `vorname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefonnummer` bigint(20) NOT NULL,
  `strasse_nr` varchar(255) NOT NULL,
  `plz` int(11) NOT NULL,
  `ort` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_01_13_145857_create_kundens_table', 2),
(5, '2025_01_13_214042_create_products_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
('D0F3iGfYD8pig30SkT09wlWaNNjIUPRpwJcNrnna', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUHE5UU5OUUJ3dGJWYlVWSWtwRGlUNVBJRDVQSk1UZ1cwMjl0OUJHWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1736804815),
('fT791YzkosnavLk61wbUNYc6bNHSha8p6u9tu2rM', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieFlSNjFhM1lXTFM5SHg1QWNMeDZUd0N2VENuZzkzeXlMeVd4amFDTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1736782286),
('GLxpIiTSyyDBEDDd4dYzYRBmGuoPtOXm744I0Sr7', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWU0yczhZZGNSS291Uzh0M1VXZUJNSWxmNmJDekpXTUN5cWVCekJ2TiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1736778068);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kunden`
--
ALTER TABLE `kunden`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kundens`
--
ALTER TABLE `kundens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kunden`
--
ALTER TABLE `kunden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `kundens`
--
ALTER TABLE `kundens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
