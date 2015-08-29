# Credit Check

Let's write a program that can detect mistakes in a credit card number.

## Luhn Algorithm

The Luhn algorithm is a check-summing algorithm best known for checking the validity of credit card numbers.

You can checkout the full description on Wikipedia: http://en.wikipedia.org/wiki/Luhn_algorithm

### Description

(adapted from Wikipedia)

The formula verifies a number against its included check digit, which is usually appended to a partial account number to generate the full account number. This full account number must pass the following test:

* from the rightmost digit, which is the check digit, moving left, double the value of every second digit
* if product of this doubling operation is greater than 9 (e.g., 7 * 2 = 14), then sum the digits of the products (e.g., 10: 1 + 0 = 1, 14: 1 + 4 = 5).
* take the sum of all the digits
* if and only if the total modulo 10 is equal to 0 then the number is valid

### Example

#### Calculating the Check Digit

**You don't need to calculate the check digit for this assignment, but the explanation may help you understand the algorithm.**

Take an account identifier `7992739871`. To make it an account number, we need to calculate and append a check digit. Calling the digit `x`, the full account number will look like `7992739871x`.

We use the algorithm to calculate the correct checksum digit:

```
Account identifier:    7   9   9   2   7   3   9   8   7   1   x
2x every other digit:  7   18  9   4   7   6   9   16  7   2   x
Summed digits over 10: 7   9   9   4   7   6   9   7   7   2   x
Results summed:        7   9   9   4   7   6   9   7   7   2` = 67
```

With the result of `67`, we take the ones digit (`7`) and subtract it from `10`: `10 - 7 = 3`. Thus `3` is the check digit.

The full account number with check digit is `79927398713`.

#### Validating an Account Number

We can use the same process to validate an account number. Using `79927398713` as our sample input:

```
Account identifier:    7   9   9   2   7   3   9   8   7   1   3
2x every other digit:  7   18  9   4   7   6   9   16  7   2   3
Summed digits over 10: 7   9   9   4   7   6   9   7   7   2   3
Results summed:        7   9   9   4   7   6   9   7   7   2   3 = 70
```

Since the summed results modulo 10 is zero, the account number is valid according to the algorithm.

## Assignment

Write a program that implements the Luhn algorithm to validate a credit card number.

Start with this template and save it as `credit_check.rb`:

```ruby
card_number = "4929735477250543"

valid = false

# Your Luhn Algorithm Here

# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"
```

### Hints

* You don't need any kind of loops, iteration, or arrays
* You don't need to write any methods or create classes
* You don't need automated tests
* You can pull a character out of a string using `my_string[X]` where `X` is a numeric position number
* You can convert a string to an integer by calling `.to_i` (ex: `"4".to_i`)

The purpose of these hints:

> @paddington: so was the whole don’t use arrays or loops things a misdirection, or optional?

-- Student

> Optional. Would probably seem tricky if you read it as "don't use arrays or loops" and then saw me use arrays and loops. However, it was intended to bolster students who were intimidated by loops "You don't need" (to worry about all that shit). As with everything in life, there is no truth, only tradeoffs. So what are the tradeoffs there?
>
> If you don't use loops and arrays, then an entire domain of complexity goes away (how to work with them as collections), and you can write out each step by itself. So if the amount of unknowns is large for you, then this is a good way to remove a big unknown, scaling the problem down to something you're more likely to succeed at. It will also be much easier to see how one of these digits changes as it flows through the program.
>
> If you do use loops and arrays, then you can do a step one time instead of 16 times (ie instead of calling `to_i`  on 16 different digits, you only have to call it on the current digit. This means you have to write way less code, and if you ever discover that you need to make a change, you only have to do it in the one place rather than in 16 places. It also lets you think in certain higher level abstractions like  "I have digits as strings, but I want them as integers", an idea that the mathematicians call `map` (the same way a map tells you how to get from where you are to where you want to be, the `map` enumerable tells you how to get from an array of one thing (numbers in strings) to an array of another thing (integers).
>
> As you develop the skill of thinking in these higher level terms, such abstractions become invaluable, and it is inhibiting to manually unroll a loop, but if those patterns of thought are under-developed, then such abstractions are opaque and out of reach. So the best approach is a function of which tradeoffs best balance all the considerations. (e

-- @paddington

### Sample Data

If helpful, you can use the following sample data:

* *Valid*: 5541808923795240, 4024007136512380, 6011797668867828
* *Invalid*: 5541801923795240, 4024007106512380, 6011797668868728

## Extensions

* Can you make it work for American Express numbers? 342804633855673 is valid but 342801633855673 is invalid.
