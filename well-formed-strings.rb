require 'pry'
class StringValidator
  def validate(input)
    result = false
    match = {"}" => "{", "]" => "[", ")" => "("}
    array = input.split(//)
    count = 0
    keep = []
    while count <= array.length
      item = array.unshift
      item2 = match[item]
      keep << item
      if keep[1] == (match[item])
        keep.delete(item)
        keep.delete(match[item])
      end
      count += 1
    end
    if keep.count == 0
      result = true
    end
  end
end
