require("minitest/autorun")
require("minitest/rg")
require_relative("../drinks.rb")

class DrinkTest < MiniTest::Test

def setup()
  @drink1 = Drink.new("water", 0)
  @drink2 = Drink.new("beer", 4)
end

def test_has_name()
  assert_equal("water", @drink1.name())
end

def test_has_price
  assert_equal(4, @drink2.price())
end


end
