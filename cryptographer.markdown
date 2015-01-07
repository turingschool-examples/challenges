# Cryptographer

## Challenge

Write a program which can encrypt messages. Write a second program which can decrypt those messages.

## Restrictions

Don't use Ruby's `tr` method.

## Algorithm

The simplest two-way encryption algorithm is called [ROT-13](http://en.wikipedia.org/wiki/ROT13). It's a good choice to
build up your solution.

## Template

### Non-Object Based

If you're just getting started with Ruby and aren't familiar with creating classes
and objects, create an `encrypt.rb` like this:

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

### Object-Based

If you're comfortable with creating classes, start with this:

```ruby
class Encryptor
  # Your code here
end

class Decryptor
  # Your code here
end

class EncryptionEngine
  # Your code here
end
```

Which gets used like this:

```ruby
engine = EncryptionEngine.new
output = engine.encrypt("My Message")
puts output  # outputs "Zl Zrffntr"
output2 = engine.decrypt("Zl Zrffntr")
puts output2 # outputs "My Message"
```

And of course you'll be using TDD. Maybe you start with:

```ruby
require 'minitest/autorun'

class EncryptionEngineTest < Minitest::Test
  def test_it_encrypts_using_rot13
    engine = EncryptionEngine.new
    output = engine.encrypt("My Message")
    assert_equal "Zl Zrffntr", output
  end
end
```

## Extensions

### Flexible Rotation

When you finish ROT-13, add the ability to specify the rotation number
when encrypting or decrypting. So a user could, for example, choose to use ROT-6.

### Shuffled Cipher

The next level up would be to create a shuffled cipher (the pattern used for encrypting/decrypting).
Create your own
cipher which maps each letter to an arbitrary other letter (like `a` mapping to `x` and `b` mapping to `j`). And create a reversed version for decrypting.
