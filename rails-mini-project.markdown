## Rails Mini-Project: Putting it all together

### Overview

This week, we talked about

* rails
* database schema design (use the [online schema designer](http://ondras.zarovi.cz/sql/demo/))
* authentication
* authorization
* git workflow

This afternoon, use these new skills to add the following features to a new Rails application. **TDD is not dead.**

### Project Option 1: IdeaBox

Let's create an app to record your ideas. 

#### Categories

* ideas belong to a category
* categories can be created and destroyed by a logged-in admin user (regular logged in users cannot create or destroy categories)
* users can create, edit/update, show, and destroy only their own ideas
* when a user types a new idea into the form, there is a [selection dropdown](http://guides.rubyonrails.org/form_helpers.html#option-tags-from-a-collection-of-arbitrary-objects) for choosing the correct category

#### Images

* allow users to add images to their ideas
* an image can have many ideas and an idea can have many images
* images can only be created by an admin user

The most simplistic way to implement images is to store a url to an online image. If you're feeling fancy and want to upload your own images, check out [Carrierwave](https://github.com/carrierwaveuploader/carrierwave) or [Paperclip](https://github.com/thoughtbot/paperclip). 

#### Authentication and Authorization

* users need to log in to see their ideas
* users can only see their own ideas -- they should not be able to visit another user's page
* users cannot create ideas for other users
* users cannot create new categories -- only the admin can do that
* users cannot create images -- only the admin can do that; however, a user can assign an image to their idea

#### Optional Extensions

* Use Heroku to host your app
* Implement OAuth login

### Project Option 2: PointBox

Create an app where an admin (let's say for example, Richard) can assign points to users and users can redeem those points for rewards.

#### Points

* points can be created ("assigned to a user") and destroyed only by the admin
* users can see their total number of points on their dashboard

#### Rewards

* rewards can be created, edited, updated, and destroyed only by the admin
* the list of possible rewards can be seen by regular users

#### Redeeming Points

* users can redeem their points for a reward
* when users redeem their points, the points are NOT destroyed; instead, they are marked as "redeemed"
* when a user redeems points for a reward, the user can see that reward on their dashboard

#### Authentication and Authorization

* users need to log in to see their points and rewards
* users can only see their own points and rewards -- they should not be able to visit another user's page
* users cannot add points to their account, nor can they create new rewards to add to the list
* a user cannot redeem another user's points

#### Optional Extensions

* Use Heroku to host your app
* Implement Twitter or Github OAuth login

### Homework

Fork or clone the repository so that you and your original pair each have a separate copy. Finish implementing the features individually using TDD. Add the link to your personal repository to [this document](https://github.com/turingschool/ruby-submissions/blob/master/1502/05_rails_mini_project.yml).

### Resources

* [Nested Routes](http://guides.rubyonrails.org/routing.html#nested-resources)
* [Carrierwave](https://github.com/carrierwaveuploader/carrierwave)
* [Paperclip](https://github.com/thoughtbot/paperclip)
* [Form Helpers in Rails](http://guides.rubyonrails.org/form_helpers.html)

