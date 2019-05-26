SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 1;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE status(
    `id` INT(11) NOT NULL,
    `name` VARCHAR(255) NULL,
    `order` ,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE  CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE todo(
    `id` INT(11) NOT NULL,
    `name` VARCHAR(255) NULL,
    `description` VARCHAR(255) NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE  CURRENT_TIMESTAMP,
    `status_id` INT(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/* ADD KEY */
ALTER TABLE `status` ADD PRIMARY KEY (`id`);
ALTER TABLE `todo` ADD PRIMARY KEY (`id`);


/* ACTIVATE AUTO_INCREMENT */
ALTER TABLE `status`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

ALTER TABLE `todo`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/* ADD INDEX */
ALTER TABLE `todo` ADD INDEX( `status_id`);

ALTER TABLE `todo` ADD FOREIGN KEY (`status_id`) REFERENCES `status`(`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

/* ADD  */

INSERT INTO `status` (`name`, `order`) VALUES
('Open', 'unknow'),
('In Progress', 'unknow'),
('Done', 'unknow');

INSERT INTO  `todo` (`name`, `description`, `status_id`) VALUES
('VexedDev Homepage', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam', '1'),
('Todo app', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam', '1');
