## Form and Route Helpers in Rails

Clone [this repo](https://github.com/rwarbelow/form_playground), then bundle, run `rake db:migrate`, and open the code in your text editor. 

### Setup

* take a look at `seeds.rb` inside of the `db` folder. What is it doing? What would you expect to happen when you run `rake db:seed`? 
* run `rake db:seed`
* start up the rails console: `rails c`
* check that you have three articles in the development database

```
Article.count
   (0.1ms)  SELECT COUNT(*) FROM "articles"
 => 3 
```

* exit out of the rails console: `exit`

### Experimenting with Route Helpers

* Start your server with `rails s`.
* Navigate to `localhost:3000/articles`. You should see each of the article titles as a link, in addition to a link for making a new article. 
* In your text editor, open up `app/views/articles/index.html.erb`. Right now, the code to make each individual article link looks like this:

```erb
  <a href="/articles/<%= article.id %>"><%= article.title %></a> <br>
```

* This should look pretty similar to how you created links in TaskManager with Sinatra. 
* Can you replace this bit of code with a Rails route helper that provides the same behavior? Check the Rails Guides for Path and URL Helpers [here](http://guides.rubyonrails.org/routing.html#path-and-url-helpers). 
* Can you replace the "Make a new article" link with another Rails route helper that leads to the form?
* Can you add a link using a route helper on the `show.html.erb` page so that a user can get back to the articles index? 
* How is the prefix section from the output of running `rake routes` connected with route helpers? 

### Form Helpers

* Open `app/views/articles/new.html.erb` and look at the uncommented form helper.
* Navigate to `localhost:3000/articles/new` and use inspector to take a look at the code for the form.
* What does `form_for(@article)`... do? What HTML does it generate?
* When you click submit on the form, an error should be raised and you should be able to see the params that are coming in. This is on purpose. How are the params nested? How can you access just the article params?
* Go back to `app/views/articles/new.html.erb`. Comment out the first form and uncomment the second form. Repeat the steps above. How is `form_tag` different from `form_for`? What is different about the HTML that is generated? 

Want to read more about form helpers in Rails? Check out the [docs](http://guides.rubyonrails.org/form_helpers.html). 
