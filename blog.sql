-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 07, 2020 at 01:19 PM
-- Server version: 10.2.6-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `content` mediumtext NOT NULL,
  `claps` int(10) UNSIGNED NOT NULL,
  `author_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `title`, `date`, `content`, `claps`, `author_id`) VALUES
(3, 'Je sais pas si vous avez remarqué...', '2020-02-07 09:57:16', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Condimentum id venenatis a condimentum vitae sapien pellentesque habitant morbi. Nisi porta lorem mollis aliquam ut porttitor leo a diam. Ligula ullamcorper malesuada proin libero nunc consequat interdum varius. Augue mauris augue neque gravida in fermentum. Tortor posuere ac ut consequat semper viverra nam. Sed risus ultricies tristique nulla aliquet enim tortor at. Gravida rutrum quisque non tellus orci ac. Integer eget aliquet nibh praesent tristique magna. Tortor id aliquet lectus proin nibh nisl. Ac auctor augue mauris augue neque gravida. Donec enim diam vulputate ut pharetra. Pretium vulputate sapien nec sagittis aliquam malesuada. Quam viverra orci sagittis eu volutpat odio facilisis mauris.\nFelis imperdiet proin fermentum leo vel orci porta. Consectetur adipiscing elit duis tristique sollicitudin nibh sit amet commodo. A diam maecenas sed enim. Id diam maecenas ultricies mi. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit. Convallis tellus id interdum velit. Vulputate odio ut enim blandit. Nullam ac tortor vitae purus faucibus ornare. Pellentesque habitant morbi tristique senectus et netus et malesuada fames. Ullamcorper dignissim cras tincidunt lobortis. Arcu cursus vitae congue mauris rhoncus aenean. Quis varius quam quisque id diam vel.\nMassa placerat duis ultricies lacus sed turpis. A condimentum vitae sapien pellentesque habitant. Ante metus dictum at tempor commodo ullamcorper. Facilisis volutpat est velit egestas dui id. Sit amet consectetur adipiscing elit duis tristique sollicitudin. Velit laoreet id donec ultrices. Praesent semper feugiat nibh sed pulvinar proin gravida hendrerit. Aliquam ut porttitor leo a diam sollicitudin. Orci dapibus ultrices in iaculis nunc sed. Elit at imperdiet dui accumsan sit amet nulla facilisi. A arcu cursus vitae congue. Tincidunt ornare massa eget egestas purus viverra accumsan in. Augue lacus viverra vitae congue. Mauris ultrices eros in cursus turpis. Diam quam nulla porttitor massa id neque aliquam vestibulum. Nec ullamcorper sit amet risus nullam eget felis eget nunc. Sagittis aliquam malesuada bibendum arcu vitae elementum.\nNec feugiat nisl pretium fusce. Tempor commodo ullamcorper a lacus vestibulum sed arcu non odio. Blandit libero volutpat sed cras. Orci ac auctor augue mauris. Quis auctor elit sed vulputate mi. Leo duis ut diam quam nulla porttitor massa id neque. Quis vel eros donec ac odio tempor orci dapibus. Neque convallis a cras semper auctor neque vitae tempus. Dolor sit amet consectetur adipiscing elit ut aliquam purus sit. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien. At lectus urna duis convallis convallis. Risus at ultrices mi tempus imperdiet nulla malesuada pellentesque. Tellus in hac habitasse platea dictumst vestibulum. Nunc sed blandit libero volutpat sed cras ornare arcu.\nPulvinar neque laoreet suspendisse interdum consectetur libero id faucibus nisl. Egestas diam in arcu cursus euismod quis. Mi eget mauris pharetra et ultrices. Quis commodo odio aenean sed adipiscing diam donec. Augue mauris augue neque gravida in. Nulla posuere sollicitudin aliquam ultrices sagittis orci. Tellus cras adipiscing enim eu turpis egestas. Facilisi cras fermentum odio eu feugiat pretium nibh. Interdum posuere lorem ipsum dolor sit amet. Fames ac turpis egestas maecenas pharetra convallis posuere morbi leo. Rhoncus mattis rhoncus urna neque viverra justo nec ultrices dui.', 0, 7),
(4, 'Mais qu\'est-ce que je fais là?', '2020-02-07 09:58:17', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet consectetur adipiscing elit ut. Tortor at auctor urna nunc id. Scelerisque fermentum dui faucibus in ornare quam. Laoreet id donec ultrices tincidunt arcu non sodales. Quam vulputate dignissim suspendisse in est ante in. Suspendisse faucibus interdum posuere lorem ipsum. Eu turpis egestas pretium aenean pharetra. Tristique senectus et netus et. Enim eu turpis egestas pretium aenean. Rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt. Tortor consequat id porta nibh venenatis cras sed felis eget. Vitae ultricies leo integer malesuada nunc vel risus commodo viverra. Ac tortor dignissim convallis aenean et tortor at. Est ante in nibh mauris cursus mattis molestie a iaculis. Nunc congue nisi vitae suscipit tellus mauris. Ut placerat orci nulla pellentesque dignissim enim sit amet venenatis.\nUllamcorper velit sed ullamcorper morbi tincidunt ornare massa eget egestas. Tellus mauris a diam maecenas sed enim ut. Maecenas accumsan lacus vel facilisis volutpat est. Diam donec adipiscing tristique risus nec feugiat. Mi bibendum neque egestas congue quisque egestas diam in. Sit amet venenatis urna cursus. Aliquet risus feugiat in ante. Consectetur adipiscing elit duis tristique sollicitudin nibh sit amet commodo. Venenatis urna cursus eget nunc. Nec feugiat in fermentum posuere urna nec tincidunt. Duis tristique sollicitudin nibh sit amet commodo. Mollis nunc sed id semper risus in. Cursus turpis massa tincidunt dui ut ornare lectus. Tempus iaculis urna id volutpat lacus laoreet non. Neque viverra justo nec ultrices dui. Rutrum tellus pellentesque eu tincidunt.\nNibh mauris cursus mattis molestie a. Netus et malesuada fames ac. Laoreet non curabitur gravida arcu ac tortor dignissim convallis. Vitae tempus quam pellentesque nec nam aliquam. At quis risus sed vulputate odio ut. Tempus iaculis urna id volutpat lacus laoreet non. Nullam vehicula ipsum a arcu cursus vitae congue. Euismod nisi porta lorem mollis aliquam. Quis commodo odio aenean sed adipiscing diam. Eu lobortis elementum nibh tellus molestie nunc. Velit aliquet sagittis id consectetur. Nunc sed blandit libero volutpat. Pellentesque id nibh tortor id aliquet lectus proin nibh nisl. In ornare quam viverra orci sagittis eu volutpat. Nisl suscipit adipiscing bibendum est ultricies integer quis.\nTempor orci dapibus ultrices in iaculis nunc sed. Blandit libero volutpat sed cras. Non odio euismod lacinia at quis risus sed. Adipiscing elit duis tristique sollicitudin nibh sit amet. Integer eget aliquet nibh praesent tristique magna. Mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Scelerisque purus semper eget duis at tellus at urna. Turpis tincidunt id aliquet risus feugiat in ante. Consequat id porta nibh venenatis cras sed. Morbi enim nunc faucibus a pellentesque sit. Tempor orci dapibus ultrices in. Suscipit tellus mauris a diam maecenas sed enim. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque. Pretium vulputate sapien nec sagittis. Sed libero enim sed faucibus turpis in eu mi.\nDiam vulputate ut pharetra sit amet aliquam id. Viverra maecenas accumsan lacus vel facilisis volutpat. Neque convallis a cras semper auctor. Commodo viverra maecenas accumsan lacus vel facilisis. A scelerisque purus semper eget duis at tellus at. Lacus laoreet non curabitur gravida arcu ac tortor dignissim. Lorem sed risus ultricies tristique nulla. Augue ut lectus arcu bibendum at varius. Elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique senectus. Eget nullam non nisi est sit amet facilisis. Fermentum iaculis eu non diam phasellus vestibulum. Pulvinar mattis nunc sed blandit libero volutpat sed cras. Iaculis urna id volutpat lacus. Magna eget est lorem ipsum dolor sit. Vel facilisis volutpat est velit egestas dui id ornare. Erat imperdiet sed euismod nisi. Ornare massa eget egestas purus viverra accumsan. Porttitor leo a diam sollicitudin. Nunc scelerisque viverra mauris in aliquam sem fringilla ut morbi. Suspendisse faucibus interdum posuere lorem ipsum.', 0, 7),
(5, 'Mon premier article', '2020-02-07 10:59:09', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet consectetur adipiscing elit ut. Tortor at auctor urna nunc id. Scelerisque fermentum dui faucibus in ornare quam. Laoreet id donec ultrices tincidunt arcu non sodales. Quam vulputate dignissim suspendisse in est ante in. Suspendisse faucibus interdum posuere lorem ipsum. Eu turpis egestas pretium aenean pharetra. Tristique senectus et netus et. Enim eu turpis egestas pretium aenean. Rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt. Tortor consequat id porta nibh venenatis cras sed felis eget. Vitae ultricies leo integer malesuada nunc vel risus commodo viverra. Ac tortor dignissim convallis aenean et tortor at. Est ante in nibh mauris cursus mattis molestie a iaculis. Nunc congue nisi vitae suscipit tellus mauris. Ut placerat orci nulla pellentesque dignissim enim sit amet venenatis.\nUllamcorper velit sed ullamcorper morbi tincidunt ornare massa eget egestas. Tellus mauris a diam maecenas sed enim ut. Maecenas accumsan lacus vel facilisis volutpat est. Diam donec adipiscing tristique risus nec feugiat. Mi bibendum neque egestas congue quisque egestas diam in. Sit amet venenatis urna cursus. Aliquet risus feugiat in ante. Consectetur adipiscing elit duis tristique sollicitudin nibh sit amet commodo. Venenatis urna cursus eget nunc. Nec feugiat in fermentum posuere urna nec tincidunt. Duis tristique sollicitudin nibh sit amet commodo. Mollis nunc sed id semper risus in. Cursus turpis massa tincidunt dui ut ornare lectus. Tempus iaculis urna id volutpat lacus laoreet non. Neque viverra justo nec ultrices dui. Rutrum tellus pellentesque eu tincidunt.\nNibh mauris cursus mattis molestie a. Netus et malesuada fames ac. Laoreet non curabitur gravida arcu ac tortor dignissim convallis. Vitae tempus quam pellentesque nec nam aliquam. At quis risus sed vulputate odio ut. Tempus iaculis urna id volutpat lacus laoreet non. Nullam vehicula ipsum a arcu cursus vitae congue. Euismod nisi porta lorem mollis aliquam. Quis commodo odio aenean sed adipiscing diam. Eu lobortis elementum nibh tellus molestie nunc. Velit aliquet sagittis id consectetur. Nunc sed blandit libero volutpat. Pellentesque id nibh tortor id aliquet lectus proin nibh nisl. In ornare quam viverra orci sagittis eu volutpat. Nisl suscipit adipiscing bibendum est ultricies integer quis.\nTempor orci dapibus ultrices in iaculis nunc sed. Blandit libero volutpat sed cras. Non odio euismod lacinia at quis risus sed. Adipiscing elit duis tristique sollicitudin nibh sit amet. Integer eget aliquet nibh praesent tristique magna. Mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget. Scelerisque purus semper eget duis at tellus at urna. Turpis tincidunt id aliquet risus feugiat in ante. Consequat id porta nibh venenatis cras sed. Morbi enim nunc faucibus a pellentesque sit. Tempor orci dapibus ultrices in. Suscipit tellus mauris a diam maecenas sed enim. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque. Pretium vulputate sapien nec sagittis. Sed libero enim sed faucibus turpis in eu mi.\nDiam vulputate ut pharetra sit amet aliquam id. Viverra maecenas accumsan lacus vel facilisis volutpat. Neque convallis a cras semper auctor. Commodo viverra maecenas accumsan lacus vel facilisis. A scelerisque purus semper eget duis at tellus at. Lacus laoreet non curabitur gravida arcu ac tortor dignissim. Lorem sed risus ultricies tristique nulla. Augue ut lectus arcu bibendum at varius. Elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique senectus. Eget nullam non nisi est sit amet facilisis. Fermentum iaculis eu non diam phasellus vestibulum. Pulvinar mattis nunc sed blandit libero volutpat sed cras. Iaculis urna id volutpat lacus. Magna eget est lorem ipsum dolor sit. Vel facilisis volutpat est velit egestas dui id ornare. Erat imperdiet sed euismod nisi. Ornare massa eget egestas purus viverra accumsan. Porttitor leo a diam sollicitudin. Nunc scelerisque viverra mauris in aliquam sem fringilla ut morbi. Suspendisse faucibus interdum posuere lorem ipsum.', 0, 9),
(6, 'Attention ceci va fonctionner!!!', '2020-02-07 11:07:03', 'Truc bidule', 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(11);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`) VALUES
(7, 'Jean-Pierre', 'jpierre@example.com'),
(8, 'Michel-René', 'mrene@example.com'),
(9, 'Geneviève-Adélaïde', 'gadelaide@example.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_article_author_id` (`author_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `fk_article_author_id` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
