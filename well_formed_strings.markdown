# Test a String for Well-Formedness

A string of characters like "({12}[34(56){67}])" is said to be well-formed
if every opening brace (square, curly, or parens) has a matching close AND
the closing brace comes in the opposite order of the opening.

* Valid: "({12}[34(56){67}])"
* Invalid "({12)"
* Invalid "({12)}"

Write a validator that can determine the well-formed-ness of an input string.


Extension:

* Could we provide the list of match-pairs dynamically? Adjust your program to
  take an array of start/end match pairs as input. For example: `well_formed?("({})", [["(",")"],["{","}"]])`
