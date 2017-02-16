### Possible Sum Sequences

Write a program that outputs all possibilities to put `+`, `-`, or nothing (i.e. concatenating 2 or more digits)
between the digits `1` to `9` (in order), such that the result sums to 100.

For example, the sequence `1 + 2 + 34 – 5 + 67 – 8 + 9` sums to 100, as does `1 + 2 + 3 - 4 + 5 + 6 + 78 + 9`.

__Techniques/Ideas__

A problem like this can be daunting at first because it seems to large to
wrap our heads around. A useful technique is to think about ways to break
the problem into a series of smaller problems, which we can solve in turn.
In algorithm design, this technique is called [Divide and Conquer](http://en.wikipedia.org/wiki/Divide_and_conquer_algorithms).

(Another famous version of this problem is the "Counting change" example from SICP -- http://mitpress.mit.edu/sicp/full-text/sicp/book/node16.html)

