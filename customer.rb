class Customer

attr_reader :name, :wallet, :age

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
  end

  def buy_drink(pub, drink)
    if pub.sell_drink(drink, @age)
      @wallet -= drink.price()
    end
  end

end
