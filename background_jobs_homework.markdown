---
Assignment: Practicing Background Workers
Related Lesson: Workers at Scale
length: 45
---

## Assignment

To prep for our session tomorrow on background workers, let's
create a sample rails app with some long-running tasks that could
benefit from being performed in a background job.

We'd like to build a crude social network app where users can create a
profile. Whenever a user's profile is viewed, let's send them an email
notifying them that their profile was viewed (don't worry about spam
reports for now!)

Using TDD, generate a new rails app with a single 'User' model.
Users should have an email, name, age, and location (all strings).

The root of the app should display a list of names of users as links to
the user's profile, and it should include a link to create a new
profile.

The Users#new form should have inputs for email, name, age, location and create
a new user record in the DB

## Tracking User Profile Views

We'd like to be able to show users periodic updates on how much traffic
their profile is receiving. To do this let's add another model:
UserProfileView. It simply has 1 column: user_id, and belongs to a user.

We'd like to create one of these records every time a user's profile is
viewed (Users#show), and since we want to do this without impacting
performance of the profile pages, we'll need to push it into a
background job.

Use the Sidekiq docs at https://github.com/mperham/sidekiq to get
sidekiq installed. (Note: you will need redis running on your machine if
you don't have it already)

Create a simple UserProfileViewedWorker to create these records
asynchronously. You'll need to accept the viewed user's ID as an
argument to your job. Inside the job, simply create a new
UserProfileView record with the provided id.

For kicks, add a counter on the Users#show page which shows how many
times each profile has been viewed.

Tomorrow in class we'll have some further discussion around background
workers and look at some more examples.
