require("minitest/autorun")
require("minitest/rg")
require_relative("../customer.rb")
require_relative("../pub.rb")

class CustomerTest < MiniTest::Test

  def setup()
    @customer1 = Customer.new("Bob", 20)
  end

  def test_has_name()
    assert_equal("Bob", @customer1.name())
  end

  def test_has_money()
    assert_equal(20, @customer1.wallet())
  end

end
