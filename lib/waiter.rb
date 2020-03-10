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

  def new_meal(customer, total, tip=0)
    Meal.new(self, customer, total, tip)
  end

  def meals 
    Meal.all.select do |meal|
      meal.waiter == self
    end
  end

  

end
