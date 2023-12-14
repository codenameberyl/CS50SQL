-- Create Users table
CREATE TABLE `Users` (
    `id` INT AUTO_INCREMENT,
    `first_name` VARCHAR(255) NOT NULL,
    `last_name` VARCHAR(255) NOT NULL,
    `username` VARCHAR(255) NOT NULL UNIQUE,
    `password` VARCHAR(128) NOT NULL, -- Assuming password is hashed and can be stored in 128 characters
    PRIMARY KEY (`id`)
);

-- Create Schools table
CREATE TABLE `Schools` (
    `id` INT AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `type` ENUM('Primary', 'Secondary', 'Higher Education'),
    `location` VARCHAR(255),
    `year_founded` INT,
    PRIMARY KEY (`id`)
);

-- Create Companies table
CREATE TABLE `Companies` (
    `id` INT AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL UNIQUE,
    `industry` ENUM('Technology', 'Education', 'Business'),
    `location` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`id`)
);

-- Create PeopleConnections table
CREATE TABLE `PeopleConnections` (
    `id` INT AUTO_INCREMENT,
    `user_id` INT,
    `following_id` INT,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`user_id`) REFERENCES `Users`(`id`),
    FOREIGN KEY (`following_id`) REFERENCES `Users`(`id`),
    CONSTRAINT `unique_connection` UNIQUE (`user_id`, `following_id`)
);

-- Create SchoolConnections table
CREATE TABLE `SchoolConnections` (
    `id` INT AUTO_INCREMENT,
    `user_id` INT,
    `school_id` INT,
    `start_date` DATE,
    `end_date` DATE,
    `degree_type` VARCHAR(255),
    PRIMARY KEY (`id`),
    FOREIGN KEY (`user_id`) REFERENCES `Users`(`id`),
    FOREIGN KEY (`school_id`) REFERENCES `Schools`(`id`),
    CONSTRAINT `unique_school_connection` UNIQUE (`user_id`, `school_id`)
);

-- Create CompanyConnections table
CREATE TABLE `CompanyConnections` (
    `id` INT AUTO_INCREMENT,
    `user_id` INT,
    `company_id` INT,
    `start_date` DATE,
    `end_date` DATE,
    `title` VARCHAR(255),
    PRIMARY KEY (`id`),
    FOREIGN KEY (`user_id`) REFERENCES `Users`(`id`),
    FOREIGN KEY (`company_id`) REFERENCES `Companies`(`id`),
    CONSTRAINT `unique_company_connection` UNIQUE (`user_id`, `company_id`)
);
