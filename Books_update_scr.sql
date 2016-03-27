-- Aivaras Baranauskas, 1-a grupė, mentorius Ramūnas
INSERT INTO `Books` (`authorId`, `title`, `year`) VALUES
('8', 'Harry Potter and the Goblet of Fire', '2004'),
('9', 'Inferno', '2014');

UPDATE `Books` SET `authorId`='5' WHERE `bookId`='7';

DELETE FROM `Books` WHERE `authorId` IS NULL;

CREATE TABLE `Genres` (
  `genreId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL, PRIMARY KEY (`genreId`)
);

ALTER TABLE `Books` ADD `genreId` int(11) DEFAULT NULL AFTER `authorId`;

CREATE TABLE `Books_Authors` (
  `authorId` int(11) NOT NULL,
  `bookId` int(11) NOT NULL
);

INSERT INTO `Books_Authors` (SELECT `authorId`, `bookId` FROM `Books`);

ALTER TABLE `Books` DROP `authorId`;

INSERT INTO `Genres` (`name`) VALUES
('Fantasy'),
('Study'),
('Detective'),
('Thriller'),
('Romance'),
('Poem'),
('Tale');

UPDATE `Books` SET genreId=2 WHERE bookId IN (1, 2, 3, 4, 5, 7);

UPDATE `Books` SET genreId=3 WHERE bookId=10;

UPDATE `Books` SET genreId=7 WHERE bookId=9;

INSERT INTO `Books_Authors` (`authorId`, `bookId`) VALUES
(1, 2),
(2, 5);

ALTER TABLE `Books` CONVERT TO CHARACTER SET utf8;
