# MCV in Rails and RESTful Routes

Build a small application to display students in a database using MVC architecture and RESTful routes.

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

### On your own

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
