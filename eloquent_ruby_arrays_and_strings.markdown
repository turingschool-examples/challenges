# Eloquent Ruby -- Digging in to Arrays and Strings

## Part 1: Taking Advantage of Ruby's Smart Collections

First, read chapter 3 (pages 29 through 42).

Next, use what you've learned to solve these short
challenges:

### 1. Using Variable Method Arguments

Write a method that takes _any number of arguments_,
and prints the value of the first and last arguments,
ignoring any middle ones.

For example, using this method from IRB or Pry
might look like:

```ruby
variable("first", "second", "third")
first
third
nil
```

### 2. Using Map and Join

1. Create an array containing the strings "dog", "cat", "goat", and "capybara"
2. Transform this array into a new array where each string is
capitalized ("Dog", "Cat", "Goat", "Capybara")
3. Combine this collection of capitalized strings into a single
string, with each element separated by a comma and a space
("Dog, Cat, Goat, Capybara")

### 3. Dangers of `!` Methods

* Summarize in your own words the conventions around methods
whose names end in a `!`
* Describe in your own words the advantages and disadvantages
of these methods. When would you want to use one and when
would you want to avoid using one.

## Part 2: Taking Advantage of Ruby's Smart Strings

First, read chapter 4 (pages 43 through 52).

Next, use what you've learned to solve these short
challenges:

### 1. Special Characters in Strings

* What does it mean to "escape" a character within a string?
* List 3 characters that have to be "escaped" when written
in a string.
* Use escape strings to generate a string containing your
name and, on a separate line, your height in inches and feet.

For example, mine, when printed, would look like:

```
Horace
5'9"
```

### 2. Splitting Strings

Take the string of your name and height you generated
in the previous section and split it into an array
containing your name (as the first element) and
height (as the second element).

For example my example from above would generate:

```
["Horace", "5'9\""]
```

Don't forget that `split` takes an _optional_ argument specifying
the character on which you'd like to split your string.

### 3. Poking at Bytes

We know that ultimately all data on our computers has to get
represented as numbers (numbers encoded as 1's and 0's, to
be precise). So how does text fit into this representation?

In short, the machine uses tables that map characters to
specific numeric values.

Use the `each_byte` method on a string to discover which numeric
byte values correlate to each character in your name.

For example, "Horace" translates to:

```ruby
[72, 111, 114, 97, 99, 101]
```
