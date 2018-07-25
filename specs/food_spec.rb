require("minitest/autorun")
require("minitest/rg")
require_relative("../food.rb")
require_relative("../pub.rb")
require_relative("../drinks.rb")
require_relative("../customer.rb")

class FoodTest < MiniTest::Test

  def setup()

      @food = Food.new("Walkers Crisps", 2, 1)

  end

  def test_food_name()
    assert_equal("Walkers Crisps", @food.name())
  end

  def test_food_price()
    assert_equal(2, @food.price())
  end

  def test_rejuvenation_level()
    assert_equal(1, @food.rejuvenation_level())
  end

end
