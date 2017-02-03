class StringValidator
  attr_accessor :refs

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

  def self.well_formed?(s, a)
    v = StringValidator.new
    v.refs = {}
    a.each do |k,v|
      @refs[k.to_sym] = v
    end
    v.validate(s)
  end
end
