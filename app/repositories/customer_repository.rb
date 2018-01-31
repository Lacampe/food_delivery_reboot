require_relative 'base_repository'
require_relative '../models/customer'

class CustomerRepository < BaseRepository
  def build_element(attributes = {})
    return Customer.new(attributes)
  end
end
