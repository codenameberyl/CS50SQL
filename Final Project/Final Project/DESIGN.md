# SocialConnect DESIGN.md

By Abiola Oluwaseun Onasanya

## Video Overview: https://youtu.be/QZTmWdfmNXs

## Scope

### Purpose of the Database
The purpose of the SocialConnect database is to facilitate meaningful connections among users with similar interests or backgrounds. It aims to provide a platform where users can create profiles, join groups, attend events, share content, and leverage matching algorithms for enhanced social interactions.

### Inclusions and Exclusions
**Inclusions:**
- User profiles with attributes like `id` (UserID), `username`, `email`, and `interests`.
- User interests through the `UserInterests` table.
- Interest groups with attributes such as `id` (GroupID), `name` (GroupName), and `description`.
- Events with details like `id` (EventID), `name` (EventName), `date`, `location`, and `interests`.
- Content sharing functionality through the `contents` table.
- User matching functionality through the `user_matches` table.

**Exclusions:**
- Financial data (e.g., personal finance details).
- Highly sensitive personal information beyond the scope of social connections.

## Functional Requirements

### User Capabilities
Users should be able to:
- Create and manage profiles with essential details.
- Join interest groups and attend events.
- Share content with the community.
- Receive recommendations for potential matches based on shared interests.

### Beyond Scope
- Financial transactions or management.
- Detailed personal information not related to social connections.

## Representation

### Entities

**Users:**
- `id` (Primary Key)
- `username`
- `email`
- `created_at`
- Other user-related attributes as needed.

**UserInterests:**
- `user_id` (Foreign Key referencing Users)
- `interest`
- Primary Key: (`user_id`, `interest`)

**Groups:**
- `id` (Primary Key)
- `name`
- `description`
- `creator_id` (Foreign Key referencing Users)
- `created_at`
- Other group-related attributes as needed.

**UserGroups:**
- `user_id` (Foreign Key referencing Users)
- `group_id` (Foreign Key referencing Groups)
- Primary Key: (`user_id`, `group_id`)

**Events:**
- `id` (Primary Key)
- `name`
- `date`
- `location`
- `interests`
- `creator_id` (Foreign Key referencing Users)
- `group_id` (Foreign Key referencing Groups)
- `created_at`
- Other event-related attributes as needed.

**UserEvents:**
- `user_id` (Foreign Key referencing Users)
- `event_id` (Foreign Key referencing Events)
- Primary Key: (`user_id`, `event_id`)

**Contents:**
- `id` (Primary Key)
- `user_id` (Foreign Key referencing Users)
- `event_id` (Foreign Key referencing Events)
- `type`
- `text`
- `created_at`
- Other content-related attributes as needed.

**UserMatches:**
- `id` (Primary Key)
- `user_id1` (Foreign Key referencing Users)
- `user_id2` (Foreign Key referencing Users)
- `compatibility_score`
- `created_at`
- Other match-related attributes as needed.

### Relationships

#### Entity Relationship Diagram (ERD)
![SocialConnect ERD](https://i.imgur.com/geFVkLc.png)

**Descriptions:**
- Users can join multiple groups (many-to-many relationship).
- Users can attend multiple events (many-to-many relationship).
- Users can share multiple content items.
- Matching between users based on shared interests (UserMatches).

## Optimizations

### Indexing
- Indexes on `id` in Users, Groups, Events, Contents, and UserMatches tables for faster retrieval.
- Indexes on `user_id` in UserGroups, UserEvents, Contents, and UserMatches for efficient queries involving users.
- Indexes on `group_id` and `event_id` in UserGroups, UserEvents, and Contents for optimized group and event membership queries.

### Views
- A view to display matched users and their match strengths.

## Limitations

- The platform may not handle financial transactions or detailed personal finance management.
- The matching algorithm is based on shared interests and may not consider other factors like location.
- The system might face limitations in representing highly complex relationships or intricate social scenarios.
