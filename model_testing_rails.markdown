# Model Testing in Rails -- Challenges

Add tests for the following features and make them pass one at a time. 

* 1) A fan should not be valid without an email. 
* 2) A location is valid with a city, state, and country and should be invalid if they are missing a city, state, *or* country.
* 3) A city must be unique within the scope of a state. For example, we can have Bloomington, IL, and Bloomington, IN, but we can't have two of Bloomington, IN. 
* 4) A state must be exactly two characters. Take a look at the documentation to figure out how to do exact length validations.
* 5) Cities and countries may only contain uppercase letters, lowercase letters, and spaces.
* 6) Extension: What is a confirmation validation? Can you create one for email? (Warning: this will probably break some tests you've already written. Just go back and update those failing tests.)
* 7) Donations must have an amount that can only be whole numbers. Take a look at the documentation for a built-in way to write this. 
* 8) A donations must have a status. Donation statuses can be "processed", "pending", or "cancelled". No other values should be allowed.
* 9) Donations of 1 dollar are not allowed. Don't be cheap. 
* 10) When calling `full_name` on a location, it should return a string of the city, state, and country. (Example: `location.full_name` returns "Denver, CO, USA")
* 11) A donation should belong to a fan. 
* 12) `Fan.all` should return all fans ordered alphabetically by name. 
* 13) `Fan.joined_since(date)` should return all the fans that have joined since that date. 