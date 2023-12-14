-- Users table to store user profiles
CREATE TABLE `users` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `username` VARCHAR(255) NOT NULL UNIQUE,
    `email` VARCHAR(255) NOT NULL UNIQUE,
    `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Users table to store user interests
CREATE TABLE `user_interests` (
    `user_id` INT NOT NULL,
    `interest` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`user_id`, `interest`),
    FOREIGN KEY (`user_id`) REFERENCES `users`(`id`),
    INDEX `user_interests_user_id_index` (`user_id`),
    INDEX `user_interests_interest_index` (`interest`)
);

-- Groups table to represent different interest groups
CREATE TABLE `groups` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL UNIQUE,
    `description` TEXT,
    `creator_id` INT NOT NULL, -- Added foreign key to reference users table
    `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (`creator_id`) REFERENCES `users`(`id`)
);

-- UserGroups table to manage many-to-many relationship between users and groups
CREATE TABLE `user_groups` (
    `user_id` INT NOT NULL,
    `group_id` INT NOT NULL,
    PRIMARY KEY (`user_id`, `group_id`),
    FOREIGN KEY (`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY (`group_id`) REFERENCES `groups`(`id`),
    INDEX `user_groups_user_id_index` (`user_id`),
    INDEX `user_groups_group_id_index` (`group_id`)
);

-- Events table to store information about events
CREATE TABLE `events` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL UNIQUE,
    `date` DATE NOT NULL,
    `location` VARCHAR(255),
    `interests` TEXT,
    `creator_id` INT NOT NULL, -- Added foreign key to reference users table
    `group_id` INT, -- Added foreign key to reference groups table
    `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (`creator_id`) REFERENCES `users`(`id`),
    FOREIGN KEY (`group_id`) REFERENCES `groups`(`id`)
);

-- UserEvents table to manage many-to-many relationship between users and events
CREATE TABLE `user_events` (
    `user_id` INT NOT NULL,
    `event_id` INT NOT NULL,
    PRIMARY KEY (`user_id`, `event_id`),
    FOREIGN KEY (`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY (`event_id`) REFERENCES `events`(`id`),
    INDEX `user_events_user_id_index` (`user_id`),
    INDEX `user_events_event_id_index` (`event_id`)
);

-- Contents table to store shared content
CREATE TABLE `contents` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `user_id` INT NOT NULL,
    `event_id` INT NOT NULL,
    `type` VARCHAR(255) NOT NULL,
    `text` TEXT,
    `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY (`event_id`) REFERENCES `events`(`id`),
    INDEX `contents_user_id_index` (`user_id`),
    INDEX `contents_event_id_index` (`event_id`)
);

-- UserMatches table to store information about matched users
CREATE TABLE `user_matches` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `user_id1` INT NOT NULL,
    `user_id2` INT NOT NULL,
    `compatibility_score` DECIMAL(5, 2) NOT NULL,
    `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (`user_id1`) REFERENCES `users`(`id`),
    FOREIGN KEY (`user_id2`) REFERENCES `users`(`id`),
    UNIQUE (`user_id1`, `user_id2`), -- Ensures only one match record exists for each pair
    INDEX `user_matches_user_id1_index` (`user_id1`),
    INDEX `user_matches_user_id2_index` (`user_id2`),
    INDEX `user_matches_score_index` (`compatibility_score`)
);