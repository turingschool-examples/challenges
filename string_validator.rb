class StringValidator
  def initialize
    @refs = {")":"(","}":"{","]":"["}
  end

  def validate(s)
    stack = []
    s.split('').each do |c|
      next unless @refs.keys.include?(c.to_sym) || @refs.values.include?(c)

      if @refs.values.include?(c)
        stack << c
      else
        t = stack.pop
        return false unless @refs[c.to_sym] == t
      end
    end
    return true if stack.empty?
    return false
  end
end
