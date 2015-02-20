# Linked Lists

Linked Lists are one of the most fundamental Computer Science data structures. A Linked List models a collection of data as a series of "nodes" which link to one another in a chain.

In a singly-linked list (the type we will be building) you have a __head__, which is a node representing the "start" of the list, and subsequent nodes which make up the remainder of the list.

The __list__ itself can hold a reference to one thing -- the head node.

Each node can hold a single element of data and a link to the next node in the list.

The last node of the list is often called its __tail__.

Using sweet ASCII art, it might look like this:

```
List -- (head) --> ["hello" | -]-- (link) --> ["world" | -]-- (link) --> ["!" | ]
```
The three nodes here hold the data "hello", "world", and "!". The first two node have links which point to other nodes. The last node, holding the data "!", has no reference in the link spot. This signifies that it is the end of the list.

## Challenge

Write an implementation of a linked list which can __at least__ do all of the following:

* "append" elements to the end of the list
* Count the number of the elements in the list
* access the "tail" (last element) of the list
* "pop" an element from the end of the list
* access an element by numeric position (as with an array index)

It would be great if your list could _also_ do some of these things:

* Pop the "first" element (head gets removed, second element becomes head) 
* Push an element onto the beginning of the list (first element becomes second element)
* Remove the (first occurance | all occurances) of an element by data content
* Remove an element by position
* Insert an element at an arbitrary position
* Add an element after a known node
* Find whether a data element is or is not in the list
* Find the distance between two nodes

## Template

```
class IterativeLinkedList
  # A list using Iterative approaches
end

class RecursiveLinkedList
  # A list using Recursive approaches
end

class Node
  # A single node for either list type
end
```

## Tips

* A linked list it not an array. While it may perform many of the same functions as an array, its structure is conceptually very different.
* There are only 3 types of "state" that need to be tracked for a linked list -- the head of the list, the data of each node, and the "next node" of each node.
* In object-oriented programming, "state" is generally modeled with instance variables
* There are two main ways to implement Linked Lists: __iteration__ and __recursion__. Iterative solutions use looping structures (`while`, `for`) to walk through the nodes in the list. Recursive solutions use methods which call themselves to walk through nodes. It would be ideal to solve it each way.
* Most of your methods will be defined on the `List` itself, but you will need to manipulate one or more `Node`s to implement them. 
* __TDD__ will be your friend in implementing the list. Remember to start small, work iteratively, and test all of your methods.
* An __empty__ list has `nil` as its head
* The __tail__ of a list is the node that has `nil` as its next node

## Constraints

* This is a conceptual puzzle more than anything else. Don't spend more than 10 hours on it.
* Avoid using other ruby collections (Arrays, Hashes, etc) in your implementation.

## Resources

Need some help? You check out some of the following resources:

* https://www.youtube.com/watch?v=oiW79L8VYXk
* http://www.eternallyconfuzzled.com/tuts/datastructures/jsw_tut_linklist.aspx
* http://www.cs.cmu.edu/~adamchik/15-121/lectures/Linked%20Lists/linked%20lists.html
* http://www.sitepoint.com/rubys-missing-data-structure/
