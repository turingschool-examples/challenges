require 'pry'
class StringValidator
	def validate(string)
		original = string.split('')
		arr = string.split('')
		length = arr.length

		original.each do |in_question| 
			case in_question
			when '('
				pair = ')'
			when '['
				pair = ']'
			when '{'
				pair = '}'
			when '}'
				pair = '{'
			when ']'
				pair = '['
			when ')'
				pair = '('
			end
			return puts false if !original.include?(pair)
		end
		return puts true
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