require 'pry'
class StringValidator
	def validate(string)
		arr = string.split('')
		length = arr.length

		(length - 1 ).times do 
			in_question = arr.shift
			case in_question
			when '('
				pair = ')'
			when '['
				pair = ']'
			when '{'
				pair = '}'
			end
			return puts false if !arr.include?(pair)
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