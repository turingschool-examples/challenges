# Flatten

The `flatten` method on `Array` squishes any nested
arrays into the outer array like this:

```ruby
> [[1,2],[3,[4,5]]].flatten
=> [1, 2, 3, 4, 5]
```

Implement a `CustomArray` class that works like this:

```ruby
> c = CustomArray.new([[1,2],[3,[4,5]]])
> c.flatten
=> [1, 2, 3, 4, 5]
```

But the `CustomArray` class **may not use the
built-in `.flatten` method**.

The object of this exercise is to recreate the functionality of the
`flatten` method that we have in Ruby's Array class.

Your solution should make use of methods and classes. Be sure to write good
tests.


