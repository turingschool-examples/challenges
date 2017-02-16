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

## Part 3: Experimenting with Arguments

Read pages 42-46 just for completeness. Then read 46-51 focusing on argument
ordering and defaults.

Imagine that you're writing a real estate application. We need to create
records (objects) that represent both a `SingleFamilyHome` and an `ApartmentHome`.
Both of them have...

* A `square_footage`. For a `SingleFamilyHome` the default is `1000`. For an
`ApartmentHome` the default is `400`
* A `monthly_payment`. For a `SingleFamilyHome` the default is `1500`. For an
`ApartmentHome` the default is `800`

Build an implementation of these two classes. Does it make sense for them to both
inherit from a single ancestor?

In addition to their common attributes...

* A `SingleFamilyHome` has a boolean `has_yard` attribute
* A `SingleFamilyHome` has a `year_built` attribute
* An `ApartmentHome` has a `maintainance_fee` attribute
* An `ApartmentHome` has a boolean `doorman` attribute

Can you implement these two classes such that all attributes *can* be set in the
initializer, but only the `square_footage`, `monthly_payment`, and `year_built`/`maintainance_fee` are required?

## Part 4: Further Dependency Considerations

Read pages 51 through the end of the chapter on 57 and answer the following
two questions:

1. Look at the Enigma project you've completed. What are two or three components
or ideas in the system that are likely to change? Does your implementation make
those easy or difficult to change?
2. Consider the character map in Enigma. Imagine that there are multiple character
maps available for messages. Maybe some messages are in all normal ASCII characters,
while others use cyrillic letters. The user might specify the character set by
name on the command line. How would you tweak your implementation to handle
multiple character sets at once?
