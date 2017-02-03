require 'pry'
class StringValidator
	def validate(string)
		arr = string.split('')
		length = arr.length

		(length).times do 
			in_question = arr.shift
			case in_question
			when '('
				pair = ')'
			when '['
				pair = ']'
			when '{'
				pair = '}'
			end
			return false if !arr.include?(pair)
		end
		return true
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