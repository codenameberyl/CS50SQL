# SocialConnect

## Overview

Welcome to SocialConnect! This is a social networking platform database designed to connect users based on their interests, groups, events, and shared content. Users can join groups, attend events, share content, and discover potential matches with similar interests.

## Schema

The database schema is composed of several tables to capture different aspects of the social networking platform:

### Users Table

- `id`: Uniquely identifies each user.
- `username`: User's unique username.
- `email`: User's email address.
- `created_at`: Timestamp of user creation.

### UserInterests Table

- `user_id`: References the user with specific interests.
- `interest`: User's interests or hobbies.

### Groups Table

- `id`: Uniquely identifies each group.
- `name`: Name of the group.
- `description`: Description of the group.
- `creator_id`: References the creator of the group (user).
- `created_at`: Timestamp of group creation.

### UserGroups Table

- `user_id`: References the user who joined the group.
- `group_id`: References the group that the user joined.

### Events Table

- `id`: Uniquely identifies each event.
- `name`: Name of the event.
- `date`: Date of the event.
- `location`: Location of the event.
- `interests`: Interests associated with the event.
- `creator_id`: References the creator of the event (user).
- `group_id`: References the group associated with the event.
- `created_at`: Timestamp of event creation.

### UserEvents Table

- `user_id`: References the user who is attending the event.
- `event_id`: References the event that the user is attending.

### Contents Table

- `id`: Uniquely identifies each content.
- `user_id`: References the user who shared the content.
- `event_id`: References the event associated with the content.
- `type`: Type of content (e.g., text).
- `text`: Content text.
- `created_at`: Timestamp of content creation.

### UserMatches Table

- `id`: Uniquely identifies each match.
- `user_id1`: References the first user in the match.
- `user_id2`: References the second user in the match.
- `compatibility_score`: Strength of the match.
- `created_at`: Timestamp of match creation.

## Files

- `schema.sql`: Annotated set of SQL statements that compose the database schema.
- `queries.sql`: Annotated set of SQL statements that users will commonly run on the database.

## Design Document (DESIGN.md)

Please refer to [DESIGN.md](DESIGN.md) for a detailed design document describing the database’s purpose, scope, entities, relationships, optimizations, and limitations.

## Entity Relationship Diagram

Below is an entity relationship diagram for the SocialConnect database:

![SocialConnect ERD](https://i.imgur.com/geFVkLc.png)

## Video Overview

Watch a short video overview of SocialConnect on [YouTube](https://youtu.be/QZTmWdfmNXs).