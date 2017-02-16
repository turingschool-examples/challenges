# Tower of Hanoi

The [Tower of Hanoi](https://en.wikipedia.org/wiki/Tower_of_Hanoi) is a traditional puzzle in mathematics and
computer science. The puzzle consists of a set of 3 posts, one of which
holds a collection of disks ranging in size from large to small.

The disks begin placed in order with the largest on the bottom and
smallest on the top, so a simple Tower of Hanoi might look something
like:

```

  D    |   |
 D|D   |   |
DD|DD  |   |
==================
```

The objective of the puzzle is to move the existing stack of disks
to a new post while always preserving the following invariants:


1. You can only move 1 disk at a time.
2. Only the uppermost disk on any post can be moved.
3. You can never place a larger disk on top of a smaller disk.

Thus a potential end state for the starting state above would be:

```

  D    |   |   =>   |    |     D  
 D|D   |   |   =>   |    |    D|D 
DD|DD  |   |   =>   |    |   DD|DD
===============  ==================
```


The steps toward that solution might look something like:

__Step 1:__

```

  D    |   |   =>   |    |   |   
 D|D   |   |   =>  D|D   |   |   
DD|DD  |   |   => DD|DD  |   D   
===============   ===============
```

__Step 2:__

```

  |    |   |   =>   |    |   |   
 D|D   |   |   =>   |    |   |   
DD|DD  |   D   => DD|DD D|D  D   
===============   ===============
```

__Step 3:__

```

  |    |   |   =>   |     |    |   
  |    |   |   =>   |     D    |   
DD|DD D|D  D   => DD|DD  D|D   |   
===============   =================
```

__Step 4:__

```

  |     |    |   =>   |     |    |   
  |     D    |   =>   |     D    |   
DD|DD  D|D   |   =>   |    D|D DD|DD 
=================   =================
```

__Step 5:__

```

  |     |    |   =>   |     |    |   
  |     D    |   =>   |     |    |   
DD|DD  D|D   |   =>   D    D|D DD|DD 
=================   =================
```

__Step 6:__

```

  |     |    |   =>   |     |    |   
  |     |    |   =>   |     |   D|D  
  D    D|D DD|DD =>   D     |  DD|DD 
=================   =================
```

__Step 7 (solved):__

```

  |     |    |   =>   |     |    D   
  |     |   D|D  =>   |     |   D|D  
  D     |  DD|DD =>   |     |  DD|DD 
=================   =================
```

## Solving It With Code

For this challenge, implement an algorithm that solves the problem of
moving disks from one tower to another, outputting information along the
way about what it's doing.

Consider this template as a starting point:


```ruby
class Tower
  attr_reader :posts
  def initialize(posts = {"A" => [3,2,1], "B" => [], "C" => []})
    @posts = posts
  end

  def move!(from = "A", to = "C", extra = "B") #add args / modify method signature if you like
    # your code here
  end
end

t = Tower.new
t.move!
t.posts
{"A" => [], "B" => [], "C" => [3,2,1]}
```
