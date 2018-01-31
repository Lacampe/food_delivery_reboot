require_relative 'base_model'

class Meal < BaseModel
  attr_reader :price

  def initialize(attributes = {})
    super({id: attributes[:id], name: attributes[:name]})
    @price  = attributes[:price]
  end

  def self.build_headers
    return ['id', 'name', 'price']
  end

  def build_for_csv
    return [@id, @name, @price]
  end
end

# meal = Meal.new({name: 'pancake', price: 7})
# p meal.class
# create an empty instance of Meal => #<Meal:0x007fb2b880ba20>
# call initialize in my meal.rb file
# call super => calls initialize in parent class with args
# initialize in parent sets some instance variables
# Meal initialize finishes the job by setting the rest of instance variables
#<Meal:0x007fb2b880ba20 @id=nil, @name="pancake", @price=7>
