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
      for each_drink in @drinks
        if each_drink == drink
          each_drink.reduce_stock_level
        end
      end
      return true
    end
    return false
  end

  def sell_food(food)
    @till += food.price()
  end

  def get_stock_of_drink(drink)
    for each_drink in @drinks
      if each_drink == drink
        return each_drink.stock_level()
      end
    end
  end

  def get_total_stock_value()
    #@drinks.sum() { |drink| drink.price() * drink.stock_level() }
    total = 0
    @drinks.each do |drink|
      drink_value = drink.price() * drink.stock_level()
      total += drink_value
    end

    return total
  end

end
