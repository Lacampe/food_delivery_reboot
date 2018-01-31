require_relative 'base_view'

class MealView < BaseView
  def display_meals(meals_array)
    meals_array.each do |meal|
      puts "#{meal.id} - #{meal.name}: #{meal.price}"
    end
  end
end
