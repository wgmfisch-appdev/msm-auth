# MSM Auth

## Walkthrough video

The primary guide for this project is the walkthrough video on Canvas. This
README is just to supplement. **However**, a couple of notes about the video:

 - The first ~22 minutes of this video is a review of associations.
 - The rest of it is a walkthrough of MSM Auth.
 - The video is using an older version of the `starter_generators` gem, so the styling of the Golden 7 code will look a little different than yours (Bootstrap 4 rather than 3).
 - At around minute 30, I used the old `starter:resource` generator. You should use the new and improved `draft:resource` generator instead:

    ```
    rails generate draft:resource bookmark movie_id:integer user_id:integer
    ```

 - At around minute 54, we generate our first user account using the Devise gem.
    - You don't need to add the Devise gem to your Gemfile or install it, as I do in the video; your code already has it included and installed.
    - I used the `devise` generator. You should use the new `draft:devise` generator instead:

        ```
        rails generate draft:devise user first_name:string last_name:string
        ```

## Objective

In this project, we'll learn how to add a table where each row represents a user
account. Rather than add the standard Golden Seven RCAVs (`/users/new`, etc) for
interacting with this table, we'll use the Devise gem to generate the RCAVs that
we need (`/users/sign_up`, etc).

Our starting point is the ending point of MSM Associations, and we'll just be
adding the ability for users to sign up and bookmark movies that they plan to
watch.

## Here is [our target](https://msm-auth.herokuapp.com/).

(Don't worry about styling -- focus on functionality only.) In particular,
notice the links in the right side of the navbar.

## Setup

 1. Set up your workspace as usual.
 1. `bin/setup`
 1. Click the Run Project button.
 1. Navigate to the app preview in Chrome and verify that it works. You should see a functional version of the movies index page.
 1. **There are no automated tests for this project**, so `rails grade` won't do anything.

## Devise Guide

There's a Guide for [Authentication with Devise](https://guides.firstdraft.com/authentication-with-devise).
