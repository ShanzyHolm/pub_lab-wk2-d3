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

  def sell_drink(drink, age, drunkenness_level)
    if age >= 18 && drunkenness_level < 12
      @till += drink.price()
      return true
    end
    return false
  end

  def sell_food(food)
    @till += food.price()
  end

end
