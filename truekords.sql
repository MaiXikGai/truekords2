-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2024 at 11:50 AM
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
-- Database: `truekords`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chords`
--

CREATE TABLE `chords` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `diagram` text DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chords`
--

INSERT INTO `chords` (`id`, `name`, `diagram`, `image_path`, `description`) VALUES
(1, 'C Major', 'E|---0---|B|---1---|G|---0---|D|---2---|A|---3---|E|---x---|', NULL, 'C Major chord'),
(2, 'C Minor', 'E|---3---|B|---4---|G|---5---|D|---5---|A|---3---|E|---x---|', NULL, 'C Minor chord'),
(3, 'D Major', 'E|---2---|B|---3---|G|---2---|D|---0---|A|---x---|E|---x---|', NULL, 'D Major chord'),
(4, 'D Minor', 'E|---1---|B|---3---|G|---2---|D|---0---|A|---x---|E|---x---|', NULL, 'D Minor chord'),
(5, 'E Major', 'E|---0---|B|---0---|G|---1---|D|---2---|A|---2---|E|---0---|', NULL, 'E Major chord'),
(6, 'E Minor', 'E|---0---|B|---0---|G|---0---|D|---2---|A|---2---|E|---0---|', NULL, 'E Minor chord'),
(7, 'F Major', 'E|---1---|B|---1---|G|---2---|D|---3---|A|---3---|E|---1---|', NULL, 'F Major chord'),
(8, 'F Minor', 'E|---1---|B|---1---|G|---1---|D|---3---|A|---3---|E|---1---|', NULL, 'F Minor chord'),
(9, 'G Major', 'E|---3---|B|---0---|G|---0---|D|---0---|A|---2---|E|---3---|', NULL, 'G Major chord'),
(10, 'G Minor', 'E|---3---|B|---3---|G|---3---|D|---5---|A|---5---|E|---3---|', NULL, 'G Minor chord'),
(11, 'A Major', 'E|---0---|B|---2---|G|---2---|D|---2---|A|---0---|E|---x---|', NULL, 'A Major chord'),
(12, 'A Minor', 'E|---0---|B|---1---|G|---2---|D|---2---|A|---0---|E|---x---|', NULL, 'A Minor chord'),
(13, 'B Major', 'E|---2---|B|---4---|G|---4---|D|---4---|A|---2---|E|---x---|', NULL, 'B Major chord'),
(14, 'B Minor', 'E|---2---|B|---3---|G|---4---|D|---4---|A|---2---|E|---x---|', NULL, 'B Minor chord');

-- --------------------------------------------------------

--
-- Table structure for table `lyrics`
--

