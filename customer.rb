class Customer

attr_reader :name, :wallet, :age, :drunkenness_level

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
    @drunkenness_level = 0
  end

  def buy_drink(pub, drink)
    if pub.sell_drink(drink, @age)
      @wallet -= drink.price()
      @drunkenness_level += drink.alcohol_level()
    end
  end

end
