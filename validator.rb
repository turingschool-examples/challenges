require 'pry'

class StringValidator

  BRACKET_HASH= {
    "(" => ")",
    "{" => "}",
    "[" => "]"
  }

  def validate(string)
    return false if string.length < 2
    brackets = []
    string.each_char do |x|
      brackets.push(x) if BRACKET_HASH.keys.include?(x)
      brackets.pop if BRACKET_HASH.values.include?(x) && (BRACKET_HASH[brackets.last] == x)
    end
    puts brackets.empty?
  end

end

v = StringValidator.new
v.validate("()")
v.validate("([{}[]])")
v.validate("()[")
v.validate("([)]")
