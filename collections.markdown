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
* Level 3: If there are multiple people tied with the same age, put them in alphabetical
order
* Level 4: Write code to automatically build a hash with the age as the key and
an array of names as the value (all the people who are that age). e.g.
`{24 => ['Juan', 'Steve', 'Jill']...}`

### 2: State Capitols

You have 2 hashes, one which maps state names to state abbreviations,
and one which maps state abbreviations to their capitol:

```
states = {"Oregon" => "OR",
          "Alabama" => "AL",
          "New Jersey" => "NJ",
          "Colorado" => "CO"}

capitols = {"OR" => "Salem",
            "AL" => "Montgomery",
            "NJ" => "Trenton",
            "CO" => "Denver"}
```

* Level 1: Write some code which given a state name ("Oregon") outputs
  its capitol ("Salem")
* Level 2: Handle the case when a state's information is not known by
  returning "Unknown"
* Level 3: Now let's go the other way. Given a capitol name ("Denver"),
  return the state name for which it is the capitol ("Colorado")
