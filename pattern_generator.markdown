# Pattern Generator

We want to generate serial numbers for each of our products as they roll off the manufacturing line. It's important that the patterns of the serial numbers are tightly defined.

The patterns follow these rules:

* A `.` in a pattern represents a place that can be filled with a capital letter A-Z
* A `#` in a pattern represents a place that can be filled with a number 0-9
* Any letter or number in the pattern is a "literal" left in the output

Write a program which can:

## Part 1: Verify Pattern Compliance

Given a generated serial number, return true or false based on whether or not the input matches the pattern:

```
pg = PatternGenerator.new
pattern = ".#."
pg.verify("A3B", pattern)
# => true
pg.verify("AAB", pattern)
# => false
```

## Part 2: Generate The Nth Value In the Pattern

Given a specific pattern, assuming that incrementing happens from right to left (like normal numbers), generate the Nth value in the sequence:

```
pg = PatternGenerator.new
pattern = ".#."
pg.generate(0, pattern)
# => "A0A"
pg.generate(27, pattern)
# => "A1B"
```

## Part 3: Possibilities

Given a specific pattern, determine how many total numbers are in the set:

```
pg = PatternGenerator.new
pattern = ".#."
pg.total_available(pattern)
# => 6760
```
