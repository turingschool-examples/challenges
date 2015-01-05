# MCV in Rails and RESTful Routes

Build a small application to display students and their achievements using MVC architecture, RESTful routes, and relationships.

### Setup

* `rails new student-manager`
* `rails generate model Student first_name:string last_name:string birthdate:date`
* `rake db:migrate`
* go into the rails console to generate a few students:

```
$ rails console
2.1.1 :001 > Student.create(first_name: "StudentA", last_name: "ExampleA")
# You should see '(0.1ms)  begin transaction'... 
2.1.1 :002 > Student.create(first_name: "StudentB", last_name: "ExampleB")
# You should see '(0.1ms)  begin transaction'... 
2.1.1 :003 > Student.create(first_name: "StudentC", last_name: "ExampleC")
# You should see '(0.1ms)  begin transaction'... 
2.1.1 :003 > exit

```

### Displaying Students

* generate a students controller
* add `get '/students', to: 'students#index` in the `config/routes.rb` to create your route that will show all students
* add `get '/students/:id', to: 'students#show` in the `config/routes.rb` to create your route that will show one particular student
* add methods in the controller for `index` and `show`
* use `@students = Student.all` in the index action
* use `@student = Student.find(params[:id]` in the show action
* add an `index` view and iterate over `@students` to display every student in the database
* add a `show` view and display the data for `@student`
* start your Rails server by typing `rails s` in the command line
* navigate to localhost:3000/students and verify that all sample students are shown
* navigate to localhost:3000/students/1 and verify that the first sample student is shown

### Setting Up Relationships

Tomorrow we'll be discussing database relationships. In order to prepare, let's add another table to our database: Achievements.

A student can have many achievements, and an achievement belongs to a student. Because of this, we'll store the foreign key on the achievements table.

* `rails generate model achievement description:string awarded_on:date student_id:integer`
* `rake db:migrate`
* go into the rails console to generate a few achievements:

```
$ rails console
2.1.1 :001 > Achievement.create(description: "Mastered MVC in Rails", awarded_on: Date.today, student_id: 1)
# You should see '(0.1ms)  begin transaction'... 
2.1.1 :002 > Achievement.create(description: "Mastered RESTful routing in Rails", awarded_on: Date.today, student_id: 1)
# You should see '(0.1ms)  begin transaction'... 
2.1.1 :003 > Achievement.create(description: "Successfully set up relationships between two tables in Rails", awarded_on: Date.today, student_id: 2)
# You should see '(0.1ms)  begin transaction'... 
2.1.1 :004 > Achievement.create(description: "Generated models and controllers from the command line", awarded_on: Date.today, student_id: 2)
# You should see '(0.1ms)  begin transaction'... 
2.1.1 :003 > exit
```


* We're not concerned with displaying achievements separately for right now, so skip over generating a controller and views for achievements.
* Instead, let's set up relationships
* Modify `student.rb` to look like this:

```ruby
class Student < ActiveRecord::Base
  has_many :achievements
end
```
* in the `achievement.rb` model, add this line:

```ruby
class Achievement < ActiveRecord::Base
  belongs_to :student
end
```

* Now, modify your `show.html.erb` student view to also display their achievements. When you type `student.achievements`, you'll get back an array of the achievements that are associated with that student. In the view, iterate through these to display the description and date the achievement was awarded. 


### Optional Extension

Can you generate an achievements controller and corresponding views so that we can enter achievements through the web interface? Refer back to Blogger for help creating a form in Rails. 
