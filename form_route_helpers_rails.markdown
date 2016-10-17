## Form and Route Helpers in Rails

Clone [this repo](https://github.com/rwarbelow/form_playground) and run the necessary commands to get the application setup.

### Setup

1. Open the [Rails console](http://guides.rubyonrails.org/command_line.html#rails-console) and check how many articles already exist in the database. 
2. Check out the seeds file in the `db` folder. What is it doing? What would you expect to happen when you run `rake db:seed`? 
3. Now run the rake command that runs this seed file. 
4. Now, hop back into your Rails console and verify that your seed file ran and you have articles in your development database. 

### Experimenting with Route Helpers
* Replace the "Make a new article" link with a Rails route helper that leads to the form?
* Add a link (using a route helper) on the `show.html.erb` page so that a user can return to the articles index? 
* How is the prefix section from the output of running `rake routes` connected with route helpers? 

### Form Helpers

* Open the article's `new.html.erb` view and look at the uncommented form helper.
* Navigate to the path in your browser that renders this view (`/articles/new`) and use the Chrome Dev Tools to inspect the code for the form (right-click on the form and choose "inspect element"). If you aren't using Chrome, inspect the element however works for your Browser.
* What do you think `form_for(@article)...` does? What HTML does it generate? Does this look familiar or foreign? What would you have written to create the same thing in Sinatra? 
* Fill in a title and description in the input boxes. When you click submit on the form, an error should be raised (this is on purpose). That error will show you the params that are coming in. You should see the following (the only difference will be whatever text you entered in the form):

```
{"utf8"=>"✓", "authenticity_token"=>"N1P3tOB7xGlU2GDXKV9tlVwmL2ZXKT3jiumxXNQYmTWl7xdK7X8SrU2z1jBt0/yiUxLkTOwK/r5a1l6+bc+uzg==", "article"=>{"title"=>"title", "body"=>"body"}, "commit"=>"Create Article", "controller"=>"articles", "action"=>"create"}
```

You'll see the keys of `utf8`, `authenticity_token`, `commit`, `controller`, and `action`, but ignore them for now and just focus on the `article` key. 

* How are the params nested? How would you access *just* the article data (title and description) from the `params` hash?
* Go back to the `new.html.erb` view. Comment out the first form and uncomment the second form. You'll need to manually take out or put in each `#` in the erb tags (commenting out erb is a tad of a pain). 
* Repeat the steps above. How is `form_tag` different from `form_for`? Either StackOverflow this, look at the docs, or put a `pry` in the controller and take a look at your params. What is different about the HTML that is generated? (use Chrome inspector to look at the HTML). Are the params nested? What implications might this have for using the params to create a new article? 
* Which do you think makes more sense for creating a new article: `form_for(@article)...` or `form_tag articles_path`? Why? 
* Check out this post on the difference between `form_for` and `form_tag`:
	- [When to use form_for and form_tag](http://stackoverflow.com/questions/14463946/form-for-and-form-tag-when-to-use-which-one)
	- [Rails form_for documentation](http://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html)
	- [Rails form_tag article](http://www.saalonmuyo.com/2010/01/27/using-form_tag-in-ruby-on-rails/)
