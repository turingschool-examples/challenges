### Get-In / KeyPath

We frequently deal with nested, map-like data structures in programming.
For example:

```ruby
{ an_outer: "hash",
  with_another: {
    inner: "hash",
    and_another: {
      inside: "that"
    }
  }
}
```

This approach gives us a flexible, convenient way to organize ad-hoc
information. But it can be a bit tedious to retrieve data from
such a deeply nested structure. In the example above, to get to the inner
key, we would need:

```ruby
our_hash[:with_another][:and_another][:inside]
```

To facilitate this, many languages support a function for retrieving
a "path" through a nested data structure, such as Clojure's
[get-in](https://clojuredocs.org/clojure.core/get-in) or
Objective-C's
[valueForKeyPath](https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Protocols/NSKeyValueCoding_Protocol/#//apple_ref/occ/instm/NSObject/valueForKeyPath:).

For this exercise, practice writing your own `get_in` method using
either Ruby or Javascript. The function should:

* Take a Hash and an Array as an argument
* Go through the array retrieving successive values from the
hash until values are exhausted

For example:

```ruby
data = { an_outer: "hash",
  with_another: {
    inner: "hash",
    and_another: {
      inside: "that"
    }
  }
}

get_in(data, [:with_another, :and_another, :inside])
=> "that"
```

__Extension__

See if you can support "branching" in your method. As part of the
keypath, I should be able to provide another, nested array of keys. This would
represent 2 branches in the path to retrieve.

The method should retrieve both provided branches, returning them as
an array.

For example:

```ruby
data = { an_outer: "hash",
  with_another: {
    inner: "hash",
    and_another: {
      inside: "that"
    }
  }
}

get_in(data, [:with_another, [:inner, [:and_another, :inside]])
=> ["hash", "that"]
```

For this portion, try starting with only a single branching point allowed
in each sequence. If that goes well, try allowing
more, arbitrary nesting deeper into the structure.
