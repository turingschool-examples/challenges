class StringValidator

  PAIRS = {
    "]" => "[",
    ")" => "(",
    "}" => "{"
  }

  def validate(string)
    PAIRS.each do |pair|
      array = string.chars
      new_array = []
      first = array.pop
      second = array.shift
      new_array << first
      new_array << second
      if (pair != new_array)
        validate(new_array.to_s)
      else
        return true
      end
    end
  end

end

# v = StringValidator.new
# v.validate("()")
# # => true
# v.validate("([{}[]])")
# # => true
# v.validate("()[")
# # => false
# v.validate("([)]")
# # => false
