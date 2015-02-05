# Fibbonacci Sequence

The Fibbonacci sequence is a simple numeric sequence that comes up frequently
in Computer Science and design tasks. Let's write a generator that can
tell us an arbitrary quantity of numbers in the sequence.

## Theory

The sequence begins with the numbers 0 and 1. From there, each element is the sum
of the previous two elements.

```
Start with 0 and 1
0 plus 1 is (1)
1 plus 1 is (2)
1 plus 2 is (3)
2 plus 3 is (5)
3 plus 5 is (8)
5 plus 8 is (13)
8 plus 13 is (21)
```

So the sequence starts 0, 1, 1, 2, 3, 5, 8, 13, 21.

## Template

```ruby
quantity = 15

# your code here
```

## Challenge 1: Jagged Output

Output should come in rows of five elements. Running the program with `quantity`
set to fifteen would output the following:

```
0 1 1 2 3
5 8 13 21 34
55 89 144 233 377
```

## Challenge 2: Better Output

Our columns are kinda ugly. Let's pad each number into a four-character string so
we get output like this:

```
   0    1    1    2    3
   5    8   13   21   34
  55   89  144  233  377
```

## Challenge 3: Fancy Output

That works great until we want to output four-digit numbers in the sequence --
they'd start bumping into each other.

Can you output your sequence such that
each element is padded to a string with a size one greater than the number of
digits in the last element that will be output? So if the biggest number you'll
output is three digits, each element of the sequence is padded to four places.
But if the last element is four digits, each element is padded to five places.
