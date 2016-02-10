## Merge-With

Many programming languages (including Ruby) ship with a built-in
`merge` function for combining 2 maps (hashes). Usually we'll follow
straightforward "last-one wins" semantics -- if 2 merged hashes contain
the same key then the second one will win. For example:

```ruby
{:a => 1}.merge({:a => 2})
=> {:a=>2}
```

However sometimes we'd like to perform a merge using a customized process
for combining overlapping values: merge 2 hashes by summing, concatenating,
or subtracting the values of matching keys, etc.

Let's implement a function to do this. Define your own method `merge_with`
which takes 3 arguments:

1. A hash
2. Another hash
3. A 2-argument block specifying the process that should be
used to combine value of any matching keys.

For example:

```ruby
merge_with({:a => 1}, {:a => 2, :b => 1}) do |a,b|
  a + b
end
=> {:a => 3, :b => 1}
```
