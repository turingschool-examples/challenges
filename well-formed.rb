require 'pry'

class StringValidator

  def validate(string)
    trimmed_string = string.gsub(/[^\[\]\(\)\{\}]/,'')
    if trimmed_string.size.odd?
      return false
    elsif trimmed_string.empty?
      return false
    else
      return true
    end
  end
  
end

