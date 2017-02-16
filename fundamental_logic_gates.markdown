# Fundamental Logic Gates

Computers are built on [logic gates](https://en.wikipedia.org/wiki/Logic_gate). Say we want to start designing
hardware using Ruby. We'd need to first implement those fundamental gates.

## Challenge

### AND

An AND gate has two or more inputs. The output is "high" (`1`) if and only if *all* the inputs are high. Assume that all
inputs are "low" (`0`) by default.

Build a two-input AND gate like the below. Your implementation should not make use of the built in Ruby AND functionality
(`&&`, `&`, `and`).

```ruby
gate = And::Double.new
gate.input_a = 1
gate.input_b = 1
gate.output # => 1
gate.input_b = 0
gate.output # => 0
```

Then *use your two-input ANDs* to build a three-input AND:

```ruby
gate = And::Triple.new
gate.input_a = 1
gate.input_b = 1
gate.output # => 0
gate.input_c = 1
gate.output # => 1
gate.input_a = 0
gate.output # => 0
```

Then create a class which can dynamically build multi-input gates using only your two-input gate as the building block:

```ruby
gate = And::Multi.new(4)
gate.input_a = 1
gate.input_b = 1
gate.input_c = 1
gate.output # => 0
gate.input_d = 1
gate.output # => 1
gate.input_b = 0
gate.output # => 0
```

Heads up that this is quite difficult.

### OR

An OR gate has two or more inputs. The output is "high" (`1`) if one or more of the inputs are high.

Build a two-input OR gate like the below. Your implementation should not make use of the built in Ruby OR functionality
(`||`, `|`, `or`).

```ruby
gate = Or::Double.new
gate.input_a = 1
gate.input_b = 0
gate.output # => 1
gate.input_a = 0
gate.output # => 0
```

Then *use your two-input OR* to build a three-input OR:

```ruby
gate = Or::Triple.new
gate.input_a = 0
gate.input_b = 0
gate.output # => 0
gate.input_c = 1
gate.output # => 1
gate.input_c = 0
gate.output # => 0
```

Then create a class which can dynamically build multi-input gates using only your two-input gate as the building block:

```ruby
gate = Or::Multi.new(4)
gate.input_a = 0
gate.input_b = 0
gate.input_c = 0
gate.output # => 0
gate.input_d = 1
gate.output # => 1
gate.input_d = 0
gate.output # => 0
```

Heads up that this is also quite difficult.
