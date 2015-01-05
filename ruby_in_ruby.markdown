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
