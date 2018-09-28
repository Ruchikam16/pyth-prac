CREATE TABLE `user` (
	`user_id` int(11) NOT NULL AUTO_INCREMENT,
	`user_name` varchar(255) NOT NULL,
	`password` varchar(255) NOT NULL,
	`age` int(3) NOT NULL,
	`phone_no` numeric(10) NOT NULL UNIQUE,
	`email` varchar(255) NOT NULL UNIQUE,
	PRIMARY KEY (`user_id`)
);

CREATE TABLE `bid_category` (
	`id` int(4) NOT NULL AUTO_INCREMENT,
	`name` varchar(4) NOT NULL UNIQUE,
	`description` TEXT NOT NULL,
	`start_time` TIME NOT NULL,
	`stop_time` TIME NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `bid_option` (
	`bid_option_id` int(11) NOT NULL AUTO_INCREMENT,
	`categ_id` int(4) NOT NULL AUTO_INCREMENT,
	`options` varchar(4) NOT NULL UNIQUE,
	`min_bid_value` numeric NOT NULL,
	`max_bid_value` numeric NOT NULL,
	PRIMARY KEY (`bid_option_id`)
);

CREATE TABLE `user_bid_info` (
	`bid_id` int NOT NULL AUTO_INCREMENT,
	`categ_id` int NOT NULL,
	`user_id` int NOT NULL,
	`option_id` int NOT NULL,
	`bid_value` numeric NOT NULL,
	`bid_time` TIMESTAMP NOT NULL,
	PRIMARY KEY (`bid_id`)
);

ALTER TABLE `bid_option` ADD CONSTRAINT `bid_option_fk0` FOREIGN KEY (`categ_id`) REFERENCES `bid_category`(`id`);

ALTER TABLE `user_bid_info` ADD CONSTRAINT `user_bid_info_fk0` FOREIGN KEY (`categ_id`) REFERENCES `bid_category`(`id`);

ALTER TABLE `user_bid_info` ADD CONSTRAINT `user_bid_info_fk1` FOREIGN KEY (`user_id`) REFERENCES `user`(`user_id`);

ALTER TABLE `user_bid_info` ADD CONSTRAINT `user_bid_info_fk2` FOREIGN KEY (`option_id`) REFERENCES `bid_option`(`bid_option_id`);

