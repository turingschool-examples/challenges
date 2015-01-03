# OkCuGit

Let's say you're looking to make some new friends. There are lots of dating
sites out there that claim to match you based on advanced metrics and algorithms.

But we're programmers. We don't need all that. Instead we can just comb git
logs to find the people we likely share interests with!

## Premise

The log of any git repo has the names and email addresses of of people who
have contributed. Write a program that can generate a list of those people.

## Interaction

From your terminal:

```
$ ruby ./okcugit turingschool/challenges
<Jeff Casimir> jeff@turing.io
<Rachel Warbelow> rachel@turing.io
```

The output should be alphabetized by the first character of the name. An
name/email pair should not appear more than once.

## Template

```ruby
require_relative 'finder'

repo_name = ARGV[2]
finder = OkCuGit::Finder.new(repo_name)
contacts = finder.all_contributors
puts contacts.join("\n")
```
