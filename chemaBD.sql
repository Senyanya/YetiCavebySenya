CREATE TABLE `categories` 
( `category_id` INT(10) NOT NULL AUTO_INCREMENT , 
`title` VARCHAR(50) NOT NULL , 
`alias` VARCHAR(50) NOT NULL , 
PRIMARY KEY (`category_id`)) 
ENGINE = InnoDB;

CREATE TABLE `bets` 
( `id_bets` INT(10) NOT NULL AUTO_INCREMENT , 
`bet_date` DATETIME NOT NULL , 
`bet_price` INT(20) NOT NULL , 
`user_id` INT(10) NOT NULL , 
`lots_id` INT(10) NOT NULL , 
PRIMARY KEY (`id_bets`)) ENGINE = InnoDB;


CREATE TABLE `users` 
( `user_id` INT(10) NOT NULL AUTO_INCREMENT , 
`reg_date` DATETIME NOT NULL , 
`email` VARCHAR(25) NOT NULL , 
`username` VARCHAR(16) NOT NULL , 
`password` VARCHAR(16) NOT NULL , 
`avatar` VARCHAR(16) NOT NULL , 
`contacts` VARCHAR(128) NOT NULL , 
PRIMARY KEY (`user_id`)) ENGINE = InnoDB;


CREATE TABLE `lots` 
( `lots_id` INT(10) NOT NULL AUTO_INCREMENT , 
`date_create` DATETIME NOT NULL , 
`name` VARCHAR(50) NOT NULL , 
`opisanie` VARCHAR(255) NOT NULL , 
`Image_url` VARCHAR(16) NOT NULL , 
`start_price` INT(25) NOT NULL , 
`date_end` DATETIME NOT NULL , 
`steps_lots` INT NOT NULL , 
`user_id` INT NOT NULL , 
`id_winner` INT NOT NULL , 
`category_id` INT NOT NULL , 
 bet_price INT(11) NOT NULL,
PRIMARY KEY (`lots_id`)) ENGINE = InnoDB;


ALTER TABLE `categories` ADD UNIQUE (`title`);
ALTER TABLE `categories` ADD UNIQUE (`alias`);
ALTER TABLE `users` ADD UNIQUE (`email`);
ALTER TABLE `users` ADD UNIQUE (`username`);




ALTER TABLE `lots` ADD FOREIGN KEY (`user_id`) REFERENCES `users`(`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `lots` ADD FOREIGN KEY (`id_winner`) REFERENCES `users`(`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `lots` ADD FOREIGN KEY (`category_id`) REFERENCES `categories`(`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `bets` ADD FOREIGN KEY (`lots_id`) REFERENCES `lots`(`lots_id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `bets` ADD FOREIGN KEY (`user_id`) REFERENCES `users`(`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;