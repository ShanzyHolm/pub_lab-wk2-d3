require("minitest/autorun")
require("minitest/rg")
require_relative("../drinks.rb")

class DrinkTest < MiniTest::Test

def setup()
  @drink1 = Drink.new("water", 0, 0)
  @drink2 = Drink.new("beer", 4, 5)
end

def test_has_name()
  assert_equal("water", @drink1.name())
end

def test_has_price()
  assert_equal(4, @drink2.price())
end

def test_alcohol_level()
  assert_equal(5, @drink2.alcohol_level())
end


end
