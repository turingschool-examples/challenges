require 'pry'

class Validator
  def validate(string)
    result = get_relevant_chars(string)
    return false if result.length.odd?
    check_chars_match(result)


  end

  def get_relevant_chars(string)
    result = []
    string.each_char do |char|
      if char == '{' ||
         char == '(' ||
         char == '[' ||
         char == '}' ||
         char == ')' ||
         char == ']'
        result << char
      end
    end
    return result
  end

  def check_chars_match(char_array)
    until char_array.length == 0
      if (char_array[0] == '(' && char_array[1] == ')') ||
         (char_array[0] == '[' && char_array[1] == ']') ||
         (char_array[0] == '{' && char_array[1] == '}') then
        char_array.shift
        char_array.shift
      elsif (char_array[0] == '(' && char_array[-1] == ')') ||
            (char_array[0] == '[' && char_array[-1] == ']') ||
            (char_array[0] == '{' && char_array[-1] == '}') then
        char_array.shift
        char_array.pop
      else
          return false
      end
    end
    return true
  end

end
