-- Sample query to insert a new user
INSERT INTO `users` (`username`, `email`, `created_at`) VALUES
('JohnDoe', 'john.doe@example.com', CURRENT_TIMESTAMP),
('JaneDoe', 'jane.doe@example.com', CURRENT_TIMESTAMP),
('AliceSmith', 'alice.smith@example.com', CURRENT_TIMESTAMP),
('BobBrown', 'bob.brown@example.com', CURRENT_TIMESTAMP),
('MaryGreen', 'mary.green@example.com', CURRENT_TIMESTAMP),
('JohnHarvard', 'john.harvard@example.com', CURRENT_TIMESTAMP),
('DavidMalan', 'david.malan@example.com', CURRENT_TIMESTAMP);

-- Sample query to insert user interests
INSERT INTO `user_interests` (`user_id`, `interest`) VALUES
(1, 'Coding'),
(1, 'Music'),
(1, 'Photography'),
(2, 'Reading'),
(2, 'Hiking'),
(2, 'Cooking'),
(3, 'Dancing'),
(3, 'Art'),
(3, 'Travel'),
(4, 'Science'),
(4, 'Sports'),
(4, 'Videogames'),
(5, 'Writing'),
(5, 'Animals'),
(5, 'Volunteering'),
(6, 'Coding'),
(6, 'Music'),
(6, 'Photography'),
(7, 'Coding'),
(7, 'Sports'),
(7, 'Travel');

-- Sample query to create a new group
INSERT INTO `groups` (`name`, `description`, `creator_id`, `created_at`) VALUES
('Coding Enthusiasts', 'A group for coding lovers', 1, CURRENT_TIMESTAMP),
('Bookworms', 'For those who love reading and discussing books', 2, CURRENT_TIMESTAMP);

-- Sample query to create a new event
INSERT INTO `events` (`name`, `date`, `location`, `interests`, `creator_id`, `group_id`, `created_at`) VALUES
('Coding Bootcamp', '2023-12-15', 'Tech Center', 'Coding', 1, 1, CURRENT_TIMESTAMP),
('Book Club Meeting', '2023-12-20', 'Library Cafe', 'Reading, Literature', 2, 2, CURRENT_TIMESTAMP),
('Hiking Trip', '2023-12-25', 'Mount Fuji', 'Hiking, Nature', 3, 1, CURRENT_TIMESTAMP),
('Art Exhibition', '2024-01-01', 'Art Gallery', 'Art, Design', 4, 1, CURRENT_TIMESTAMP),
('Volunteer Day', '2024-01-10', 'Animal Shelter', 'Animals, Community', 5, 1, CURRENT_TIMESTAMP);

-- Sample query to join a user to a group
INSERT INTO `user_groups` (`user_id`, `group_id`) VALUES (1, 1);

-- User 1 joins the Coding Bootcamp event
INSERT INTO `user_events` (`user_id`, `event_id`) VALUES (1, 1);

-- User 2 attends the Book Club Meeting
INSERT INTO `user_events` (`user_id`, `event_id`) VALUES (2, 2);

-- User 3 participates in the Hiking Trip
INSERT INTO `user_events` (`user_id`, `event_id`) VALUES (3, 3);

-- User 4 visits the Art Exhibition
INSERT INTO `user_events` (`user_id`, `event_id`) VALUES (4, 4);

-- User 5 volunteers at the Animal Shelter event
INSERT INTO `user_events` (`user_id`, `event_id`) VALUES (5, 5);

-- Sample query to share content
INSERT INTO `contents` (`user_id`, `event_id`, `type`, `text`, `created_at`) VALUES (1, 1, 'Text', 'Check out this amazing article!', CURRENT_TIMESTAMP);

-- Sample query to insert a new match
INSERT INTO `user_matches` (`user_id1`, `user_id2`, `compatibility_score`, `created_at`) VALUES (1, 2, 90, CURRENT_TIMESTAMP);

-- Sample query to retrieve user profiles
SELECT * FROM `users`;

-- Query to find groups a user has joined
SELECT `users`.`username`, `groups`.`name`
FROM `users`
JOIN `user_groups` ON `users`.`id` = `user_groups`.`user_id`
JOIN `groups` ON `user_groups`.`group_id` = `groups`.`id`
WHERE `users`.`id` = 1;

-- Query to find events a user is attending
SELECT `users`.`username`, `events`.`name`
FROM `users`
JOIN `user_events` ON `users`.`id` = `user_events`.`user_id`
JOIN `events` ON `user_events`.`event_id` = `events`.`id`
WHERE `users`.`id` = 1;

-- Query to find shared interests and calculate match score
SELECT
    `u1`.`username` AS `user1`,
    `u2`.`username` AS `user2`,
    `i1`.`interest` AS `common_interest`,
    COUNT(DISTINCT `i1`.`interest`) AS `num_common_interests`,
    COUNT(DISTINCT `i2`.`interest`) AS `num_total_interests`,
    ROUND((COUNT(DISTINCT `i1`.`interest`) / COUNT(DISTINCT `i2`.`interest`)) * 100) AS `match_score`
FROM `users` `u1`
JOIN `users` `u2` ON `u1`.`id` < `u2`.`id`
JOIN (
    SELECT `ui1`.`user_id`, `ui1`.`interest`
    FROM `user_interests` `ui1`
    CROSS JOIN LATERAL
    (SELECT DISTINCT `interest` FROM `user_interests` WHERE `user_id` = `user_id`) `i`
) `i1` ON `u1`.`id` = `i1`.`user_id`
JOIN (
    SELECT `ui2`.`user_id`, `ui2`.`interest`
    FROM `user_interests` `ui2`
    CROSS JOIN LATERAL
    (SELECT DISTINCT `interest` FROM `user_interests` WHERE `user_id` = `user_id`) `i`
) `i2` ON `u2`.`id` = `i2`.`user_id`
WHERE `i1`.`interest` = `i2`.`interest`
GROUP BY `u1`.`id`, `u2`.`id`, `i1`.`interest`
ORDER BY `match_score` DESC;

-- Sample query to retrieve matched users for a given user
SELECT `users`.`username`, `user_matches`.`compatibility_score`
FROM `users`
JOIN `user_matches` ON `users`.`id` = `user_matches`.`user_id1` OR `users`.`id` = `user_matches`.`user_id2`
WHERE `users`.`id` = 1;

-- View to display matched users and their compatibility scores
CREATE VIEW `matched_users_view` AS
SELECT `u1`.`username` AS `user1`, `u2`.`username` AS `user2`, `user_matches`.`compatibility_score`
FROM `users` `u1`
JOIN `user_matches` ON `u1`.`id` = `user_matches`.`user_id1`
JOIN `users` `u2` ON `user_matches`.`user_id2` = `u2`.`id`;

-- Sample query to select data from the MatchedUsersView
SELECT * FROM `matched_users_view`;