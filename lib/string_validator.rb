require "pry"

class StringValidator

  def num
    4
  end

  def validate(string)
    input = string.split("")
    comp = input.any? {|x| ["(", "[", "{", ")", "]", "}"].include?(x)}
    if comp = true
      input[-1].include?("(") || input[-1].include?("{") || input[-1].include?("[")
      return false
    end
  end



end
