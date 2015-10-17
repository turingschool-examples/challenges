# Ruby in Ruby

Ruby core and the standard library offer a tremendous amount of functionality
right out of the box. But how is that functionality implemented?

In this series of challenges, let's try to re-implement some common methods.

## Part 1: Array Basics

For these array exercises, start with the following template:

```ruby
class SimpleArray
  attr_reader :data

  def initialize(the_data)
    @data = the_data
  end
end
```

Which can be used like...

```ruby
an_array = SimpleArray.new(['a', 'b', 'c'])
an_array.some_method
```

Presuming that you've added a method like `some_method` per the descriptions
below.

### `first` and `last`

To warmup, can you implement `first` and `last` methods on `SimpleArray` which
do not use the corresponding `first` and `last` of `Array`?

```ruby
an_array = SimpleArray.new(['a', 'b', 'c'])
an_array.first         # => "a"
an_array.last          # => "c"
```

### `join`

Can you implement a method that mimics `join` without using the `join` offered
by `Array`? Your interaction might look like:

```ruby
an_array = SimpleArray.new(['a', 'b', 'c'])
an_array.join         # => "abc"
an_array.join('-')    # => "a-b-c"
```

### `count`

How about an implementation of `count` without using the `count` from `Array`?

```ruby
an_array = SimpleArray.new(['a', 'b', 'c'])
an_array.count         # => 3
other_array = SimpleArray.new
other_array.count      # => 0
```

## Part 2: Manipulating Strings

For these string exercises, start with the following template:

```ruby
class SimpleString
  attr_reader :data

  def initialize(the_data)
    @data = the_data
  end
end
```

Which can be used like...

```ruby
an_array = SimpleString.new("hello")
an_array.some_method
```

Presuming that you've added a method like `some_method` per the descriptions
below. Remember that strings are basically arrays of characters.

### `length`

How many characters are in your `SimpleString`?

```ruby
a_string = SimpleString.new("hello")
a_string.length          # => 5
second_string = SimpleString.new("")
second_string.length     # => 0
```

Don't use the `length` built into `String`.

### `end_with?`

You might not be familiar with the `end_with?` method. It works like this:

```ruby
a_string = SimpleString.new("hello")
a_string.end_with?("o")        # => true
a_string.end_with?("x")        # => false
a_string.end_with?("ello")     # => true
a_string.end_with?("hllo")     # => false
```

Don't use the methods `end_with?` or `start_with?` built-in to `String` to create
your implementation.

But, as an extra exercise, think about a solution that does rely on the `start_with?`
in `String`.

### `upcase`

Implement an `upcase` method that capitalizes all the letters in the `SimpleString`:

```ruby
a_string = SimpleString.new("hello")
a_string.upcase         # => "HELLO"
second_string = SimpleString.new("BYE")
second_string.upcase    # => "BYE"
third_string = SimpleString.new("")
third_string.upcase     # => ""
```

There are at least two approaches: one using a hash to map characters and the second
that involves math. Neither need's the `upcase` from `String`.

### `+`

Reimplement `+`? Seriously?

```ruby
a_string = SimpleString.new("hello")
second_string = SimpleString.new("BYE")
a_string + second_string    # => "helloBYE"
```

Don't use `+`, `<<`, or `concat` from `String`.
