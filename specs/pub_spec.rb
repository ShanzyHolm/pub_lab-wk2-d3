require("minitest/autorun")
require("minitest/rg")
require_relative("../pub.rb")
require_relative("../drinks.rb")

class PubTest < MiniTest::Test

def setup()

  @drink1 = Drink.new("water", 0)
  @drink2 = Drink.new("beer", 4)
  @drinks = [@drink1, @drink2]

  @pub = Pub.new("Cheers", @drinks)
end

def test_has_name()
  assert_equal("Cheers", @pub.name())
end

def test_till_starts_empty()
  assert_equal(0, @pub.money_in_till())
end


end
