-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Feb 2024 pada 04.01
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `novict`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `album`
--

CREATE TABLE `album` (
  `AlbumID` int(11) NOT NULL,
  `NamaAlbum` varchar(255) NOT NULL,
  `Deskripsi` text NOT NULL,
  `TanggalDibuat` date NOT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `album`
--

INSERT INTO `album` (`AlbumID`, `NamaAlbum`, `Deskripsi`, `TanggalDibuat`, `UserID`) VALUES
(1, 'example album', 'sfsrtreterg', '2024-02-27', 1),
(2, 'first album', 'all photo', '2024-02-27', 1),
(3, 'second album', 'random photo', '2024-02-27', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `foto`
--

CREATE TABLE `foto` (
  `IdFoto` int(11) NOT NULL,
  `JudulFoto` varchar(255) NOT NULL,
  `DeskripsiFoto` text NOT NULL,
  `TanggalUnggah` date NOT NULL,
  `LokasiFile` varchar(255) NOT NULL,
  `AlbumID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `foto`
--

INSERT INTO `foto` (`IdFoto`, `JudulFoto`, `DeskripsiFoto`, `TanggalUnggah`, `LokasiFile`, `AlbumID`, `UserID`) VALUES
(1, 'example', 'qwdwqbduq', '2024-02-27', 'Example.png', 1, 1),
(2, 'example', 'qwdwqbduq', '2024-02-27', 'Example.png', 1, 1),
(3, 'judul foto', 'deskripsi foto', '2024-02-27', 'Example.png', 1, 1),
(4, 'judul foto', 'deskripsi foto', '2024-02-27', 'Example.png', 1, 1),
(5, 'example', 'inbvytf', '2024-02-27', 'Example.png', 1, 1),
(6, 'example', 'inbvytf', '2024-02-27', 'Example.png', 1, 1),
(7, 'example', 'inbvytf', '2024-02-27', 'Example.png', 1, 1),
(8, 'example', 'inbvytf', '2024-02-27', 'Example.png', 1, 1),
(9, 'example', 'inbvytf', '2024-02-27', 'Example.png', 1, 1),
(10, 'example', 'inbvytf', '2024-02-27', 'Example.png', 1, 1),
(11, 'example', 'inbvytf', '2024-02-27', 'Example.png', 1, 1),
(12, 'example', 'inbvytf', '2024-02-27', 'Example.png', 1, 1),
(13, 'example', 'inbvytf', '2024-02-27', 'Example.png', 1, 1),
(14, 'example', 'inbvytf', '2024-02-27', 'Example.png', 1, 1),
(15, 'example', 'inbvytf', '2024-02-27', 'Example.png', 1, 1),
(16, 'example', 'inbvytf', '2024-02-27', 'Example.png', 1, 1),
(17, 'example', 'inbvytf', '2024-02-27', 'Example.png', 1, 1),
(18, 'example', 'inbvytf', '2024-02-27', 'Example.png', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentarfoto`
--

CREATE TABLE `komentarfoto` (
  `KomentarID` int(11) NOT NULL,
  `IdFoto` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `IsiKomentar` text NOT NULL,
  `TanggalKomentar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `likefoto`
--

CREATE TABLE `likefoto` (
  `LikeID` int(11) NOT NULL,
  `IdFoto` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `TanggalLIke` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `UserID` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `NamaLengkap` varchar(255) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`UserID`, `username`, `password`, `Email`, `NamaLengkap`, `alamat`) VALUES
(1, 'neisheiss', 'b751d3c9df40be824911b546ca6904cc', 'neishilasekarsari@gmail.com', 'neishila sekar', 'kp ciater'),
(2, 'test', '098f6bcd4621d373cade4e832627b4f6', 'testuser@gmail.com', 'test', 'disini');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`AlbumID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indeks untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`IdFoto`),
  ADD KEY `AlbumID` (`AlbumID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indeks untuk tabel `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD PRIMARY KEY (`KomentarID`),
  ADD KEY `IdFoto` (`IdFoto`),
  ADD KEY `UserID` (`UserID`);

--
-- Indeks untuk tabel `likefoto`
--
ALTER TABLE `likefoto`
  ADD PRIMARY KEY (`LikeID`),
  ADD KEY `IdFoto` (`IdFoto`),
  ADD KEY `UserID` (`UserID`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `album`
--
ALTER TABLE `album`
  MODIFY `AlbumID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `foto`
--
ALTER TABLE `foto`
  MODIFY `IdFoto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `komentarfoto`
--
ALTER TABLE `komentarfoto`
  MODIFY `KomentarID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `likefoto`
--
ALTER TABLE `likefoto`
  MODIFY `LikeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD CONSTRAINT `foto_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `foto_ibfk_2` FOREIGN KEY (`AlbumID`) REFERENCES `album` (`AlbumID`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD CONSTRAINT `komentarfoto_ibfk_1` FOREIGN KEY (`IdFoto`) REFERENCES `foto` (`IdFoto`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `komentarfoto_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `likefoto`
--
ALTER TABLE `likefoto`
  ADD CONSTRAINT `likefoto_ibfk_1` FOREIGN KEY (`IdFoto`) REFERENCES `foto` (`IdFoto`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `likefoto_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
