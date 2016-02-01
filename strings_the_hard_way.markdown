## Strings the Hard Way

As we go through our programming careers, we'll be working a lot with text.
To facilitate this, we'll want to get familiar with some common string
methods, and one great way to do this is by implementing them ourselves!

For this exercise, write an implementation of the following standard
string methods.

### Length

Find the length of the given string:

```ruby
length("pizza")
=> 5
```

### Upcase

Capitalize all of the letters in a string:

```ruby
upcase("pizza")
=> PIZZA
```

### sub

Take a string, a substring to replace, and a string with which to replace it.
Return a new string that has the __first__ appearance of the substring-to-replace swapped
for the replacement string:

```ruby
sub("dog", "d", "f")
=> "fog"

sub("dud", "d", "f")
=> "fud"
```

### gsub

Similar to `sub`, but replace __all__ occurrences of the replacement string:

```ruby
gsub("dud", "d", "f")
=> "fuf"
```

### Split

Take a string and return an array of strings which are "split"
around any whitespace characters.

```ruby
split("Hello Dear Friends")
=> ["Hello", "Dear", "Friends"]
```

#### With an arg

Additionally, allow the user to provide an argument specifying around which
character the string should be split:

```ruby
split_with_arg("one,two,three", ",")
=> ["one", "two", "three"]
```


### Positional Substrings

Take a string, a start index, and an end index, and return the "substring" starting
from the first position and ending at the last:

(remember that in programming we generally count starting from 0)

```ruby
substring("pizza", 3, 4)
=> "za"

substring("pizza", 1,4)
=> "izza"
```
