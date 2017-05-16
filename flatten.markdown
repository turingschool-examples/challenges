# Flatten

The `flatten` method on `Array` squishes any nested
arrays into the outer array like this:

```ruby
> [[1,2],[3,[4,5]]].flatten
=> [1, 2, 3, 4, 5]
```

JavaScript does not have a 'flatten' method. In ES6,  you could deconstruct the array (...) and use `concat` to do something similar.

```js
> [].concat.apply(...[[1,2],[3,[4,5]]])
=> [1, 2, 3, 4, 5]
```

The object of this exercise is to recreate the functionality of the
`flatten` method that we have in Ruby's Array class.

Implement a `CustomArray` class that works like this:

Ruby
```ruby
> c = CustomArray.new([[1,2],[3,[4,5]]])
> c.flatten
=> [1, 2, 3, 4, 5]
```

JavaScript
```javascript
> let c = new CustomArray([[1,2],[3,[4,5]]])
> c.flatten
=> [1, 2, 3, 4, 5]
```

But the `CustomArray` class **may not use the
built-in `.flatten` method** or `.to_s` in Ruby or `concat` or deconstructing in JavaScript
