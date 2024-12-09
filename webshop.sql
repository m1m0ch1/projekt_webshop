-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Dec 06. 12:55
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `webshop`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `category` varchar(200) NOT NULL,
  `price` int(11) NOT NULL,
  `description` text NOT NULL,
  `pic` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- A tábla adatainak kiíratása `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `description`, `pic`) VALUES
(1, 'Hajszárító', 'Háztartási gép', 30000, 'A tökéletes szalonban megszokott frizura a vágyad? A neves Xiaomi által megálmodott hajszárítóval mindet játszi könnyedséggel érheted majd el. Elvarázsol gyengéd és kíméletes hajápolással. Az alaposan kidolgozott hajszárító nagyszerű jellemzőkkel büszkélkedhet, többek között ionizálás, hideg levegő és kétirányú forgás. A hajszárító motorja erős, és hosszú élettartamot kínál, teljesítményfelvétele pedig 1800 W. 2 sebességfokozat közül választhatod ki a frizurának leginkább megfelelőt, és 3 hőmérséklet-fokozat teszi lehetővé a legmegfelelőbb kiválasztását.\r\n\r\nA tökéletes szalonban megszokott frizura a vágyad? A neves Xiaomi által megálmodott hajszárítóval mindet játszi könnyedséggel érheted majd el. Elvarázsol gyengéd és kíméletes hajápolással. Az alaposan kidolgozott hajszárító nagyszerű jellemzőkkel büszkélkedhet, többek között ionizálás, hideg levegő és kétirányú forgás. A hajszárító motorja erős, és hosszú élettartamot kínál, teljesítményfelvétele pedig 1800 W. 2 sebességfokozat közül választhatod ki a frizurának leginkább megfelelőt, és 3 hőmérséklet-fokozat teszi lehetővé a legmegfelelőbb kiválasztását.', 'https://dummyimage.com/600x400/8a8a8a/000000'),
(2, 'Mosógép', 'Háztartási gép', 30000, 'A tökéletes szalonban megszokott frizura a vágyad? A neves Xiaomi által megálmodott hajszárítóval mindet játszi könnyedséggel érheted majd el. Elvarázsol gyengéd és kíméletes hajápolással. Az alaposan kidolgozott hajszárító nagyszerű jellemzőkkel büszkélkedhet, többek között ionizálás, hideg levegő és kétirányú forgás. A hajszárító motorja erős, és hosszú élettartamot kínál, teljesítményfelvétele pedig 1800 W. 2 sebességfokozat közül választhatod ki a frizurának leginkább megfelelőt, és 3 hőmérséklet-fokozat teszi lehetővé a legmegfelelőbb kiválasztását.\r\n\r\nA tökéletes szalonban megszokott frizura a vágyad? A neves Xiaomi által megálmodott hajszárítóval mindet játszi könnyedséggel érheted majd el. Elvarázsol gyengéd és kíméletes hajápolással. Az alaposan kidolgozott hajszárító nagyszerű jellemzőkkel büszkélkedhet, többek között ionizálás, hideg levegő és kétirányú forgás. A hajszárító motorja erős, és hosszú élettartamot kínál, teljesítményfelvétele pedig 1800 W. 2 sebességfokozat közül választhatod ki a frizurának leginkább megfelelőt, és 3 hőmérséklet-fokozat teszi lehetővé a legmegfelelőbb kiválasztását.', 'https://dummyimage.com/600x400/8a8a8a/000000'),
(3, 'Gép ház', 'Számítógép alkatrész', 30000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://dummyimage.com/600x400/8a8a8a/000000'),
(4, 'Billentyűzet', 'Számítógép kiegészítő', 20000, 'Teljesítmény és Gyorsaság\r\nMindössze 8 ms reakcióidő - a legjobb a nem mechanikus billentyűzetek között\r\nAnti-ghosting funkcióval felszerelve a precíz játékélményért\r\nOptimalizált leütési sebesség játékhoz és mindennapi használatra\r\nNincs szükség külön illesztőprogramra - plug and play\r\nCsendes és Kényelmes\r\nKifejezetten halk működésre tervezve\r\nKellemes, tompított hangzás\r\nKényelmes billentyűleütés - gondolva a kéz és csukló egészségére\r\nLenyűgöző Megjelenés\r\nSzínes RGB háttérvilágítás - igazi fényjáték\r\nTökéletes választás gamereknek és az élénk színek kedvelőinek\r\nA háttérvilágítás igény szerint kikapcsolható\r\nTartós és Könnyű\r\nVízálló kialakítás - védelem a kisebb balesetek ellen\r\nKönnyű súly a kényelmes hordozhatóságért\r\nSokoldalú Kompatibilitás\r\nHasználható PC-vel, Windows és Mac rendszerekkel\r\nPS4 konzollal is kompatibilis', 'https://dummyimage.com/600x400/999/fff'),
(5, 'Gaming Egér', 'Számítógép kiegészítő', 15000, 'Ergonomikus kialakítás a hosszabb használatért\r\nÁllítható DPI (800-16000) a precíz irányításért\r\nRGB világítás 16,8 millió színnel\r\nGombok programozhatók a személyre szabott játékélményhez', 'https://dummyimage.com/600x400/000/fff'),
(6, 'Monitor 27\" LED', 'Kijelzők', 80000, '27 hüvelykes Full HD kijelző\r\nIPS technológia éles színekhez\r\n75 Hz képfrissítés a zökkenőmentes vizuális élményért\r\nKiváló választás irodai és gaming használatra', 'https://dummyimage.com/600x400/222/ddd'),
(7, 'Mechanikus Billentyűzet', 'Számítógép kiegészítő', 35000, 'Mechanikus kapcsolók gyors reakcióidővel\r\nRGB világítás különböző beállításokkal\r\nNagy teherbírású fémváz\r\nKompatibilis Windows és Mac rendszerekkel', 'https://dummyimage.com/600x400/444/ccc'),
(8, 'Wi-Fi Router', 'Hálózat', 25000, 'Dual-band technológia (2.4GHz és 5GHz)\r\nTámogatja az AC1200 sebességet\r\nEgyszerű beállítás mobilalkalmazással\r\nOptimális lefedettség több eszköz számára', 'https://dummyimage.com/600x400/555/eee'),
(9, 'SSD 1TB', 'Tárolóeszközök', 35000, 'Gyors adatátvitel akár 550 MB/s sebességgel\r\nHosszú élettartam és energiatakarékos működés\r\nIdeális laptopokhoz és asztali PC-khez\r\nVékony és könnyű kialakítás', 'https://dummyimage.com/600x400/666/aaa'),
(10, 'Laptop Táska', 'Kiegészítők', 8000, '15,6 hüvelykes laptopokhoz tervezett\r\nVíztaszító anyagból készült\r\nTöbb rekesz dokumentumok és tartozékok számára\r\nKönnyű és kényelmes vállpánt', 'https://dummyimage.com/600x400/777/999'),
(11, 'USB-C Hub', 'Kiegészítők', 12000, '6 az 1-ben USB-C adapter\r\nHDMI, USB 3.0, SD kártyaolvasó, és Ethernet port\r\nKompakt és könnyen hordozható\r\nKompatibilis Windows, Mac és Android eszközökkel', 'https://dummyimage.com/600x400/888/777'),
(12, 'Webkamera Full HD', 'Számítógép kiegészítő', 18000, '1080p felbontás tiszta képminőséghez\r\nBeépített mikrofon zajszűréssel\r\nÁllítható szög és univerzális rögzítés\r\nIdeális videóhívásokhoz és streaminghez', 'https://dummyimage.com/600x400/999/666'),
(13, 'Bluetooth Fejhallgató', 'Hangtechnika', 22000, 'Zajszűrő technológia\r\nAkár 20 órás üzemidő\r\nKényelmes memóriahabos fülpárnák\r\nÖsszecsukható kialakítás a könnyű tárolás érdekében', 'https://dummyimage.com/600x400/111/fff'),
(14, 'Okosóra', 'Viselhető eszközök', 30000, 'Pulzusmérés, lépésszámlálás és alváskövetés\r\n5 napos akkumulátor-üzemidő\r\nÉrtesítések hívásokról és üzenetekről\r\nVízálló kialakítás (IP68)', 'https://dummyimage.com/600x400/222/fff'),
(15, 'VR Szemüveg', 'Gaming', 50000, 'Immerszív virtuális valóság élmény\r\nKényelmes párnázott fejpánt\r\nKompatibilis PC-vel és konzolokkal\r\nÁllítható lencsék a maximális kényelemért', 'https://dummyimage.com/600x400/333/ddd'),
(16, 'RGB Asztali Lámpa', 'Kiegészítők', 9000, 'Színes LED világítás különböző módokkal\r\nUSB-ről vagy hálózatról működtethető\r\nIdeális gamerek számára\r\nModern, minimalista dizájn', 'https://dummyimage.com/600x400/444/fff'),
(17, 'Okos Hangszóró', 'Hangtechnika', 25000, 'Beépített hangvezérlés\r\nKiváló hangminőség 360 fokos hangzással\r\nKompatibilis okos otthon rendszerekkel\r\nKompakt és stílusos megjelenés', 'https://dummyimage.com/600x400/555/aaa'),
(18, 'Hordozható SSD 512GB', 'Tárolóeszközök', 40000, 'Gyors adatátvitel USB 3.2 csatlakozással\r\nKompakt és ütésálló kialakítás\r\nIdeális utazáshoz és biztonsági mentéshez\r\nKompatibilis Windows, Mac és Android eszközökkel', 'https://dummyimage.com/600x400/666/999'),
(19, 'Fülhallgató Mikrofonos', 'Hangtechnika', 10000, 'Kiváló hangminőség mély basszussal\r\nBeépített mikrofon és hangerőszabályzó\r\nErgonomikus kialakítás hosszú viseléshez\r\nTartós, összegabalyodás-mentes kábel', 'https://dummyimage.com/600x400/777/888'),
(20, 'Nyomtató Multifunkciós', 'Perifériák', 45000, 'Nyomtatás, másolás és szkennelés egy készülékben\r\nWi-Fi és USB csatlakozás\r\nGyors nyomtatási sebesség\r\nKompakt kialakítás otthoni irodákhoz', 'https://dummyimage.com/600x400/888/aaa'),
(21, 'Tablet 10\"', 'Mobil eszközök', 80000, '10 hüvelykes IPS kijelző\r\nNagy teljesítményű processzor\r\nTámogatja a 4G és Wi-Fi kapcsolatot\r\nIdeális szórakozáshoz és munkához', 'https://dummyimage.com/600x400/999/000'),
(22, 'Hűtőpad Laptophoz', 'Számítógép kiegészítő', 15000, 'Állítható magasság a kényelmes használatért\r\nHatékony ventilátor a hűtéshez\r\nUSB-n keresztül működik\r\nTartós és könnyű kialakítás', 'https://dummyimage.com/600x400/000/ddd'),
(23, 'Okos Kamera', 'Biztonság', 30000, 'Full HD felvétel éjszakai móddal\r\nMozgásérzékelő és riasztás\r\nTávoli hozzáférés mobilalkalmazással\r\nVízálló kültéri használatra', 'https://dummyimage.com/600x400/111/aaa'),
(24, 'Erősítő HDMI-vel', 'Hangtechnika', 70000, 'Prémium hangzás audiofil felhasználóknak\r\nTámogatja a 4K HDMI áteresztést\r\nTöbb bemenet különböző eszközökhöz\r\nElegáns és robusztus kialakítás', 'https://dummyimage.com/600x400/222/fff');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
  `purchaseid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `productid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- A tábla adatainak kiíratása `purchase`
--

INSERT INTO `purchase` (`id`, `purchaseid`, `userid`, `productid`) VALUES
(1, 1, 2, 1),
(2, 1, 2, 3),
(3, 8, 17, 9);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(256) NOT NULL,
  `name` varchar(200) NOT NULL,
  `isadmin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `isadmin`) VALUES
