# Cryptographer

## Challenge

Write a program which can encrypt messages. Write a second program which can decrypt those messages.

## Template

Create an `encrypt.rb` like:

```ruby
key = 13

message = "This is my secret"

# do your encryption here

puts encrypted_message
```

Then a `decrypt.rb` like:

```ruby
key = 13

encrypted_message = "Guvf vf zl frperg"

# do your decryption here

puts message
```

## Algorithm

The simplest two-way encryption algorithm is called [ROT-13](http://en.wikipedia.org/wiki/ROT13). It's a good choice to
build up your solution.

**Extension**: The next level up would be to create a shuffled cipher. Create your own
cipher which maps each letter to an arbitrary other letter (like `a` mapping to `x` and `b` mapping to `j`). And create a reversed version for decrypting.
