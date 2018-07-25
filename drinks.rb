class Drink

  attr_reader :name, :price, :alcohol_level, :stock_level

  def initialize(name, price, alcohol_level, stock_level)
    @name = name
    @price = price
    @alcohol_level = alcohol_level
    @stock_level = stock_level
  end

  def reduce_stock_level()
    @stock_level -= 1
  end

end