CREATE TABLE `lyrics` (
  `id` int(11) NOT NULL,
  `song_id` int(11) DEFAULT NULL,
  `artist` varchar(255) NOT NULL,
  `lyric` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lyrics`
--

INSERT INTO `lyrics` (`id`, `song_id`, `artist`, `lyric`) VALUES
(1, 5, 'Hương Tràm', 'Một chút nhớ anh đấy một chút mưa chưa đầy\r\nMột chút thương anh mà xa như khói mây\r\nMột chút ít hơi ấm một chút thương âm thầm\r\nMột chút yêu thôi nằm sâu như sóng ngầm\r\nMột chút nhớ thành hai một chút mưa góp lại\r\nMột chút yêu thôi mà buồn mỗi sớm mai\r\nMột chút gió thành bão giông\r\nMột chút mưa đầy biển rộng\r\nMột chút yêu thôi mà đau đến cháy lòng\r\nYêu là như thế dù là sai thế nào\r\nVẫn cứ yêu thôi và yêu đến khi tàn hơi\r\nBao lần đã cố nhủ lòng phải quên đi\r\nMà tim ơi sao mềm yếu quá vậy\r\nTrái tim em và dòng máu nóng để yêu anh\r\nGiấc mơ ơi ở lại bên tôi đừng tan nhanh\r\nNgày mai thức giấc thấy giữa lồng ngực\r\nLà hình bóng ấy\r\nNắm tay em đừng để em đi đừng để em đi\r\nLỡ sinh ra là để yêu nhau chẳng rời xa đâu\r\nBình yên ở đây ở đây chẳng đâu xa vời\r\nUhm uhm uhm\r\nMột chút nhớ thành hai\r\nMột chút mơ góp lại\r\nMột chút yêu thôi mà buồn mỗi sớm mai\r\nMột chút gió thành bão giông\r\nMột chút mưa đầy biển rộng\r\nMột chút yêu thôi mà đau đến cháy lòng\r\nYêu là như thế dù là sai là thế nào\r\nVẫn cứ yêu thôi và yêu đến khi tàn hơi\r\nBao lần đã cố nhủ lòng phải quên đi\r\nMà tim ơi sao mềm yếu quá vậy\r\nTrái tim em và dòng máu nóng để yêu anh\r\nGiấc mơ ơi ở lại bên tôi đừng tan nhanh\r\nNgày mai thức giấc thấy giữa lồng ngực\r\nLà hình bóng ấy\r\nNắm tay em đừng để em đi đừng để em đi\r\nLỡ sinh ra là để yêu nhau chẳng rời xa đâu\r\nBình yên ở đây ở đây chẳng đâu xa vời\r\nTrái tim em và dòng máu nóng để yêu anh\r\nGiấc mơ ơi ở lại bên tôi đừng tan nhanh\r\nNgày mai thức giấc thấy giữa lồng ngực\r\nLà hình bóng ấy (là hình bóng ấy)\r\nNắm tay em đừng để em đi đừng để em đi\r\nLỡ sinh ra là để yêu nhau chẳng rời xa đâu\r\nBình yên ở đây ở đây chẳng thể rời xa\r\nCho em gần anh thêm chút nữa'),
(2, 2, 'Lệ Quyên', 'Đêm qua em mơ thấy anh mang mùa xuân yêu thương dịu êm\r\nCùng điệu nhạc chất ngất, hòa theo tiếng trái tim em rộn lên\r\nCầm bàn tay, anh nói những lời ân ái mặn nồng\r\nThời gian ngưng mãi cho hoa lá khoe màu\r\nKhi ban mai đánh thức giấc mơ hồng đêm qua em đã mơ\r\nNgười giờ này đã đến một nơi rất xa xăm em còn đây\r\nBờ mi em hoen nước mắt vì tình yêu tan vỡ\r\nBiết khi nào anh như giấc mơ ngày qua\r\nLòng em luôn khao khát nhớ mong người ơi anh biết chăng?\r\nChìm đắm không gian lặng im ngàn vì sao vụt tắt\r\nThuyền đã sang ngang làm cho con sóng không xô về bờ\r\nNgày đó đắm say vì sao anh quên bao câu ca\r\nCùng mùa xuân thắm tươi ước hẹn tình đầu môi hôn thay lời yêu\r\nLạc bước cô đơn mình em một mùa đông giá băng\r\nLạnh buốt môi em nhẹ run run hát câu ca ngày xưa\r\nChỉ biết mất anh là đau thương dù còn vấn vương\r\nEm sẽ tin giấc mơ có thật\r\nEm chờ anh\r\nHuh-hoh, huh-hoh, hoh\r\nKhi ban mai đánh thức giấc mơ hồng đêm qua em đã mơ\r\nNgười giờ này đã đến một nơi rất xa xăm em còn đây\r\nBờ mi em hoen nước mắt vì tình yêu tan vỡ\r\nBiết khi nào anh như giấc mơ ngày qua\r\nLòng em luôn khao khát nhớ mong người ơi anh biết chăng\r\nChìm đắm không gian lặng im ngàn vì sao vụt tắt\r\nThuyền đã sang ngang làm cho con sóng không xô về bờ\r\nNgày đó đắm say vì sao anh quên bao câu ca\r\nCùng mùa xuân thắm tươi ước hẹn tình đầu môi hôn thay lời yêu\r\nLạc bước cô đơn mình em một mùa đông giá băng\r\nLạnh buốt môi em nhẹ run run hát câu ca ngày xưa\r\nChỉ biết mất anh là đau thương dù còn vấn vương\r\nEm sẽ tin giấc mơ có thật\r\nChìm đắm không gian lặng im ngàn vì sao vụt tắt\r\nThuyền đã sang ngang làm cho con sóng không xô về bờ\r\nNgày đó đắm say vì sao anh quên bao câu ca\r\nCùng mùa xuân thắm tươi ước hẹn tình đầu môi hôn thay lời yêu\r\nLạc bước cô đơn mình em một mùa đông giá băng\r\nLạnh buốt môi em nhẹ run run hát câu ca ngày xưa\r\nChỉ biết mất anh là đau thương dù còn vấn vương\r\nEm sẽ tin giấc mơ có thật\r\nEm chờ anh\r\nHuh-hoh, huh-hoh, hoh\r\nEm chờ anh'),
(3, 4, 'Phan Mạnh Quỳnh', 'Nước mắt em đang rơi trên những ngón tay\r\nNước mắt em mang nỗi nhớ nỗi đắng cay\r\nKhi những yêu thương em trao cho ai tan thành mây như hôm nay\r\nBối rối tôi đang bên em tai lắng nghe\r\nMuốn giữ đôi vai đang run trong tái tê\r\nMuốn nói quên anh ta đi em nhé sao phải mãi nặng nề\r\nTình yêu xưa đến nay là cơn lốc xoay\r\nDù ai cũng hay mà trong phút giây\r\nChấp nhận hết niềm vui dịu êm lẫn đọa đầy\r\nVà nơi tôi có khi điều đang giấu đi\r\nChẳng hề khác chi giọt nước trên mi em rơi\r\nKhi người mình yêu khóc\r\nNắng khắp lối nhưng mây giăng kín lòng\r\nMất người em say đắm hẳn là quá khổ tâm\r\nKhi người mình yêu khóc\r\nTôi cũng đớn đau tôi cũng đớn đau\r\nBao ngày dài trông ngóng chỉ còn biết hy vọng\r\nCó những cơn mưa ngăn ta không thấy nhau\r\nCó nỗi ưu tư riêng thôi ai biết đâu\r\nDẫu trái tim anh luôn yêu thương em như là mối tình đầu\r\nMuốn nắng theo đôi chân em trên bước đi\r\nMuốn thấy ai yêu em như anh nghĩ suy\r\nNhững yếu đuối mong qua nhanh mỗi khi không hạnh phúc điều gì\r\nTình yêu xưa đến nay là cơn lốc xoay\r\nDù ai cũng hay mà trong phút giây\r\nChấp nhận hết niềm vui dịu êm lẫn đọa đầy\r\nVà nơi tôi có khi điều đang giấu đi\r\nChẳng hề khác chi giọt nước trên mi em rơi\r\nKhi người mình yêu khóc\r\nNắng khắp lối nhưng mây giăng kín lòng\r\nMất người em say đắm hẳn là quá khổ tâm\r\nKhi người mình yêu khóc\r\nTôi cũng đớn đau tôi cũng đớn đau\r\nBao ngày dài trông ngóng chỉ còn biết hy vọng\r\nTình yêu xưa đến nay là cơn lốc xoay\r\nDù ai cũng hay mà trong phút giây\r\nChấp nhận hết niềm vui dịu êm lẫn đọa đầy\r\nVà nơi tôi có khi điều đang giấu đi\r\nChẳng hề khác chi giọt nước trên mi em rơi\r\nKhi người mình yêu khóc\r\nNắng khắp lối nhưng mây giăng kín lòng\r\nMất người em say đắm hẳn là quá khổ tâm\r\nKhi người mình yêu khóc\r\nTôi cũng đớn đau tôi cũng đớn đau\r\nBao ngày dài trông ngóng chỉ còn biết hy vọng.'),
(4, 1, 'Văn Mai Hương COVER', 'Cứ ngỡ suốt đời chẳng thể yêu một ai\r\nNhưng trái tim của em đã rung động lúc anh ngang chốn đây\r\nThắp sáng cả cuộc đời buồn tênh, chắc là\r\nTuyết đang tan khi gió xuân ghé đến, ghé đến\r\nĐược nhìn anh mỗi ban mai\r\nKhép môi nhẹ khi cánh hoa rơi ngoài xuân\r\nDù cho đôi lúc em hơi lo sợ\r\nRằng ngày mai đôi ta tan như khói mây\r\nEm vẫn nhớ tay anh\r\nĐã nắm tay em bước đi dưới mưa\r\nNiềm hạnh phúc trong em nhỏ bé vậy thôi\r\nNhưng trái tim của em vỡ tan rồi lúc anh xa chốn đây\r\nChớm tắt cả cuộc đời buồn tênh, chắc là\r\nTuyết đang rơi khi lá thu đã tàn khắp lỗi\r\nThật lòng em rất tham lam\r\nChỉ muốn cùng anh đến nơi xa thật xa\r\nCùng già đi với nếp nhăn chân đồi\r\nCùng cầm tay đôi ta phiêu du khắp nơi\r\nCho đến lúc tan đi vẫn ước bên nhau nếu có kiếp sau\r\nNiềm hạnh phúc trong em nhỏ bé vậy thôi\r\nĐiều em mong ước cho đến sau cùng\r\nLà được sống cùng anh\r\nDù điều đó có thể sẽ làm anh khóc\r\nVậy thôi em xin anh cứ đi đi\r\nVà hãy sống sống thật bình yên\r\nDù tên anh vẫn mãi ghi trong niềm nhớ\r\nKhi nhìn anh mỗi ngày\r\nKhép môi nhẹ khi hoa khẽ rơi ngoài sân\r\nLàm cho đôi lúc em hay lo sợ\r\nRằng ngày mai đôi ta tan như khói mây\r\nEm vẫn nhớ nắm tay\r\nMình nắm tay nhau bước đi dưới mưa\r\nNiềm hạnh phúc trong em nhỏ bé vậy thôi\r\nVà em sẽ yêu như mùa tuyết đầu tiên'),
(5, 3, 'Văn Mai Hương', '… Anh, những lúc say em hay thường nghĩ\r\nNếu ngày xưa ấy\r\nEm đến sớm hơn thì sao?\r\nChắc có lẽ ta đang vui với nhau\r\nChắc có lẽ ta đang xây với nhau\r\nMột tình yêu, một giấc mơ\r\n… Anh, đã mấy tháng trôi qua khi ta cách xa\r\nĐôi đường đôi ngả\r\nGiờ ta cũng sắp xa lạ\r\nMỗi đêm em nhớ về anh\r\nVào lúc 11 giờ 11 phút\r\nNhưng chắc anh chẳng nhớ em đâu\r\n… Vì em vẫn chỉ là người đến sau\r\nVẫn mang trong mình một ngàn nỗi đau\r\nVà có lẽ chắc giờ này\r\nAnh đang hạnh phúc bên người, oh\r\n… Vì em vẫn mãi là người đến sau\r\nMãi mang trong mình một ngàn nỗi đau\r\nMong anh sớm quên em\r\nNgười anh đã từng yêu thương\r\n… Anh, đã mấy tháng trôi qua khi ta cách xa\r\nĐôi đường đôi ngả\r\nGiờ ta cũng sắp xa lạ\r\nMỗi đêm em nhớ về anh\r\nVào lúc 11 giờ 11 phút\r\nNhưng chắc anh chẳng nhớ em đâu\r\n… Vì em vẫn chỉ là người đến sau\r\nMãi mang trong mình một ngàn nỗi đau\r\nVà có lẽ chắc giờ này\r\nAnh đang hạnh phúc bên người, hoh oh\r\n… Vì em vẫn mãi là người đến sau\r\nMãi mang trong mình một ngàn nỗi đau\r\nMong anh sớm quên em\r\nNgười anh đã từng yêu thương\r\n… Trong tình yêu có lẽ ai yêu hơn\r\nSẽ là người tổn thương nhiều hơn\r\nSẽ lâu lành hơn cũng như mất nhiều năm hơn để quên đi\r\n… Nhưng vì do quá yêu\r\nNên càng hạnh phúc lại càng thấy nâng niu\r\nKỷ niệm em xin giữ, còn người hãy cứ đi đi, hoh\r\n… Vì sao anh nỡ làm tim em nát tan?\r\nĐến đây vội vàng rồi lại dở dang\r\nTình yêu cứ ngỡ dịu dàng\r\nBỗng dưng lại hóa bẽ bàng, oh hoh\r\n… Vì em vẫn mãi là người đến sau (oh huh)\r\nMãi mang trong mình một ngàn nỗi đau\r\nMong anh sớm quên em\r\nNgười anh đã từng yêu thương\r\n… Mong anh sớm quên em\r\nNgười anh đã từng yêu thương');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `artist` varchar(255) NOT NULL,
  `release_date` date DEFAULT NULL,
  `sheet_music` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `release_date`, `sheet_music`) VALUES
(1, 'Như mùa tuyết đầu tiên (I will go to you like the first snow)', 'Văn Mai Hương COVER', '2020-05-13', NULL),
(2, 'Giấc mơ có thật', 'Lệ Quyên', '2014-05-07', NULL),
(3, 'Một ngàn nỗi đau', 'Văn Mai Hương', '2022-06-23', NULL),
(4, 'Khi người mình yêu khóc', 'Phan Mạnh Quỳnh', '2016-02-02', NULL),
(5, 'Cho em gần anh thêm chút nữa', 'Hương Tràm', '2017-07-31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chords`
--
ALTER TABLE `chords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lyrics`
--
ALTER TABLE `lyrics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `song_id` (`song_id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chords`
--
ALTER TABLE `chords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `lyrics`
--
ALTER TABLE `lyrics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lyrics`
--
ALTER TABLE `lyrics`
  ADD CONSTRAINT `lyrics_ibfk_1` FOREIGN KEY (`song_id`) REFERENCES `songs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
