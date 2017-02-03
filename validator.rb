class Validator
  def validate(string)
    split_string = string.split("")
    split_string.each do |i|
      first = split_string[i]
      split_string.shift
      split_string.each do |i|
        if split_string[i] == first
          array = split_string.shift((i + 1))
          if i.length = 1
            break;
            true
          else
            array.each do |i|
  end
end
