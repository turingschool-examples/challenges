# Reverse

## Base

Ruby has a built in string method `#reverse`. It does what you would expect and reverses the text inside of a given string.

```ruby
pry(main)> a = "skittles"
pry(main)> a.reverse
=> "selttiks"
```

Write a method that will implement this same functionality so that the following code snippet will run.

```ruby
StringReverser.reverse("skittles")
=> "selttiks"
```

Do not use `#reverse` in the method you create.

## Extension 1

Ruby also has a `#length` method that returns the length of a string.

```ruby
pry(main)> a = "skittles"
pry(main)> a.length
=> 8
```

Extend your existing `StringReverser` class to implement a `#length` method that does not use `#length` in its implementation.
