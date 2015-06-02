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

* Can you replace this with a Rails route helper that provides the same behavior? 
* Can you replace the "Make a new article" link with another Rails route helper that leads to the form?

### Form Helpers

* Open `app/views/articles/new.html.erb`.
* Navigate to `localhost:3000/articles/new`. 
