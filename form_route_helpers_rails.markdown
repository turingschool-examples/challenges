## Form and Route Helpers in Rails

Clone [this repo](https://github.com/rwarbelow/form_playground), then bundle, run `rake db:migrate`, and open the code in your text editor. 

### Setup

* go into the console and add a few articles:

```
Article.create(title: "Animals", body: "They are cute.")
Article.create(title: "Food", body: "It is delicious.")
Article.create(title: "Weather", body: "Colorado weather is interesting.")
```

### Route Helpers

* Start your server with `rails s`.
* Navigate to `localhost:3000/articles`
* Take a look at the code that generated the links to the individual articles inside of `app/views/articles/index.html.erb`. Right now, that code looks like this:

```erb
  <a href="/articles/<%= article.id %>"><%= article.title %></a> <br>
```

* Can you replace this with a Rails route helper that provides the same behavior? Check the Rails Guides for Path and URL Helpers [here](http://guides.rubyonrails.org/routing.html#path-and-url-helpers). 
* Can you replace the "Make a new article" link with another Rails route helper that leads to the form?

### Form Helpers

* Open `app/views/articles/new.html.erb` and look at the uncommented form helper.
* Navigate to `localhost:3000/articles/new` and use inspector to take a look at the code for the form.
* What does `form_for(@article)`... do? What HTML does it generate?
* When you click submit on the form, an error should be raised and you should be able to see the params that are coming in. This is on purpose. How are the params nested? How can you access just the article params?
* Go back to `app/views/articles/new.html.erb`. Comment out the first form and uncomment the second form. Repeat the steps above. How is `form_tag` different from `form_for`? What is different about the HTML that is generated? 

Want to read more about form helpers in Rails? Check out the [docs](http://guides.rubyonrails.org/form_helpers.html). 
