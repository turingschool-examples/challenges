require 'pry'

class StringValidator

  def validate(string)
    trimmed_string = string.gsub(/[^\[\]\(\)\{\}]/,'')
    if trimmed_string.size.odd?
      return false
    elsif trimmed_string.empty?
      return true
    else
      return even_string_validator(string)
    end
  end
  
  def even_string_validator(string)
    symbols_to_check = { '{' => '}', 
                         '[' => ']',
                         '(' => ')'}
    check_array = []
    string.split('').each do |letter|
      check_array << letter if symbols_to_check.key?(letter)
      return false if symbols_to_check.key(letter) && 
                      symbols_to_check.key(letter) != check_array.pop
     end
     check_array.empty?
  end
  
end

