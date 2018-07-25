require("minitest/autorun")
require("minitest/rg")
require_relative("../customer.rb")
require_relative("../pub.rb")
require_relative("../drinks.rb")

class CustomerTest < MiniTest::Test

  def setup()
    @customer1 = Customer.new("Bob", 20)

    @drink1 = Drink.new("water", 0)
    @drink2 = Drink.new("beer", 4)
    @drinks = [@drink1, @drink2]

    @pub = Pub.new("Cheers", @drinks)

  end

  def test_has_name()
    assert_equal("Bob", @customer1.name())
  end

  def test_has_money()
    assert_equal(20, @customer1.wallet())
  end

  def test_buy_drink()
    @customer1.buy_drink(@pub, @drink2)
    assert_equal(16, @customer1.wallet())
  end

end
