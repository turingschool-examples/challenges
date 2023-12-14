# Pattern Generator

We want the ability to generate serial numbers for each of our products as they roll off the manufacturing line. It's important that the pattern of the serial numbers is tightly defined and numbers generated in a logical fashion.

A pattern follows these rules:

* A `.` in a pattern represents a place that can be filled with a capital letter `A`-`Z`
* A `#` in a pattern represents a place that can be filled with a digit `0`-`9`
* A `@` in a pattern represents a place that can be filled with a digit or letter `0` up to `Z`

Write a program which can:

## Part 1: Verify Pattern Compliance

Given a generated serial number, return true or false based on whether or not the input matches the pattern.

In Ruby:

```ruby
pg = PatternGenerator.new
pattern = ".#.@"
pg.verify("A3B1", pattern)
# => true
pg.verify("AABA", pattern)
# => false
```

In JavaScript:

```js
pattern = ".#.@";
pattern_verify("A3B1", pattern);
// => true
pattern_verify("AABA", pattern);
// => false
```


## Part 2: Generate The Nth Value In the Pattern

Given a specific pattern, assuming that incrementing happens from right to left (like normal numbers), generate the Nth value in the sequence:

In Ruby:

```ruby
pg = PatternGenerator.new
pattern = "@.#."
pg.generate(0, pattern)
# => "0A0A"
pg.generate(27, pattern)
# => "0A1B"
```

In JavaScript:

```js
pattern = "@.#.";
pattern_generate(0, pattern);
// => "0A0A"
pattern_generate(27, pattern);
// => "0A1B"
```

## Part 3: Possibilities

Given a specific pattern, determine how many total numbers are in the set:

In Ruby:

```ruby
pg = PatternGenerator.new
pattern = ".#."
pg.total_available(pattern)
# => 6760
pattern = "@.#."
pg.total_available(pattern)
# => 243360
```

In JavaScript:

```js
pattern = ".#.";
pattern_total_available(pattern);
// => 6760
pattern = "@.#.";
pattern_total_available(pattern);
// => 243360
```

## Part 4: Deduction

Given a sample of three serial numbers, output a pattern that could generate them. Prefer `.` and `#` over `@` if they fit the sample serial numbers.

```ruby
pg = PatternGenerator.new
inputs = ["0A1B", "5C2Z", "9R9B"]
pg.find_pattern_for(inputs)
# => "#.#."

inputs_2 = ["0A1B", "5C2Z", "AR9B"]
pg.find_pattern_for(inputs_2)
# => "@.#."
```

In JavaScript:

```js
inputs = ["0A1B", "5C2Z", "9R9B"];
pattern_for_inputs(inputs);
// => "#.#."

inputs_2 = ["0A1B", "5C2Z", "AR9B"];
pattern_for_inputs(inputs_2);
// => "@.#."
```
