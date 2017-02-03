require './well-formed'
require 'minitest/autorun'

class TestStringValidator < Minitest::Test
   def setup
     @v = StringValidator.new
   end
 
   def test_well_formed_parens
     result = @v.validate("()")
     assert_equal result, true
   end

   def test_badly_formed_parens
     result = @v.validate("())")
     assert_equal result, false
   end
   
   def test_well_formed_brackets
     result = @v.validate("[]")
     assert_equal result, true
   end

   def test_badly_formed_parens
     result = @v.validate("[]]")
     assert_equal result, false
   end

   def test_well_formed_curly_brackets
     result = @v.validate("{}")
     assert_equal result, true
   end

   def test_badly_formed_curly_brackets
     result = @v.validate("{}}")
     assert_equal result, false
   end
   
   def test_well_formed_number_test_case
     result = @v.validate("({12}[34(56){67}])")
     assert_equal result, true
   end

   def test_badly_formed_number_test_case
     result = @v.validate("({12)")
     assert_equal result, false
   end

   def test_well_formed_test_case_with_gibberish
     result = @v.validate("({jhfn@#{}!!!(:)})")
     assert_equal result, true
   end

   def test_badly_formed_number_test_case_with_all_symbols
     result = @v.validate("({12)}")
     assert_equal result, false
   end


   def test_well_formed_test_case_with_gibberish
     result = @v.validate("({12oiuh@#((((1213)))))}lol}")
     assert_equal result, false
   end

 
end
