# Merge Sort

## The Scenario

Say we have a set of numbers like this:

```ruby
values = (1..10000).to_a.sample(5000)
```

There are 5000 of them and they're in a random order. Let's implement the Merge Sort algorithm
to get them sorted.

## Implementing the Algorithm

Find the [wikipedia description of Merge Sort here](https://en.wikipedia.org/wiki/Merge_sort). You'll want to pay attention to the animated
GIF that illustrates the concept. There's also [this sweet line dance](https://www.youtube.com/watch?v=XaqR3G_NVoo).

Implement your own version of the algorithm. Avoid the temptation to Google solutions in Ruby or
other languages. Use just the information linked above and you're own deep thinking.

## Analysis

Let's do some analysis of the algorithm. Continue with the idea that comparing two numbers is the only instruction that is "expensive" in this algorithm. Say you're going to sort a set of just 10 numbers.

1. What would the best case input be for this algorithm?
2. How many comparisons would run in the best-case scenario?
3. What would the worst case input be for this algorithm?
4. How many comparisons would run in the worse-case scenario?
5. What do those results tell you about the relative merits of Merge Sort as compared with something simpler like a Bubble Sort?
