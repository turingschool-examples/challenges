# ActiveRecord and Database Design

### 1) Traffic Spy Schema (~45 minutes)

Carefully read through the [Traffic Spy](http://tutorials.jumpstartlab.com/projects/traffic_spy.html) specifications. Play around with cURL.

With your Traffic Spy team, design a database schema using [this online tool](http://ondras.zarovi.cz/sql/demo/). Be sure to normalize the database and include foreign keys to show relationships between tables. 

### 2) TaskManager and ActiveRecord (~1-2 hours)

1) Using a migration, add a new table to task manager for statuses. The only attribute of a status is a `name`. A task belongs to a status and a status can have many tasks. Don't forget to add a foreign key of status_id to the task table. 

2) Run your migration. Check to see that `schema.rb` was updated properly. 

3) From the command line, start Tux:

```
$ tux
```

Tux gives you an interactive console for your app. Go ahead and add some data to your database:

```
>> User.create(name: "Josh")
>> User.create(name: "Rachel")
>> User.create(name: "Jeff")
>> Status.create(name: "Completed")
>> Status.create(name: "In progress")
>> Status.create(name: "Ready")
>> Status.create(name: "Someday")
>> Task.create(title: "Wash the hamster", description: "insert clever description here", user_id: 1, status_id: 1)
>> Task.create(title: "Very important thing", description: "insert clever description here", user_id: 2, status_id: 1)
>> Task.create(title: "Wake up", description: "insert clever description here", user_id: 2, status_id: 2)
>> Task.create(title: "Make a task manager app", description: "insert clever description here", user_id: 1, status_id: 4)
>> Task.create(title: "Hire detective", description: "insert clever description here", user_id: 3, status_id: 3)
```

#### Experimenting with Built-in ActiveRecord Methods

What does this do? What table is affected? 

```
>> user = User.first
>> user.tasks.create(title: "Play tennis", description: "double-handed backhand", status_id: 2)
```

What about this?

```
>> status = Status.first
>> task = Task.create(title: "Learn ActiveRecord", description: "so fun", user_id: 2)
>> status.tasks << task
```

* What's the difference between `User.new(name: "Bob")` and `User.create(name: "Bob")`? Play around with Tux and your development environment (use shotgun to see your web interface) to investigate the difference. How does the `save` method play into the relationship between `new` and `create`? What about the `new_record?` method? You may also want to do some Googling. 

* What kind of object does `Task.all` return? 
* How can you get a count of all of the Users? 
* How do you grab the first Task? What about the last? 
* Can you select all tasks where the user_id is 2? Try `Task.where(...`
* What's the difference between the query above and `Task.find_by(user_id: 2)`?
* Can you select the status with a specific id? Try `Status.find(...`
* What does `Task.find_or_create_by(title: "Learn ActiveRecord")` do? What about `Task.find_or_create_by(title: "Learn Sequel")`?
* Try calling `.to_sql` on the end of any query (like `Task.where(title: "Play tennis").to_sql`). What happens?
* What does `User.pluck(:name)` do? Can you generate a query to return only the task titles? 
* Go through the [ActiveRecord docs](http://guides.rubyonrails.org/active_record_querying.html) and find three other methods to try out. 

#### Extension

* Create a `/statuses` route in your controller that renders a view with clickable links for each status. The link should go to a `/statuses/:id` route that renders a view with all tasks associated with that status. 

* Change out the sqlite database for a postgres database. 

### Outside Resources

Below are a few tutorials that walk through creating a Postgres-Sinatra application that uses ActiveRecord.

* [Designing With Class: Sinatra + PostgreSQL + Heroku](http://mherman.org/blog/2013/06/08/designing-with-class-sinatra-plus-postgresql-plus-heroku/#.VOIsu1PF9h6)
* [Sinatra: Building an ActiveRecord and Postgres application](http://www.millwoodonline.co.uk/blog/sinatra-activerecord-postgres-application)
* [making-a-simple-database-driven-website-with-sinatra-and-heroku](https://samuelstern.wordpress.com/2012/11/28/making-a-simple-database-driven-website-with-sinatra-and-heroku/)
