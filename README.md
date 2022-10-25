Original App Design Project - README Template
===

# BeFit

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
BeFit is a fitness application to keep track of calories eaten daily, food plans and workout routines. 

### App Evaluation

- **Category:** Fitness
- **Mobile:** This app would be primarily developed for mobile in order to get the best features.
- **Story:** Analyzes the calories needed for the rest of the day to keep up with fitness levels. The user can create or discover which workout routines to follow. The user can also find other users on this app following the same fitness goals and reach out and message them.
- **Market:** Beginner/Intermediate/ Advanced fitness enthusiasts.
- **Habit:** Healthy lifestyle.
- **Scope:** User will be able to track daily calories intake and discover different workouts.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* Create app file
* Organize layout for application
* Brainstorm design ideas
* Be able to create account
* User is able to enter daily calory intake
* User can see list of available workouts
* User can see detail of selected workout

**Optional Nice-to-have Stories**

* Provide user suggested workout based on ML model
* User can livestream workout session

### 2. Screen Archetypes

* Screen showing total calories eaten / total calories needed per day 
   * organize layout for application
   * design ideas for screen archetype
* Screen showing which workout day it is with users listed workouts
   * organize layout for application 
   * be able to create account

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Calories eaten / calories needed
* Workouts / workout routines
* Workout buddies near me (find workout partners in same area)

**Flow Navigation** (Screen to Screen)

* Screen showing total calories eaten / total calories needed per day 
   * Calories eaten / calories needed, add to users calories eaten per day
   * View how many calories left and read tips
* Screen showing which workout day it is with users listed workouts
   * Workouts / workout routines to keep track of which day it is at gym (back, legs etc.)
   * Add workouts, update workout for day

## Wireframes
<img width="322" alt="Screen Shot 2022-10-17 at 10 55 39 AM" src="https://user-images.githubusercontent.com/103790405/196226531-c720145b-0b63-4c9d-81e4-b03aac87f469.png">
<img width="322" alt="Screen Shot 2022-10-17 at 10 55 51 AM" src="https://user-images.githubusercontent.com/103790405/196226563-f0dee092-cec0-46fc-a57c-3438e2360c64.png">
<img width="275" alt="Screen Shot 2022-10-17 at 12 00 24 PM" src="https://user-images.githubusercontent.com/103790405/196226616-a8d8ef7a-38e5-4571-857e-619b27117961.png">
<img width="322" alt="Screen Shot 2022-10-17 at 11 06 34 AM" src="https://user-images.githubusercontent.com/103790405/196226636-84719170-9a1e-4e53-af84-14d06523725b.png">
<img width="312" alt="Screen Shot 2022-10-17 at 11 30 46 AM" src="https://user-images.githubusercontent.com/103790405/196226649-2870e57f-7794-4584-bfff-d6532568eef3.png">
<img width="318" alt="Screen Shot 2022-10-17 at 11 53 26 AM" src="https://user-images.githubusercontent.com/103790405/196226663-14aa7678-569a-463a-bb5f-a979fb09018d.png">


### [BONUS] Interactive Prototype

## Schema 
[This section will be completed in Unit 9]
### Models
Post

Property | Type | Description | 
--- | --- | --- | 
objectId | String | unique id for the user post (default field) |
author | Pointer to User | image author | 
image | File | image that user posts | 
caption | String | image caption by author |
commentsCount | Number | number of comments that has been posted to an image |
likesCount | Number | number of likes for the post |
createdAt | DateTime | date when post is created (default field) |

User
Property | Type | Description | 
--- | --- | --- | 
name | String | name of user |
hobbies | String | hobbies the user likes to do in their free time |
favWorkouts | String | favorite workouts the user likes to do when working out |
currentWeight | String | current weight of user |
targetWeight | String | target goal weight of user |
height | String | user's height |
age | String | user's age |
gender | String | user's gender |

Calories Track
Property | Type | Description | 
--- | --- | --- | 
addFood | String | foods eaten at a specific time to be logged (Morning/Afternoon/Evening) |
totalCal | String | calculates total amount of KCal consumed the day of |

Workout Track
Property | Type | Description | 
--- | --- | --- | 
addWorkout | String | the type of exercise completed can be added |
addLocation | String | the location of where you completed an exercise can be added |

### Networking

* List of network requests by screen

  * Home Screen

    * (Read/GET) Query all weekly view posts
    * (Create) Create new post for weekly view
    * (Delete) Delete post for weekly view

  * Scrolling Feed Screen

     * (Create/POST) Create a new like on a post
     * (Delete) Delete existing like
     * (Create/POST) Create a new comment on a post
     * (Delete) Delete existing comment

  * Profile Screen

    * (Update/PUT) Update user profile image
    * (Update/Info) Update user profile info

  * Calories Screen

    * (Update/Info) Update user calories Morning/Afternoon/Evening info
    * (Update Auto) Total KCal consumed daily

  * Workout Screen

    * (Update/Info) Update user workouts info
    * (Update/Info) Update user location workout info


- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]

Gif progress 10/24/2022

![ezgif com-gif-maker](https://user-images.githubusercontent.com/103790405/197660894-12988841-4c95-4f37-8e6c-a4e197ef2c09.gif)
![ezgif com-gif-maker-2](https://user-images.githubusercontent.com/103790405/197661148-739cd8d1-4750-4442-aebd-2b603a855752.gif)


