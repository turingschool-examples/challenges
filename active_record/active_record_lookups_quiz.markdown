# ActiveRecord Lookups Quiz

Without looking for help online write the following queries:

1. Find an author with an `id` of `9`.
  - Author.find(9)

2. Find all authors with a `last_name` of `Brown`.
  - Author.find_by(last_name: 'Brown')

3. Find the first author with a `last_name` of `Brown`.
  - Author.find_by(last_name: 'Brown)

4. Find all articles created in the last 5 days.
  - Article.where("created_at >= ?", 5.days.ago)


#### Using only one call to the database:

5. Find all users with a `last_name` of 'Brown' and return the first user with a `first_name` of 'Nancy'.
  - User.where(last_name: 'Brown').find_by(first_name: 'Nancy')

6. Find all articles created in the last 5 days. Display the article title and author's last_name for each article.
  - Article.where(created_at: 5.days.ago..Time.now)
                  .includes(:author)
                  .select("title, users.last_name as author_last_name")
                  .map { |article| [article.title, article.author_last_name] }

### Bonus Round

7. What's the danger of using `update_attribute` vs `update_attributes`?
  - 'update_attribute' changes a singular attribute WITHOUT checking against validations and callbacks while 'update_attributes' changes multiple the attributes while checking the validations and callbacks. So the danger would be that using update_attribute' you may accidently save an attribute that is an invalid value.

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

refactor:
  ```ruby
  def self.find_or_create_from_external_service(attributes = {})
    User.where(login: attributes[:login]).first_or_initialize.tap do |user|
      user.update(email: attributes[:email]) if user.new_record?
      user.save
    end
  end
```
