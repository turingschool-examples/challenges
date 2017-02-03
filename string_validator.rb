class StringValidator
	def validate(string)
		
	end
end

v = StringValidator.new
v.validate("()")
# => true
v.validate("([{}[]])")
# => true
v.validate("()[")
# => false
v.validate("([)]")
# => false