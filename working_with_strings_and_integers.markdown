# Working with Strings and Integers


### 1. First & Last
Complete the following exercises to solidify your understandings of strings and integers.

## Just Strings

If you have the strings `"First"` and `"Last"` in the following variables:

```ruby
f = "First"
l = "Last"
```

Use *only* the "string concatenation" technique to complete the following:

1. What code can you write to output the string `"FirstLast"`?
```ruby
p f + l
```
2. What code can you write to output the string `"LastFirst"`?
```ruby
p l + f
```
3. What code can you write to output the string `"First Last"`?
```ruby
p f + " " + l
```
4. What code can you write to output the string `"Last First Last First"`?
```ruby
p l + " " + f + " " + l + " " + f
```

Then repeat 1-4 using only the "string interpolation" technique.
1. What code can you write to output the string `"FirstLast"`?
```ruby
p "#{f}#{l}"
```
2. What code can you write to output the string `"LastFirst"`?
```ruby
p "#{l}#{f}"
```
3. What code can you write to output the string `"First Last"`?
```ruby
p "#{f} #{l}"
```
4. What code can you write to output the string `"Last First Last First"`?
```ruby
p "#{l} #{f} #{l} #{f}"
```

### 2. Names

Start with this string:

```ruby
name_1 = "Megan Smith"
name_2 = "Todd Park"
```

1. Can you come up with *two* ways to output just the fragment `"Megan"` from `name_1`?
name_1[0, 5]
name_1[0...5]
2. Would either of your techniques from A would work to output `"Todd"` from `name_2`? Why or why not?
They would not, because they will return the first 5 characters of a string, so they would return "Todd "
3. Write code that can output the initials of `name_2`
p name_2[0] + name_2[5]


## Just Integers

Start with these numbers:

```ruby
a = 12
b = 65
c = 31
d = 98
```

1. Write code to find the average of these four numbers.
p ( a + b + c + d ) / 4
2. Find the average yourself using paper or a calculator. Is your answer different than you found in A? Why?
Yes, it's 51.5.  is different because Ruby is coercing a float to a fixnum.
3. Say you have the operation `a + b * c / d`. What result do you get out from Ruby? What other outputs can you
get out by adding one or more pairs of parentheses to the equation?
32. You can get 0 if c / d is separated by parenthesis.

## Strings & Integers

### People

Say we have these people:

```ruby
a = "Ezra"
b = "Ada"
c = "Yukihiro"
d = "Grace"
```

Write code to output both the total characters in all the names together and the average length of the names.
p a.length + b.length + c.length + d.length
p (a.length + b.length + c.length + d.length ) / 4

### Happy Birthday

In our family we like to say "Happy" once for every year of your age when we say "Happy birthday!". So when you turn
four we'd say "Happy happy happy happy birthday!" Note the capitalization.

Say you have an `age` variable that holds the person's age. Write code to output the appropriate greeting.
```ruby
age.times do |i|
  if i == 0
    print "Happy "
  else
    print "happy "
  end  
end
print "birthday!"
```

### String Compression

There's a silly compression algorithm that outputs the first letter, the number of letters in the middle,
and the last letter. So for the string `"Kalamazoo"` it'd output `"K7o"` or `"Denver"` would be `"D4r"`.
Can you write code to implement that?

```ruby
first_letter = word[0]
middle = word[1...-1].length.to_s
last_letter = word[-1]

compressed = first_letter + middle + last_letter
p compressed
```