(1, 'test@gmail.com', 'asdf123', 'Nagy Lajos', 1),
(2, 'test2@gmail.com', 'bghjk123', 'Kis Péter', 0),
(3, 'kispista@gmail.com', 'tej123', 'Kis István', 0),
(4, 'mariapap@gmail.com', 'jelszo2023', 'Pap Mária', 0),
(5, 'jankovicsj@gmail.com', 'almafa99', 'Jankovics József', 0),
(6, 'anna.kovacs@gmail.com', 'kovacs1234', 'Kovács Anna', 0),
(7, 'gabor.varga@gmail.com', 'vargagabor', 'Varga Gábor', 0),
(8, 'szabo.janos@gmail.com', 'szaboj123', 'Szabó János', 0),
(9, 'krisztina.farkas@gmail.com', 'farkas2021', 'Farkas Krisztina', 0),
(10, 'tamas.nagy@gmail.com', 'nagyteszt12', 'Nagy Tamás', 0),
(11, 'julia.kiss@gmail.com', 'kissjulia89', 'Kiss Júlia', 0),
(12, 'bence.toth@gmail.com', 'tothbence456', 'Tóth Bence', 0),
(13, 'peter.horvath@gmail.com', 'horvath2022', 'Horváth Péter', 0),
(14, 'nora.feher@gmail.com', 'fehernora77', 'Fehér Nóra', 0),
(15, 'laszlo.molnar@gmail.com', 'molnar2000', 'Molnár László', 0),
(16, 'balazs.szucs@gmail.com', 'szucsbalazs88', 'Szűcs Balázs', 0),
(17, 'eszter.lukacs@gmail.com', 'lukacseszter', 'Lukács Eszter', 0),
(18, 'david.kerekes@gmail.com', 'kerekes444', 'Kerekes Dávid', 0),
(19, 'eva.madar@gmail.com', 'madareva123', 'Madár Éva', 0),
(20, 'adam.balogh@gmail.com', 'balogh1987', 'Balogh Ádám', 0),
(21, 'lili.farkas@gmail.com', 'farkaslili1', 'Farkas Lili', 0),
(22, 'istvan.nemeth@gmail.com', 'nemethistvan', 'Németh István', 0),
(23, 'renata.pinter@gmail.com', 'pinterrenata', 'Pintér Renáta', 0);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT a táblához `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
