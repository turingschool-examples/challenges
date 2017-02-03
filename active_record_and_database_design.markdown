# ActiveRecord and Database Design

### 1) FilmFile and ActiveRecord (~1-2 hours)

1) Using a migration, add a new table to Film File for directors. The only attribute of a director is a `name`. A film belongs to a director and a director can have many films. Don't forget to add a foreign key of director_id to the films table. 

2) Run your migration. Check to see that `schema.rb` was updated properly. 

3) From the command line, start Tux:

```
$ tux
```

Tux gives you an interactive console for your app. Go ahead and add some data to your database:

```
james = Director.create(name: "James Cameron")
colin = Director.create(name: "Colin Trevorrow")
joss = Director.create(name: "Joss Whedon")
christopher = Director.create(name: "Christopher Nolan")
george = Director.create(name: "George Lucas")
lee = Director.create(name: "Lee Unkrich")
```

Associate the existing films in your database with their respective directors. If you don't know any movie directors (like me), check out [IMDB All-Time Box Office: USA](http://www.imdb.com/boxoffice/alltimegross). 

#### Experimenting with Built-in ActiveRecord Methods

What does this do? What table is affected? 

```
>> genre = Genre.find(2)
>> genre.films.create(title: "Avengers: Age of Ultron", year: 2015, box_office_sales: 458991599, director_id: 3)
```

What about this?

```
>> director = Director.first
>> film = Film.create(title: "Terminator 2: Judgment Day", year: 1991, box_office_sales: 204843350, genre_id: 2)
>> director.films << film
```

* What's the difference between `Genre.new(name: "Anime")` and `Genre.create(name: "Anime")`? Play around with Tux and your development environment (use shotgun to see your web interface) to investigate the difference. How does the `save` method play into the relationship between `new` and `create`? What about the `new_record?` method? You may also want to do some Googling. 

* What kind of object does `Genre.all` return? 
* How can you get a count of all of the Directors? 
* How do you grab the first Film? What about the last? 
* Can you select all films where the director_id is 3? Try `Film.where(...` or `Director.find(...`
* What's the difference between the query above and `Film.find_by(director_id: 3)`?
* Can you select the genre with a specific id? Try `Genre.find(...`
* What does `Director.find_or_create_by(name: "James Cameron")` do? What about `Director.find_or_create_by(name: "Mel Gibson")`?
* Try calling `.to_sql` on the end of the query `Genre.where(name: "Romance").to_sql`. What happens?
* What does `Film.pluck(:title)` do? Can you generate a query to return only the task titles? 
* Go through the [ActiveRecord docs](http://guides.rubyonrails.org/active_record_querying.html) and find three other methods to try out. 

#### Calculations

* Create a route in your controller for `/directors/:id`. This should prepare an instance variable for the director `@director = Director.find(id)` and render a view with all films associated with that director. 
* In this view, display the total gross box office sales for that director's films. Hint: Use the [ActiveRecord Calculations Documentation](http://guides.rubyonrails.org/active_record_querying.html#calculations)
* Display the average gross box office sales for that director's films. Use the documentation linked above. 
* I'm not judging, but you probably wrote these calculations right in your view. Can you extract these out to a class method in film so that you can call something more beautiful like `@director.films.total_sales`? (Yes, `total_sales` will be a class method on `Film`. Any class methods defined in a class that inherits from `ActiveRecord::Base` are also available on associations.)

#### Extension

* Change out the sqlite database for a postgres database. 

### 2) FilmFile and CRUD

Add the CRUD functionality for films. A user should be able to see all the films, create a new film, see an individual film, update a film, and delete a film.

