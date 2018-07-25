class Pub

  attr_reader :name

  def initialize(name, drinks)
    @name = name
    @till = 0
    @drinks = drinks

  end

  def money_in_till()
    return @till
  end

  def count_drinks()
    return @drinks.count()
  end

  def sell_drink(drink)
    @till += drink.price()
  end

end
