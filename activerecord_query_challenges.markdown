We'll be using [Storedom](https://github.com/turingschool-examples/storedom) for the following challenges.

Checkout the master branch and run `rake db:create db:migrate db:seed`.

Write ActiveRecord query statements for the following problems. You're welcome to change the schema to fit your needs. Create a gist to store your solutions.

## Challenges

* Find all the items that have the word "granite" in the `name`. (If "granite" was not in your seeds, feel free to pick another adjective.)
* Add three orders to a user.
* Given an item. Associate it with an order without touching an `OrderItem` model.
* Find the most popular items.
* Find the biggest orders.
* Find the user who has ordered the most items.
* Find the user who has placed the most orders.
* Find the first ten orders sorted by date created. Don't use Ruby.
* Get the second ten orders sorted by date created. Don't use Ruby.
* Given a collection of orders, return a collection of the users who those orders belong to, using a maximum of two queries to the database.
* Get the first ten users and all of their orders in a maximum of two ActiveRecord queries.
* Given an item, find all of the users who have ordered that item.
* Given a collection of items, find all of the users who have ordered those items.
* Find all of the orders created between yesterday and a month ago (you can use `rand(1.year.ago..Time.now)` in your seed file to spread out the dates a bit).
* Set it up so that when you destroy a user, ActiveRecord also destroys all of their orders

## Bonus Round

* Get all of the orders that have more than five items. Don't use Ruby.
* On the user model, write a method that finds the user who has the most items in common with that user
