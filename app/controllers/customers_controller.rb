require_relative '../views/customer_view'
require_relative 'base_controller'

class CustomersController < BaseController
  def initialize(customer_repository)
    super(customer_repository)
    @view = CustomerView.new
  end

  def add
    # 1 - ask for meal name
    name      = @view.ask_for('name', 'customer')
    # 2 - ask for meal address
    address   = @view.ask_for('address', 'customer')
    # 3 - create an instance of Meal
    customer  = Customer.new(name: name, address: address)
    # 4 - send the instance to the MealRepo
    @repository.add(customer)
  end

  def list
    customers = @repository.fetch
    @view.display_customers(customers)
  end
end
