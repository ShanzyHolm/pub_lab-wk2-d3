require("minitest/autorun")
require("minitest/rg")
require_relative("../pub.rb")
require_relative("../drinks.rb")
require_relative("../customer.rb")
require_relative("../food.rb")

class PubTest < MiniTest::Test

def setup()

  @food = Food.new("Walkers Crisps", 2, 1)

  @drink1 = Drink.new("water", 1, 0, 5)
  @drink2 = Drink.new("beer", 4, 5, 20)
  @drinks = [@drink1, @drink2]

  @customer1 = Customer.new("Bob", 20, 21)
  @customer2 = Customer.new("May", 10, 16)

  @pub = Pub.new("Cheers", @drinks)
end

def test_has_name()
  assert_equal("Cheers", @pub.name())
end

def test_till_starts_empty()
  assert_equal(0, @pub.money_in_till())
end

def test_has_drinks()
  assert_equal(2, @pub.count_drinks())
end

def test_refuse_drink_if_too_young()
  assert_equal(false, @pub.sell_drink(@drink2, 13, 0))
end

def test_refuse_drink_if_too_drunk()
  assert_equal(false, @pub.sell_drink(@drink2, 21, 19))
end

def test_sell_food()
  @pub.sell_food(@food)
  assert_equal(2, @pub.money_in_till())
end

def test_stock_level_goes_down_when_drink_bought()
  @pub.sell_drink(@drink2, 21, 0)
  assert_equal(19, @pub.get_stock_of_drink(@drink2))
end

def test_get_total_stock_value()
  assert_equal(85, @pub.get_total_stock_value())
end

end
