# Echo

In this challenge, your mission is to implement a function called `echo`.

## Iteration One

`echo` should take a collection of strings and log each of them to the console independently.

For example:

```js
echo();

// Does not log anything.

echo(['one']);

// Logs:
// 'one'

echo(['one', 'two', 'three']);

// Logs:
// 'one'
// 'two'
// 'three'
```

## Iteration Two

In the second iteration, `echo` should _not_ require the arguments to be an array.

```js
echo('one');

// Logs:
// 'one'

echo('one', 'two', 'three');

// Logs:
// 'one'
// 'two'
// 'three'
```
