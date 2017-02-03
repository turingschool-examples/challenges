#### Practice with Migrations: One-to-Many Relationship at the Database Level

1) Create a new rails project from your command line!

2) Imagine that you have Students and Addresses. A student can have many addresses (ie - current address, permanent address, etc.), and an address belongs to one student. Create migrations (`rails g migration ...`) for both students and addresses. 

3) Create a migration to add a boolean column `is_alumnus` to the students table. Give this a default value of false. Migrate this and watch how `schema.rb` changed.

4) Rollback one previous migration. What changed? Can you re-migrate so that `is_alumnus` is in your table again?

#### Practice with Models: One-to-Many Relationship at the Model Level

1) Create a Student model that inherits from ActiveRecord::Base (do this by hand -- don't use a generator for this)

2) Start `rails console` from the command line. Check how many class methods are available on the Student class with `Student.methods.count`

3) Create a new instance of a Student (`student = Student.new`). Check how many methods are available using `student.methods.count`.

4) Create a plain Ruby class and check how many methods are availble both for the class and an instance of the class.

5) Use the instance methods `new_record?`, `update_attributes`, and `save` on `student`. What do they do? How are they used? Reference the docs if you're stuck.

6) Use the class methods `all` to see all Students and `find` / `find_by` to locate a student by an id or other attribute.

7) Set up a one-to-many relationship between the Address and Student models. (You'll first need to create the Address model if you haven't already). Don't forget that you need to create fields in the database in order to create this relationship.

8) In the `rails console`, create a new Student (`student = Student.new(...)`), save that student (`student.save`), and create a new address for that student (`student.addresses.create(...)`).

9) Look at the ActiveRecord relationship with `student.addresses`. 

#### Connecting Routes and Controllers

Use our routes and controllers lesson from yesterday to add functionality so that:

* when visiting `'/students'`, render a view (follow Rails' naming conventions) with the names of all of the students
* when visiting `'/students/:id'`, render a view showing the student's name and a list of that student's addresses. 

#### Practice with Migrations: Many-to-Many Relationship

1) Imagine that you have Students, Courses, and Enrollments. A student has many courses, and a course has many students. The many-to-many relationship is created through the join table 'enrollments'. You should already have a migration for students. Create two more migrations: courses and enrollments.

#### Practice with many-to-many associations

1) Set up a many-to-many relationship with Students, Courses, and Enrollments

2) In the `rails console`, create a new Student (`student = Student.new`) and save that student (`student.save`). Create a new course (`course = Course.new`) and save it (`course.save`). Create an enrollment with `student.enrollments.create(`course_id: course.id`). What happens if you create a new course and associate it with a student at the same time - `student.courses.create(name: "Chemistry")`? What do you notice about this?

3) Look at the ActiveRecord relationships with `student.enrollments` and `student.courses`.

#### Connecting Routes and Controllers

Use our routes and controllers lesson from yesterday to add functionality so that:

* when visiting `'/courses'`, a view is rendered showing all of the course names
* when visiting `'/courses/:id'`, a view is rendered to show the course name and a list of all enrolled students
* add functionality to `'/students/:id'` so that in addition to name and addresses, all of that student's course names are also displayed
