# Termulator

Your computer is basically a big calculator, so let's write a program that will will perform
some basic arithmetic functions for us.

## Command Line Arguments

We want to create a program that can take arguments from the command line.

The program should be run like so:

```bash
ruby termulator.rb 1 + 2
```

We expect the program that we are writing to output the answer to this, and it should be:

```bash
3
```

The key to this program is getting access to all of the information we type after the command
to run the ruby file we have specified. When we look at what we are entering into the terminal, 
we can break it up into three parts.

```bash
ruby termulator.rb 1 + 2
```

`ruby` is the command we are entering to start, in this case, we are telling our computer to run 
ruby.

`termulator.rb` is the name of the file that we are telling `ruby` to run.

`1 + 2` are known command line arguments that we want the program within `termulator.rb` to have 
access to.

But how does Termulator know about it? Built into Ruby is a variable called `ARGV` that stores 
everything that is entered after the file name. It takes whatever is entered after the file name, 
splits them by the spaces, and then stores each "word" as an element in the array named ARGV.

So, let's say we are entering this in our terminal:

```bash
ruby termulator.rb 1 + 2
``` 

Here, `ARGV[0]` contains "1", `ARGV[1]` contains "+", and `ARGV[2]` contains "2".

## Assignment

With that information, you should now be able to write a program that can perform basic
arithmetic functions.

Start by having your program add two numbers successfully. Next, have it subtract two numbers,
but it should still retain the ability to add two numbers. When you've got this down, add additional
functionality, such as multiplication and division, again, without taking away its ability to 
add and subtract.



