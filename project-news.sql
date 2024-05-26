-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th5 26, 2024 lúc 01:45 PM
-- Phiên bản máy phục vụ: 8.0.30
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `project-news`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Bài viết', 'bai-viet', '2024-05-25 15:42:02', '2024-05-25 15:42:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `infos`
--

CREATE TABLE `infos` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `infos`
--

INSERT INTO `infos` (`id`, `name`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, '<p><a href=\"https://sunwin.fans/\"><strong>Tải Sunwin</strong></a> – Nơi Bắt Đầu Cho Cuộc Hành Trình Chiến Thắng</p>', NULL, 1, '2024-05-25 15:46:39', '2024-05-25 15:46:39'),
(2, '<p>Cảm nhận sức sống mới từ âm nhạc tại <a href=\"https://hitclub.gy/\"><strong>Tải Hit Club</strong></a></p>', NULL, 1, '2024-05-25 15:46:59', '2024-05-25 15:46:59'),
(3, '<p><a href=\"https://go88.as/\"><strong>Play Go88</strong></a> – Sự lựa chọn hoàn hảo cho người chơi trực tuyến</p>', NULL, 1, '2024-05-25 15:47:09', '2024-05-25 15:47:09'),
(4, '<p><a href=\"https://thabet.help/\"><strong>Thabet</strong></a>: Casino Trực Tuyến An Toàn và Tin Cậy!</p>', NULL, 1, '2024-05-25 15:47:17', '2024-05-25 15:47:17'),
(5, '<p><a href=\"https://fun88.beauty/\"><strong>Fun88</strong></a> – Casino Trực Tuyến Cho Những Phút Giây Giải Trí Hoàn Hảo</p>', NULL, 1, '2024-05-25 15:47:26', '2024-05-25 15:47:26'),
(6, '<p><a href=\"https://kub.et/\"><strong>Ku Bet</strong></a>: Nơi hội tụ của niềm vui và cơ hội đổi đời tại KUBET88</p>', NULL, 1, '2024-05-25 15:47:34', '2024-05-25 15:47:34'),
(7, '<p><a href=\"https://jun88.com.de/\"><strong>Jun88</strong></a> – Chinh Phục Thách Thức, Rinh Ngay Thưởng Lớn!</p>', NULL, 1, '2024-05-25 15:47:43', '2024-05-25 15:47:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_05_13_180659_create_categories_table', 1),
(6, '2024_05_13_180728_create_posts_table', 1),
(7, '2024_05_25_122546_create_infos_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `slug`, `image`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 'Cùng trải nghiệm đá gà cựa sắt chất lượng tại Jun88', 'cung-trai-nghiem-da-ga-cua-sat-chat-luong-tai-jun88', 'images/posts//1bJ1KYEqaAsKoqQWupopgftySIJbV7SDzUqzHS1X.png', '<p>Đá gà cựa sắt là một trò chơi đặc trưng của vùng miền Nam Việt Nam, là một hình thức giải trí truyền thống có từ lâu đời. Với sự phát triển của công nghệ, trải nghiệm đá gà cựa sắt ngày nay không chỉ dừng lại ở các sân đá gà truyền thống mà còn được nâng cấp với sự hiện đại hóa, chất lượng cao tại <a href=\"https://jun88games.com/\"><strong>Jun88</strong></a>.</p><h2><strong>Giới thiệu về đá gà cựa sắt</strong></h2><h3><strong>Khái niệm đá gà cựa sắt</strong></h3><p>Đá gà cựa sắt là một hình thức cá cược truyền thống phổ biến ở nhiều nước trên thế giới, đặc biệt là ở Việt Nam. Trong trận đấu đá gà, người chơi sẽ đặt cược vào con gà mình tin sẽ chiến thắng. Trận đấu diễn ra giữa hai con gà mái được huấn luyện kỹ lưỡng, thường có móng vuốt sắc nhọn (cựa sắt) để chiến đấu.</p><h3><strong>Lịch sử hình thành</strong></h3><p>Đá gà cựa sắt có nguồn gốc từ lâu đời và đã trở thành một phần không thể thiếu trong văn hóa dân gian của nhiều quốc gia. Tại Việt Nam, hoạt động đá gà cựa sắt bắt nguồn từ thời kỳ xưa và ngày nay vẫn thu hút rất đông người tham gia.</p><h3><strong>Sự phát triển hiện đại</strong></h3><p>Với sự phát triển của công nghệ, môn đá gà cựa sắt ngày nay đã được nâng cấp với cơ sở vật chất hiện đại, hệ thống an ninh đảm bảo và các giải đấu chuyên nghiệp. Điều này giúp nâng cao trải nghiệm cho người chơi và tạo ra môi trường cạnh tranh lành mạnh.</p><h2><strong>Ưu điểm của đá gà cựa sắt</strong></h2><h3><strong>Tính cạnh tranh cao</strong></h3><p>Đá gà cựa sắt thu hút người chơi bởi tính cạnh tranh cao. Trận đấu diễn ra nhanh chóng, gay cấn và chỉ sau vài phút, người chơi có thể biết kết quả cuối cùng. Điều này tạo ra cảm giác hồi hộp, kích thích cho người chơi.</p><h3><strong>Giải trí, hấp dẫn</strong></h3><p>&nbsp;</p><figure class=\"image\"><img src=\"https://tructiepdagathomo.top/wp-content/uploads/2024/05/Screenshot-2024-05-23-at-18.05.56.png\" alt=\"\" srcset=\"https://tructiepdagathomo.top/wp-content/uploads/2024/05/Screenshot-2024-05-23-at-18.05.56.png 1196w, https://tructiepdagathomo.top/wp-content/uploads/2024/05/Screenshot-2024-05-23-at-18.05.56-300x179.png 300w, https://tructiepdagathomo.top/wp-content/uploads/2024/05/Screenshot-2024-05-23-at-18.05.56-1024x610.png 1024w, https://tructiepdagathomo.top/wp-content/uploads/2024/05/Screenshot-2024-05-23-at-18.05.56-768x457.png 768w\" sizes=\"100vw\" width=\"1196\"></figure><p>Không chỉ là một hình thức cá cược, đá gà cựa sắt còn mang đến giây phút giải trí thú vị cho khán giả. Việc theo dõi các trận đấu đá gà, cổ vũ cho đội gà yêu thích cũng là một trải nghiệm đầy sôi động và hào hứng.</p><h3><strong>Đòi hỏi kỹ thuật cao</strong></h3><p>Để tham gia đá gà cựa sắt, người chơi cần phải nắm vững các kỹ thuật huấn luyện gà, biết cách chọn gà, cách đặt cược và theo dõi trận đấu một cách thông minh. Điều này đòi hỏi người chơi phải có kiến thức và kỹ năng cụ thể trong lĩnh vực này.</p><h2><strong>Jun88 – Địa chỉ đá gà cựa sắt uy tín</strong></h2><h3><strong>Giới thiệu về Jun88</strong></h3><p>&nbsp;<a href=\"https://jun88games.com/da-ga-jun88/\"><strong>Đá gà Jun88</strong></a> là một trong những địa chỉ uy tín và được nhiều người chơi đá gà cựa sắt tin tưởng. Với nền tảng hoạt động chuyên nghiệp, Jun88 cam kết mang đến trải nghiệm tốt nhất cho người chơi.</p><h3><strong>Cơ sở vật chất hiện đại</strong></h3><p>Jun88 sở hữu cơ sở vật chất hiện đại, đảm bảo an toàn và công bằng cho tất cả các trận đấu. Hệ thống camera giám sát, ánh sáng, âm thanh được đầu tư kỹ lưỡng để tạo ra không gian thi đấu chuyên nghiệp.</p><h3><strong>Đội ngũ huấn luyện viên chuyên nghiệp</strong></h3><p>Tại Jun88, người chơi sẽ được hướng dẫn bởi đội ngũ huấn luyện viên giàu kinh nghiệm, am hiểu về đá gà cựa sắt. Họ sẽ chia sẻ những kỹ thuật, chiến thuật cần thiết để giúp người chơi có được hiệu quả tối đa trong mỗi trận đấu.</p><h2><strong>Trải nghiệm đá gà cựa sắt tại Jun88</strong></h2><h3><strong>Không gian thi đấu chuyên nghiệp</strong></h3><p>Jun88 mang đến không gian thi đấu chuyên nghiệp, được thiết kế theo tiêu chuẩn quốc tế. Đảm bảo mọi trận đấu diễn ra công bằng, minh bạch và hấp dẫn cho người chơi cũng như khán giả.</p><h3><strong>Giải đấu thường xuyên</strong></h3><p>Tại Jun88, các giải đấu đá gà cựa sắt được tổ chức thường xuyên, thu hút sự tham gia của đông đảo người chơi. Điều này giúp tạo ra sân chơi cạnh tranh, kích thích tinh thần thi đấu và nâng cao kỹ năng của người chơi.</p><h3><strong>Dịch vụ chuyên nghiệp</strong></h3><p>Ngoài việc tổ chức các trận đấu, Jun88 còn cung cấp các dịch vụ hỗ trợ chuyên nghiệp như tư vấn, hướng dẫn, chăm sóc khách hàng 24/7. Đội ngũ nhân viên tận tâm và giàu kinh nghiệm sẽ đảm bảo mọi nhu cầu của người chơi được đáp ứng tốt nhất.</p><h2><strong>Hướng dẫn tham gia đá gà cựa sắt</strong></h2><h3><strong>Đăng ký tham gia</strong></h3><p>Để tham gia đá gà tại Jun88, người chơi cần truy cập vào trang web chính thức của Jun88, đăng ký tài khoản và nạp tiền vào ví cược. Sau đó, họ có thể lựa chọn trận đấu, đặt cược và theo dõi kết quả trực tiếp.</p><h3><strong>Chuẩn bị công phu</strong></h3><p>Trước khi tham gia đá gà cựa sắt, người chơi cần chuẩn bị kỹ lưỡng về kiến thức về môn thể thao này, cũng như rèn luyện kỹ năng cược và theo dõi trận đấu. Điều này giúp họ có cái nhìn tổng quan và đưa ra quyết định đúng đắn.</p><h3><strong>Quy tắc thi đấu</strong></h3><p>Trong đá gà cựa sắt, có những quy tắc cơ bản mà người chơi cần phải nắm vững như quy định về cược, về thời gian thi đấu, về cách tính điểm và kết quả cuối cùng. Việc hiểu rõ những quy định này sẽ giúp người chơi tham gia một cách tự tin và hiệu quả.</p><h2><strong>Kết luận</strong></h2><p>Trải nghiệm đá gà cựa sắt tại Jun88 không chỉ mang lại những giây phút giải trí sôi động mà còn giúp người chơi rèn luyện kỹ năng, tinh thần cạnh tranh và kiến thức về môn thể thao này. Với cơ sở vật chất hiện đại, đội ngũ huấn luyện viên chuyên nghiệp và dịch vụ chăm sóc khách hàng tận tâm, Jun88 là địa chỉ đáng tin cậy cho những ai yêu thích đá gà cựa sắt. Hãy tham gia ngay để khám phá và trải nghiệm những điều thú vị tại đây!</p>', '2024-05-25 15:49:34', '2024-05-25 15:49:34'),
(2, 1, 'Xem Đá Gà Trực Tuyến Mới Nhất Tại Alo789.Work', 'xem-da-ga-truc-tuyen-moi-nhat-tai-alo789work', 'images/posts//jbgku5XRmbBA5YBXvbNB43Ix4p1llpqIEZAXfMkI.jpg', '<p><strong>Đá gà trực tuyến tại Alo789 được đông đảo người chơi ưa thích</strong></p><p><a href=\"https://alo789.work/\"><strong>Xem đá gà trực tuyến</strong></a> mới nhất tại Alo789.work với những trận đấu siêu kinh điển nhận được sự quan tâm của đông đảo mọi người. Hứa hẹn sẽ mang đến cho cảm giác chân thật như ở trên đấu trường nảy lửa đầy kịch tính và hấp dẫn dành cho bạn.</p><h2><strong>Xem đá gà trực tuyến là gì?</strong></h2><p>Cùng với sự phát triển của công nghệ thông tin, nhất là trong lĩnh vực trò chơi điện tử việc <strong>xem đá gà trực tuyến</strong> xuất hiện ngày càng nhiều. Đá gà online được nhiều người lựa chọn bởi sự nhanh gọn, không mất quá nhiều thời gian tham như đá gà truyền thống. Chính vì thế hình thức này trở nên phổ biến ở khu vực Châu Á, trong đó có Việt Nam.</p><p><strong>Xem đá gà trực tuyến</strong> là người xem được thưởng thức các trận đấu trực tiếp trên mạng thông qua các trang website truyền phát ở những giải đấu gà chiến lớn ở trong và ngoài nước.Có thể nói rằng, đá gà online ra đời giúp thỏa mãn nhu cầu của rất nhiều người chơi. Đá gà truyền thống yêu cầu phải có thời gian chơi khá lâu, và người chơi sẽ phải tập chung tại sân thi đấu. Thay vào đó đá gà người chơi có thể <strong>xem đá gà trực tuyến</strong> qua mạng chỉ cần ngồi tại nhà và có đường truyền mạng đã có thể bắt các nhịp cầu đỉnh cao.</p><h2><strong>Xem đá gà trực tuyến mới nhất tại Alo789</strong></h2><p><a href=\"https://alo789.work/da-ga-truc-tiep/\"><strong>Đá gà trực tuyến tại Alo789</strong></a> đang được đông đảo người chơi ưa thích trong thời gian trở lại đây. Bởi sân chơi này cung cấp những dịch vụ tốt nhất dành cho người chơi. Bạn sẽ được hòa nhập giải trí trực tiếp các trận đá gà tại đấu trường quốc tế.&nbsp;</p><p>Ngoài ra Alo789 còn cam kết bảo mật thông tin của người chơi. Từ đó giúp bạn cảm thấy an toàn hơn trong quá trình tham gia cá cược. Đặc biệt với hệ thống chăm sóc khách hàng toàn năng của bộ phận tư vấn viên, người chơi sẽ không phải lo lắng khi gặp thắc mắc trong quá trình chơi.</p><figure class=\"image\"><img src=\"https://tructiepdagathomo.top/wp-content/uploads/2024/04/Alo789-co-rat-nhieu-hinh-thuc-da-ga.jpg\" alt=\"Đá gà trực tuyến tại Alo789 được đông đảo người chơi ưa thích\" srcset=\"https://tructiepdagathomo.top/wp-content/uploads/2024/04/Alo789-co-rat-nhieu-hinh-thuc-da-ga.jpg 800w, https://tructiepdagathomo.top/wp-content/uploads/2024/04/Alo789-co-rat-nhieu-hinh-thuc-da-ga-300x150.jpg 300w, https://tructiepdagathomo.top/wp-content/uploads/2024/04/Alo789-co-rat-nhieu-hinh-thuc-da-ga-768x384.jpg 768w\" sizes=\"100vw\" width=\"800\"></figure><p><strong>Đá gà trực tuyến tại Alo789 được đông đảo người chơi ưa thích</strong></p><h2><strong>Những ưu điểm khi xem đá gà trực tuyến tân thủ nên biết</strong></h2><p><strong>Xem đá gà trực tuyến</strong> có rất nhiều ưu điểm hơn so với đá gà kiểu truyền thống, cụ thể:</p><h3><strong>Dễ dàng tham gia</strong></h3><p>Nếu như muốn xem đá gà truyền thống bạn sẽ phải đến tận khu vực thi đấu để xem và tham gia đặt cực. Thì khi <strong>xem đá gà trực tuyến </strong>người chơi chỉ cần một chiếc smartphone hoặc các thiết bị điện tử như máy tính, tivi,… Chỉ cần thiết bị đó được kết nối internet là có thể tham gia bất kỳ lúc nào.</p><p>Ngoài ra, những trận đá gà được website phát sóng sử dụng hình ảnh full HD vô cùng sắc nét cùng đường truyền mạng ổn định. Mang đến cho người chơi những trải nghiệm vô cùng mượt mà và chân thực.</p><h3><strong>Được thưởng thức các trận đấu hay, hấp dẫn</strong></h3><p>Alo789 là nhà cái có quy mô số 1 Châu Á về chương trình đá gà. Chính vì thế đơn vị này đã ký hợp đồng liên kết liên kết với những đấu trường gà nổi tiếng trên thế giới. Nhờ đó, hội viên sẽ được theo dõi những trận đấu đá gà trực tiếp thomo, đá gà cựa sắt, hay đá gà cựa dao&nbsp; … Ngoài ra, tỷ lệ cá cược của sân chơi này cũng vô cùng đa dạng và rất hấp dẫn với rất nhiều chương trình ưu đãi thu hút đông đảo người chơi đến với nhà cái.</p><h3><strong>Đảm bảo an toàn tuyệt đối</strong></h3><p>Một trong những ưu điểm của đá gà trực tuyến là tất cả thao tác của người chơi sẽ được bảo mật tuyệt đối. Anh em có thể thoải mái tham gia mà không sợ cơ quan chính quyền dòm ngó. Tuy nhiên để có được điều này bạn cần chọn cho mình địa chỉ nhà cái uy tín đáng tin cậy để tham gia.</p><h2><strong>Các hình thức đá gà mới nhất hiện nay</strong></h2><p>Tai Alo789 hiện nay có rất nhiều hình đá gà trực tuyến, cụ thể:</p><ul><li>Đá gà Thomo: Được rất nhiều anh em lựa chọn bởi đặc tính to khỏe, hệ thống cựa chiến cực đỉnh cao. Những màn so tài máu lửa từ những con gà chiến luôn diễn ra vô cùng máu lửa và kịch tính.</li><li>Đá gà nòi: Gà nòi tuy sức chiến đấu không cao những lại có thân hình nhanh nhẹn cùng lối đánh quy củ. Chính vì thế khi xem khiến người chơi vô cùng hồi hộp vì những tình huống siêu bất ngờ sảy ra.</li><li>Đá gà cựa dao: Đá gà cựa dao được nhiều dân chơi yêu thích bởi những chiến kê này được độ thêm bộ móng dao cực kỳ sắc nhọn có thể hạ gục đối phương nhanh gọn dứt khoát</li></ul><figure class=\"image\"><img src=\"https://tructiepdagathomo.top/wp-content/uploads/2024/04/Da-ga-truc-tuyen-tai-Alo789-duoc-dong-dao-nguoi-choi-ua-thich.jpg\" alt=\"Alo789 có rất nhiều hình thức đá gà\" srcset=\"https://tructiepdagathomo.top/wp-content/uploads/2024/04/Da-ga-truc-tuyen-tai-Alo789-duoc-dong-dao-nguoi-choi-ua-thich.jpg 800w, https://tructiepdagathomo.top/wp-content/uploads/2024/04/Da-ga-truc-tuyen-tai-Alo789-duoc-dong-dao-nguoi-choi-ua-thich-300x150.jpg 300w, https://tructiepdagathomo.top/wp-content/uploads/2024/04/Da-ga-truc-tuyen-tai-Alo789-duoc-dong-dao-nguoi-choi-ua-thich-768x384.jpg 768w\" sizes=\"100vw\" width=\"800\"></figure><p><strong>Alo789 có rất nhiều hình thức đá gà</strong></p><h2><strong>Các lưu ý khi xem đá gà trực tuyến</strong></h2><p>Để trở thành một dân chơi gà chính hiệu có lợi nhuận cao trong những trận đá gà người chơi cần lưu ý như sau:</p><ul><li>Phân tích và xác định được rõ thời gian đặt cược: Không được nóng vội cược ngay mà hãy quan sát kỹ lối chơi của gà trước khi đưa ra quyết định.</li><li>Nắm rõ luật chơi đá gà: Nắm rõ luật chơi giúp bạn dễ dàng chiến thắng hơn.</li><li>Nhập chính xác thông tin khi đăng ký tham gia cuộc chiến: Đây là lưu ý rất quan trọng bởi khi tham gia cá cược người chơi sử dụng bằng tiền trực tiếp, nhập chính xác thông tin đăng ký giúp người chơi tránh được các rủi ro không đáng có.</li></ul><p>Trên đây là bài viết chia sẻ về<strong> xem đá gà trực tuyến </strong>mới nhất tại Alo789.work. Hy vọng qua những thông tin trên đã giúp bạn có thêm nhiều kiến thức và kinh nghiệm trước khi tham gia trò chơi này.&nbsp;</p>', '2024-05-25 15:50:32', '2024-05-25 15:50:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` tinyint NOT NULL DEFAULT '1',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1: active, 0: inactive',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(21, 'Admin', 'admin@gmail.com', NULL, '$2y$12$E0oVTQJQaNdXERTbWud4Ne17vEIMWwUs38gM9zlQMnvGsCqecJYBy', 1, 1, NULL, '2024-05-25 15:41:36', '2024-05-25 15:41:36');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `infos`
--
ALTER TABLE `infos`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `infos`
--
ALTER TABLE `infos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
