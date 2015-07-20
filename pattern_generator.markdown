# Pattern Generator

We want to generate serial numbers for our products as they roll off the manufacturing line. Patterns for the
numbers are five characters like `XXNXN` where `X` stands for an uppercase letter A-Z and `N` stands for a digit 0-9.

Write a program which, given a pattern like `XXNXN`, can both:

* generate all possible serial numbers for that pattern
* report out how many numbers were generated.

## Extensions

* Can you also support patterns of any length?
* Customers often confuse `0` and `O`, `I` and `1`. Let's omit all four of those symbols from the generator.
