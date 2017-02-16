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
$ ruby ./okcugit.rb turingschool/challenges
"Jeff Casimir" <jeff@turing.io>,
"Rachel Warbelow" <rachel@turing.io>
```

The output should be alphabetized by the first character of the name. An
name/email pair should not appear more than once.

## Template

```ruby
require_relative 'finder'

repo_name = ARGV[0]
finder = OkCuGit::Finder.new(repo_name)
contacts = finder.all_contributors
puts contacts.join("\n")
```

![Screenshot](okcugit_screenshot.png)

## Interacting with Git from Ruby

To interact with git you'll likely need to use some "shell" commands from
within your ruby script. Here are a couple that may be useful for you:

1. Any commands within backticks in a ruby file will be run as system
commands:

```ruby
current_dir = `pwd` #use pwd command to get current directory
puts current_dir
```

We can use this to interact with git from our ruby programs. For example:

```ruby
git clone https://github.com/turingschool/challenges.git
```

2. `Dir.chdir` is a method in ruby for changing the current
working directory on the system. (equivalent to running `cd` from
the command line):

```ruby
Dir.chdir("/tmp")
```

You will likely want to use this method to change into your
newly cloned directories so you can run `git log`.

Don't forget you can return to the previous (parent) directory with:

```ruby
Dir.chdir("..")
```

## Extensions

* Write the results to a text file in ascending order by last name
* Write the results to a CSV file.



