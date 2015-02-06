# ActiveRecord Lookups Quiz

Without looking for help online write the following queries:

1. Find an author with an `id` of `9`.

2. Find all authors with a `last_name` of `Brown`.

3. Find the first author with a `last_name` of `Brown`.

4. Find all articles created in the last 5 days.


#### Using only one call to the database:

5. Find all users with a `last_name` of 'Brown' and return the first user with a `first_name` of 'Nancy'.

6. Find all articles created in the last 5 days. Display the article title and author's last_name for each article.

### Bonus Round

7. What's the danger of using `update_attribute` vs `update_attributes`?

8. Imagine we are creating and loading users based on data received from an external service (`attributes` in this example).
  
  Refactor the method below to use `.first_or_initialize` and `.tap`:

  ```ruby
  def self.find_or_create_from_external_service(attributes = {})
    user = User.find_by_login(attributes[:login])
    if user.nil?
      user = User.create(login: attributes[:login], email: attributes[:email])
    end

    user
  end
  ```
