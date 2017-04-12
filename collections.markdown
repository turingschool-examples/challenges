# Collection Challenges

As you lean to program, manipulating collections is incredibly important. Complete
the short challenges below. Try to come up with *two different approaches* to
solve each problem.

## Challenges

### 1: Age Ordering

You have age data for a group of people:

```
data = [
  ['Frank', 33],
  ['Stacy', 15],
  ['Juan', 24],
  ['Dom', 32],
  ['Steve', 24],
  ['Jill', 24]
]
```

* Level 1: Write code that'll output the names (and only the names) in order by
ascending age
* Level 2: Output the name with the age, like `Juan (24)`
* Level 3: Write code to automatically build a hash with the age as the key and
an array of names as the value (all the people who are that age). e.g.
`{24 => ['Juan', 'Steve', 'Jill']...}`

### 2: State Capitals

You have 2 hashes, one which maps state names to state abbreviations,
and one which maps state abbreviations to their capital:

```
states = {"Oregon" => "OR",
          "Alabama" => "AL",
          "New Jersey" => "NJ",
          "Colorado" => "CO"}

capitals = {"OR" => "Salem",
            "AL" => "Montgomery",
            "NJ" => "Trenton",
            "CO" => "Denver"}
```

* Level 1: Write some code which given a state name ("Oregon") outputs
  its capital ("Salem")
* Level 2: Handle the case when a state's information is not known by
  returning "Unknown"
* Level 3: Now let's go the other way. Given a capital name ("Denver"),
  return the state name for which it is the capital ("Colorado")

### 3: Scrabble Scoring

Start with this hash:

```
scores = {
  "A"=>1, "B"=>3, "C"=>3, "D"=>2,
  "E"=>1, "F"=>4, "G"=>2, "H"=>4,
  "I"=>1, "J"=>8, "K"=>5, "L"=>1,
  "M"=>3, "N"=>1, "O"=>1, "P"=>3,
  "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
  "U"=>1, "V"=>4, "W"=>4, "X"=>8,
  "Y"=>4, "Z"=>10
}
```

#### Level 1: Letter Scoring an Array

Write code to output the score for the letters in an array like this:

```
word = ['H', 'E', 'L', 'L', 'O']

# Your code here
```

Which, when run, outputs this:

```
H has the value 4
E has the value 1
L has the value 1
L has the value 1
O has the value 1
```

#### Level 2: Scoring Letters in a String

Write code to output the score for the letters in a string like this:

```
word = "hello"

# Your code here
```

Which, when run, outputs this:

```
H has the value 4
E has the value 1
L has the value 1
L has the value 1
O has the value 1
```

#### Level 3: Scoring an Entire String

Write code to output the total score for a string like this:

```
word = "hello"

# Your code here
```

Which, when run, outputs this:

```
hello has the total score 8
```
