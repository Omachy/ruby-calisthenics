class Dessert
  attr_accessor :name
  attr_accessor :calories
  def initialize(name, calories)
    @name=name
    @calories=calories
    end
    
  def healthy?
    @calories < 200
    end
  def delicious?
    true
    end
end