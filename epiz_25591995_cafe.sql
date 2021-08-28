-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: sql200.byetcluster.com
-- Üretim Zamanı: 18 May 2020, 18:38:44
-- Sunucu sürümü: 5.6.47-87.0
-- PHP Sürümü: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `epiz_25591995_cafe`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `anasayfa`
--

CREATE TABLE `anasayfa` (
  `id` int(11) NOT NULL,
  `foto` char(50) COLLATE utf8_turkish_ci NOT NULL,
  `ustBaslik` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ustIcerik` varchar(6000) COLLATE utf8_turkish_ci NOT NULL,
  `link` char(50) COLLATE utf8_turkish_ci NOT NULL,
  `altBaslik` char(250) COLLATE utf8_turkish_ci NOT NULL,
  `altIcerik` varchar(6000) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `anasayfa`
--

INSERT INTO `anasayfa` (`id`, `foto`, `ustBaslik`, `ustIcerik`, `link`, `altBaslik`, `altIcerik`) VALUES
(1, 'y.jpg', 'KALEIDOSCOPE CAFE & BOOKSTORE', '<p>Kitap okumanın sağlığa olan etkisini hiç düşündünüz mü? Sıkça kitap okuyan insanların beyin sağlığı daha uzun süre korunur. Beyinde bulunan uyarıcılar sayesinde kitap okuyan kişilerde, stresin azaldığı da bilinen bir gerçektir. Aynı zamanda alzheimer riskini de azaltan kitap okuma eylemi, size hayatta pek çok kolaylık sağlayacaktır.</p>', 'Sizin için', 'Sizin için', '<p>Kitap okuyabileceğiniz, kitaplarla dolu mekanda huzurla kahvenizi içebileceğiniz, gürültüden ve kalabalıktan uzak kitap okunacak kafeler listesini sizlere sunmaktan mutluluk duyarız.</p>');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `id` int(11) NOT NULL,
  `foto` char(50) COLLATE utf8_turkish_ci NOT NULL,
  `ustBaslik` char(250) COLLATE utf8_turkish_ci NOT NULL,
  `baslik` char(250) COLLATE utf8_turkish_ci NOT NULL,
  `icerik` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`id`, `foto`, `ustBaslik`, `baslik`, `icerik`) VALUES
(1, 't.jpg', 'KALEIDOSCOPE CAFE & BOOKSTORE', 'Kafemiz Hakkında', '<p>Bir kahve içimlik de olsa Kaleidoscope’a muhakkak uğramalısınız. Ahşap dekorları ile ruhunuzu dinlendiren iç mekanı, kafenin önündeki minik bahçe tamamlıyor. Sıcak ve soğuk içecekler de bulabileceğiniz Kaleidoscope’da her ay düzenlenen edebi sohbetler ve imza günleri de kitapseverlerin ilgisini çeken detaylardandır. Kitabını alıp gelenler ve biraz mekan farklılığı isteyip sınavlarına çalışmak isteyenler için ideal ve popüler bir mekan olan Kaleidoscope, sizleri bekliyor olacak..</p>');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `iletisim`
--

CREATE TABLE `iletisim` (
  `id` int(11) NOT NULL,
  `ad` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `mesaj` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

CREATE TABLE `kullanicilar` (
  `id` int(11) NOT NULL,
  `kadi` char(50) NOT NULL,
  `parola` char(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`id`, `kadi`, `parola`) VALUES
(18, 'admin', '105a9a2d46f64e147097c986076d2164'),
(16, 'ceren', '105a9a2d46f64e147097c986076d2164'),
(15, 'esma', '105a9a2d46f64e147097c986076d2164');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `magaza`
--

CREATE TABLE `magaza` (
  `id` int(11) NOT NULL,
  `ustBaslik` char(50) NOT NULL DEFAULT '0',
  `anaBaslik` varchar(500) NOT NULL DEFAULT '0',
  `adres` char(250) NOT NULL DEFAULT '0',
  `telefon` char(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `magaza`
--

INSERT INTO `magaza` (`id`, `ustBaslik`, `anaBaslik`, `adres`, `telefon`) VALUES
(1, 'COME ON IN', 'Çalışma Saatleri', '<p><br><i>Kaleidoscope Bookstore&amp;Cafe;</i></p>', '(312) 546-5378');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `magazasaat`
--

CREATE TABLE `magazasaat` (
  `id` int(11) NOT NULL,
  `gun` char(50) NOT NULL,
  `saat` char(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `magazasaat`
--

INSERT INTO `magazasaat` (`id`, `gun`, `saat`) VALUES
(1, 'Pazartesi', '08:00 - 20:00'),
(2, 'Salı', '08:00 - 20:00'),
(3, 'Çarşamba', '08:00 - 20:00'),
(4, 'Perşembe', '08:00 - 20:00'),
(5, 'Cuma', '08:00 - 20:00'),
(6, 'Cumartesi', 'Kapalı'),
(7, 'Pazar', 'Kapalı');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunler`
--

CREATE TABLE `urunler` (
  `id` int(11) NOT NULL,
  `foto` char(50) COLLATE utf8_turkish_ci NOT NULL,
  `baslik` char(250) COLLATE utf8_turkish_ci NOT NULL,
  `ustBaslik` char(250) COLLATE utf8_turkish_ci NOT NULL,
  `icerik` text COLLATE utf8_turkish_ci NOT NULL,
  `aktif` tinyint(4) NOT NULL,
  `sira` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urunler`
--

INSERT INTO `urunler` (`id`, `foto`, `baslik`, `ustBaslik`, `icerik`, `aktif`, `sira`) VALUES
(2, '4.jpg', 'Maskarpon Tiramisu', 'KALEIDOSCOPE CAFE & BOOKSTORE', 'Her ne kadar tiramisularıyla öne çıkan bir mekan gibi görünse de Maskarpon Tiramisu‘nun San Sebastian cheesecake’leri de kulaktan kulağa yayılarak ün salmış durumda. Üstelik nutella ve meyvelerle süslenmiş bir halde de yiyebilirsiniz.', 1, 400),
(1, '2.jpg', 'Big Chefs', 'KALEIDOSCOPE CAFE & BOOKSTORE', '<p>Mutfağıyla her kategoride öne çıkmayı başaran Big Chefs, San Sebastian cheesecake sevenlerin de tercihi oluyor. Her şubesinde bulabileceğiniz creamy cheesecake’i mutlaka denemelisiniz.</p>', 1, 350),
(9, '5.jpg', 'Karemel Lab Bakery & Patisserie', 'KALEIDOSCOPE CAFE & BOOKSTORE', 'Karemel adeta birçok tatlıyı aynı anda ve lezzetli bir şekilde bulabileceğiniz bir tatlıcı. Gün içinde müşterilerine salata, gevrek, börek ve diyetik kurabiyeler sunarken tatlı tutkunları ve San Sebastian denemek isteyenlerinde uğrak noktası.', 1, 300),
(8, '3.jpg', 'Clorophilla', 'KALEIDOSCOPE CAFE & BOOKSTORE', 'Levent Kanyon’da bulunan Clorophilla lezzetli yemeklerin sonunda muhteşem tatlılar vaadediyor. O tatlılardan biri de elbette San Sebastian cheesecake. Burada yiyeceğiniz cheesecake frambuaz sosla servis ediliyor.', 1, 300),
(7, '1.jpg', 'Rafine Espresso Bar', 'KALEIDOSCOPE CAFE & BOOKSTORE', '2014 yılında müşterilerine farklı metodlar sunan 3. nesil bir kahveci olarak kapılarını açan Rafine, aynı özeni kahvelerinin yanına çok yakışan tatlılarına da gösteriyor. Kahve ve tatlı düşkünlerinin San Sebastian cheesecake için uğrayabilecekleri ilk nokta olmaya aday. Bir süre önce Vedat Milor’ün mekanı ziyaret etmesi nedeniyle ünü giderek artmakta.', 1, 300),
(10, 'res1.jpg', 'Espresso', 'KALEIDOSCOPE CAFE & BOOKSTORE', '<p>Espresso, kafein ihtiyacımızı gideren hızlı İtalyan cevabıdır. “Espresso” kelimesinin insanlara verdiği iletiyi şu şekilde tanımlayabiliriz, “bu içecek hakkında bilmeniz gereken en önemli şey, onun hızlı olduğudur”. Bu kesinlikle doğru, espresso hızlı yapılabilen ve hızlı tüketilen, kafein hazzı veren bir kahvedir.</p>', 1, 300),
(11, 'res2.jpg', 'Classic Coffe', 'KALEIDOSCOPE CAFE & BOOKSTORE', 'Temelde espresso ve filtre kahve aynı konseptlerdir. Ana yapıları aynıdır: öğütülmüş kahve zeminine sıcak su eklenir, su kahve zemininden filtrelenerek süzülür ve bir kaba boşalır.', 1, 400),
(12, 'res3.jpg', 'Cold Coffee', 'KALEIDOSCOPE CAFE & BOOKSTORE', 'Soğuk kahve hem serinletici hem de tok tutucu olmasıyla yaz aylarında çok sık tüketilen lezzetlerden biri.', 1, 300),
(13, 'res4.jpg', 'Ice Cream', 'KALEIDOSCOPE CAFE & BOOKSTORE', 'Dondurulmuş meyve püresi şeklinde sunulan \"sorbe\" dondurmalar ise şeker ve suyun mevsimlik meyvelerle belli oranlarda karıştırılmasıyla yapılıyor ve içinde süt bulunmuyor.', 1, 300),
(14, 'res5.jpg', 'Kinoalı Meyveli Cup', 'KALEIDOSCOPE CAFE & BOOKSTORE', 'Yaz meyvelerini lezzetli tatlılara ekleyerek keyfi iki katına çıkartmak isteyenler için pratik meyveli tatlı tarifleri derledik.', 1, 300);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `anasayfa`
--
ALTER TABLE `anasayfa`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `hakkimizda`
--
ALTER TABLE `hakkimizda`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `iletisim`
--
ALTER TABLE `iletisim`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kullanicilar`
--
ALTER TABLE `kullanicilar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `magaza`
--
ALTER TABLE `magaza`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `magazasaat`
--
ALTER TABLE `magazasaat`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `urunler`
--
ALTER TABLE `urunler`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `anasayfa`
--
ALTER TABLE `anasayfa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `hakkimizda`
--
ALTER TABLE `hakkimizda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `iletisim`
--
ALTER TABLE `iletisim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Tablo için AUTO_INCREMENT değeri `kullanicilar`
--
ALTER TABLE `kullanicilar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Tablo için AUTO_INCREMENT değeri `magaza`
--
ALTER TABLE `magaza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `magazasaat`
--
ALTER TABLE `magazasaat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `urunler`
--
ALTER TABLE `urunler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
