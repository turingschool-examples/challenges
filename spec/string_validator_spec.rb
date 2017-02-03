require 'string_validator'

RSpec.describe StringValidator do
  context '#validate' do
    xit 'returns true if the opening brace has a closing brace for a simple pair' do
      v = StringValidator.new
      result = v.validate('()')

      expect(result).to eq(true)
    end

    xit 'returns true for many pairs' do
      v = StringValidator.new
      result = v.validate('([{}[]])')

      expect(result).to eq(true)
    end

    xit 'returns false with unmatched pair (consecutive open/close)' do
      v = StringValidator.new
      result = v.validate('()[')

      expect(result).to eq(false)
    end

    it 'returns false with unmatched pair (mixed open/close)' do
      v = StringValidator.new
      result = v.validate('([)]')

      expect(result).to eq(false)
    end
  end
end
