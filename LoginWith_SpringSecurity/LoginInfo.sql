drop database test

create database test
-- Create table
use  test
CREATE TABLE `user` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `email` varchar(255) NOT NULL,
 `password` varchar(60) NOT NULL,
 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

select * from user

CREATE TABLE `role` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `name` varchar(255) NOT NULL,
 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

select * from role

CREATE TABLE `user_role` (
 `user_id` int(11) NOT NULL,
 `role_id` int(11) NOT NULL,
 PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

select * from user_role
SELECT user.email, user_role.user_id fROM user inner join user_role on user.id = user_role.user_id