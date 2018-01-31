require_relative 'base_repository'
require_relative '../models/meal'

class MealRepository < BaseRepository
  def build_element(attributes = {})
    attributes[:price] = attributes[:price].to_i
    return Meal.new(attributes)
  end
end

# meal_repo = MealRepository.new('../../data/meal.csv')
# p meal_repo
