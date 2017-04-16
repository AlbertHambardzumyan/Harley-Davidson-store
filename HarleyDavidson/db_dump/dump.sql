create database shop;
use shop;

CREATE TABLE product
(
    Id VARCHAR(50) PRIMARY KEY NOT NULL,
    Name VARCHAR(50),
    Price DOUBLE,
    Url VARCHAR(50)
);
CREATE TABLE user
(
    UserId INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(50),
    Email VARCHAR(50),
    Password VARCHAR(50)
);

use shop;
DROP INDEX IDX_USER_EMAIL;
CREATE UNIQUE INDEX IDX_USER_EMAIL USING HASH ON USER (Email);



INSERT INTO shop.product (Id, Name, Price, Url) VALUES ('111', 'Harley-Davidson Iron 883', 5900, 'ha1');
INSERT INTO shop.product (Id, Name, Price, Url) VALUES ('112', 'Harley-Davidson Street 1200', 6300, 'ha2');
INSERT INTO shop.product (Id, Name, Price, Url) VALUES ('113', 'Harley-Davidson Street 1100', 6100, 'ha3');
INSERT INTO shop.product (Id, Name, Price, Url) VALUES ('114', 'Harley-Davidson Street 1000', 6900, 'ha4');
INSERT INTO shop.product (Id, Name, Price, Url) VALUES ('115', 'Harley-Davidson Street 900', 5900, 'ha5');
INSERT INTO shop.product (Id, Name, Price, Url) VALUES ('116', 'Harley-Davidson Street 800', 5200, 'ha6');
INSERT INTO shop.product (Id, Name, Price, Url) VALUES ('117', 'Harley-Davidson Street 700', 5700, 'ha7');
INSERT INTO shop.product (Id, Name, Price, Url) VALUES ('118', 'Harley-Davidson Street 600', 5500, 'ha9');
INSERT INTO shop.product (Id, Name, Price, Url) VALUES ('119', 'Harley-Davidson Street 500', 5000, 'ha5');



INSERT INTO shop.user (UserId, FirstName, Email, Password) VALUES (1, 'Haykaz', 'haykaz_bagratyan@edu.aua.am', 'science');
