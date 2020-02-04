# Well-Formed Strings

A string of characters like "({12}[34(56){67}])" is said to be well-formed
if every opening brace (square, curly, or parens) has a matching close AND
the closing brace comes in the opposite order of the opening.

* Valid: "({12}[34(56){67}])"
* Invalid "({12)"
* Invalid "({12)}"

Write a validator that can determine the well-formed-ness of an input string.

Here's are two sample interaction patterns:

### In JavaScript

```javascript
validate_string("()")
// => true
validate_string("([{}[]])")
// => true
validate_string("()[")
// => false
validate_string("([)]")
// => false
```

### In Ruby

```ruby
v = StringValidator.new
v.validate("()")
# => true
v.validate("([{}[]])")
# => true
v.validate("()[")
# => false
v.validate("([)]")
# => false
```

## Extension

Could we provide the list of valid match-pairs?

Adjust your program to take an array of start/end match pairs as input. For example:

```javascript
validate_string("(()[])", [ ["(", ")"], ["[", "]"] ])
// => true
validate_string("()[]", [ ["(", ")"] ])
// => false
validate_string("!12@", [ ["1", "2"], ["!", "@"] ])
// => true
```
