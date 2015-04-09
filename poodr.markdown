# Practical Object Oriented Design with Ruby

## Part 1: Designing Classes with a Single Responsibility

First, read chapters 1 and 2 (through page 34).

Once you finish, think about a commercial airplane. Create a list of at least
15 classes you'd expect to encounter to build a software model of a plane. For
each class, give a one sentence description of the class' responsibility

## Part 2: Experimenting with Dependencies

Read a part of Chapter 3, pages 35 through 42 up to "Isolate Dependencies".

Then, let's do an experiment with dependency injection. Check out this usage:

```ruby
screen_printer = ScreenPrinter.new
fibber = Fibber.new(screen_printer)
fibber.print(10) # => prints the first 10 numbers of the fibonacci sequence to
                 #    the screen separated by a single space
file_printer = FilePrinter.new("output.txt")
fibber = Fibber.new(file_printer)
fibber.print(10) # => prints the first 10 number of the fibonacci sequence to
                 #    a file named 'output.txt' separated by a single space
```

Build `Fibber`, `ScreenPrinter`, and `FilePrinter` classes to make that work.
