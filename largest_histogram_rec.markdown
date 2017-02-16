## Finding the Largest Rectangle Under a Histogram

A histogram is a graphical way of representing distribution
of data over a given range of points. It's often used to demonstrate
probabilities of certain outcomes within a dataset. You may also have
seen histograms in the context of photo editing software, where they
are used as a means of representing density of light across a
range of channels.


A common algorithmic problem related to histograms involves finding
the "largest rectangle" under a given histogram.

Consider the simple ASCII example below:


```
     X
    XX   X
 XXXXXXX X
XXXXXXXXXX
----------
```

For this histogram, the largest rectangular section under the curve
would be (denoted by `S`):

```
     X
    XX   X
 SSSSSSS X
XSSSSSSSXX
----------
0123456789
```

For this challenge, we'll work on writing an algorithm to identify
this section of the histogram algorithmically.

### 1. Data Input Format

To represent histograms in a way our program can understand, we'll
probably want to use a more data-oriented format. Let's represent
the histogram as a series of `[X, Y]` pairs, where `X` represents
the (0-based) horizontal offset of the histogram moving from left to
right, and the Y is the vertical height of the histogram at that
position.

Using this convention, we could represent the previous histogram
as the following data structure:

```
[[0, 1],
 [1, 2],
 [2, 2],
 [3, 2],
 [4, 3],
 [5, 4],
 [6, 2],
 [7, 2],
 [8, 1],
 [9, 3]]
```

For this example, the largest rectangular area will be section
running from height 2 in column 1 through height 2 in column 7,
which would have an area of 7 x 2 = 14. This area (14) is what
we'd like to find with our algorithm.

## Iteration 1 -- Sketching and Trying

Spend 20 minutes and see what you can come up with for an algorithm
to solve this problem. Then we'll rejoin as a group and discuss some
possible angles of attack. If you're able to start coding during this
time, great. But sketches or pseudocode are great as well.
