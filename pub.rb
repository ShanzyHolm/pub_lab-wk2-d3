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

end
