# Practice with Functional Programming (And a refresher on enumerators)

## What is this?
The purpose of this project is to practice functional programming by implementing your own versions of enumerators in the style of Mythical Creatures. 

## How do I use it?
### First, make sure you have Mocha and Chai installed on your system
1. Clone down this repo
1. Run the tests by running `mocha` from the root directory
1. Make all the tests pass

## Need help?
1. Checkout the `example` file if you want to see an implementation of `each`
1. Checkout the `solutions` file to see all the solutions
1. Read the tests. The descriptions should be helpful.
1. For further help, checkout Ruby or JS docs to see how the native enumerables are supposed to behave

## Bonus points
1. Find other Ruby enumerables to rewrite in JS (Consider `none`, `filter`, `reverse` or `first`)
1. Modify these enumerables so the callback can take an additional, optional paramater that gives access to the index position of the current element
1. Add these methods to the Array.prototype so you can call them directly on an array

## So what is functional programming?
JavaScript is a functional programming language, which is often explained as: 'In JavaScript, functions are first class citizens'. In plain(er) English, that means functions are a primitive data type in JavaScript, just like booleans, integers or strings. In practice, that means we can pass functions around just like any other value. We can assign them as variables or pass them into other functions as arguments. Actually, that's what we do everytime we pass a callback function as an argument.

