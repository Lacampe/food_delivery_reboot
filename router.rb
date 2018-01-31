class Router
  def initialize(meals_controller, customers_controller)
    @meals_controller     = meals_controller
    @customers_controller = customers_controller
  end

  def run
    puts "Welcome to the food delivery app!"
    action = ''
    while action != 5 do
      puts "What do you want to do?"
      print_actions
      action = gets.chomp.to_i
      case action
      when 1 then @meals_controller.add
      when 2 then @meals_controller.list
      when 3 then @customers_controller.add
      when 4 then @customers_controller.list
      when 5
        puts "Bye!"
      else
        puts "Wrong action"
      end
    end
  end

  private

  def print_actions
    puts "1 - Add a new meal"
    puts "2 - List all the meals"
    puts "3 - Add a new customer"
    puts "4 - List all the customers"
    puts "5 - Exit the program"
  end
end
