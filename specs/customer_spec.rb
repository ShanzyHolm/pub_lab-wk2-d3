require("minitest/autorun")
require("minitest/rg")
require_relative("../customer.rb")
require_relative("../pub.rb")
require_relative("../drinks.rb")
require_relative("../food.rb")

class CustomerTest < MiniTest::Test

  def setup()
    @customer1 = Customer.new("Bob", 20, 21)
    @customer2 = Customer.new("May", 10, 16)

    @food = Food.new("Walkers Crisps", 2, 1)

    @drink1 = Drink.new("water", 0, 0, 5)
    @drink2 = Drink.new("beer", 4, 5, 20)
    @drinks = [@drink1, @drink2]

    @pub = Pub.new("Cheers", @drinks)

  end

  def test_has_name()
    assert_equal("Bob", @customer1.name())
  end

  def test_has_money()
    assert_equal(20, @customer1.wallet())
  end

  def test_age()
    assert_equal(21, @customer1.age())
  end

  def test_buy_drink__over_21()
    @customer1.buy_drink(@pub, @drink2)
    assert_equal(16, @customer1.wallet())
    assert_equal(4, @pub.money_in_till())
  end

  def test_buy_drink__under_21()
    @customer2.buy_drink(@pub, @drink2)
    assert_equal(10, @customer2.wallet())
    assert_equal(0, @pub.money_in_till())
  end

  def test_drunkenness_level_starts_at_0()
    assert_equal(0, @customer1.drunkenness_level())
  end

  def test_drunkenness_level_goes_up_with_drink()
    @customer1.buy_drink(@pub, @drink2)
    assert_equal(5, @customer1.drunkenness_level())
  end

  def test_buys_food()
    @customer1.buys_food(@pub, @food)
    assert_equal(18, @customer1.wallet())
    assert_equal(2, @pub.money_in_till())
  end

end
