require_relative 'base_view'

class CustomerView < BaseView
  def display_customers(customers_array)
    customers_array.each do |customer|
      puts "#{customer.id} - #{customer.name} lives in #{customer.address}"
    end
  end
end
