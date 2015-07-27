Sorted Merging
==============

Context
-------

If you ever have the good fortune to write a merge sort,
you will find that it boils down to two tasks:

1. Split an array into two halves, and sort the halves.
2. Merge the sorted halves together.

We've done the first one for you:

```ruby
def merge_sort(array)
  return array if array.length < 2
  mid   = array.length / 2
  left  = merge_sort(array[0, mid])
  right = merge_sort(array[mid, array.length-mid])
  merge_sorted_arrays left, right
end
```

After returning from `merge_sort`, the two havles are sorted
(recursion :) This means that when they come into
`merge_sorted_arrays`, both of the arrays are already sorted.


Problem
-------

Your job is to do the second task, by defining `merge_sorted_arrays`:

```ruby
def merge_sorted_arrays(array1, array2)
  # your code here :)
  # array1 and array2 are sorted, you need to put them together,
  # returning a new array, which is sorted and has the contents of both
end
```

Examples
--------

Here are a bunch of examples of how you might call it
(maybe turn them into test cases ;)

```ruby
merge_sorted_arrays([],      [])            # => []
merge_sorted_arrays([],      [1])           # => [1]
merge_sorted_arrays([1],     [])            # => [1]
merge_sorted_arrays([1],     [2])           # => [1, 2]
merge_sorted_arrays([2],     [1])           # => [1, 2]
merge_sorted_arrays([1,3],   [2])           # => [1, 2, 3]
merge_sorted_arrays([2],     [1,3])         # => [1, 2, 3]
merge_sorted_arrays([1,2,3], [4])           # => [1, 2, 3, 4]
merge_sorted_arrays([4],     [1,2,3])       # => [1, 2, 3, 4]
```

Here's some more, just to be thorough

```ruby
# just hit it w/ a lot of crap :D
merge_sorted_arrays([]         , [])        # => []
merge_sorted_arrays([1]        , [])        # => [1]
merge_sorted_arrays([2]        , [1])       # => [1, 2]
merge_sorted_arrays([1,2,3]    , [])        # => [1, 2, 3]
merge_sorted_arrays([4]        , [1,2,3])   # => [1, 2, 3, 4]
merge_sorted_arrays([1,3]      , [2,4,5])   # => [1, 2, 3, 4, 5]
merge_sorted_arrays([1,2,3,4,6], [5])       # => [1, 2, 3, 4, 5, 6]
merge_sorted_arrays([1,3,4,6,7], [2,5])     # => [1, 2, 3, 4, 5, 6, 7]
merge_sorted_arrays([2,5,6,8]  , [1,3,4,7]) # => [1, 2, 3, 4, 5, 6, 7, 8]
merge_sorted_arrays([2,4,6,7,8], [1,3,5,9]) # => [1, 2, 3, 4, 5, 6, 7, 8, 9]
```

Okay, but for realsies this time!

```ruby
def random_split(array)
  dup_array, split = array.dup, [[], []]
  split.sample << dup_array.shift until dup_array.empty?
  split
end

1000.times do
  array       = [*1..rand(1000)]
  left, right = random_split(array)
  result      = merge_sorted_arrays(left, right)
  next if result == array
  raise({array: array, result: result, left: left, right: right}.inspect)
end
```

Extensions
----------

### Insertion Style

Implement the method such that it inserts each item from the smaller array
into the larger array.

```ruby
# to start
left  = [1, 3, 5]
right = [2, 4, 6, 7]

# here is what you would have after 1 iteration
left  = [1, 2, 3, 5]
right = [4, 6, 7]

# 2nd iteration
left  = [1, 2, 3, 4, 5]
right = [6, 7]

# 3rd iteration
left  = [1, 2, 3, 4, 5, 6]
right = [7]

# final iteration
left  = [1, 2, 3, 4, 5, 6, 7]
right = []
```

### Queue style

Queue style (this is how I implemented it the first time)

```ruby
# to start
left   = [1, 3, 5]
right  = [2, 4, 6, 7]
merged = []

# here is what you would have after 1 iteration
left   = [2, 3, 5]
right  = [4, 6, 7]
merged = [1]

# 2nd iteration
left   = [3, 5]
right  = [4, 6, 7]
merged = [1, 2]

# 3rd iteration
left   = [5]
right  = [4, 6, 7]
merged = [1, 2, 3]

# 4th iteration
left   = [5]
right  = [6, 7]
merged = [1, 2, 3, 4]

# ... final iteration
left   = []
right  = []
merged = [1, 2, 3, 4, 5, 6, 7]
```

### Generalized

Make it merge any number of arrays together!

```ruby
def merge_sorted_arrays(arrays)
  # your code here :)
end
```

And you can call it like this:

```ruby
merge_sorted_arrays([[1, 8, 9], [2, 3, 10], [5, 7], [0, 4, 6]])    # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
merge_sorted_arrays([[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]])          # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
merge_sorted_arrays([[0, 2, 3, 6, 7], [1, 4, 5, 8, 9, 10]])        # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
merge_sorted_arrays([[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]])          # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
merge_sorted_arrays([[7, 9], [0, 8], [1, 2, 3, 5, 10], [4, 6]])    # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
merge_sorted_arrays([[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]])          # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
merge_sorted_arrays([[4, 5, 7], [1, 2, 9], [0, 3, 6, 8, 10], []])  # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
merge_sorted_arrays([[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]])          # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
merge_sorted_arrays([[0, 1, 3, 4, 6, 7], [2, 5, 8, 9, 10]])        # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
merge_sorted_arrays([[2, 5, 7, 8, 9, 10], [1], [6], [0, 3, 4]])    # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
```
