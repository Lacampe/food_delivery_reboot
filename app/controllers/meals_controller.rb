require_relative '../views/meal_view'
require_relative '../models/meal'
require_relative 'base_controller'

class MealsController < BaseController
  def initialize(meal_repository)
    super(meal_repository)
    @view = MealView.new
  end

  def add
    # 1 - ask for meal name
    name  = @view.ask_for('name', 'meal')
    # 2 - ask for meal price
    price = @view.ask_for('price', 'meal')
    # 3 - create an instance of Meal
    meal  = Meal.new(name: name, price: price.to_i)
    # 4 - send the instance to the MealRepo
    @repository.add(meal)
  end

  def list
    # 1 - fetch all the meals from MealRepo
    meals = @repository.fetch
    # 2 - display meals
    @view.display_meals(meals)
  end
end
