class Waiter
  @@all = []
  attr_accessor :name, :years_exp

  def initialize(name, years_exp)
    @name = name
    @years_exp = years_exp
    @@all << self
  end

  def self.all
    @@all
  end
  
end
