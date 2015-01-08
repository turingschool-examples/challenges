# Robodoku

Some people get really into Sudoku. But solving the puzzles is just a matter
of executing an algorithm.

We'll build a program that can solve an valid Sudoku puzzle. For a puzzle to
be valid it must have only one single solution. No valid puzzle ever requires
"guessing".

## The Rules

We'll use the traditional board layout/style. A puzzle is made up of:

* a *spot* holds a single number 1-9
* a *square* is a 3x3 group of spots
* a *board* is made up of a 3x3 group of squares
* a *row* spans nine squares in a straight line left-to-right across the board
* a *column* spans nine squares in a straight line top-to-bottom across the board
* at puzzle-start, one or more spots are blank

A valid solution is made up of:

* each square has each number 1-9
* each *row* has each number 1-9
* each *column* has each number 1-9

## Algorithmic Approach

When the puzzle is solved, each spot must have a number. We can solve
the problem by solving each spot:

* Starting each spot with the possibilities 1-9
* Eliminate the possibilities which are already taken by spots in that square
* Eliminate the possibilities which are already taken by spots in that row
* Eliminate the possibilities which are already taken by spots in that column
* If there's only one possibility left, that's the number for this spot
* If there's more than one possibility left, look for related spots (sharing
  the square, row, or column) which now just have one possibility and can be set.
  Then use that new information to determine this spot.
* Look for possibilities in this spot which are not shared by any other related
spot

With those ideas you should be able to solve any puzzle.

## Programmatic Approach

1. Run the program from the terminal with the input puzzle filename
2. Load the puzzle from the file
3. Solve the puzzle
4. Output the solution to the terminal

## Template

In a `sudoku.rb`, use this code to process puzzles from a filename specified
in the terminal:

```ruby
require_relative 'solver'

filename = ARGV[0]
puzzle = File.read(filename)
solver = Solver.new
solution = solver.solve(puzzle)
puts solution
```

Run that like `ruby sudoku.rb first_puzzle.sudoku` assuming that you have
a `first_puzzle.sudoku` file.

Let's define a puzzle like this:

```
8  5 4  7
  5 3 9  
 9 7 1 6
1 3   2 8
 4     5
2 78136 4
 3 9 2 8
  2 7 5  
6  3 5  1
```

Which has a solution:

```
826594317
715638942
394721865
163459278
948267153
257813694
531942786
482176539
679385421
```
